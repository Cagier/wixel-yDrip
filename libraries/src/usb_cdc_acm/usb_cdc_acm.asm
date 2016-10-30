;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:07 2016
;--------------------------------------------------------
	.module usb_cdc_acm
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usbStringDescriptors
	.globl _usbStringDescriptorCount
	.globl _usbConfigurationDescriptor
	.globl _usbDeviceDescriptor
	.globl _boardStartBootloader
	.globl _getMs
	.globl _usbReadFifo
	.globl _usbWriteFifo
	.globl _usbInitEndpointOut
	.globl _usbInitEndpointIn
	.globl _usbControlAcknowledge
	.globl _usbControlWrite
	.globl _usbControlRead
	.globl _usbPoll
	.globl _usbComLineCoding
	.globl _usbComTxSend_PARM_2
	.globl _usbComRxReceive_PARM_2
	.globl _usbComLineCodingChangeHandler
	.globl _usbComSerialState
	.globl _usbComControlLineState
	.globl _usbCallbackInitEndpoints
	.globl _usbCallbackSetupHandler
	.globl _usbCallbackClassDescriptorHandler
	.globl _usbCallbackControlWriteHandler
	.globl _usbComRxAvailable
	.globl _usbComRxReceiveByte
	.globl _usbComRxReceive
	.globl _usbComService
	.globl _usbComTxAvailable
	.globl _usbComTxSend
	.globl _usbComTxSendByte
	.globl _usbComRxControlSignals
	.globl _usbComTxControlSignals
	.globl _usbComTxControlSignalEvents
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fusb_cdc_acm$P0$0$0 == 0x0080
_P0	=	0x0080
Fusb_cdc_acm$SP$0$0 == 0x0081
_SP	=	0x0081
Fusb_cdc_acm$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fusb_cdc_acm$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fusb_cdc_acm$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fusb_cdc_acm$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fusb_cdc_acm$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fusb_cdc_acm$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fusb_cdc_acm$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fusb_cdc_acm$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fusb_cdc_acm$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fusb_cdc_acm$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fusb_cdc_acm$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fusb_cdc_acm$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fusb_cdc_acm$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fusb_cdc_acm$P1$0$0 == 0x0090
_P1	=	0x0090
Fusb_cdc_acm$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fusb_cdc_acm$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fusb_cdc_acm$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fusb_cdc_acm$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fusb_cdc_acm$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fusb_cdc_acm$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fusb_cdc_acm$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fusb_cdc_acm$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fusb_cdc_acm$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fusb_cdc_acm$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fusb_cdc_acm$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fusb_cdc_acm$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fusb_cdc_acm$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fusb_cdc_acm$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fusb_cdc_acm$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fusb_cdc_acm$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fusb_cdc_acm$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fusb_cdc_acm$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fusb_cdc_acm$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fusb_cdc_acm$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fusb_cdc_acm$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fusb_cdc_acm$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fusb_cdc_acm$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fusb_cdc_acm$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fusb_cdc_acm$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fusb_cdc_acm$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fusb_cdc_acm$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fusb_cdc_acm$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fusb_cdc_acm$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fusb_cdc_acm$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fusb_cdc_acm$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fusb_cdc_acm$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fusb_cdc_acm$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fusb_cdc_acm$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fusb_cdc_acm$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fusb_cdc_acm$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fusb_cdc_acm$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fusb_cdc_acm$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fusb_cdc_acm$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fusb_cdc_acm$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fusb_cdc_acm$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fusb_cdc_acm$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fusb_cdc_acm$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fusb_cdc_acm$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fusb_cdc_acm$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fusb_cdc_acm$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fusb_cdc_acm$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fusb_cdc_acm$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fusb_cdc_acm$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fusb_cdc_acm$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fusb_cdc_acm$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fusb_cdc_acm$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fusb_cdc_acm$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fusb_cdc_acm$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fusb_cdc_acm$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fusb_cdc_acm$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fusb_cdc_acm$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fusb_cdc_acm$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fusb_cdc_acm$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fusb_cdc_acm$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fusb_cdc_acm$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fusb_cdc_acm$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fusb_cdc_acm$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fusb_cdc_acm$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fusb_cdc_acm$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fusb_cdc_acm$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fusb_cdc_acm$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fusb_cdc_acm$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fusb_cdc_acm$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fusb_cdc_acm$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fusb_cdc_acm$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fusb_cdc_acm$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fusb_cdc_acm$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fusb_cdc_acm$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fusb_cdc_acm$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fusb_cdc_acm$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fusb_cdc_acm$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fusb_cdc_acm$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fusb_cdc_acm$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fusb_cdc_acm$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fusb_cdc_acm$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fusb_cdc_acm$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fusb_cdc_acm$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fusb_cdc_acm$B$0$0 == 0x00f0
_B	=	0x00f0
Fusb_cdc_acm$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fusb_cdc_acm$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fusb_cdc_acm$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fusb_cdc_acm$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fusb_cdc_acm$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fusb_cdc_acm$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fusb_cdc_acm$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fusb_cdc_acm$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fusb_cdc_acm$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fusb_cdc_acm$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fusb_cdc_acm$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fusb_cdc_acm$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fusb_cdc_acm$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fusb_cdc_acm$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fusb_cdc_acm$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fusb_cdc_acm$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fusb_cdc_acm$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fusb_cdc_acm$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fusb_cdc_acm$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fusb_cdc_acm$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fusb_cdc_acm$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fusb_cdc_acm$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fusb_cdc_acm$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fusb_cdc_acm$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fusb_cdc_acm$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fusb_cdc_acm$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fusb_cdc_acm$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fusb_cdc_acm$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fusb_cdc_acm$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fusb_cdc_acm$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fusb_cdc_acm$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fusb_cdc_acm$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fusb_cdc_acm$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fusb_cdc_acm$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fusb_cdc_acm$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fusb_cdc_acm$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fusb_cdc_acm$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fusb_cdc_acm$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fusb_cdc_acm$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fusb_cdc_acm$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fusb_cdc_acm$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fusb_cdc_acm$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fusb_cdc_acm$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fusb_cdc_acm$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fusb_cdc_acm$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fusb_cdc_acm$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fusb_cdc_acm$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fusb_cdc_acm$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fusb_cdc_acm$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fusb_cdc_acm$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fusb_cdc_acm$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fusb_cdc_acm$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fusb_cdc_acm$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fusb_cdc_acm$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fusb_cdc_acm$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fusb_cdc_acm$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fusb_cdc_acm$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fusb_cdc_acm$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fusb_cdc_acm$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fusb_cdc_acm$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fusb_cdc_acm$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fusb_cdc_acm$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fusb_cdc_acm$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fusb_cdc_acm$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fusb_cdc_acm$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fusb_cdc_acm$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fusb_cdc_acm$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fusb_cdc_acm$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fusb_cdc_acm$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fusb_cdc_acm$EA$0$0 == 0x00af
_EA	=	0x00af
Fusb_cdc_acm$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fusb_cdc_acm$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fusb_cdc_acm$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fusb_cdc_acm$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fusb_cdc_acm$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fusb_cdc_acm$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fusb_cdc_acm$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fusb_cdc_acm$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fusb_cdc_acm$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fusb_cdc_acm$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fusb_cdc_acm$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fusb_cdc_acm$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fusb_cdc_acm$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fusb_cdc_acm$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fusb_cdc_acm$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fusb_cdc_acm$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fusb_cdc_acm$P$0$0 == 0x00d0
_P	=	0x00d0
Fusb_cdc_acm$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fusb_cdc_acm$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fusb_cdc_acm$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fusb_cdc_acm$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fusb_cdc_acm$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fusb_cdc_acm$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fusb_cdc_acm$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fusb_cdc_acm$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fusb_cdc_acm$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fusb_cdc_acm$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fusb_cdc_acm$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fusb_cdc_acm$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fusb_cdc_acm$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fusb_cdc_acm$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fusb_cdc_acm$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fusb_cdc_acm$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fusb_cdc_acm$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fusb_cdc_acm$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fusb_cdc_acm$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fusb_cdc_acm$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fusb_cdc_acm$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fusb_cdc_acm$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fusb_cdc_acm$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fusb_cdc_acm$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fusb_cdc_acm$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fusb_cdc_acm$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fusb_cdc_acm$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fusb_cdc_acm$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fusb_cdc_acm$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fusb_cdc_acm$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fusb_cdc_acm$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fusb_cdc_acm$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fusb_cdc_acm$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fusb_cdc_acm$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fusb_cdc_acm$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fusb_cdc_acm$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fusb_cdc_acm$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fusb_cdc_acm$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fusb_cdc_acm$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fusb_cdc_acm$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fusb_cdc_acm$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fusb_cdc_acm$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fusb_cdc_acm$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fusb_cdc_acm$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fusb_cdc_acm$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fusb_cdc_acm$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fusb_cdc_acm$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Fusb_cdc_acm$inFifoBytesLoaded$0$0==.
_inFifoBytesLoaded:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
Fusb_cdc_acm$sendEmptyPacketSoon$0$0==.
_sendEmptyPacketSoon:
	.ds 1
