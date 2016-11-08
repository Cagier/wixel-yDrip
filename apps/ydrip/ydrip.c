/** WiFi xDrip variation for use with ESS2866 module running Lua:
  == Description ==
  The app uses the radio_queue libray to receive packets.  It does not
  transmit any packets.

  The output from this app normally takes the following format:
  	ID - xDrip2g Device Identifier
	txId - Transmission ID - unique-ish identifier
	transID - Transmitter ID
	raw - Raw BG Value
	filtered - Filtered BG Value
	battery - Dexcom Transmitter Battery
	RSSI - Received Signal Strength Indicator
  
  When the Wixel is listening for a packet from the G4 the Yellow LED will flash
  The Yellow LED will stop flashing when a signal is received and then it will listen again in 10 minutes
  When the Wifi Module wakes up the Red LED will come on
  When the Wifi Module is connecting the Blue LED will flash
  When the Wifi Module is sending data the Blue LED remains on
  
  PLEASE BE SURE TO SET YOUR TRANSMITTER ID, HOST ADDRESS, AES KEY AND WIFI PASSWORDS BELOW

*/

/** Dependencies **************************************************************/
/*#define DEBUG*/
#include <cc2511_map.h>
#include <board.h>
#include <random.h>
#include <time.h>
#include <usb.h>
#include <usb_com.h>
#include <radio_registers.h>
#include <radio_queue.h>
#include <gpio.h>
#include <uart1.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <adc.h>
#include <aes.h>

// There are some references to Fona or Wixfone in this code as it a variation of the mDrip which
// uses the Fona (SIM800L) module.  I will tidy these up at some point in the future!

//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                  //
//                           SET THESE VARIABLES TO MEET YOUR NEEDS                                 //
//                                   1 = TRUE       0 = FALSE                                       //
//                                                                                                  //
  static XDATA const char transmitter_id[] = "6F5YP";                                               
// Replace the above characters with the G4 Transmitter Serial Number (required if flag below is 1) //
//                                                                                                  //
  static volatile BIT only_listen_for_my_transmitter = 1;                                           //
// 1 is recommended - otherwise any G4 can be received                                              //
//                                                                                                  //
  static volatile BIT status_lights = 1;                                                            //
// if status_lights = 1; the yellow light flashes while actively scanning                           //
// if a light is flashing for more than 10 minutes straight, it may not be picking up your dex      //
//                                                                                                  //
  static volatile BIT allow_alternate_usb_protocol = 0;
// if set to 1 and plugged in to USB then protocol output is suitable for dexterity and similar     //
// (the USB stuff does not work so well with my version)                                            //
//                                                                                                  //
  static volatile BIT debug_mode = 0;
// if set to 0 then no packet read and just loops connecting and printing							//
// DO NOT SET THIS TO 0                                                                             //
//..................................................................................................//
//
//	IMPORTANT - ADD YOUR WIFI DETAILS LOWER DOWN IN THE CODE!!
//	I WILL ADD THESE AS VARIABLES HERE LATER....
//
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                  //
//                 Advanced Options, dont change unless you know what you are doing                 //
//                                                                                                  //
//                                                                                                  //
  static volatile uint8 wake_earlier_for_next_miss = 20;                                            //
// if a packet is missed, wake this many seconds earlier to try and get the next one                //
// shorter means better bettery life but more likely to miss multiple packets in a row              //
//                                                                                                  //
  static volatile uint8 misses_until_failure = 0;                                                   //
// after how many missed packets should we just start a nonstop scan?                               //
// a high value is better for conserving batter life if you go out of wixel range a lot             //
// but it could also mean missing packets for MUCH longer periods of time                           //
// a value of zero is best if you dont care at all about battery life                               //
//                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
  static volatile BIT encrypt_output = 1;
// if set to 1 then encrypt using AES to send over public networks (requires decryption at far end) //
//																									//
  static CODE const char apnString[] = "internet";                                                 //
// You only need to change this if using the fona - set your network provider's APN here            //
// this is usually unique for each mobile phone provider and you will probably need to google it    //
// In Ireland the provider 3 (or O2) use "internet" and Vodafone uses "live.vodafone.com"			//
//                                                                                                  //
  static XDATA const char dexie_host_address[] = "REPLACEME.DuckDNS.org";
  static XDATA const char dexie_host_port[] = "17611";
// You only need to change this if using the fona - set your Dexie server details here				//
// This is the address and the port number of the Dexie server which will receive the WixFone data  //
// It may be any address and port that you like but I use a dynamic DNS and recommend this port no. //

   XDATA char wixFone_ID[] = "GGyDrip";		//  <== Replace this with your own if you like			//
// Just identifies this WixFone.  Not really required but handy for seeing who is logging in.		//
// Might use this for mapping Mongo connection strings or TXIDs at some later stage					//  
//                                                                                                  //
//   ************* FOR AES ********************************************************
// static XDATA uint8_t key[] = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };
	static XDATA uint8_t key[] = { 'M','y', 'y', 'D', 'r', '|', 'P', '&', 'A', 'E', 'S', 'r', '@', '[', 'K', '!' };
//  Place your 16 Character ASCII key above!  (And also in your dexie.java)
//..................................................................................................//
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////

