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
  static volatile uint8 misses_until_failure = 1;                                                   //
// after how many missed packets should we just start a nonstop scan?                               //
// a high value is better for conserving batter life if you go out of wixel range a lot             //
// but it could also mean missing packets for MUCH longer periods of time                           //
// a value of zero is best if you dont care at all about battery life                               //
//                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
  static volatile BIT encrypt_output = 1;
// if set to 1 then encrypt using AES to send over public networks (requires decryption at far end) //
//																									//
  static XDATA const char dexie_host_address[] = "REPLACEME.DuckDNS.org";
  static XDATA const char dexie_host_port[] = "17611";
// You only need to change this if using the ESP - set your Dexie server details here				//
// This is the address and the port number of the Dexie server which will receive the WixFone data  //
// It may be any address and port that you like but I use a dynamic DNS and recommend this port no. //
//
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
uint32 XDATA getSrcValue(char srcVal);
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
static XDATA uint32 defaultWaitTime = 500; // Default time for AT command to respond - crank down to get reduce overall time to send out data

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
		LED_YELLOW(1);
	}
	if (uart1RxParityErrorOccurred)
    {   uart1RxParityErrorOccurred = 0;							// Clear Parity Errors
		LED_RED(1);												// Error Indicator
		LED_YELLOW(1);
	}
    if (uart1RxFramingErrorOccurred)
    {   uart1RxFramingErrorOccurred = 0;
		LED_RED(1);												// Put the red LED on to show there was an error
		LED_YELLOW(1);
		uartDisable();
 //		U1CSR &= ~0x40;										    // U1CSR.RE = 0.  Disables reception of bytes on the UART.
		delayMs(250);											// Crude and will slow us down but we can take the small hit
//      U1CSR |= 0x40;									        // The line has been high for long enough, so re-enable the receiver.
		uartEnable();											// It would be nice to check the uart status here before we switch it on again
    }
		LED_RED(0);												// Error Indicator
		LED_YELLOW(0);
}

void doServices() {
    boardService();
    if(usbPowerPresent()) {
        usbComService();
	    usbShowStatusWithGreenLed();
//		LED_RED(usbComRxControlSignals() & ACM_CONTROL_LINE_DTR);
    }
}

void initUart1() {
    uart1Init();
    uart1SetBaudRate(9600);
}

uint32 getSrcValue(XDATA char srcVal) {
    XDATA uint8 i = 0;
    for(i = 0; i < 32; i++) {
        if (SrcNameTable[i]==srcVal) break;
    }
    return i & 0xFF;
}

XDATA char * getESPString() {					// Read the uart input buffer once character at a time
   XDATA char uartCharacters[80];
   XDATA int8 i;
   XDATA int32 stop;
   XDATA int32 now;
	i=0;

// Wait for some response back from ESP
	stop = (getMs() + (defaultWaitTime * 2));
	now  = getMs();
//	while (uart1RxAvailable() == 0 && stop > getMs()) {
	while (uart1RxAvailable() == 0 && stop > now) {				// This && is still using up some DSEG but is cheaper than comparing stop to getMS()
		now  = getMs();
		delayMs(10);
	}  
	
	while (uart1RxAvailable() && i < 80) {
		uartCharacters[i] = uart1RxReceiveByte();
// Echo input received back out to USB also
	    if (usbPowerPresent()) {
			while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
				doServices();
			} ;
			usbComTxSendByte(uartCharacters[i]);
		}
		delayMs(10);
		i++;
		if (uart1RxAvailable() && i == 80) i=0;					// wrap around for another line if more text (very crude)
			}
	uartCharacters[i] = 0;										// Add an end-of-string character after copying the input into the character array
	return uartCharacters;
}

void sendAT(XDATA char atString[40]) {
    XDATA char ATresponse[80]={0};
	uartEnable();
	printf(atString);
	delayMs(defaultWaitTime);
}	