Fusb_cdc_acm$startBootloaderSoon$0$0==.
_startBootloaderSoon:
	.ds 1
Lusb_cdc_acm.sendPacketNow$sloc0$1$0==.
_sendPacketNow_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
G$usbComControlLineState$0$0==.
_usbComControlLineState::
	.ds 1
G$usbComSerialState$0$0==.
_usbComSerialState::
	.ds 1
Fusb_cdc_acm$lastReportedSerialState$0$0==.
_lastReportedSerialState:
	.ds 1
G$usbComLineCodingChangeHandler$0$0==.
_usbComLineCodingChangeHandler::
	.ds 2
Lusb_cdc_acm.usbComRxReceive$size$1$1==.
_usbComRxReceive_PARM_2:
	.ds 1
Lusb_cdc_acm.usbComTxSend$size$1$1==.
_usbComTxSend_PARM_2:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fusb_cdc_acm$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fusb_cdc_acm$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fusb_cdc_acm$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fusb_cdc_acm$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fusb_cdc_acm$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fusb_cdc_acm$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fusb_cdc_acm$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fusb_cdc_acm$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fusb_cdc_acm$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fusb_cdc_acm$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fusb_cdc_acm$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fusb_cdc_acm$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fusb_cdc_acm$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fusb_cdc_acm$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fusb_cdc_acm$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fusb_cdc_acm$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fusb_cdc_acm$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fusb_cdc_acm$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fusb_cdc_acm$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fusb_cdc_acm$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fusb_cdc_acm$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fusb_cdc_acm$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fusb_cdc_acm$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fusb_cdc_acm$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fusb_cdc_acm$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fusb_cdc_acm$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fusb_cdc_acm$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fusb_cdc_acm$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fusb_cdc_acm$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fusb_cdc_acm$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fusb_cdc_acm$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fusb_cdc_acm$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fusb_cdc_acm$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fusb_cdc_acm$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fusb_cdc_acm$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fusb_cdc_acm$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fusb_cdc_acm$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fusb_cdc_acm$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fusb_cdc_acm$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fusb_cdc_acm$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fusb_cdc_acm$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fusb_cdc_acm$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fusb_cdc_acm$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fusb_cdc_acm$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fusb_cdc_acm$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fusb_cdc_acm$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fusb_cdc_acm$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fusb_cdc_acm$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fusb_cdc_acm$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fusb_cdc_acm$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fusb_cdc_acm$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fusb_cdc_acm$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fusb_cdc_acm$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fusb_cdc_acm$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fusb_cdc_acm$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fusb_cdc_acm$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fusb_cdc_acm$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fusb_cdc_acm$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fusb_cdc_acm$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fusb_cdc_acm$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fusb_cdc_acm$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fusb_cdc_acm$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fusb_cdc_acm$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fusb_cdc_acm$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fusb_cdc_acm$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fusb_cdc_acm$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fusb_cdc_acm$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fusb_cdc_acm$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fusb_cdc_acm$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fusb_cdc_acm$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fusb_cdc_acm$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fusb_cdc_acm$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fusb_cdc_acm$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fusb_cdc_acm$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fusb_cdc_acm$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fusb_cdc_acm$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fusb_cdc_acm$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fusb_cdc_acm$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fusb_cdc_acm$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fusb_cdc_acm$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fusb_cdc_acm$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
Fusb_cdc_acm$startBootloaderRequestTime$0$0==.
_startBootloaderRequestTime:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$usbComLineCoding$0$0==.
_usbComLineCoding::
	.ds 7
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$97$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:97: static uint8 DATA inFifoBytesLoaded = 0;
	mov	_inFifoBytesLoaded,#0x00
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$92$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:92: static BIT sendEmptyPacketSoon = 0;
	clr	_sendEmptyPacketSoon
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$100$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:100: static BIT startBootloaderSoon = 0;
	clr	_startBootloaderSoon
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$71$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:71: uint8 usbComControlLineState = 0;
	mov	r0,#_usbComControlLineState
	clr	a
	movx	@r0,a
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$73$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:73: uint8 usbComSerialState = 0;
	mov	r0,#_usbComSerialState
	clr	a
	movx	@r0,a
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$77$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:77: static uint8 lastReportedSerialState = 0xFF;
	mov	r0,#_lastReportedSerialState
	mov	a,#0xFF
	movx	@r0,a
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$87$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:87: HandlerFunction * usbComLineCodingChangeHandler = doNothing;
	mov	r6,#_doNothing
	mov	r7,#(_doNothing >> 8)
	mov	r0,#_usbComLineCodingChangeHandler
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'usbCallbackInitEndpoints'
;------------------------------------------------------------
	G$usbCallbackInitEndpoints$0$0 ==.
	C$usb_cdc_acm.c$234$0$0 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:234: void usbCallbackInitEndpoints()