static XDATA volatile int8 start_channel = 0;
//uint32 XDATA asciiToDexcomSrc(char *addr);
uint32 XDATA getSrcValue(char srcVal);
//volatile uint32 dex_tx_id;
#define NUM_CHANNELS        (4)
static int8 fOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
static XDATA int8 defaultfOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
static uint8 nChannels[NUM_CHANNELS] = { 0, 100, 199, 209 };
static uint32 waitTimes[NUM_CHANNELS] = { 13500, 500, 500, 500 };
//Now lets try to crank down the channel 1 wait time, if we can 5000 works but it wont catch channel 4 ever
static uint32 delayedWaitTimes[NUM_CHANNELS] = { 0, 700, 700, 700 };
static uint32 catch_offsets[NUM_CHANNELS] = { 0, 0, 0, 0 };
static uint8 last_catch_channel = 0;
BIT needsTimingCalibration = 1;
BIT usbEnabled = 1;
static uint8 save_IEN0;
static uint8 save_IEN1;
static uint8 save_IEN2;
unsigned char XDATA PM2_BUF[7] = {0x06,0x06,0x06,0x06,0x06,0x06,0x04};
unsigned char XDATA dmaDesc[8] = {0x00,0x00,0xDF,0xBE,0x00,0x07,0x20,0x42};
volatile uint8 sequential_missed_packets = 0;

uint8 intMaxStrLen = 80;
XDATA uint8 AT_TIMEOUT = 1; // Was 20!
static XDATA uint32 defaultATWait = 500; // Default time for AT command to respond - crank down to get reduce overall time to send out data

XDATA typedef struct _Dexcom_packet {
    uint8   len;
    uint32  dest_addr;
    uint32  src_addr;
    uint8   port;
    uint8   device_info;
    uint8   txId;
    uint16  raw;
    uint16  filtered;
    uint8   battery;
    uint8   unknown;
    uint8   checksum;
    int8    RSSI;
    uint8   LQI;
} Dexcom_packet;

XDATA typedef struct _InitVect {
	uint8_t iv[16];
	uint8 returncode;
} InitVect;


void sleepInit(void) {
   WORIRQ  |= (1<<4);
}

ISR(ST, 1) {
    IRCON &= 0x7F;
    WORIRQ &= 0xFE;
    SLEEP &= 0xFC;
}

void switchToRCOSC(void) {
    SLEEP &= ~0x04;
    while ( ! (SLEEP & 0x20) );
    CLKCON = (CLKCON & ~0x07) | 0x40 | 0x01;
    while ( !(CLKCON & 0x40) );
    SLEEP |= 0x04;
}

void uartEnable() {
//    U1UCR |= 0x40; //CTS/RTS ON
    U1UCR &= ~0x40; //CTS/RTS Off
	U1CSR |= 0x40;
    delayMs(100);
}

void uartDisable() {
    delayMs(100);
    U1UCR &= ~0x40; //CTS/RTS Off
    U1CSR &= ~0x40; // Receiver disable
}

void blink_yellow_led() {
    if(status_lights) {
        LED_YELLOW(((getMs()/250) % 2));//Blink quarter seconds
    }
}

void blink_red_led() {
    if(status_lights) {
        LED_RED(((getMs()/500) % 2));//Blink half seconds
    }
}

/* Commented out to save memory
int8 getPacketRSSI(Dexcom_packet* p) {
    return (p->RSSI/2)-73;
}
*/

uint8 getPacketPassedChecksum(Dexcom_packet* p) {
    return ((p->LQI & 0x80)==0x80) ? 1:0;
}

uint8 bit_reverse_byte(uint8 in) {
    uint8 XDATA bRet = 0;
    if(in & 0x01)
        bRet |= 0x80;
    if(in & 0x02)
        bRet |= 0x40;
    if(in & 0x04)
        bRet |= 0x20;
    if(in & 0x08)
        bRet |= 0x10;
    if(in & 0x10)
        bRet |= 0x08;
    if(in & 0x20)
        bRet |= 0x04;
    if(in & 0x40)
        bRet |= 0x02;
    if(in & 0x80)
        bRet |= 0x01;
    return bRet;
}

uint8 min8(uint8 a, uint8 b) {
    if(a < b) return a;
    return b;
}

void bit_reverse_bytes(uint8* buf, uint8 nLen) {
    uint8 XDATA i = 0;
    for(; i < nLen; i++) {
        buf[i] = bit_reverse_byte(buf[i]);
    }
}

uint32 dex_num_decoder(uint16 usShortFloat) {
    uint16 XDATA usReversed = usShortFloat;
    uint8 XDATA usExponent = 0;
    uint32 XDATA usMantissa = 0;
    bit_reverse_bytes((uint8*)&usReversed, 2);
    usExponent = ((usReversed & 0xE000) >> 13);
    usMantissa = (usReversed & 0x1FFF);
    return usMantissa << usExponent;
}

char XDATA SrcNameTable[32] = { '0', '1', '2', '3', '4', '5', '6', '7',
                                '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                                'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P',
                                'Q', 'R', 'S', 'T', 'U', 'W', 'X', 'Y' };

void dexcom_src_to_ascii(XDATA uint32 src, XDATA char addr[6]) {
    addr[0] = SrcNameTable[(src >> 20) & 0x1F];
    addr[1] = SrcNameTable[(src >> 15) & 0x1F];
    addr[2] = SrcNameTable[(src >> 10) & 0x1F];
    addr[3] = SrcNameTable[(src >> 5) & 0x1F];
    addr[4] = SrcNameTable[(src >> 0) & 0x1F];
    addr[5] = 0;
}