void enableESP() {
	XDATA char c[80] = {0};
	char *point;
    XDATA char nofile[] = "cannot";
	XDATA static int16 clen=0;
//	Reset the ESP-12 by pulling the Reset PIN low using P1_0 on the Wixel to trigger this through an NPN transistor
//	setPort1PullType(LOW);
	if (debug_mode) {
		LED_YELLOW(1);	LED_RED(1);	delayMs(1500);				// Let it do startup messages etc.
		LED_YELLOW(0);	LED_RED(0);	delayMs(1000);				// Let it do startup messages etc.
		LED_YELLOW(1);	LED_RED(1);	delayMs(1500);				// Let it do startup messages etc.
	}
	setDigitalOutput(10,HIGH);									// Set pin high in order to reset the ESP
    boardService();
	delayMs(500);												// Wait .2 seconds
	setDigitalInput(10,HIGH_IMPEDANCE);							// Have to release it afterwards to let it start functioning
    boardService();
//	Now wait a little bit and then start sending instructions
	LED_YELLOW(0);	delayMs(3000);								// Let it do startup messages etc.
	LED_RED(0);    uartEnable();								// Enable the serial connection
	
	strcpy(c, (getESPString())); // Clear buffer
	printf("dofile(\"init.lua\")\r\n");; delayMs(5000);
	strcpy(c, (getESPString())); // Clear buffer
	clen = strlen(c);
	point = strstr(c,nofile);									// Find the word "cannot".  The variable "point" will be null if that text if init.lua runs OK.
	
	if (point == NULL) {										// This check doesn't seem to work.  I might need to check the pointer contents
		printf("-- No need to write out .lua files as they seem to already exist --\r\n");; delayMs(defaultWaitTime);
		// if the pointer is null then the string saying "cannot open googletime" was not sent so we assume that it ran OK (bit of a double-negative)
		} else {
		// if the pointer is not null then we must have found the error message in the result string to tell us that the .lua file does not exist
		printf("-- Writing out .lua files as they cannot be found --\r\n"); delayMs(defaultWaitTime);
		printf("-- Length is %d\r\n",clen); delayMs(defaultWaitTime);
		
	printf("file.open(\"init.lua\", \"w\")\r\n");; delayMs(defaultWaitTime)	; delayMs(defaultWaitTime);
	printf("file.writeline([[gpio.mode(3, gpio.OUTPUT)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	printf("file.writeline([[gpio.write(3, gpio.LOW)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	printf("file.writeline([[gpio.mode(5, gpio.OUTPUT)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	printf("file.writeline([[gpio.write(5, gpio.LOW)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	printf("file.writeline([[gpio.mode(4, gpio.OUTPUT)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	printf("file.close()\r\n")												; delayMs(defaultWaitTime);

//	Write googletime.lua
	printf("file.remove('googletime.lua')\r\n");																		; delayMs(defaultWaitTime);
	printf("file.open(\"googletime.lua\", \"w\")\r\n");										; delayMs(defaultWaitTime); delayMs(defaultWaitTime);

	printf("file.writeline([[connG=net.createConnection(net.TCP, 0)]])\r\n")											; delayMs(defaultWaitTime);
	printf("file.writeline([[connG:on(\"connection\",function(conn, payload)]])\r\n")									; delayMs(defaultWaitTime);

	printf("file.writeline([[connG:send(\"HEAD / HTTP/1.1\\r\\nHost: google.com\\r\\n\Accept: */*\\r\\n\"..]])\r\n")	; delayMs(defaultWaitTime);
	printf("file.writeline([[\"User-Agent: Mozilla/4.0 (compatible; esp8266 Lua;)\\r\\n\\r\\n\") end)]])\r\n")			; delayMs(defaultWaitTime);

	printf("file.writeline(\"connG:on(\\\"receive\\\", function(connG, payload)\")\r\n")														; delayMs(defaultWaitTime);
	printf("file.writeline(\"print(string.sub(payload,string.find(payload,\\\"Date:\\\")+18,string.find(payload,\\\"Date:\\\")+21)..\")\r\n")	; delayMs(defaultWaitTime);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+15,string.find(payload,\\\"Date:\\\")+16)..\")\r\n")			; delayMs(defaultWaitTime);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+11,string.find(payload,\\\"Date:\\\")+12)..\")\r\n")			; delayMs(defaultWaitTime);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+23,string.find(payload,\\\"Date:\\\")+24)..\")\r\n")			; delayMs(defaultWaitTime);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+26,string.find(payload,\\\"Date:\\\")+27)..\")\r\n")			; delayMs(defaultWaitTime);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+29,string.find(payload,\\\"Date:\\\")+30)..\")\r\n")			; delayMs(defaultWaitTime);
	printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+14,string.find(payload,\\\"Date:\\\")+16)..\\\"\\\\r\\\\n\\\")\")\r\n")	; delayMs(defaultWaitTime);
	//	This gives Month as second and third characters (e.g. Jan is "an") as these are unique for each month
	//	Dexie can translate this afterwards to two digits MM (or maybe even here if I get chance and have enough memory)
	printf("file.writeline(\"connG:close()\")\r\n")																		; delayMs(defaultWaitTime);
	printf("file.writeline(\"end)\")\r\n")																				; delayMs(defaultWaitTime);
    printf("file.writeline([[connG:connect(80,'google.com')]])\r\n")													; delayMs(defaultWaitTime);	// trigger output of date
	printf("file.close()\r\n");																							; delayMs(defaultWaitTime);

	printf("print('connG ready\\r\\n')\r\n");																			; delayMs(defaultWaitTime);
	
//	As we had to write them, they will not have been run before so we need to run them now	
	strcpy(c, (getESPString())); // Clear buffer
	printf("dofile(\"init.lua\")\r\n");; delayMs(3000);
//	printf("file.remove('init.lua')\r\n");	delayMs(defaultWaitTime);	// Uncomment this to temporarily test write conditions
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
	strcpy(c, (getESPString()));					// Clear input buffer

	printf("print(wifi.sta.status())\r\n");	delayMs(defaultWaitTime);

	while (uart1RxAvailable() > 0) {
		strcpy(c, (getESPString()));
	}

	i = strlen(c);
	if  (i>5) {
		intStatus=(((c[i-5])-'0'));					// Convert character to integer.  1 connecting, 5 connected, etc.
		} else {
		intStatus=0;
	} ;

	return intStatus;
}

void wifiFlash() {	
    uint8 XDATA i = 0;
	XDATA int16 intWifiStatus = 1;
    for(; i < 16 && intWifiStatus == 1; i++) {		// Loop unti status is not "Connecting" or after about 8 seconds
		printf("gpio.write(4, gpio.HIGH)\r\n");		// Switch off Blue LED (Flash)
		delayMs(250);
		printf("gpio.write(4, gpio.LOW)\r\n");		// Switch on Blue LED (Flash)
		delayMs(100);
		intWifiStatus = getWifiStatus();
    }
}

BIT wifiConnect() {
	XDATA char static atString[40];
	XDATA int16 intWifiStatus = 0;
	
    uartEnable();									// Enable the serial connection
	delayMs(100);									// Wait for it to open

	printf("gpio.write(4, gpio.LOW)\r\n");	delayMs(defaultWaitTime);	// Switch on Blue LED

	printf("wifi.sta.connect()\r\n");	delayMs(defaultWaitTime);
	wifiFlash();									// Flash the blue LED until the connection status changes
	
	intWifiStatus = getWifiStatus();

//	Different Wifi networks are hard-coded here in order of likelihood.  I should probably stick these in array at the top and turn this into a loop
//	In the meantime manually change the names below yourself, in order of most likely to be connected to
	
//	HOME	
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
		delayMs(defaultWaitTime);
		printf("wifi.sta.config(\"HomeWifiName\",\"HomeWifiKey\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
		intWifiStatus = getWifiStatus();
	}

//	SCHOOL 1	
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
		delayMs(defaultWaitTime);
		printf("wifi.sta.config(\"SchoolWifiDdownstairs\",\"SchoolPassword\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
		wifiFlash();							// Add in an extra round of flashing if this network can take longer to connect														// wait longer as slower netword
		intWifiStatus = getWifiStatus();
	}

//	SCHOOL 2
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
		delayMs(defaultWaitTime);
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
		delayMs(defaultWaitTime);
		printf("wifi.sta.config(\"Hillside\",\"RandomChars\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
//		delayMs(5000);
		intWifiStatus = getWifiStatus();
	}
	
//	MOBILE HOTSPOT
	if (intWifiStatus != 5) {
		printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
		delayMs(defaultWaitTime);
		printf("wifi.sta.config(\"Cagey_HTC\",\"Cagey1234567890\")  wifi.sta.connect()\r\n");	// Connect to AP1
		wifiFlash();
//		delayMs(5000);
		intWifiStatus = getWifiStatus();
	}

//	YOU CAN ADD IN MORE WIFI HOTSPOTS HERE BY COPYING AN ENTRY FROM ABOVE IF YOU NEED

//	Connect to Dexie Server
	if (intWifiStatus == 5) {
		printf("gpio.write(4, gpio.LOW)\r\n");																		// Make sure Blue LED is still on
		delayMs(defaultWaitTime);
		strcpy(atString, "sk=net.createConnection(net.TCP, 0)\r\n"); sendAT(atString); delayMs(defaultWaitTime);	// Save changes
		strcpy(atString, "sk:on(\"receive\", function(sck, c) print(c) end )\r\n"); sendAT(atString);				// print stuff you get back
		delayMs(defaultWaitTime);
		strcpy(atString, "sk:connect(");
		strcat(atString, dexie_host_port);
		strcat(atString, ",\"");
		strcat(atString, dexie_host_address);
		strcat(atString, "\")\r\n");
		sendAT(atString);
//		printf("Hello - yDrip client for %s connected OK\r\n",wixFone_ID); delayMs(defaultWaitTime);				// Just being polite really
		delayMs(defaultWaitTime);
		delayMs(defaultWaitTime);								        	// another delay to be sure server is listening
		return 1;
	} else {
		printf("gpio.write(4, gpio.HIGH)\r\n");delayMs(defaultWaitTime);	// Switch off Blue LED (to show no wifi connection)
		return 0;
	}
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

while (uart1RxAvailable()) strcpy(c, getESPString());					// Clear RX buffer
strcpy(c, (getESPString())); // Clear buffer
printf("dofile(\"googletime.lua\")\r\n") ; delayMs(defaultWaitTime);	// Make connection and trigger output of date
strcpy(c, getESPString());
lenC=strlen(c);
if (debug_mode) printf("-- **DEBUG** length of C is %d\r\n", lenC);
printf("\r\n"); delayMs(defaultWaitTime);						//	Press return a couple of times
printf("\r\n"); delayMs(defaultWaitTime);						//	to get ESP back to normal prompt

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
	printf("sk:close()\r\n");									// Close the TCP connection	- Response should be CLOSE OK
	delayMs(defaultWaitTime);
	printf("node.dsleep(270000000)\r\n");							// Deep Sleep 4.5 minutes (270 Seconds) - probably tweak this a bit
//	printf("node.dsleep(5000000000)\r\n");						// Now that GPIO14 is not connected the ESP will not wake up until we tell it to
	delayMs(defaultWaitTime);
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

//	delayMs(60000);											//	Used for debugging - when I want to run downstairs and connect to the TTL cable
	LED_YELLOW(0);
	LED_RED(0);

	getTimeBytes(&getTimeResponse);							//	Connect to google and get the time
	strcpy(iv, getTimeResponse.iv);							//	and use this to populate the Initialisation Vector
	if (debug_mode) printf("-- **DEBUG** iv is %s\r\n", iv);
	
	iv[14]=pPkt->txId;										//	Randomise the IV further by updating this spare byte with the packet sequence number
	iv[15]=pPkt->checksum;									//	Randomise the IV further by updating this other spare byte with the packet checksum

	if (wifiConnect()) {		// Establish a connection to the Dexie server
		LED_RED(1);
		dexcom_src_to_ascii(pPkt->src_addr, transID);		// Get a human-readable version of the Dexcom Transmitter ID
		prtlen = sprintf(sprintfBuffer, "%s %hhu %s %lu %lu %d %d 100 -6.127100,53.241300",	// Includes home GPS coordinates for Dexie - change to yours
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

		printf("\\r\\n\")\r\n");	delayMs(defaultWaitTime);	// 		CR/LF
		printf("gpio.write(4, gpio.HIGH)\r\n"); delayMs(defaultWaitTime);	// Switch off blue LED
		delayMs(defaultWaitTime);									// Need to wait here also as sometimes missing ctrl-z
	}													// End of conditions for wifi connected
	uartDisable();
}

void makeAllOutputs() {
    int XDATA i;
    for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
//        if (i == 10)
//			setDigitalInput(10,HIGH_IMPEDANCE);	// Keep Pin 1_0 switched off
		setDigitalOutput(i, LOW);
    }
}
void makeAllOutputsLow() {
    int XDATA i;
    for (i=0; i < 16; i++) {
//        if (i == 10)
//			setDigitalInput(10,HIGH_IMPEDANCE);	// Keep Pin 1_0 switched off
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
    WDCTL = (WDCTL & ~0x04) | 0x08;		// This actually does a soft reset on the Wixel
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
    XDATA uint32 six_minutes = 360000;
//    XDATA uint32 six_minutes = 3600;						//	REDUCE WAIT TIME TO 3600 WHEN DEBUGGING
    XDATA int nRet = 0;
    XDATA char transID[] = "BLANK"; 	// Line added
    swap_channel(nChannels[channel], fOffset[channel]);
	if (debug_mode) six_minutes = 3000;
	
//	LED_RED(0);												// Error Indicator
    while (!milliseconds || (getMs() - start) < milliseconds) {
		doServices();
        blink_yellow_led();
        i++;
        if(!(i % 40000)) {
            strobe_radio(channel);
        }
        if(getMs() - start > six_minutes) {
            killWithWatchdog();
			LED_RED(1);											// Error Indicator
            delayMs(2000);
			}
		if (packet = radioQueueRxCurrentPacket()) {
            uint8 len = packet[0];
            fOffset[channel] += FREQEST;
            memcpy(pkt, packet, min8(len+2, sizeof(Dexcom_packet)));
            if(radioCrcPassed()) {
				dexcom_src_to_ascii(pkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
//                if(pkt->src_addr == dex_tx_id || dex_tx_id == 0 || only_listen_for_my_transmitter == 0) {  // Making dex_tx_id uses too much memory
				if(strcmp(transID,transmitter_id) == 0 || only_listen_for_my_transmitter == 0) { // strcmp will be zero if they match
                    pkt->txId -= channel;			// Subtract the channel number from the txID to make it the same regardless of the channel
                    radioQueueRxDoneWithPacket();
                    LED_YELLOW(0);
                    last_catch_channel = channel;	// last_catch_channel does not seem to be used anywhere so this may be obsolete code?
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
    systemInit();
	initUart1();
//	usbInit();
    P1DIR |= 0x08; // RTS
    sleepInit();
    makeAllOutputs();
    setADCInputs();
    delayMs(1000);

/*    LED_GREEN (1);
	if(!usbEnabled) {
		usbDeviceState = USB_STATE_POWERED;
		enableUsbPullup();
		usbEnabled = 1;
		doServices();
} */
    radioQueueInit();
    radioQueueAllowCrcErrors = 1;
    MCSM1 = 0;
	enableESP();					// Send ESP-12 asleep here so we don't get any noise while listening for Dexcom packets	
	uartEnable();
	ESPsleep();						// Disconnect and send the ESP-12 aseep
    while(1) {
		Dexcom_packet Pkt;
        memset(&Pkt, 0, sizeof(Dexcom_packet));
        boardService();

		if (debug_mode) {
			enableESP();
			print_packet(&Pkt);	
			ESPsleep();											// Disconnect and send the ESP asleep
			delayMs(5000);
		} else {
        if(get_packet(&Pkt)) {
			RFST = 4;
			delayMs(100);
			radioMacSleep();									// Switch off radio before switching on ESP to save a bit of battery
			enableESP();
            print_packet(&Pkt);
			ESPsleep();											// Disconnect and send the ESP asleep
        }
		}
        if(usbPowerPresent()){
            sequential_missed_packets++;	// Why only increment this if usb connected?  It is incremented in get_packet also so a bit confusing
        }
        if(sequential_missed_packets > 0) {
			int first_square = sequential_missed_packets * sequential_missed_packets * wake_earlier_for_next_miss;
			int second_square = (sequential_missed_packets - 1) * (sequential_missed_packets - 1) * wake_earlier_for_next_miss;
			int sleep_time = (220 - first_square + second_square);  // temp from 230
			goToSleep(sleep_time);
			} else {
			goToSleep(235);		// Wixel sleep for 245 seconds - temp from 245
        }

//		This is possibly just a hardware problem with my current batch of wixels but missing every second packet.
//		The sleep function is screwing up the radio reception in some cases so I am just going to do a full reset here...
        killWithWatchdog();									// Set interrupts to reset
		LED_RED(1);											// Error Indicator
		delayMs(2000);										// Wait for interrupt to kick in and reset to occur
//		So won't go beyond here...
		
//		RADIO ON
		radioMacResume();
        MCSM1 = 0;
        radioMacStrobe();
    }
}