;	-----------------------------------------
;	 function usbCallbackInitEndpoints
;	-----------------------------------------
_usbCallbackInitEndpoints:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$usb_cdc_acm.c$236$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:236: usbInitEndpointIn(CDC_NOTIFICATION_ENDPOINT, 10);
	mov	r0,#_usbInitEndpointIn_PARM_2
	mov	a,#0x0A
	movx	@r0,a
	mov	dpl,#0x01
	lcall	_usbInitEndpointIn
	C$usb_cdc_acm.c$237$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:237: usbInitEndpointOut(CDC_DATA_ENDPOINT, CDC_OUT_PACKET_SIZE);
	mov	r0,#_usbInitEndpointOut_PARM_2
	mov	a,#0x40
	movx	@r0,a
	mov	dpl,#0x04
	lcall	_usbInitEndpointOut
	C$usb_cdc_acm.c$238$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:238: usbInitEndpointIn(CDC_DATA_ENDPOINT, CDC_IN_PACKET_SIZE);
	mov	r0,#_usbInitEndpointIn_PARM_2
	mov	a,#0x40
	movx	@r0,a
	mov	dpl,#0x04
	lcall	_usbInitEndpointIn
	C$usb_cdc_acm.c$241$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:241: lastReportedSerialState = 0xFF;
	mov	r0,#_lastReportedSerialState
	mov	a,#0xFF
	movx	@r0,a
	C$usb_cdc_acm.c$242$1$1 ==.
	XG$usbCallbackInitEndpoints$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbCallbackSetupHandler'
;------------------------------------------------------------
	G$usbCallbackSetupHandler$0$0 ==.
	C$usb_cdc_acm.c$246$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:246: void usbCallbackSetupHandler()
;	-----------------------------------------
;	 function usbCallbackSetupHandler
;	-----------------------------------------
_usbCallbackSetupHandler:
	C$usb_cdc_acm.c$248$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:248: if ((usbSetupPacket.bmRequestType & 0x7F) != 0x21)   // Require Type==Class and Recipient==Interface.
	mov	dptr,#_usbSetupPacket
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x7F
	C$usb_cdc_acm.c$249$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:249: return;
	cjne	r7,#0x21,00110$
	C$usb_cdc_acm.c$251$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:251: if (!(usbSetupPacket.wIndex == CDC_CONTROL_INTERFACE_NUMBER || usbSetupPacket.wIndex == CDC_DATA_INTERFACE_NUMBER))
	mov	dptr,#(_usbSetupPacket + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00104$
	C$usb_cdc_acm.c$252$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:252: return;
	cjne	r6,#0x01,00110$
	cjne	r7,#0x00,00110$