void clearRxErrors() {	
    if (uart1RxBufferFullOccurred)
    {   uart1RxBufferFullOccurred = 0;							// Clear Buffer Full Errors
		LED_RED(1);												// Error Indicator
	}
	if (uart1RxParityErrorOccurred)
    {   uart1RxParityErrorOccurred = 0;							// Clear Parity Errors
		LED_RED(1);												// Error Indicator
	}
    if (uart1RxFramingErrorOccurred)
    {   uart1RxFramingErrorOccurred = 0;
		LED_RED(1);												// Put the red LED on to show there was an error
		uartDisable();
 //		U1CSR &= ~0x40;										    // U1CSR.RE = 0.  Disables reception of bytes on the UART.
		delayMs(250);											// Crude and will slow us down but we can take the small hit
//      U1CSR |= 0x40;									        // The line has been high for long enough, so re-enable the receiver.
//	It would be nice to check the uart status here before we switch it on again
		uartEnable();
    }
		LED_RED(0);												// Error Indicator
}

void doServices() {
    boardService();
    if(usbPowerPresent()) {
        usbComService();
	    usbShowStatusWithGreenLed();
//		LED_RED(usbComRxControlSignals() & ACM_CONTROL_LINE_DTR);
//		clearRxErrors();		//	Tentatively added this as otherwise might freeze waiting for an RX or TX buffer but may unintentionally enable UART
    }
}

void initUart1() {
    uart1Init();
    uart1SetBaudRate(9600);
}

/* This takes too much DSEG memory so will use Dex_To_ASCII instead
uint32 asciiToDexcomSrc(char addr[6]) {
    uint32 XDATA src = 0;
    src |= (getSrcValue(addr[0]) << 20);
    src |= (getSrcValue(addr[1]) << 15);
    src |= (getSrcValue(addr[2]) << 10);
    src |= (getSrcValue(addr[3]) << 5);
    src |= getSrcValue(addr[4]);
    return src;
}
*/

uint32 getSrcValue(XDATA char srcVal) {
    XDATA uint8 i = 0;
    for(i = 0; i < 32; i++) {
        if (SrcNameTable[i]==srcVal) break;
    }
    return i & 0xFF;
}

XDATA char * getFonaString() {					// Read the uart input buffer once character at a time
   XDATA char uartCharacters[80];
   XDATA int8 i;
   XDATA int32 stop;
   XDATA int32 now;
	i=0;

// Wait for some response back from Fona
	stop = (getMs() + (AT_TIMEOUT * 1000));
	now  = getMs();
//	while (uart1RxAvailable() == 0 && stop > getMs()) {
	while (uart1RxAvailable() == 0 && stop > now) {				// This && is still using up some DSEG but is cheaper than comparing stop to getMS()
		now  = getMs();
		delayMs(10);
	}  
	
	while (uart1RxAvailable() && i < 80) {
//		cli();													// disable interrupts to avoid rx errors
		uartCharacters[i] = uart1RxReceiveByte();
//		sei();			// enable interrupts not what the rx is complete
// Echo input received back out to USB also
	    if (usbPowerPresent()) {
			while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
//				LED_RED(1);												// Error Indicator
				doServices();
			} ;
			usbComTxSendByte(uartCharacters[i]);
		}
		delayMs(10);
		i++;
//		if (uart1RxAvailable() && i == 80) i=0;					// wrap around for another line if more text  (very crude) 
	}
	uartCharacters[i] = 0;										// Add an end-of-string character after copying the input into the character array
	return uartCharacters;
}

void sendAT(XDATA char atString[40]) {
    XDATA char ATresponse[80]={0};
	uartEnable();
	printf(atString);
	delayMs(defaultATWait);
}	