00104$:
	C$usb_cdc_acm.c$254$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:254: switch(usbSetupPacket.bRequest)
	mov	dptr,#(_usbSetupPacket + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x20,00121$
	sjmp	00106$
00121$:
	cjne	r7,#0x21,00122$
	sjmp	00107$
00122$:
	C$usb_cdc_acm.c$256$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:256: case ACM_REQUEST_SET_LINE_CODING:                          // SetLineCoding (USBPSTN1.20 Section 6.3.10 SetLineCoding)
	cjne	r7,#0x22,00110$
	sjmp	00108$
00106$:
	C$usb_cdc_acm.c$257$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:257: usbControlWrite(sizeof(usbComLineCoding), (uint8 XDATA *)&usbComLineCoding);
	mov	r0,#_usbControlWrite_PARM_2
	mov	a,#_usbComLineCoding
	movx	@r0,a
	inc	r0
	mov	a,#(_usbComLineCoding >> 8)
	movx	@r0,a
	mov	dptr,#0x0007
	lcall	_usbControlWrite
	C$usb_cdc_acm.c$258$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:258: break;
	C$usb_cdc_acm.c$260$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:260: case ACM_REQUEST_GET_LINE_CODING:                          // GetLineCoding (USBPSTN1.20 Section 6.3.11 GetLineCoding)
	sjmp	00110$
00107$:
	C$usb_cdc_acm.c$261$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:261: usbControlRead(sizeof(usbComLineCoding), (uint8 XDATA *)&usbComLineCoding);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbComLineCoding
	movx	@r0,a
	inc	r0
	mov	a,#(_usbComLineCoding >> 8)
	movx	@r0,a
	mov	dptr,#0x0007
	lcall	_usbControlRead
	C$usb_cdc_acm.c$262$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:262: break;
	C$usb_cdc_acm.c$264$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:264: case ACM_REQUEST_SET_CONTROL_LINE_STATE:                   // SetControlLineState (USBPSTN1.20 Section 6.3.12 SetControlLineState)
	sjmp	00110$
00108$:
	C$usb_cdc_acm.c$265$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:265: usbComControlLineState = usbSetupPacket.wValue;
	mov	dptr,#(_usbSetupPacket + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r0,#_usbComControlLineState
	mov	a,r6
	movx	@r0,a
	C$usb_cdc_acm.c$266$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:266: usbControlAcknowledge();
	lcall	_usbControlAcknowledge
	C$usb_cdc_acm.c$268$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:268: }
00110$:
	C$usb_cdc_acm.c$269$1$1 ==.
	XG$usbCallbackSetupHandler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbCallbackClassDescriptorHandler'
;------------------------------------------------------------
	G$usbCallbackClassDescriptorHandler$0$0 ==.
	C$usb_cdc_acm.c$271$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:271: void usbCallbackClassDescriptorHandler(void)
;	-----------------------------------------
;	 function usbCallbackClassDescriptorHandler
;	-----------------------------------------
_usbCallbackClassDescriptorHandler:
	C$usb_cdc_acm.c$274$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:274: }
	C$usb_cdc_acm.c$274$1$1 ==.
	XG$usbCallbackClassDescriptorHandler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'doNothing'
;------------------------------------------------------------
	Fusb_cdc_acm$doNothing$0$0 ==.
	C$usb_cdc_acm.c$276$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:276: static void doNothing(void)
;	-----------------------------------------
;	 function doNothing
;	-----------------------------------------
_doNothing:
	C$usb_cdc_acm.c$279$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:279: }
	C$usb_cdc_acm.c$279$1$1 ==.
	XFusb_cdc_acm$doNothing$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbCallbackControlWriteHandler'
;------------------------------------------------------------
	G$usbCallbackControlWriteHandler$0$0 ==.
	C$usb_cdc_acm.c$281$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:281: void usbCallbackControlWriteHandler()
;	-----------------------------------------
;	 function usbCallbackControlWriteHandler
;	-----------------------------------------
_usbCallbackControlWriteHandler:
	C$usb_cdc_acm.c$283$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:283: usbComLineCodingChangeHandler();
	mov	r0,#_usbComLineCodingChangeHandler
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	lcall	__sdcc_call_dptr
	C$usb_cdc_acm.c$285$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:285: if (usbComLineCoding.dwDTERate == 333 && !startBootloaderSoon)
	mov	dptr,#_usbComLineCoding
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r4,#0x4D,00104$
	cjne	r5,#0x01,00104$
	cjne	r6,#0x00,00104$
	cjne	r7,#0x00,00104$
	jb	_startBootloaderSoon,00104$
	C$usb_cdc_acm.c$290$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:290: startBootloaderSoon = 1;
	setb	_startBootloaderSoon
	C$usb_cdc_acm.c$291$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:291: startBootloaderRequestTime = (uint8)getMs();
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_startBootloaderRequestTime
	mov	a,r4
	movx	@dptr,a
00104$:
	C$usb_cdc_acm.c$293$2$1 ==.
	XG$usbCallbackControlWriteHandler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComRxAvailable'
;------------------------------------------------------------
	G$usbComRxAvailable$0$0 ==.
	C$usb_cdc_acm.c$299$2$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:299: uint8 usbComRxAvailable()