void enableESP() {
	XDATA char c[80] = {0};
	char *point;
    XDATA char nofile[] = "cannot";
    uartEnable();													// Enable the serial connection
	
	strcpy(c, (getFonaString())); // Clear buffer
	printf("dofile(\"init.lua\")\r\n");; delayMs(3000);
	strcpy(c, (getFonaString())); // Clear buffer
	point = strstr(c,nofile);
	
	if (point == NULL) {											// This check doesn't seem to work.  I might need to check the pointer contents
		printf("-- No need to write out .lua files as they seem to already exist --\r\n");; delayMs(defaultATWait);
		// if the pointer is null then the string saying "cannot open googletime" was not sent so we assume that it ran OK (bit of a double-negative)
		} else {
		// if the pointer is not null then we must have found the error message in the result string to tell us that the .lua file does not exist
		printf("-- Writing out .lua files as they cannot be found --\r\n"); delayMs(defaultATWait);

	printf("file.open(\"init.lua\", \"w\")\r\n");; delayMs(defaultATWait)	; delayMs(defaultATWait);
	printf("file.writeline([[gpio.mode(3, gpio.OUTPUT)]])\r\n")				; delayMs(defaultATWait);	delayMs(defaultATWait);
	printf("file.writeline([[gpio.write(3, gpio.LOW)]])\r\n")				; delayMs(defaultATWait);	delayMs(defaultATWait);
	printf("file.writeline([[gpio.mode(5, gpio.OUTPUT)]])\r\n")				; delayMs(defaultATWait);	delayMs(defaultATWait);
	printf("file.writeline([[gpio.write(5, gpio.LOW)]])\r\n")				; delayMs(defaultATWait);	delayMs(defaultATWait);
	printf("file.writeline([[gpio.mode(4, gpio.OUTPUT)]])\r\n")				; delayMs(defaultATWait);	delayMs(defaultATWait);
	printf("file.close()\r\n")												; delayMs(defaultATWait);

	
//	THIS IS A SAMPLE OF HOW IT APPEARS IN THE RAW
//
//	conn=net.createConnection(net.TCP, 0) 
//
//	conn:on("connection",function(conn, payload)
//            conn:send("HEAD / HTTP/1.1\r\n".. 
//                      "Host: google.com\r\n"..
//                      "Accept: */*\r\n"..
//                      "User-Agent: Mozilla/4.0 (compatible; esp8266 Lua;)"..
//                      "\r\n\r\n") 
//            end)
//            
//	conn:on("receive", function(conn, payload)
//		print('\nRetrieved in '..((tmr.now()-t)/1000)..' milliseconds.')
//    	print('Google says it is '..string.sub(payload,string.find(payload,"Date: ")
//           +6,string.find(payload,"Date: ")+35))
//    conn:close()
//    end) 
//	t = tmr.now()    
//	conn:connect(80,'google.com') 


//	Write googletime.lua
	printf("file.remove('googletime.lua')\r\n");																		; delayMs(defaultATWait);
	printf("file.open(\"googletime.lua\", \"w\")\r\n");											; delayMs(defaultATWait); delayMs(defaultATWait);

	printf("file.writeline([[connG=net.createConnection(net.TCP, 0)]])\r\n")											; delayMs(defaultATWait);
	printf("file.writeline([[connG:on(\"connection\",function(conn, payload)]])\r\n")									; delayMs(defaultATWait);

	printf("file.writeline([[connG:send(\"HEAD / HTTP/1.1\\r\\nHost: google.com\\r\\n\Accept: */*\\r\\n\"..]])\r\n")	; delayMs(defaultATWait);
	printf("file.writeline([[\"User-Agent: Mozilla/4.0 (compatible; esp8266 Lua;)\\r\\n\\r\\n\") end)]])\r\n")			; delayMs(defaultATWait);

	printf("file.writeline(\"connG:on(\\\"receive\\\", function(connG, payload)\")\r\n")														; delayMs(defaultATWait);
	printf("file.writeline(\"print(string.sub(payload,string.find(payload,\\\"Date:\\\")+18,string.find(payload,\\\"Date:\\\")+21)..\")\r\n")	; delayMs(defaultATWait);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+15,string.find(payload,\\\"Date:\\\")+16)..\")\r\n")			; delayMs(defaultATWait);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+11,string.find(payload,\\\"Date:\\\")+12)..\")\r\n")			; delayMs(defaultATWait);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+23,string.find(payload,\\\"Date:\\\")+24)..\")\r\n")			; delayMs(defaultATWait);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+26,string.find(payload,\\\"Date:\\\")+27)..\")\r\n")			; delayMs(defaultATWait);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+29,string.find(payload,\\\"Date:\\\")+30)..\")\r\n")			; delayMs(defaultATWait);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+14,string.find(payload,\\\"Date:\\\")+16)..\\\"\\\\r\\\\n\\\")\")\r\n")	; delayMs(defaultATWait);
	//	This gives Month as second and third characters (e.g. Jan is "an") as these are unique for each month
	//	Dexie can translate this afterwards to two digits MM (or maybe even here if I get chance and have enough memory)
	printf("file.writeline(\"connG:close()\")\r\n")																		; delayMs(defaultATWait);
	printf("file.writeline(\"end)\")\r\n")																				; delayMs(defaultATWait);
    printf("file.writeline([[connG:connect(80,'google.com')]])\r\n")													; delayMs(defaultATWait);	// trigger output of date
	printf("file.close()\r\n");																							; delayMs(defaultATWait);

	printf("print('connG ready\\r\\n')\r\n");																			; delayMs(defaultATWait);
	
//	As we had to write them, they will not have been run before so we need to run them now	
	
	strcpy(c, (getFonaString())); // Clear buffer
	printf("dofile(\"init.lua\")\r\n");; delayMs(3000);

}

}

XDATA int16 getWifiStatus() {						// Read responses from ESP2866 module to see if there is a Wifi Connection (status 5)
	XDATA static int16 i=0;
	XDATA int16 intStatus = 0;
	XDATA char c[80] = {0};

	c[0]=0;											// And mark string as empty
	clearRxErrors();

	boardService();
	uartEnable();
	strcpy(c, (getFonaString()));					// Clear input buffer

	printf("print(wifi.sta.status())\r\n");
	delayMs(defaultATWait);

//	rxCount = uart1RxAvailable();
	while (uart1RxAvailable() > 0) {
		strcpy(c, (getFonaString()));
	}
	
	i = strlen(c);
	if  (i>5) {
		intStatus=(((c[i-5])-'0'));					// Convert character to integer.  1 connecting, 5 connected, etc.
		} else {
		intStatus=0;
	} ;
		
	return intStatus;
}

void wifiFlash() {									// Should probably tighten this up with a loop and check for WiFi status every second
	printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (Flash)
	delayMs(500);
	printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED (Flash)
	delayMs(500);
}