;	-----------------------------------------
;	 function usbComRxAvailable
;	-----------------------------------------
_usbComRxAvailable:
	C$usb_cdc_acm.c$301$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:301: if (usbDeviceState != USB_STATE_CONFIGURED)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00110$
	sjmp	00102$
00110$:
	C$usb_cdc_acm.c$304$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:304: return 0;
	mov	dpl,#0x00
	sjmp	00106$
00102$:
	C$usb_cdc_acm.c$307$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:307: USBINDEX = CDC_DATA_ENDPOINT;      // Select the data endpoint.
	mov	dptr,#_USBINDEX
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_acm.c$308$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:308: if (USBCSOL & USBCSOL_OUTPKT_RDY)  // Check the OUTPKT_RDY flag because USBCNTL is only valid when it is 1.
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00104$
	C$usb_cdc_acm.c$312$2$3 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:312: return USBCNTL;
	mov	dptr,#_USBCNTL
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	sjmp	00106$
00104$:
	C$usb_cdc_acm.c$316$2$4 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:316: return 0;
	mov	dpl,#0x00
00106$:
	C$usb_cdc_acm.c$318$1$1 ==.
	XG$usbComRxAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComRxReceiveByte'
;------------------------------------------------------------
	G$usbComRxReceiveByte$0$0 ==.
	C$usb_cdc_acm.c$325$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:325: uint8 usbComRxReceiveByte()
;	-----------------------------------------
;	 function usbComRxReceiveByte
;	-----------------------------------------
_usbComRxReceiveByte:
	C$usb_cdc_acm.c$329$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:329: USBINDEX = CDC_DATA_ENDPOINT;         // Select the CDC data endpoint.
	mov	dptr,#_USBINDEX
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_acm.c$330$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:330: tmp = CDC_DATA_FIFO;                  // Read one byte from the FIFO.
	mov	dptr,#_USBF4
	movx	a,@dptr
	mov	r7,a
	C$usb_cdc_acm.c$332$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:332: if (USBCNTL == 0)                     // If there are no bytes left in this packet...
	mov	dptr,#_USBCNTL
	movx	a,@dptr
	mov	r6,a
	jnz	00102$
	C$usb_cdc_acm.c$334$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:334: USBCSOL &= ~USBCSOL_OUTPKT_RDY;   // Tell the USB module we are done reading this packet, so it can receive more.
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	anl	a,#0xFE
	mov	r6,a
	movx	@dptr,a
00102$:
	C$usb_cdc_acm.c$337$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:337: usbActivityFlag = 1;
	setb	_usbActivityFlag
	C$usb_cdc_acm.c$338$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:338: return tmp;
	mov	dpl,r7
	C$usb_cdc_acm.c$339$1$1 ==.
	XG$usbComRxReceiveByte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComRxReceive'
;------------------------------------------------------------
	G$usbComRxReceive$0$0 ==.
	C$usb_cdc_acm.c$343$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:343: void usbComRxReceive(uint8 XDATA * buffer, uint8 size)
;	-----------------------------------------
;	 function usbComRxReceive
;	-----------------------------------------
_usbComRxReceive:
	mov	r6,dpl
	mov	r7,dph
	C$usb_cdc_acm.c$345$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:345: usbReadFifo(CDC_DATA_ENDPOINT, size, buffer);
	mov	r0,#_usbComRxReceive_PARM_2
	mov	r1,#_usbReadFifo_PARM_2
	movx	a,@r0
	movx	@r1,a
	mov	r0,#_usbReadFifo_PARM_3
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	dpl,#0x04
	lcall	_usbReadFifo
	C$usb_cdc_acm.c$347$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:347: if (USBCNTL == 0)
	mov	dptr,#_USBCNTL
	movx	a,@dptr
	mov	r7,a
	jnz	00103$
	C$usb_cdc_acm.c$349$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:349: USBCSOL &= ~USBCSOL_OUTPKT_RDY;   // Tell the USB module we are done reading this packet, so it can receive more.
	mov	dptr,#_USBCSOL
	movx	a,@dptr
	anl	a,#0xFE
	mov	r7,a
	movx	@dptr,a
00103$:
	C$usb_cdc_acm.c$351$2$1 ==.
	XG$usbComRxReceive$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendPacketNow'
;------------------------------------------------------------
	Fusb_cdc_acm$sendPacketNow$0$0 ==.
	C$usb_cdc_acm.c$358$2$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:358: static void sendPacketNow()
;	-----------------------------------------
;	 function sendPacketNow
;	-----------------------------------------
_sendPacketNow:
	C$usb_cdc_acm.c$360$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:360: USBINDEX = CDC_DATA_ENDPOINT;
	mov	dptr,#_USBINDEX
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_acm.c$361$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:361: USBCSIL |= USBCSIL_INPKT_RDY;                      // Send the packet.
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
	C$usb_cdc_acm.c$364$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:364: sendEmptyPacketSoon = (inFifoBytesLoaded == CDC_IN_PACKET_SIZE);
	mov	a,#0x40
	cjne	a,_inFifoBytesLoaded,00103$
	setb	c
	sjmp	00104$
00103$:
	clr	c
00104$:
	mov  _sendPacketNow_sloc0_1_0,c
	mov	_sendEmptyPacketSoon,c
	C$usb_cdc_acm.c$367$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:367: inFifoBytesLoaded = 0;
	mov	_inFifoBytesLoaded,#0x00
	C$usb_cdc_acm.c$370$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:370: usbActivityFlag = 1;
	setb	_usbActivityFlag
	C$usb_cdc_acm.c$371$1$1 ==.
	XFusb_cdc_acm$sendPacketNow$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComService'
;------------------------------------------------------------
	G$usbComService$0$0 ==.
	C$usb_cdc_acm.c$373$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:373: void usbComService(void)
;	-----------------------------------------
;	 function usbComService
;	-----------------------------------------
_usbComService:
	C$usb_cdc_acm.c$375$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:375: usbPoll();
	lcall	_usbPoll
	C$usb_cdc_acm.c$378$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:378: if (startBootloaderSoon && (uint8)(getMs() - startBootloaderRequestTime) > 70)
	jnb	_startBootloaderSoon,00102$
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	dptr,#_startBootloaderRequestTime
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	clr	c
	subb	a,r7
	mov  r4,a
	add	a,#0xff - 0x46
	jnc	00102$
	C$usb_cdc_acm.c$388$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:388: boardStartBootloader();
	lcall	_boardStartBootloader
00102$:
	C$usb_cdc_acm.c$391$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:391: if (usbDeviceState != USB_STATE_CONFIGURED)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00124$
	sjmp	00105$
00124$:
	C$usb_cdc_acm.c$394$2$3 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:394: return;
	sjmp	00113$
00105$:
	C$usb_cdc_acm.c$402$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:402: USBINDEX = CDC_DATA_ENDPOINT;
	mov	dptr,#_USBINDEX
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_acm.c$403$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:403: if (inFifoBytesLoaded || ( sendEmptyPacketSoon && !(USBCSIL & USBCSIL_PKT_PRESENT) ) )
	mov	a,_inFifoBytesLoaded
	jnz	00106$
	jnb	_sendEmptyPacketSoon,00107$
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00107$
00106$:
	C$usb_cdc_acm.c$405$2$4 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:405: sendPacketNow();
	lcall	_sendPacketNow
00107$:
	C$usb_cdc_acm.c$409$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:409: USBINDEX = CDC_NOTIFICATION_ENDPOINT;
	mov	dptr,#_USBINDEX
	mov	a,#0x01
	movx	@dptr,a
	C$usb_cdc_acm.c$410$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:410: if (usbComSerialState != lastReportedSerialState && !(USBCSIL & USBCSIL_INPKT_RDY))
	mov	r0,#_usbComSerialState
	mov	r1,#_lastReportedSerialState
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	cjne	a,b,00128$
	sjmp	00113$
00128$:
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00113$
	C$usb_cdc_acm.c$416$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:416: CDC_NOTIFICATION_FIFO = 0b10100001;   // bRequestType: Direction=IN, Type=Class, Sender=Interface
	C$usb_cdc_acm.c$417$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:417: CDC_NOTIFICATION_FIFO = ACM_NOTIFICATION_SERIAL_STATE; // bRequest
	C$usb_cdc_acm.c$420$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:420: CDC_NOTIFICATION_FIFO = 0;
	mov	dptr,#_USBF1
	mov	a,#0xA1
	movx	@dptr,a
	mov	a,#0x20
	movx	@dptr,a
	C$usb_cdc_acm.c$421$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:421: CDC_NOTIFICATION_FIFO = 0;
	C$usb_cdc_acm.c$424$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:424: CDC_NOTIFICATION_FIFO = CDC_CONTROL_INTERFACE_NUMBER;
	C$usb_cdc_acm.c$425$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:425: CDC_NOTIFICATION_FIFO = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_USBF1
	movx	@dptr,a
	mov	dptr,#_USBF1
	movx	@dptr,a
	mov	dptr,#_USBF1
	movx	@dptr,a
	C$usb_cdc_acm.c$428$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:428: CDC_NOTIFICATION_FIFO = 2;
	C$usb_cdc_acm.c$429$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:429: CDC_NOTIFICATION_FIFO = 0;
	mov	dptr,#_USBF1
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	movx	@dptr,a
	C$usb_cdc_acm.c$432$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:432: CDC_NOTIFICATION_FIFO = usbComSerialState;
	mov	r0,#_usbComSerialState
	mov	dptr,#_USBF1
	movx	a,@r0
	movx	@dptr,a
	C$usb_cdc_acm.c$433$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:433: CDC_NOTIFICATION_FIFO = 0;
	mov	dptr,#_USBF1
	clr	a
	movx	@dptr,a
	C$usb_cdc_acm.c$435$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:435: USBCSIL |= USBCSIL_INPKT_RDY;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	orl	a,#0x01
	movx	@dptr,a
	C$usb_cdc_acm.c$438$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:438: usbComSerialState &= ~ACM_IRREGULAR_SIGNAL_MASK;
	mov	r0,#_usbComSerialState
	movx	a,@r0
	mov	r7,a
	anl	ar7,#0x83
	mov	r0,#_usbComSerialState
	mov	a,r7
	movx	@r0,a
	C$usb_cdc_acm.c$440$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:440: lastReportedSerialState = usbComSerialState;
	mov	r0,#_usbComSerialState
	movx	a,@r0
	mov	r7,a
	mov	r0,#_lastReportedSerialState
	movx	@r0,a
	C$usb_cdc_acm.c$443$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:443: usbActivityFlag = 1;
	setb	_usbActivityFlag
00113$:
	C$usb_cdc_acm.c$445$2$1 ==.
	XG$usbComService$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComTxAvailable'
;------------------------------------------------------------
	G$usbComTxAvailable$0$0 ==.
	C$usb_cdc_acm.c$449$2$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:449: uint8 usbComTxAvailable()