BIT wifiConnect() {
	XDATA char static atString[40];
	XDATA int16 intWifiStatus = 0;
	
    uartEnable();													// Enable the serial connection
	delayMs(100);													// Wait for it to open

	printf("gpio.write(4, gpio.LOW)\r\n");							// Switch on Blue LED
	delayMs(defaultATWait);

	printf("wifi.sta.connect()\r\n");
	wifiFlash();													// Should probably loop here and check every second rather than waiting for 5
	
	intWifiStatus = getWifiStatus();

//	Different networks are hard-coded here in order of likelihood.  I should probably stick these in array at the top and turn this into a loop
//	In the meantime manually change the names below yourself, in order of most likely to be connected to
	
//	HOME	
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
		delayMs(defaultATWait);
		printf("wifi.sta.config(\"HomeWifiName\",\"HomeWifiKey\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
		intWifiStatus = getWifiStatus();
	}

//	SCHOOL 1	
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
		delayMs(defaultATWait);
		printf("wifi.sta.config(\"SchoolWifiDdownstairs\",\"SchoolPassword\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
		wifiFlash();							// Add in an extra round of flashing if this network can take longer to connect														// wait longer as slower netword
		intWifiStatus = getWifiStatus();
	}

//	SCHOOL 2
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
		delayMs(defaultATWait);
		printf("wifi.sta.config(\"SchoolUpstairs\",\"SchoolPassword\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
		wifiFlash();							// Add in an extra round of flashing if this network can take longer to connect														// wait longer as slower netword
		intWifiStatus = getWifiStatus();
	}

//	COMMENT OUT ANY ENTRIES THAT YOU DO NOT NEED
	
//	AVON RI
/*	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
		delayMs(defaultATWait);
		printf("wifi.sta.config(\"ARGUST\",\"arguest1\!\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
//		delayMs(5000);
		intWifiStatus = getWifiStatus();
	}
*/

//	HILLSIDE	
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
		delayMs(defaultATWait);
		printf("wifi.sta.config(\"Hillside\",\"RandomChars\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
//		delayMs(5000);
		intWifiStatus = getWifiStatus();
	}
	
//	MOBILE HOTSPOT
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
		delayMs(defaultATWait);
		printf("wifi.sta.config(\"Cagey_HTC\",\"Cagey1234567890\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
//		delayMs(5000);
		intWifiStatus = getWifiStatus();
	}

//	YOU CAN ADD IN MORE WIFI HOTSPOTS HERE BY COPYING AN ENTRY FROM ABOVE IF YOU NEED

//	Connect to Dexie Server
	if (intWifiStatus == 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");								// Make sure Blue LED is still on
		delayMs(defaultATWait);
		strcpy(atString, "sk=net.createConnection(net.TCP, 0)\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
		delayMs(defaultATWait);
		strcpy(atString, "sk:on(\"receive\", function(sck, c) print(c) end )\r\n"); sendAT(atString); // print stuff you get back
		delayMs(defaultATWait);

		strcpy(atString, "sk:connect(");
		strcat(atString, dexie_host_port);
		strcat(atString, ",\"");
		strcat(atString, dexie_host_address);
		strcat(atString, "\")\r\n");
		sendAT(atString);
		delayMs(defaultATWait);
		delayMs(defaultATWait);								        // another delay to be sure server is listening
		return 1;
	} else {
		printf("gpio.write(4, gpio.HIGH)\r\n");delayMs(defaultATWait);			// Switch off Blue LED (to show no wifi connection)
		return 0;
	}
	
//  	printf("Hello - xDrip2G client for %s connected OK\r\n",wixFone_ID); // delayMs(defaultATWait);				// Just being polite really
//	sendAT(atString);//	Now ready to send data to the Dexie server. It will all then be sent with a CTRL-Z (\032) in fonaDisable() before closing the connection.
}

void getTimeBytes(InitVect* tVector) {
	
	XDATA char c[80];
	XDATA int16 lenC;
	XDATA int8 i;
	XDATA char strMMM[4];
	
/*
	14 in IV : YYYYMMDDHHMMSS00

	4 YYYY		18-21
	6 MM		15-16
	8 DD		11-12
	10 HH		23-24
	12 MM		26-27
	14 SS		28-29
	15 txid
	16 checksum
*/

// Return pieces of the date required for the first 14 bytes of the AES Initialisation Vector (YYYYMMDDHHMMSS)
// Unlike the Fona, MM in this case is sadly not numeric so we take on mmm at the end and do some manipulation with that
// Later, byte 15 will be txid and byte 16 will be the checksum (from the dexcom packet)

while (uart1RxAvailable()) strcpy(c, getFonaString());										// Clear RX buffer

strcpy(c, (getFonaString())); // Clear buffer
printf("dofile(\"googletime.lua\")\r\n")	;delayMs(defaultATWait);	// Make connection and trigger output of date

strcpy(c, getFonaString());
lenC=strlen(c);
if (debug_mode) printf("-- **DEBUG** length of C is %d\r\n", lenC);

printf("\r\n"); delayMs(defaultATWait);							//	Press return a couple of times
printf("\r\n"); delayMs(defaultATWait);							//	to get ESP back to normal prompt


i=0;
while (i < 14) {												//	Put the relevant characters from the response string into the IV array
	tVector->iv[i] =  c[(lenC - 21) + i];
	i++;
}

//	Create string with 3 character mmm month for deriving MM in IV
	strMMM[0]=c[(lenC - 21) + 14];
	strMMM[1]=c[(lenC - 21) + 15];
	strMMM[2]=c[(lenC - 21) + 16];
	strMMM[3]='\0';

tVector->iv[4] = '0';
if (strcmp(strMMM,"Jan") == 0) tVector->iv[5] = '1';
if (strcmp(strMMM,"Feb") == 0)	tVector->iv[5] = '2';
if (strcmp(strMMM,"Mar") == 0)	tVector->iv[5] = '3';
if (strcmp(strMMM,"Apr") == 0)	tVector->iv[5] = '4';
if (strcmp(strMMM,"May") == 0)	tVector->iv[5] = '5';
if (strcmp(strMMM,"Jun") == 0)	tVector->iv[5] = '6';
if (strcmp(strMMM,"Jul") == 0)	tVector->iv[5] = '7';
if (strcmp(strMMM,"Aug") == 0)	tVector->iv[5] = '8';
if (strcmp(strMMM,"Sep") == 0)	tVector->iv[5] = '9';
if (strcmp(strMMM,"Oct") == 0)	tVector->iv[5] = '0';

if ((strcmp(strMMM,"Oct") == 0) ||(strcmp(strMMM,"Nov") == 0) || (strcmp(strMMM,"Dec")) == 0)	tVector->iv[4] = '1';
if (strcmp(strMMM,"Nov") == 0)	tVector->iv[5] = '1';
if (strcmp(strMMM,"Dec") == 0)	tVector->iv[5] = '2';
}


void ESPsleep () {
	printf("sk:close()\r\n");										// Close the TCP connection	- Response should be CLOSE OK
	delayMs(defaultATWait);
	printf("node.dsleep(270000000)\r\n");							// Deep Sleep 4.5 minutes (270 Seconds) - probably tweak this a bit
	delayMs(defaultATWait);
	}


XDATA void print_packet(Dexcom_packet* pPkt) {
    XDATA char transID[] = "BLANK"; 

// Secret Key - 16 bytes
//	XDATA uint8_t key[] = { 0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c };

// Initialisation Vector - non-repeating but not necessarily random.  This will be populated with the date/time epoch and send in the preamble
// It does not really need to be initialised here but just filling it to be safe
	XDATA uint8_t iv[16]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };

// Input Text - 16 bytes
	XDATA uint8_t i;
	XDATA uint8_t sprintfBuffer[64];
	XDATA uint8_t AESBuffer[64];
	XDATA int prtlen;

	InitVect getTimeResponse;
    uartEnable();

//	delayMs(60000);												//	Used for debugging - when I want to run downstairs and connect to the TTL cable
	LED_YELLOW(0);
	LED_RED(0);

	getTimeBytes(&getTimeResponse);							//	Connect to google and get the time
	strcpy(iv, getTimeResponse.iv);							//	and use this to populate the Initialisation Vector
	if (debug_mode) printf("-- **DEBUG** iv is %s\r\n", iv);
	
	iv[14]=pPkt->txId;										//	Randomise the IV further by updating this spare byte with the packet sequence number
	iv[15]=pPkt->checksum;									//	Randomise the IV further by updating this other spare byte with the packet checksum

	if (wifiConnect()) {		// Establish a connection to the Dexie server
		LED_RED(1);
		dexcom_src_to_ascii(pPkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID

		prtlen = sprintf(sprintfBuffer, "%s %hhu %s %lu %lu %d %d 100 -16.127100,51.241300",	// Includes home GPS coordinates for Dexie - change to yours
			wixFone_ID, 					 				// 		xDrip2g Device Identifier
			pPkt->txId, 					 				// 		Transmission ID - unique-ish identifier
			transID,						 				// 		Transmitter ID - from packet in case only_listen_for_my_transmitter false
			dex_num_decoder(pPkt->raw),		 				// 		Raw BQ Value
			dex_num_decoder(pPkt->filtered)*2,				// 		Filtered BG Value
			pPkt->battery, 					 				// 		Dexcom Transmitter Battery
			(((pPkt->RSSI)/2)-73));							//		Received Signal Strength Indicator

		for(i = prtlen; i < 64; ++i)
			sprintfBuffer[i]=' ';							//		Fill rest of array with spaces

		if (encrypt_output==1) {							//		Check if to encode the output using AES-128 encryption
			AES128_CBC_encrypt_buffer(AESBuffer, sprintfBuffer, 64, key, iv);   //	encrypt(output, input, length, key, vector)
			printf("sk:send(\"yDrip(AES): ");				//		Send the preamble to the Dexie Server first
			for(i = 0; i < 16; ++i)							
				printf("%02x", iv[i]);						//		Print initialisation vector as cleartext.  This is not a secret, just unique.
			printf(" ");									//		Separate IV from encrypted text with a delimiting space
		} else {											//		Or else there is no encryption required so...
			strcpy(AESBuffer, sprintfBuffer); 				// 		Just copy the characters that we want to send in the clear if no encryption
			printf("sk:send(\"yDrip: ");					//		Slightly different preamble so Dexie knows the/re is no encryption - and no IV needed
		}													//		and now the remaining text in AESBuffer will be plaintext or ciphertext, as required
		
		for(i = 0; i < 64; ++i) 							//		Loop through 64 character block of encrypted text
			printf("%02x", AESBuffer[i]);					//		and print each character, one by one

		printf("\\r\\n\")\r\n");	delayMs(defaultATWait);	// 		CR/LF

		printf("gpio.write(4, gpio.HIGH)\r\n"); delayMs(defaultATWait);	// Switch off blue LED

		delayMs(defaultATWait);									// Need to wait here also as sometimes missing ctrl-z
//		delayMs(defaultATWait);
	}													// End of conditions for wifi connected
	uartDisable();
}

void makeAllOutputs() {
    int XDATA i;
    for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
        setDigitalOutput(i, LOW);
    }
}
void makeAllOutputsLow() {
    int XDATA i;
    for (i=0; i < 16; i++) {
        setDigitalOutput(i, LOW);
    }
}