;	-----------------------------------------
;	 function usbComTxAvailable
;	-----------------------------------------
_usbComTxAvailable:
	C$usb_cdc_acm.c$453$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:453: if (usbDeviceState != USB_STATE_CONFIGURED)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00113$
	sjmp	00102$
00113$:
	C$usb_cdc_acm.c$456$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:456: return 0;
	mov	dpl,#0x00
	sjmp	00108$
00102$:
	C$usb_cdc_acm.c$459$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:459: USBINDEX = CDC_DATA_ENDPOINT;
	mov	dptr,#_USBINDEX
	mov	a,#0x04
	movx	@dptr,a
	C$usb_cdc_acm.c$460$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:460: tmp = USBCSIL;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	C$usb_cdc_acm.c$461$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:461: if (tmp & USBCSIL_PKT_PRESENT)
	mov	r7,a
	jnb	acc.1,00106$
	C$usb_cdc_acm.c$463$2$3 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:463: if (tmp & USBCSIL_INPKT_RDY)
	mov	a,r7
	jnb	acc.0,00104$
	C$usb_cdc_acm.c$465$3$4 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:465: return 0;                                       // 2 packets are in the FIFO, so no room
	mov	dpl,#0x00
	sjmp	00108$
00104$:
	C$usb_cdc_acm.c$467$2$3 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:467: return CDC_IN_PACKET_SIZE - inFifoBytesLoaded;      // 1 packet is in the FIFO, so there is room for 1 more
	mov	a,#0x40
	clr	c
	subb	a,_inFifoBytesLoaded
	mov	dpl,a
	sjmp	00108$
00106$:
	C$usb_cdc_acm.c$471$2$5 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:471: return (CDC_IN_PACKET_SIZE<<1) - inFifoBytesLoaded; // 0 packets are in the FIFO, so there is room for 2 more
	mov	a,#0x80
	clr	c
	subb	a,_inFifoBytesLoaded
	mov	dpl,a
00108$:
	C$usb_cdc_acm.c$473$1$1 ==.
	XG$usbComTxAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComTxSend'
;------------------------------------------------------------
	G$usbComTxSend$0$0 ==.
	C$usb_cdc_acm.c$477$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:477: void usbComTxSend(const uint8 XDATA * buffer, uint8 size)
;	-----------------------------------------
;	 function usbComTxSend
;	-----------------------------------------
_usbComTxSend:
	mov	r6,dpl
	mov	r7,dph
	C$usb_cdc_acm.c$480$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:480: while(size)
00105$:
	mov	r0,#_usbComTxSend_PARM_2
	movx	a,@r0
	jz	00108$
	C$usb_cdc_acm.c$482$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:482: packetSize = CDC_IN_PACKET_SIZE - inFifoBytesLoaded;   // Decide how many bytes to send in this packet (packetSize).
	mov	a,#0x40
	clr	c
	subb	a,_inFifoBytesLoaded
	mov	r5,a
	C$usb_cdc_acm.c$483$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:483: if (packetSize > size){ packetSize = size; }
	mov	r0,#_usbComTxSend_PARM_2
	clr	c
	movx	a,@r0
	subb	a,r5
	jnc	00102$
	mov	r0,#_usbComTxSend_PARM_2
	movx	a,@r0
	mov	r5,a
00102$:
	C$usb_cdc_acm.c$485$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:485: usbWriteFifo(CDC_DATA_ENDPOINT, packetSize, buffer);    // Write those bytes to the USB FIFO.
	mov	r0,#_usbWriteFifo_PARM_2
	mov	a,r5
	movx	@r0,a
	mov	r0,#_usbWriteFifo_PARM_3
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	dpl,#0x04
	push	ar7
	push	ar6
	push	ar5
	lcall	_usbWriteFifo
	pop	ar5
	pop	ar6
	pop	ar7
	C$usb_cdc_acm.c$487$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:487: buffer += packetSize;                                   // Update pointers.
	mov	a,r5
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	C$usb_cdc_acm.c$488$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:488: size -= packetSize;
	mov	r0,#_usbComTxSend_PARM_2
	movx	a,@r0
	clr	c
	subb	a,r5
	movx	@r0,a
	C$usb_cdc_acm.c$489$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:489: inFifoBytesLoaded += packetSize;
	mov	a,r5
	add	a,_inFifoBytesLoaded
	mov	_inFifoBytesLoaded,a
	C$usb_cdc_acm.c$491$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:491: if (inFifoBytesLoaded == CDC_IN_PACKET_SIZE)
	mov	a,#0x40
	cjne	a,_inFifoBytesLoaded,00105$
	C$usb_cdc_acm.c$493$3$4 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:493: sendPacketNow();
	push	ar7
	push	ar6
	lcall	_sendPacketNow
	pop	ar6
	pop	ar7
	sjmp	00105$
00108$:
	C$usb_cdc_acm.c$496$1$1 ==.
	XG$usbComTxSend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComTxSendByte'
;------------------------------------------------------------
	G$usbComTxSendByte$0$0 ==.
	C$usb_cdc_acm.c$498$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:498: void usbComTxSendByte(uint8 byte)
;	-----------------------------------------
;	 function usbComTxSendByte
;	-----------------------------------------
_usbComTxSendByte:
	mov	a,dpl
	mov	dptr,#_USBF4
	movx	@dptr,a
	C$usb_cdc_acm.c$503$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:503: inFifoBytesLoaded++;
	inc	_inFifoBytesLoaded
	C$usb_cdc_acm.c$505$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:505: if (inFifoBytesLoaded == CDC_IN_PACKET_SIZE)
	mov	a,#0x40
	cjne	a,_inFifoBytesLoaded,00103$
	C$usb_cdc_acm.c$507$2$2 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:507: sendPacketNow();
	lcall	_sendPacketNow