void reset_offsets() {
    int XDATA i;
    for(i=0; i<4; i++) {
        fOffset[i] = defaultfOffset[i];
    }
}

void killWithWatchdog() {
    WDCTL = (WDCTL & ~0x03) | 0x00;
    WDCTL = (WDCTL & ~0x04) | 0x08;
}

XDATA void goToSleep (XDATA int16 seconds) {
    adcSetMillivoltCalibration(adcReadVddMillivolts());
    makeAllOutputsLow();

    if(!needsTimingCalibration) {
        if(!usbPowerPresent()){
            unsigned char temp;
            unsigned char storedDescHigh, storedDescLow;
            BIT storedDma0Armed;
            unsigned char storedIEN0, storedIEN1, storedIEN2;

            uint8 savedPICTL = PICTL;
            BIT savedP0IE = P0IE;
            uint8 savedP0SEL = P0SEL;
            uint8 savedP0DIR = P0DIR;
            uint8 savedP1SEL = P1SEL;
            uint8 savedP1DIR = P1DIR;

            sleepInit();

            disableUsbPullup();
            usbDeviceState = USB_STATE_DETACHED;
            usbEnabled = 0;
            SLEEP &= ~(1<<7);

            WORCTRL |= 0x03; // 2^5 periods
            switchToRCOSC();

            storedDescHigh = DMA0CFGH;
            storedDescLow = DMA0CFGL;
            storedDma0Armed = DMAARM & 0x01;
            DMAARM |= 0x81;
            dmaDesc[0] = ((unsigned int)& PM2_BUF) >> 8;
            dmaDesc[1] = (unsigned int)& PM2_BUF;

            DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
            DMA0CFGL = (unsigned int)&dmaDesc;
            DMAARM = 0x01;

            // save enabled interrupts
            storedIEN0 = IEN0;
            storedIEN1 = IEN1;
            storedIEN2 = IEN2;

            //enable sleep timer interrupt
            IEN0 |= 0xA0;

            //disable all interrupts except the sleep timer
            IEN0 &= 0xA0;
            IEN1 &= ~0x3F;
            IEN2 &= ~0x3F;

            WORCTRL |= 0x04;  // Reset
            temp = WORTIME0;
            while(temp == WORTIME0) {};
            WOREVT1 = seconds >> 8;
            WOREVT0 = seconds;

            temp = WORTIME0;
            while(temp == WORTIME0) {};

            MEMCTR |= 0x02;
            SLEEP = 0x06;
            __asm nop __endasm;
            __asm nop __endasm;
            __asm nop __endasm;
            if(SLEEP & 0x03){
                __asm mov 0xD7, #0x01 __endasm;
                __asm nop __endasm;
                __asm orl 0x87, #0x01 __endasm;
                __asm nop __endasm;
            }
            IEN0 = storedIEN0;
            IEN1 = storedIEN1;
            IEN2 = storedIEN2;
            DMA0CFGH = storedDescHigh;
            DMA0CFGL = storedDescLow;
            if(storedDma0Armed){
                DMAARM |= 0x01;
            }
            // Switch back to high speed
            boardClockInit();

            PICTL = savedPICTL;
            P0IE = savedP0IE;
            P0SEL = savedP0SEL;
            P0DIR = savedP0DIR;
            P1SEL = savedP1SEL;
            P1DIR = savedP1DIR;
            USBPOW = 1;
            USBCIE = 0b0111;
        } else {
            uint32 start_waiting = getMs();
            if(!usbEnabled) {
                usbDeviceState = USB_STATE_POWERED;
                enableUsbPullup();
                usbEnabled = 1;
            }
            delayMs(100);
            while((getMs() - start_waiting) < (seconds * 1000)) {
                doServices();
            }
        }
    }
    makeAllOutputs();
}