00103$:
	C$usb_cdc_acm.c$511$2$1 ==.
	XG$usbComTxSendByte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComRxControlSignals'
;------------------------------------------------------------
	G$usbComRxControlSignals$0$0 ==.
	C$usb_cdc_acm.c$515$2$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:515: uint8 usbComRxControlSignals()
;	-----------------------------------------
;	 function usbComRxControlSignals
;	-----------------------------------------
_usbComRxControlSignals:
	C$usb_cdc_acm.c$517$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:517: return usbComControlLineState;
	mov	r0,#_usbComControlLineState
	movx	a,@r0
	mov	dpl,a
	C$usb_cdc_acm.c$518$1$1 ==.
	XG$usbComRxControlSignals$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComTxControlSignals'
;------------------------------------------------------------
	G$usbComTxControlSignals$0$0 ==.
	C$usb_cdc_acm.c$520$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:520: void usbComTxControlSignals(uint8 signals)
;	-----------------------------------------
;	 function usbComTxControlSignals
;	-----------------------------------------
_usbComTxControlSignals:
	mov	r7,dpl
	C$usb_cdc_acm.c$522$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:522: usbComSerialState = (usbComSerialState & ACM_IRREGULAR_SIGNAL_MASK) | signals;
	mov	r0,#_usbComSerialState
	movx	a,@r0
	anl	a,#0x7C
	orl	a,r7
	mov	r0,#_usbComSerialState
	movx	@r0,a
	C$usb_cdc_acm.c$523$1$1 ==.
	XG$usbComTxControlSignals$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbComTxControlSignalEvents'
;------------------------------------------------------------
	G$usbComTxControlSignalEvents$0$0 ==.
	C$usb_cdc_acm.c$525$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:525: void usbComTxControlSignalEvents(uint8 signalEvents)
;	-----------------------------------------
;	 function usbComTxControlSignalEvents
;	-----------------------------------------
_usbComTxControlSignalEvents:
	mov	r7,dpl
	C$usb_cdc_acm.c$527$1$1 ==.
;	libraries/src/usb_cdc_acm/usb_cdc_acm.c:527: usbComSerialState |= signalEvents;
	mov	r0,#_usbComSerialState
	movx	a,@r0
	orl	a,r7
	movx	@r0,a
	C$usb_cdc_acm.c$528$1$1 ==.
	XG$usbComTxControlSignalEvents$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$usbDeviceDescriptor$0$0 == .
_usbDeviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.byte #0x00,#0x02	; 512
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.byte #0xFB,#0x1F	; 8187
	.byte #0x00,#0x22	; 8704
	.byte #0x00,#0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
G$usbConfigurationDescriptor$0$0 == .
_usbConfigurationDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.byte #0x43,#0x00	; 67
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xC0	; 192
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x24	; 36
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.byte #0x0A,#0x00	; 10
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0A	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x02	; 2
	.byte #0x40,#0x00	; 64
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x84	; 132
	.db #0x02	; 2
	.byte #0x40,#0x00	; 64
	.db #0x00	; 0
G$usbStringDescriptorCount$0$0 == .
_usbStringDescriptorCount:
	.db #0x04	; 4
Fusb_cdc_acm$languages$0$0 == .
_languages:
	.byte #0x04,#0x03	; 772
	.byte #0x09,#0x04	; 1033
Fusb_cdc_acm$manufacturer$0$0 == .
_manufacturer:
	.byte #0x26,#0x03	; 806
	.byte #0x50,#0x00	; 80
	.byte #0x6F,#0x00	; 111
	.byte #0x6C,#0x00	; 108
	.byte #0x6F,#0x00	; 111
	.byte #0x6C,#0x00	; 108
	.byte #0x75,#0x00	; 117
	.byte #0x20,#0x00	; 32
	.byte #0x43,#0x00	; 67
	.byte #0x6F,#0x00	; 111
	.byte #0x72,#0x00	; 114
	.byte #0x70,#0x00	; 112
	.byte #0x6F,#0x00	; 111
	.byte #0x72,#0x00	; 114
	.byte #0x61,#0x00	; 97
	.byte #0x74,#0x00	; 116
	.byte #0x69,#0x00	; 105
	.byte #0x6F,#0x00	; 111
	.byte #0x6E,#0x00	; 110
Fusb_cdc_acm$product$0$0 == .
_product:
	.byte #0x0C,#0x03	; 780
	.byte #0x57,#0x00	; 87
	.byte #0x69,#0x00	; 105
	.byte #0x78,#0x00	; 120
	.byte #0x65,#0x00	; 101
	.byte #0x6C,#0x00	; 108
G$usbStringDescriptors$0$0 == .
_usbStringDescriptors:
	.byte _languages,(_languages >> 8)
	.byte _manufacturer,(_manufacturer >> 8)
	.byte _product,(_product >> 8)
	.byte _serialNumberStringDescriptor,(_serialNumberStringDescriptor >> 8)
	.area XINIT   (CODE)
Fusb_cdc_acm$__xinit_usbComLineCoding$0$0 == .
__xinit__usbComLineCoding:
	.byte #0x80,#0x25,#0x00,#0x00	; 9600
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.area CABS    (ABS,CODE)