void putchar(XDATA char c) {
	while(uart1TxAvailable() == 0) {								//  Loop until space in the TX buffer to send a character
		LED_RED(1);													// Error Indicator
		boardService();
	} ;
//	cli();															// disable interrupts to avoid tx errors
    uart1TxSendByte(c);
//	sei();															// enable interrupts not what the tx is complete
    if (usbPowerPresent()) {
		while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
//			LED_RED(1);												// Error Indicator
			boardService();
		} ;
        usbComTxSendByte(c);
		boardService();
		}
//	USB up to here	
	LED_RED(0);														// Error gone
}

// void printfUSB(unit8 XDATA *buffer stringForUSB) {  // Used for usbComTxSend
void printfUSB(char * stringForUSB) {
	XDATA uint8 length, i;
	
    if (usbPowerPresent()) {
	
		length = strlen(stringForUSB);
        stringForUSB[length++] = ('/r');
        stringForUSB[length++] = ('/n');
		
		for(i = 0; i < length; ++i) {
			while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send each character
				doServices();
			} ;
			usbComTxSendByte(stringForUSB[i]);		
		}
	}
// Probably recreating usbComTxSend (const uint8 XDATA *buffer, uint8 size) here	
// usbComTxSend(stringForUSB,length);

}


void swap_channel(XDATA uint8 channel, XDATA uint8 newFSCTRL0) {
    do {
        RFST = 4;   //SIDLE
    } while (MARCSTATE != 0x01);

    FSCTRL0 = newFSCTRL0;
    CHANNR = channel;
    RFST = 2;   //RX
}

void strobe_radio(int radio_chan) {
    radioMacInit();
    MCSM1 = 0;
    radioMacStrobe();
    swap_channel(nChannels[radio_chan], fOffset[radio_chan]);
}


int WaitForPacket(XDATA uint16 milliseconds, Dexcom_packet* pkt, XDATA uint8 channel) {
    XDATA uint32 start = getMs();
    XDATA uint8 * packet = 0;
    XDATA uint32 i = 0;
    XDATA uint32 six_minutes = 360000;						//	SWITCH TO 3600 WHEN DEBUGGING
    XDATA int nRet = 0;
    XDATA char transID[] = "BLANK"; 	// Line added
    swap_channel(nChannels[channel], fOffset[channel]);
	if (debug_mode) six_minutes = 3000;
	
	LED_RED(0);												// Error Indicator
    while (!milliseconds || (getMs() - start) < milliseconds) {
        doServices();
        blink_yellow_led();
        i++;
        if(!(i % 40000)) {
            strobe_radio(channel);
        }
        if(getMs() - start > six_minutes) {
            killWithWatchdog();
            delayMs(2000);
			LED_RED(1);												// Error Indicator
			}
        if (packet = radioQueueRxCurrentPacket()) {
            uint8 len = packet[0];
            fOffset[channel] += FREQEST;
            memcpy(pkt, packet, min8(len+2, sizeof(Dexcom_packet)));
            if(radioCrcPassed()) {
				dexcom_src_to_ascii(pkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
//                if(pkt->src_addr == dex_tx_id || dex_tx_id == 0 || only_listen_for_my_transmitter == 0) {  // Making dex_tx_id uses too much memory
				if(strcmp(transID,transmitter_id) == 0 || only_listen_for_my_transmitter == 0) { // strcmp will be zero if they match
                    pkt->txId -= channel;
                    radioQueueRxDoneWithPacket();
                    LED_YELLOW(0);
                    last_catch_channel = channel;

					return 1;
                } else {
                    radioQueueRxDoneWithPacket();
                }
            } else {
                radioQueueRxDoneWithPacket();
                LED_YELLOW(0);
                return 0;
            }
        }
    }
    LED_YELLOW(0);
    return nRet;
}

XDATA uint32 delayFor(XDATA int wait_chan) {
    if(needsTimingCalibration) {
        return delayedWaitTimes[wait_chan];
    }
    if(!wait_chan && sequential_missed_packets) {
        return waitTimes[wait_chan] + (sequential_missed_packets * wake_earlier_for_next_miss * 2 * 1000);
    } else {
        return waitTimes[wait_chan];
    }
}

BIT get_packet(Dexcom_packet* pPkt) {
    int nChannel = 0;
    for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
        switch(WaitForPacket(delayFor(nChannel), pPkt, nChannel)) {
        case 1:
            needsTimingCalibration = 0;
            sequential_missed_packets = 0;
            return 1;
        case 0:
            continue;
        }
    }
    sequential_missed_packets ++;
    if(sequential_missed_packets > misses_until_failure) {
        sequential_missed_packets = 0;
        needsTimingCalibration = 1;
    }
    reset_offsets();
    last_catch_channel = 0;
    return 0;
}

void setADCInputs() {
    P0INP=0; //set pull resistors on pins 0_0 - 0_5 to low
}


void main() {
//    delayMs(3000);
    systemInit();
   initUart1();
//	usbInit();
    P1DIR |= 0x08; // RTS
    sleepInit();
    makeAllOutputs();
    setADCInputs();
    delayMs(1000);

//    LED_GREEN (1);
//	if(!usbEnabled) {
//		usbDeviceState = USB_STATE_POWERED;
//		enableUsbPullup();
//		usbEnabled = 1;
//		doServices();
//	}

    radioQueueInit();
    radioQueueAllowCrcErrors = 1;
    MCSM1 = 0;
	enableESP();

    while(1) {
        Dexcom_packet Pkt;
        memset(&Pkt, 0, sizeof(Dexcom_packet));
        boardService();

		if (debug_mode) {
			print_packet(&Pkt);	
		} else {
        if(get_packet(&Pkt)) {
			RFST = 4;
			delayMs(100);
			radioMacSleep();
            print_packet(&Pkt);
			ESPsleep();											// Disconnect and send the fona asleep
        }
		else {
			RFST = 4;
			delayMs(100);
			radioMacSleep();
				LED_RED(1);	    LED_YELLOW(0);    delayMs(7000);	LED_RED(0);	    LED_YELLOW(0);    //		delayMs(3000);
			 }
		}
		
//		Moving this above so saving a bit of battery maybe
//        RFST = 4;
//        delayMs(100);
//        radioMacSleep();
        if(usbPowerPresent()){
            sequential_missed_packets++;	// Why only increment this if usb connected?  It is incremented in get_packet also so a bit confusing
        }
        if(sequential_missed_packets > 0) {
			int first_square = sequential_missed_packets * sequential_missed_packets * wake_earlier_for_next_miss;
			int second_square = (sequential_missed_packets - 1) * (sequential_missed_packets - 1) * wake_earlier_for_next_miss;
			int sleep_time = (245 - first_square + second_square);
			goToSleep(sleep_time);
        } else {
			goToSleep(250);		// Wixel sleep for 250 seconds
        }
				
        radioMacResume();
        MCSM1 = 0;
        radioMacStrobe();
    }
}