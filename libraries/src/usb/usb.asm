;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:07 2016
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _disableUsbPullup
	.globl _enableUsbPullup
	.globl _vinPowerPresent
	.globl _usbPowerPresent
	.globl _usbCallbackControlWriteHandler
	.globl _usbCallbackInitEndpoints
	.globl _usbCallbackClassDescriptorHandler
	.globl _usbCallbackSetupHandler
	.globl _controlTransferState
	.globl _usbDeviceState
	.globl _controlTransferBytesLeft
	.globl _usbSetupPacket
	.globl _usbInitEndpointOut_PARM_2
	.globl _usbInitEndpointIn_PARM_2
	.globl _usbControlWrite_PARM_2
	.globl _usbControlRead_PARM_2
	.globl _usbWriteFifo_PARM_3
	.globl _usbWriteFifo_PARM_2
	.globl _usbReadFifo_PARM_3
	.globl _usbReadFifo_PARM_2
	.globl _controlTransferPointer
	.globl _usbActivityFlag
	.globl _usbSuspendMode
	.globl _usbInit
	.globl _usbReadFifo
	.globl _usbWriteFifo
	.globl _usbPoll
	.globl _usbStandardDeviceRequestHandler
	.globl _usbSuspended
	.globl _usbSleep
	.globl _usbControlRead
	.globl _usbControlWrite
	.globl _usbControlAcknowledge
	.globl _usbControlStall
	.globl _usbInitEndpointIn
	.globl _usbInitEndpointOut
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fusb$P0$0$0 == 0x0080
_P0	=	0x0080
Fusb$SP$0$0 == 0x0081
_SP	=	0x0081
Fusb$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fusb$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fusb$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fusb$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fusb$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fusb$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fusb$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fusb$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fusb$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fusb$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fusb$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fusb$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fusb$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fusb$P1$0$0 == 0x0090
_P1	=	0x0090
Fusb$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fusb$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fusb$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fusb$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fusb$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fusb$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fusb$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fusb$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fusb$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fusb$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fusb$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fusb$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fusb$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fusb$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fusb$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fusb$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fusb$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fusb$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fusb$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fusb$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fusb$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fusb$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fusb$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fusb$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fusb$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fusb$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fusb$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fusb$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fusb$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fusb$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fusb$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fusb$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fusb$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fusb$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fusb$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fusb$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fusb$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fusb$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fusb$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fusb$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fusb$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fusb$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fusb$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fusb$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fusb$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fusb$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fusb$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fusb$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fusb$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fusb$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fusb$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fusb$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fusb$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fusb$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fusb$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fusb$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fusb$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fusb$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fusb$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fusb$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fusb$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fusb$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fusb$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fusb$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fusb$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fusb$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fusb$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fusb$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fusb$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fusb$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fusb$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fusb$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fusb$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fusb$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fusb$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fusb$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fusb$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fusb$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fusb$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fusb$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fusb$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fusb$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fusb$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fusb$B$0$0 == 0x00f0
_B	=	0x00f0
Fusb$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fusb$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fusb$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fusb$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fusb$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fusb$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fusb$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fusb$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fusb$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fusb$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fusb$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fusb$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fusb$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fusb$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fusb$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fusb$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fusb$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fusb$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fusb$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fusb$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fusb$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fusb$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fusb$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fusb$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fusb$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fusb$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fusb$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fusb$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fusb$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fusb$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fusb$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fusb$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fusb$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fusb$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fusb$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fusb$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fusb$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fusb$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fusb$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fusb$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fusb$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fusb$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fusb$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fusb$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fusb$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fusb$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fusb$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fusb$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fusb$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fusb$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fusb$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fusb$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fusb$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fusb$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fusb$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fusb$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fusb$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fusb$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fusb$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fusb$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fusb$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fusb$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fusb$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fusb$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fusb$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fusb$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fusb$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fusb$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fusb$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fusb$EA$0$0 == 0x00af
_EA	=	0x00af
Fusb$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fusb$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fusb$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fusb$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fusb$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fusb$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fusb$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fusb$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fusb$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fusb$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fusb$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fusb$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fusb$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fusb$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fusb$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fusb$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fusb$P$0$0 == 0x00d0
_P	=	0x00d0
Fusb$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fusb$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fusb$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fusb$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fusb$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fusb$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fusb$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fusb$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fusb$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fusb$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fusb$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fusb$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fusb$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fusb$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fusb$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fusb$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fusb$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fusb$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fusb$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fusb$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fusb$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fusb$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fusb$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fusb$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fusb$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fusb$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fusb$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fusb$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fusb$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fusb$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fusb$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fusb$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fusb$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fusb$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fusb$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fusb$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fusb$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fusb$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fusb$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fusb$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fusb$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fusb$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fusb$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fusb$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fusb$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fusb$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fusb$U1MODE$0$0 == 0x00ff
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
G$usbSuspendMode$0$0==.
_usbSuspendMode::
	.ds 1
G$usbActivityFlag$0$0==.
_usbActivityFlag::
	.ds 1
Lusb.usbSleep$savedP0IE$1$1==.
_usbSleep_savedP0IE_1_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
G$controlTransferPointer$0$0==.
_controlTransferPointer::
	.ds 2
Lusb.usbReadFifo$count$1$1==.
_usbReadFifo_PARM_2:
	.ds 1
Lusb.usbReadFifo$buffer$1$1==.
_usbReadFifo_PARM_3:
	.ds 2
Lusb.usbWriteFifo$count$1$1==.
_usbWriteFifo_PARM_2:
	.ds 1
Lusb.usbWriteFifo$buffer$1$1==.
_usbWriteFifo_PARM_3:
	.ds 2
Lusb.usbControlRead$source$1$1==.
_usbControlRead_PARM_2:
	.ds 2
Lusb.usbControlWrite$source$1$1==.
_usbControlWrite_PARM_2:
	.ds 2
Lusb.usbInitEndpointIn$maxPacketSize$1$1==.
_usbInitEndpointIn_PARM_2:
	.ds 1
Lusb.usbInitEndpointOut$maxPacketSize$1$1==.
_usbInitEndpointOut_PARM_2:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fusb$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fusb$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fusb$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fusb$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fusb$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fusb$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fusb$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fusb$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fusb$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fusb$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fusb$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fusb$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fusb$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fusb$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fusb$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fusb$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fusb$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fusb$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fusb$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fusb$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fusb$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fusb$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fusb$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fusb$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fusb$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fusb$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fusb$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fusb$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fusb$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fusb$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fusb$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fusb$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fusb$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fusb$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fusb$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fusb$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fusb$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fusb$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fusb$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fusb$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fusb$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fusb$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fusb$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fusb$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fusb$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fusb$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fusb$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fusb$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fusb$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fusb$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fusb$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fusb$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fusb$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fusb$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fusb$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fusb$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fusb$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fusb$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fusb$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fusb$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fusb$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fusb$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fusb$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fusb$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fusb$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fusb$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fusb$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fusb$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fusb$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fusb$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fusb$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fusb$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fusb$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fusb$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fusb$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fusb$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fusb$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fusb$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fusb$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fusb$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fusb$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
G$usbSetupPacket$0$0==.
_usbSetupPacket::
	.ds 8
G$controlTransferBytesLeft$0$0==.
_controlTransferBytesLeft::
	.ds 2
Lusb.usbStandardDeviceRequestHandler$response$1$1==.
_usbStandardDeviceRequestHandler_response_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$usbDeviceState$0$0==.
_usbDeviceState::
	.ds 1
G$controlTransferState$0$0==.
_controlTransferState::
	.ds 1
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
	G$usbInitEndpointOut$0$0 ==.
	C$usb.c$24$1$1 ==.
;	libraries/src/usb/usb.c:24: volatile BIT usbSuspendMode = 0;
	clr	_usbSuspendMode
	G$usbInitEndpointOut$0$0 ==.
	C$usb.c$27$1$1 ==.
;	libraries/src/usb/usb.c:27: volatile BIT usbActivityFlag = 0;
	clr	_usbActivityFlag
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
;Allocation info for local variables in function 'usbInit'
;------------------------------------------------------------
	G$usbInit$0$0 ==.
	C$usb.c$29$0$0 ==.
;	libraries/src/usb/usb.c:29: void usbInit()
;	-----------------------------------------
;	 function usbInit
;	-----------------------------------------
_usbInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$usb.c$31$0$0 ==.
;	libraries/src/usb/usb.c:31: }
	C$usb.c$31$0$0 ==.
	XG$usbInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbReadFifo'
;------------------------------------------------------------
	G$usbReadFifo$0$0 ==.
	C$usb.c$34$0$0 ==.
;	libraries/src/usb/usb.c:34: void usbReadFifo(uint8 endpointNumber, uint8 count, uint8 XDATA * buffer)
;	-----------------------------------------
;	 function usbReadFifo
;	-----------------------------------------
_usbReadFifo:
	mov	r7,dpl
	C$usb.c$36$1$1 ==.
;	libraries/src/usb/usb.c:36: XDATA uint8 * fifo = (XDATA uint8 *)(0xDE20 + (uint8)(endpointNumber<<1));
	clr	a
	xch	a,r7
	add	a,acc
	xch	a,r7
	rlc	a
	mov	r6,a
	mov	a,#0x20
	add	a,r7
	mov	r7,a
	mov	a,#0xDE
	addc	a,r6
	mov	r6,a
	C$usb.c$37$1$1 ==.
;	libraries/src/usb/usb.c:37: while(count > 0)
	mov	r0,#_usbReadFifo_PARM_2
	movx	a,@r0
	mov	r5,a
	mov	r0,#_usbReadFifo_PARM_3
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00101$:
	mov	a,r5
	jz	00103$
	C$usb.c$39$2$2 ==.
;	libraries/src/usb/usb.c:39: count--;
	dec	r5
	C$usb.c$40$2$2 ==.
;	libraries/src/usb/usb.c:40: *(buffer++) = *fifo;
	mov	dpl,r7
	mov	dph,r6
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	sjmp	00101$
00103$:
	C$usb.c$43$1$1 ==.
;	libraries/src/usb/usb.c:43: usbActivityFlag = 1;
	setb	_usbActivityFlag
	C$usb.c$44$1$1 ==.
	XG$usbReadFifo$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbWriteFifo'
;------------------------------------------------------------
	G$usbWriteFifo$0$0 ==.
	C$usb.c$46$1$1 ==.
;	libraries/src/usb/usb.c:46: void usbWriteFifo(uint8 endpointNumber, uint8 count, const uint8 XDATA * buffer)
;	-----------------------------------------
;	 function usbWriteFifo
;	-----------------------------------------
_usbWriteFifo:
	mov	r7,dpl
	C$usb.c$48$1$1 ==.
;	libraries/src/usb/usb.c:48: XDATA uint8 * fifo = (XDATA uint8 *)(0xDE20 + (uint8)(endpointNumber<<1));
	clr	a
	xch	a,r7
	add	a,acc
	xch	a,r7
	rlc	a
	mov	r6,a
	mov	a,#0x20
	add	a,r7
	mov	r7,a
	mov	a,#0xDE
	addc	a,r6
	mov	r6,a
	C$usb.c$49$1$1 ==.
;	libraries/src/usb/usb.c:49: while(count > 0)
	mov	r0,#_usbWriteFifo_PARM_2
	movx	a,@r0
	mov	r5,a
	mov	r0,#_usbWriteFifo_PARM_3
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00101$:
	mov	a,r5
	jz	00104$
	C$usb.c$51$2$2 ==.
;	libraries/src/usb/usb.c:51: count--;
	dec	r5
	C$usb.c$52$2$2 ==.
;	libraries/src/usb/usb.c:52: *fifo = *(buffer++);
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	dpl,r7
	mov	dph,r6
	mov	a,r2
	movx	@dptr,a
	sjmp	00101$
00104$:
	C$usb.c$57$1$1 ==.
	XG$usbWriteFifo$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'basicUsbInit'
;------------------------------------------------------------
	Fusb$basicUsbInit$0$0 ==.
	C$usb.c$61$1$1 ==.
;	libraries/src/usb/usb.c:61: static void basicUsbInit()
;	-----------------------------------------
;	 function basicUsbInit
;	-----------------------------------------
_basicUsbInit:
	C$usb.c$63$1$1 ==.
;	libraries/src/usb/usb.c:63: usbSuspendMode = 0;
	clr	_usbSuspendMode
	C$usb.c$66$1$1 ==.
;	libraries/src/usb/usb.c:66: USBPOW = 1;
	mov	dptr,#_USBPOW
	mov	a,#0x01
	movx	@dptr,a
	C$usb.c$70$1$1 ==.
;	libraries/src/usb/usb.c:70: USBCIE = 0b0111;
	mov	dptr,#_USBCIE
	mov	a,#0x07
	movx	@dptr,a
	C$usb.c$71$1$1 ==.
	XFusb$basicUsbInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbPoll'
;------------------------------------------------------------
	G$usbPoll$0$0 ==.
	C$usb.c$73$1$1 ==.
;	libraries/src/usb/usb.c:73: void usbPoll()
;	-----------------------------------------
;	 function usbPoll
;	-----------------------------------------
_usbPoll:
	C$usb.c$79$1$1 ==.
;	libraries/src/usb/usb.c:79: if (!usbPowerPresent())
	lcall	_usbPowerPresent
	jc	00102$
	C$usb.c$84$2$2 ==.
;	libraries/src/usb/usb.c:84: SLEEP &= ~(1<<7); // Disable the USB module (SLEEP.USB_EN = 0).
	mov	r7,_SLEEP
	anl	ar7,#0x7F
	mov	_SLEEP,r7
	C$usb.c$86$2$2 ==.
;	libraries/src/usb/usb.c:86: disableUsbPullup();
	lcall	_disableUsbPullup
	C$usb.c$87$2$2 ==.
;	libraries/src/usb/usb.c:87: usbDeviceState = USB_STATE_DETACHED;
	mov	dptr,#_usbDeviceState
	clr	a
	movx	@dptr,a
	C$usb.c$88$2$2 ==.
;	libraries/src/usb/usb.c:88: usbSuspendMode = 0;
	clr	_usbSuspendMode
	C$usb.c$89$2$2 ==.
;	libraries/src/usb/usb.c:89: return;
	ljmp	00152$
00102$:
	C$usb.c$92$1$1 ==.
;	libraries/src/usb/usb.c:92: if (usbDeviceState == USB_STATE_DETACHED)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	jnz	00104$
	C$usb.c$94$2$3 ==.
;	libraries/src/usb/usb.c:94: enableUsbPullup();
	lcall	_enableUsbPullup
	C$usb.c$95$2$3 ==.
;	libraries/src/usb/usb.c:95: SLEEP |= (1<<7);            // Enable the USB module (SLEEP.USB_EN = 1).
	orl	_SLEEP,#0x80
	C$usb.c$96$2$3 ==.
;	libraries/src/usb/usb.c:96: __asm nop __endasm;         // Datasheet doesn't say so, but David suspects we need some NOPs here before writing to USB registers.
	 nop 
	C$usb.c$97$2$3 ==.
;	libraries/src/usb/usb.c:97: __asm nop __endasm;
	 nop 
	C$usb.c$98$2$3 ==.
;	libraries/src/usb/usb.c:98: __asm nop __endasm;
	 nop 
	C$usb.c$99$2$3 ==.
;	libraries/src/usb/usb.c:99: __asm nop __endasm;
	 nop 
	C$usb.c$100$2$3 ==.
;	libraries/src/usb/usb.c:100: usbDeviceState = USB_STATE_POWERED;
	mov	dptr,#_usbDeviceState
	mov	a,#0x02
	movx	@dptr,a
	C$usb.c$102$2$3 ==.
;	libraries/src/usb/usb.c:102: basicUsbInit();
	lcall	_basicUsbInit
00104$:
	C$usb.c$105$1$1 ==.
;	libraries/src/usb/usb.c:105: usbcif = USBCIF;
	mov	dptr,#_USBCIF
	movx	a,@dptr
	mov	r7,a
	C$usb.c$106$1$1 ==.
;	libraries/src/usb/usb.c:106: usbiif = USBIIF;
	mov	dptr,#_USBIIF
	movx	a,@dptr
	mov	r6,a
	C$usb.c$108$1$1 ==.
;	libraries/src/usb/usb.c:108: if (usbcif & (1<<0)) // Check SUSPENDIF
	mov	a,r7
	jnb	acc.0,00106$
	C$usb.c$113$2$4 ==.
;	libraries/src/usb/usb.c:113: usbSuspendMode = 1;
	setb	_usbSuspendMode
00106$:
	C$usb.c$116$1$1 ==.
;	libraries/src/usb/usb.c:116: if (usbcif & (1<<2))  // check RSTIF, the reset flag
	mov	a,r7
	jnb	acc.2,00108$
	C$usb.c$119$2$5 ==.
;	libraries/src/usb/usb.c:119: usbDeviceState = USB_STATE_DEFAULT;
	mov	dptr,#_usbDeviceState
	mov	a,#0x04
	movx	@dptr,a
	C$usb.c$120$2$5 ==.
;	libraries/src/usb/usb.c:120: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
	C$usb.c$122$2$5 ==.
;	libraries/src/usb/usb.c:122: basicUsbInit();
	push	ar7
	push	ar6
	lcall	_basicUsbInit
	pop	ar6
	pop	ar7
00108$:
	C$usb.c$125$1$1 ==.
;	libraries/src/usb/usb.c:125: if (usbcif & (1<<1)) // Check RESUMEIF
	mov	a,r7
	jnb	acc.1,00110$
	C$usb.c$127$2$6 ==.
;	libraries/src/usb/usb.c:127: usbSuspendMode = 0;
	clr	_usbSuspendMode
00110$:
	C$usb.c$130$1$1 ==.
;	libraries/src/usb/usb.c:130: if (usbiif & (1<<0)) // Check EP0IF
	mov	a,r6
	jb	acc.0,00181$
	ljmp	00152$
00181$:
	C$usb.c$134$2$7 ==.
;	libraries/src/usb/usb.c:134: USBINDEX = 0;
	mov	dptr,#_USBINDEX
	clr	a
	movx	@dptr,a
	C$usb.c$135$2$7 ==.
;	libraries/src/usb/usb.c:135: usbcs0 = USBCS0;
	mov	dptr,#_USBCSIL
	movx	a,@dptr
	mov	r7,a
	C$usb.c$137$2$7 ==.
;	libraries/src/usb/usb.c:137: usbActivityFlag = 1;
	setb	_usbActivityFlag
	C$usb.c$139$2$7 ==.
;	libraries/src/usb/usb.c:139: if (usbcs0 & (1<<4)) // Check SETUP_END
	mov	a,r7
	jnb	acc.4,00112$
	C$usb.c$142$3$8 ==.
;	libraries/src/usb/usb.c:142: USBCS0 = 0x80; // Clear the SETUP_END bit
	mov	dptr,#_USBCSIL
	mov	a,#0x80
	movx	@dptr,a
	C$usb.c$143$3$8 ==.
;	libraries/src/usb/usb.c:143: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
00112$:
	C$usb.c$146$2$7 ==.
;	libraries/src/usb/usb.c:146: if (usbcs0 & (1<<2))  // Check SENT_STALL
	mov	a,r7
	jnb	acc.2,00114$
	C$usb.c$149$3$9 ==.
;	libraries/src/usb/usb.c:149: USBCS0 = 0x00;  // Reset endpoint 0.
	mov	dptr,#_USBCSIL
	C$usb.c$150$3$9 ==.
;	libraries/src/usb/usb.c:150: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	clr	a
	movx	@dptr,a
	mov	dptr,#_controlTransferState
	movx	@dptr,a
00114$:
	C$usb.c$153$2$7 ==.
;	libraries/src/usb/usb.c:153: if (usbcs0 & (1<<0))  // Check OUTPKT_RDY
	mov	a,r7
	jb	acc.0,00184$
	ljmp	00143$
00184$:
	C$usb.c$158$3$10 ==.
;	libraries/src/usb/usb.c:158: if (controlTransferState == CONTROL_TRANSFER_STATE_WRITE)
	mov	dptr,#_controlTransferState
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00185$
	sjmp	00186$
00185$:
	ljmp	00140$
00186$:
	C$usb.c$161$4$10 ==.
;	libraries/src/usb/usb.c:161: uint8 bytesReceived = USBCNT0;
	mov	dptr,#_USBCNTL
	movx	a,@dptr
	mov	r6,a
	C$usb.c$162$4$11 ==.
;	libraries/src/usb/usb.c:162: if (bytesReceived > controlTransferBytesLeft)
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	r3,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00116$
	C$usb.c$164$5$12 ==.
;	libraries/src/usb/usb.c:164: bytesReceived = controlTransferBytesLeft;
	mov	ar6,r4
00116$:
	C$usb.c$166$4$11 ==.
;	libraries/src/usb/usb.c:166: usbReadFifo(0, bytesReceived, controlTransferPointer);
	mov	r0,#_usbReadFifo_PARM_2
	mov	a,r6
	movx	@r0,a
	mov	r0,#_controlTransferPointer
	mov	r1,#_usbReadFifo_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_usbReadFifo
	pop	ar6
	pop	ar7
	C$usb.c$167$4$11 ==.
;	libraries/src/usb/usb.c:167: controlTransferPointer += bytesReceived;
	mov	r0,#_controlTransferPointer
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	C$usb.c$168$4$11 ==.
;	libraries/src/usb/usb.c:168: controlTransferBytesLeft -= bytesReceived;
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#_controlTransferBytesLeft
	mov	a,r4
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r5
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	C$usb.c$170$4$11 ==.
;	libraries/src/usb/usb.c:170: if (controlTransferBytesLeft)
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00123$
	C$usb.c$173$5$13 ==.
;	libraries/src/usb/usb.c:173: USBCS0 = (1<<6);  // De-asserts the OUTPKT_RDY bit (bit 0).
	mov	dptr,#_USBCSIL
	mov	a,#0x40
	movx	@dptr,a
	ljmp	00143$
00123$:
	C$usb.c$179$5$14 ==.
;	libraries/src/usb/usb.c:179: if (usbSetupPacket.requestType != USB_REQUEST_TYPE_STANDARD) // OPT: remove this check
	mov	dptr,#_usbSetupPacket
	movx	a,@dptr
	anl	a,#0x60
	jz	00118$
	C$usb.c$181$6$15 ==.
;	libraries/src/usb/usb.c:181: usbCallbackControlWriteHandler();
	push	ar7
	lcall	_usbCallbackControlWriteHandler
	pop	ar7
00118$:
	C$usb.c$184$5$14 ==.
;	libraries/src/usb/usb.c:184: USBINDEX = 0;  // Just in case USBINDEX was changed above.
	mov	dptr,#_USBINDEX
	clr	a
	movx	@dptr,a
	C$usb.c$186$5$14 ==.
;	libraries/src/usb/usb.c:186: if (controlTransferState == CONTROL_TRANSFER_STATE_NONE)
	mov	dptr,#_controlTransferState
	movx	a,@dptr
	mov	r6,a
	jnz	00120$
	C$usb.c$189$6$16 ==.
;	libraries/src/usb/usb.c:189: USBCS0 = (1<<6) | (1<<3) | (1<<5); // clear OUTPKT_RDY, set DATA_END, SEND_STALL
	mov	dptr,#_USBCSIL
	mov	a,#0x68
	movx	@dptr,a
	ljmp	00143$
00120$:
	C$usb.c$194$6$17 ==.
;	libraries/src/usb/usb.c:194: USBCS0 = (1<<6) | (1<<3); // clear OUTPKT_RDY, set DATA_END
	mov	dptr,#_USBCSIL
	mov	a,#0x48
	movx	@dptr,a
	C$usb.c$195$6$17 ==.
;	libraries/src/usb/usb.c:195: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
	ljmp	00143$
00140$:
	C$usb.c$199$3$10 ==.
;	libraries/src/usb/usb.c:199: else if (USBCNT0 == 8)
	mov	dptr,#_USBCNTL
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x08,00137$
	C$usb.c$204$4$18 ==.
;	libraries/src/usb/usb.c:204: usbReadFifo(0, 8, (uint8 XDATA *)&usbSetupPacket); // Store the data in usbSetupPacket.
	mov	r0,#_usbReadFifo_PARM_3
	mov	a,#_usbSetupPacket
	movx	@r0,a
	inc	r0
	mov	a,#(_usbSetupPacket >> 8)
	movx	@r0,a
	mov	r0,#_usbReadFifo_PARM_2
	mov	a,#0x08
	movx	@r0,a
	mov	dpl,#0x00
	push	ar7
	lcall	_usbReadFifo
	pop	ar7
	C$usb.c$207$4$18 ==.
;	libraries/src/usb/usb.c:207: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
	C$usb.c$209$4$18 ==.
;	libraries/src/usb/usb.c:209: if (usbSetupPacket.requestType == USB_REQUEST_TYPE_STANDARD)
	mov	dptr,#_usbSetupPacket
	movx	a,@dptr
	anl	a,#0x60
	jnz	00126$
	C$usb.c$214$5$19 ==.
;	libraries/src/usb/usb.c:214: usbStandardDeviceRequestHandler();
	push	ar7
	lcall	_usbStandardDeviceRequestHandler
	pop	ar7
	sjmp	00127$
00126$:
	C$usb.c$221$5$20 ==.
;	libraries/src/usb/usb.c:221: usbCallbackSetupHandler();
	push	ar7
	lcall	_usbCallbackSetupHandler
	pop	ar7
00127$:
	C$usb.c$224$4$18 ==.
;	libraries/src/usb/usb.c:224: USBINDEX = 0;  // Select EP0 again because the functions above might have changed USBINDEX.
	mov	dptr,#_USBINDEX
	clr	a
	movx	@dptr,a
	C$usb.c$227$4$18 ==.
;	libraries/src/usb/usb.c:227: if (controlTransferState == CONTROL_TRANSFER_STATE_NONE)
	mov	dptr,#_controlTransferState
	movx	a,@dptr
	mov	r6,a
	jnz	00134$
	C$usb.c$230$5$21 ==.
;	libraries/src/usb/usb.c:230: USBCS0 = (1<<6) | (1<<5); // Clears the OUTPKT_RDY flag because we've handled it, and sends a STALL.
	mov	dptr,#_USBCSIL
	mov	a,#0x60
	movx	@dptr,a
	sjmp	00143$
00134$:
	C$usb.c$232$4$18 ==.
;	libraries/src/usb/usb.c:232: else if (controlTransferState == CONTROL_TRANSFER_STATE_WRITE)
	cjne	r6,#0x01,00143$
	C$usb.c$234$5$22 ==.
;	libraries/src/usb/usb.c:234: if (controlTransferBytesLeft)
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00129$
	C$usb.c$237$6$23 ==.
;	libraries/src/usb/usb.c:237: USBCS0 = (1<<6);  // De-asserts the OUTPKT_RDY bit.
	mov	dptr,#_USBCSIL
	mov	a,#0x40
	movx	@dptr,a
	sjmp	00143$
00129$:
	C$usb.c$242$6$24 ==.
;	libraries/src/usb/usb.c:242: USBCS0 = (1<<6) | (1<<3) | (1<<1);  // De-asserts OUTPKY_RDY, asserts DATA_END, asserts INPKT_RDY.
	mov	dptr,#_USBCSIL
	mov	a,#0x4A
	movx	@dptr,a
	C$usb.c$243$6$24 ==.
;	libraries/src/usb/usb.c:243: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
	sjmp	00143$
00137$:
	C$usb.c$252$4$25 ==.
;	libraries/src/usb/usb.c:252: USBCS0 = (1<<6);  // De-asserts the OUTPKT_RDY.
	mov	dptr,#_USBCSIL
	mov	a,#0x40
	movx	@dptr,a
00143$:
	C$usb.c$256$2$7 ==.
;	libraries/src/usb/usb.c:256: if (!(usbcs0 & (1<<1)) && (controlTransferState == CONTROL_TRANSFER_STATE_READ))
	mov	a,r7
	jb	acc.1,00152$
	mov	dptr,#_controlTransferState
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00152$
	C$usb.c$261$3$26 ==.
;	libraries/src/usb/usb.c:261: if (controlTransferBytesLeft < USB_EP0_PACKET_SIZE)
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x20
	mov	a,r6
	subb	a,#0x00
	jnc	00145$
	C$usb.c$264$4$27 ==.
;	libraries/src/usb/usb.c:264: usbcs0 = (1<<1)|(1<<3);  // INPKT_RDY and DATA_END
	mov	r7,#0x0A
	C$usb.c$265$4$27 ==.
;	libraries/src/usb/usb.c:265: bytesToSend = controlTransferBytesLeft;
	C$usb.c$266$4$27 ==.
;	libraries/src/usb/usb.c:266: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
	sjmp	00146$
00145$:
	C$usb.c$271$4$28 ==.
;	libraries/src/usb/usb.c:271: usbcs0 = (1<<1); // INPKT_RDY
	mov	r7,#0x02
	C$usb.c$272$4$28 ==.
;	libraries/src/usb/usb.c:272: bytesToSend = USB_EP0_PACKET_SIZE;
	mov	r5,#0x20
00146$:
	C$usb.c$276$3$26 ==.
;	libraries/src/usb/usb.c:276: usbWriteFifo(0, bytesToSend, controlTransferPointer);
	mov	r0,#_usbWriteFifo_PARM_2
	mov	a,r5
	movx	@r0,a
	mov	r0,#_controlTransferPointer
	mov	r1,#_usbWriteFifo_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,#0x00
	push	ar7
	push	ar5
	lcall	_usbWriteFifo
	pop	ar5
	pop	ar7
	C$usb.c$277$3$26 ==.
;	libraries/src/usb/usb.c:277: USBCS0 = usbcs0;
	mov	dptr,#_USBCSIL
	mov	a,r7
	movx	@dptr,a
	C$usb.c$280$3$26 ==.
;	libraries/src/usb/usb.c:280: controlTransferPointer += bytesToSend;
	mov	r0,#_controlTransferPointer
	movx	a,@r0
	add	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	C$usb.c$281$3$26 ==.
;	libraries/src/usb/usb.c:281: controlTransferBytesLeft -= bytesToSend;
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	dptr,#_controlTransferBytesLeft
	mov	a,r6
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,r7
	subb	a,r4
	inc	dptr
	movx	@dptr,a
00152$:
	C$usb.c$284$1$1 ==.
	XG$usbPoll$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbStandardDeviceRequestHandler'
;------------------------------------------------------------
;response                  Allocated with name '_usbStandardDeviceRequestHandler_response_1_1'
;------------------------------------------------------------
	Fusb$usbStandardDeviceRequestHandler$0$0 ==.
	C$usb.c$291$1$1 ==.
;	libraries/src/usb/usb.c:291: static void usbStandardDeviceRequestHandler()
;	-----------------------------------------
;	 function usbStandardDeviceRequestHandler
;	-----------------------------------------
_usbStandardDeviceRequestHandler:
	C$usb.c$295$1$1 ==.
;	libraries/src/usb/usb.c:295: response[0] = 0;
	mov	dptr,#_usbStandardDeviceRequestHandler_response_1_1
	C$usb.c$296$1$1 ==.
;	libraries/src/usb/usb.c:296: response[1] = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#(_usbStandardDeviceRequestHandler_response_1_1 + 0x0001)
	movx	@dptr,a
	C$usb.c$309$1$1 ==.
;	libraries/src/usb/usb.c:309: switch(usbSetupPacket.bRequest)
	mov	dptr,#(_usbSetupPacket + 0x0001)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0C
	jnc	00179$
	ljmp	00147$
00179$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00180$
	jmp	@a+dptr
00180$:
	ljmp	00129$
	ljmp	00144$
	ljmp	00146$
	ljmp	00143$
	ljmp	00146$
	ljmp	00115$
	ljmp	00101$
	ljmp	00146$
	ljmp	00123$
	ljmp	00116$
	ljmp	00124$
	ljmp	00146$
	ljmp	00145$
	C$usb.c$311$2$2 ==.
;	libraries/src/usb/usb.c:311: case USB_REQUEST_GET_DESCRIPTOR: // USB Spec 9.4.3 Get Descriptor
00101$:
	C$usb.c$313$3$3 ==.
;	libraries/src/usb/usb.c:313: switch(usbSetupPacket.wValue >> 8)
	mov	dptr,#(_usbSetupPacket + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x01,00181$
	cjne	r5,#0x00,00181$
	sjmp	00102$
00181$:
	cjne	r4,#0x02,00182$
	cjne	r5,#0x00,00182$
	sjmp	00103$
00182$:
	cjne	r4,#0x03,00183$
	cjne	r5,#0x00,00183$
	sjmp	00106$
00183$:
	ljmp	00109$
	C$usb.c$315$4$4 ==.
;	libraries/src/usb/usb.c:315: case USB_DESCRIPTOR_TYPE_DEVICE:
00102$:
	C$usb.c$317$5$5 ==.
;	libraries/src/usb/usb.c:317: controlTransferPointer = (uint8 XDATA *)&usbDeviceDescriptor;
	mov	r0,#_controlTransferPointer
	mov	a,#_usbDeviceDescriptor
	movx	@r0,a
	inc	r0
	mov	a,#(_usbDeviceDescriptor >> 8)
	movx	@r0,a
	C$usb.c$318$5$5 ==.
;	libraries/src/usb/usb.c:318: controlTransferBytesLeft = sizeof(USB_DESCRIPTOR_DEVICE);
	mov	dptr,#_controlTransferBytesLeft
	mov	a,#0x12
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	C$usb.c$319$5$5 ==.
;	libraries/src/usb/usb.c:319: break;
	ljmp	00112$
	C$usb.c$321$4$4 ==.
;	libraries/src/usb/usb.c:321: case USB_DESCRIPTOR_TYPE_CONFIGURATION:
00103$:
	C$usb.c$323$5$6 ==.
;	libraries/src/usb/usb.c:323: if ((usbSetupPacket.wValue & 0xFF) != 0)
	mov	a,r6
	jz	00105$
	C$usb.c$326$6$7 ==.
;	libraries/src/usb/usb.c:326: return;
	ljmp	00147$
00105$:
	C$usb.c$331$5$6 ==.
;	libraries/src/usb/usb.c:331: controlTransferPointer = (uint8 XDATA *)usbConfigurationDescriptor;
	mov	r0,#_controlTransferPointer
	mov	a,#_usbConfigurationDescriptor
	movx	@r0,a
	inc	r0
	mov	a,#(_usbConfigurationDescriptor >> 8)
	movx	@r0,a
	C$usb.c$332$5$6 ==.
;	libraries/src/usb/usb.c:332: controlTransferBytesLeft = *(uint16 *)&usbConfigurationDescriptor[2];
	mov	dptr,#(_usbConfigurationDescriptor + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dptr,#_controlTransferBytesLeft
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	C$usb.c$333$5$6 ==.
;	libraries/src/usb/usb.c:333: break;
	C$usb.c$335$4$4 ==.
;	libraries/src/usb/usb.c:335: case USB_DESCRIPTOR_TYPE_STRING:
	sjmp	00112$
00106$:
	C$usb.c$337$5$8 ==.
;	libraries/src/usb/usb.c:337: if ((usbSetupPacket.wValue & 0xFF) >= usbStringDescriptorCount)
	mov	ar4,r6
	mov	r5,#0x00
	mov	dptr,#_usbStringDescriptorCount
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	clr	c
	mov	a,r4
	subb	a,r3
	mov	a,r5
	subb	a,r2
	jc	00108$
	C$usb.c$340$6$9 ==.
;	libraries/src/usb/usb.c:340: return;
	ljmp	00147$
00108$:
	C$usb.c$343$5$8 ==.
;	libraries/src/usb/usb.c:343: controlTransferPointer = (uint8 XDATA *)usbStringDescriptors[usbSetupPacket.wValue & 0xFF];
	clr	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_usbStringDescriptors
	mov	dpl,a
	mov	a,r7
	addc	a,#(_usbStringDescriptors >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r0,#_controlTransferPointer
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$usb.c$344$5$8 ==.
;	libraries/src/usb/usb.c:344: controlTransferBytesLeft = controlTransferPointer[0];
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_controlTransferBytesLeft
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	C$usb.c$345$5$8 ==.
;	libraries/src/usb/usb.c:345: break;
	C$usb.c$347$4$4 ==.
;	libraries/src/usb/usb.c:347: default:
	sjmp	00112$
00109$:
	C$usb.c$350$5$10 ==.
;	libraries/src/usb/usb.c:350: usbCallbackClassDescriptorHandler();
	lcall	_usbCallbackClassDescriptorHandler
	C$usb.c$352$5$10 ==.
;	libraries/src/usb/usb.c:352: if (controlTransferState == CONTROL_TRANSFER_STATE_NONE)
	mov	dptr,#_controlTransferState
	movx	a,@dptr
	mov	r7,a
	jnz	00112$
	C$usb.c$355$6$11 ==.
;	libraries/src/usb/usb.c:355: return;
	ljmp	00147$
	C$usb.c$359$3$3 ==.
;	libraries/src/usb/usb.c:359: }
00112$:
	C$usb.c$364$3$3 ==.
;	libraries/src/usb/usb.c:364: if(controlTransferBytesLeft > usbSetupPacket.wLength)
	mov	dptr,#(_usbSetupPacket + 0x0006)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_controlTransferBytesLeft
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00114$
	C$usb.c$366$4$12 ==.
;	libraries/src/usb/usb.c:366: controlTransferBytesLeft = usbSetupPacket.wLength;
	mov	dptr,#_controlTransferBytesLeft
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00114$:
	C$usb.c$369$3$3 ==.
;	libraries/src/usb/usb.c:369: controlTransferState = CONTROL_TRANSFER_STATE_READ;
	mov	dptr,#_controlTransferState
	mov	a,#0x02
	movx	@dptr,a
	C$usb.c$370$3$3 ==.
;	libraries/src/usb/usb.c:370: return;
	ljmp	00147$
	C$usb.c$372$2$2 ==.
;	libraries/src/usb/usb.c:372: case USB_REQUEST_SET_ADDRESS: // USB Spec, 9.4.6 Set Address
00115$:
	C$usb.c$379$3$13 ==.
;	libraries/src/usb/usb.c:379: USBADDR = (uint8)usbSetupPacket.wValue;
	mov	dptr,#(_usbSetupPacket + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_USBADDR
	mov	a,r6
	movx	@dptr,a
	C$usb.c$380$3$13 ==.
;	libraries/src/usb/usb.c:380: usbDeviceState = ((uint8)usbSetupPacket.wValue) ? USB_STATE_ADDRESS : USB_STATE_DEFAULT;
	mov	a,r6
	jz	00149$
	mov	r7,#0x08
	sjmp	00150$
00149$:
	mov	r7,#0x04
00150$:
	mov	dptr,#_usbDeviceState
	mov	a,r7
	movx	@dptr,a
	C$usb.c$383$3$13 ==.
;	libraries/src/usb/usb.c:383: usbControlAcknowledge();
	lcall	_usbControlAcknowledge
	C$usb.c$384$3$13 ==.
;	libraries/src/usb/usb.c:384: return;
	ljmp	00147$
	C$usb.c$386$2$2 ==.
;	libraries/src/usb/usb.c:386: case USB_REQUEST_SET_CONFIGURATION: // USB Spec, 9.4.7 Set Configuration
00116$:
	C$usb.c$389$3$14 ==.
;	libraries/src/usb/usb.c:389: switch(usbSetupPacket.wValue)
	mov	dptr,#(_usbSetupPacket + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x00,00189$
	cjne	r7,#0x00,00189$
	sjmp	00117$
00189$:
	C$usb.c$391$4$15 ==.
;	libraries/src/usb/usb.c:391: case 0:
	cjne	r6,#0x01,00121$
	cjne	r7,#0x00,00121$
	sjmp	00120$
00117$:
	C$usb.c$397$5$16 ==.
;	libraries/src/usb/usb.c:397: if (usbDeviceState > USB_STATE_ADDRESS)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x08
	jnc	00122$
	C$usb.c$399$6$17 ==.
;	libraries/src/usb/usb.c:399: usbDeviceState = USB_STATE_ADDRESS;
	mov	dptr,#_usbDeviceState
	mov	a,#0x08
	movx	@dptr,a
	C$usb.c$401$5$16 ==.
;	libraries/src/usb/usb.c:401: break;
	C$usb.c$403$4$15 ==.
;	libraries/src/usb/usb.c:403: case 1:
	sjmp	00122$
00120$:
	C$usb.c$408$5$18 ==.
;	libraries/src/usb/usb.c:408: usbDeviceState = USB_STATE_CONFIGURED;
	mov	dptr,#_usbDeviceState
	mov	a,#0x10
	movx	@dptr,a
	C$usb.c$409$5$18 ==.
;	libraries/src/usb/usb.c:409: usbCallbackInitEndpoints();
	lcall	_usbCallbackInitEndpoints
	C$usb.c$410$5$18 ==.
;	libraries/src/usb/usb.c:410: break;
	C$usb.c$412$4$15 ==.
;	libraries/src/usb/usb.c:412: default:
	sjmp	00122$
00121$:
	C$usb.c$415$5$19 ==.
;	libraries/src/usb/usb.c:415: return;
	ljmp	00147$
	C$usb.c$417$3$14 ==.
;	libraries/src/usb/usb.c:417: }
00122$:
	C$usb.c$420$3$14 ==.
;	libraries/src/usb/usb.c:420: usbControlAcknowledge();
	lcall	_usbControlAcknowledge
	C$usb.c$421$3$14 ==.
;	libraries/src/usb/usb.c:421: return;
	ljmp	00147$
	C$usb.c$423$2$2 ==.
;	libraries/src/usb/usb.c:423: case USB_REQUEST_GET_CONFIGURATION: // USB Spec 9.4.2 Get Configuration
00123$:
	C$usb.c$426$3$20 ==.
;	libraries/src/usb/usb.c:426: response[0] = (usbDeviceState == USB_STATE_CONFIGURED) ? 1 : 0;
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00151$
	mov	r7,#0x01
	sjmp	00152$
00151$:
	mov	r7,#0x00
00152$:
	mov	dptr,#_usbStandardDeviceRequestHandler_response_1_1
	mov	a,r7
	movx	@dptr,a
	C$usb.c$427$3$20 ==.
;	libraries/src/usb/usb.c:427: usbControlRead(1, response);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbStandardDeviceRequestHandler_response_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_usbStandardDeviceRequestHandler_response_1_1 >> 8)
	movx	@r0,a
	mov	dptr,#0x0001
	lcall	_usbControlRead
	C$usb.c$428$3$20 ==.
;	libraries/src/usb/usb.c:428: return;
	ljmp	00147$
	C$usb.c$430$2$2 ==.
;	libraries/src/usb/usb.c:430: case USB_REQUEST_GET_INTERFACE: // USB Spec 9.4.4 Get Interface
00124$:
	C$usb.c$437$3$21 ==.
;	libraries/src/usb/usb.c:437: if (usbDeviceState < USB_STATE_CONFIGURED)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00194$
00194$:
	jnc	00126$
	C$usb.c$440$4$22 ==.
;	libraries/src/usb/usb.c:440: return;
	ljmp	00147$
00126$:
	C$usb.c$443$3$21 ==.
;	libraries/src/usb/usb.c:443: if (usbSetupPacket.wIndex >= ((USB_DESCRIPTOR_CONFIGURATION *)&usbConfigurationDescriptor)->bNumInterfaces)
	mov	dptr,#(_usbSetupPacket + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#_usbConfigurationDescriptor
	mov	r5,#(_usbConfigurationDescriptor >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jc	00128$
	C$usb.c$446$4$23 ==.
;	libraries/src/usb/usb.c:446: return;
	ljmp	00147$
00128$:
	C$usb.c$451$3$21 ==.
;	libraries/src/usb/usb.c:451: usbControlRead(1, response);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbStandardDeviceRequestHandler_response_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_usbStandardDeviceRequestHandler_response_1_1 >> 8)
	movx	@r0,a
	mov	dptr,#0x0001
	lcall	_usbControlRead
	C$usb.c$452$3$21 ==.
;	libraries/src/usb/usb.c:452: return;
	ljmp	00147$
	C$usb.c$454$2$2 ==.
;	libraries/src/usb/usb.c:454: case USB_REQUEST_GET_STATUS: // USB Spec 9.4.5 Get Status
00129$:
	C$usb.c$456$3$24 ==.
;	libraries/src/usb/usb.c:456: switch(usbSetupPacket.recipient)
	mov	dptr,#_usbSetupPacket
	movx	a,@dptr
	anl	a,#0x1F
	mov	r6,a
	mov	r7,#0x00
	cjne	r6,#0x00,00197$
	cjne	r7,#0x00,00197$
	sjmp	00130$
00197$:
	cjne	r6,#0x01,00198$
	cjne	r7,#0x00,00198$
	sjmp	00131$
00198$:
	cjne	r6,#0x02,00199$
	cjne	r7,#0x00,00199$
	ljmp	00137$
00199$:
	ljmp	00142$
	C$usb.c$458$4$25 ==.
;	libraries/src/usb/usb.c:458: case USB_RECIPIENT_DEVICE:
00130$:
	C$usb.c$461$5$26 ==.
;	libraries/src/usb/usb.c:461: response[0] = vinPowerPresent() ? 1 : 0;
	lcall	_vinPowerPresent
	jnc	00153$
	mov	r7,#0x01
	sjmp	00154$
00153$:
	mov	r7,#0x00
00154$:
	mov	dptr,#_usbStandardDeviceRequestHandler_response_1_1
	mov	a,r7
	movx	@dptr,a
	C$usb.c$463$5$26 ==.
;	libraries/src/usb/usb.c:463: usbControlRead(2, response);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbStandardDeviceRequestHandler_response_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_usbStandardDeviceRequestHandler_response_1_1 >> 8)
	movx	@r0,a
	mov	dptr,#0x0002
	lcall	_usbControlRead
	C$usb.c$464$5$26 ==.
;	libraries/src/usb/usb.c:464: return;
	ljmp	00147$
	C$usb.c$466$4$25 ==.
;	libraries/src/usb/usb.c:466: case USB_RECIPIENT_INTERFACE:
00131$:
	C$usb.c$468$5$27 ==.
;	libraries/src/usb/usb.c:468: if (usbDeviceState < USB_STATE_CONFIGURED && usbSetupPacket.wIndex != 0)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00201$
00201$:
	jnc	00133$
	mov	dptr,#(_usbSetupPacket + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00133$
	C$usb.c$472$6$28 ==.
;	libraries/src/usb/usb.c:472: return;
	ljmp	00147$
00133$:
	C$usb.c$475$5$27 ==.
;	libraries/src/usb/usb.c:475: if (usbSetupPacket.wIndex >= ((USB_DESCRIPTOR_CONFIGURATION *)&usbConfigurationDescriptor)->bNumInterfaces)
	mov	dptr,#(_usbSetupPacket + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#_usbConfigurationDescriptor
	mov	r5,#(_usbConfigurationDescriptor >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r4
	jc	00136$
	C$usb.c$478$6$29 ==.
;	libraries/src/usb/usb.c:478: return;
	sjmp	00147$
00136$:
	C$usb.c$483$5$27 ==.
;	libraries/src/usb/usb.c:483: usbControlRead(2, response);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbStandardDeviceRequestHandler_response_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_usbStandardDeviceRequestHandler_response_1_1 >> 8)
	movx	@r0,a
	mov	dptr,#0x0002
	lcall	_usbControlRead
	C$usb.c$484$5$27 ==.
;	libraries/src/usb/usb.c:484: return;
	C$usb.c$486$4$25 ==.
;	libraries/src/usb/usb.c:486: case USB_RECIPIENT_ENDPOINT:
	sjmp	00147$
00137$:
	C$usb.c$488$5$30 ==.
;	libraries/src/usb/usb.c:488: if ((usbSetupPacket.wValue & 15) == 0)
	mov	dptr,#(_usbSetupPacket + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	anl	a,#0x0F
	jz	00206$
	sjmp	00139$
00206$:
	C$usb.c$492$6$31 ==.
;	libraries/src/usb/usb.c:492: return;
	sjmp	00147$
00139$:
	C$usb.c$495$5$30 ==.
;	libraries/src/usb/usb.c:495: if (usbDeviceState < USB_STATE_CONFIGURED)
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00207$
00207$:
	jnc	00141$
	C$usb.c$499$6$32 ==.
;	libraries/src/usb/usb.c:499: return;
	sjmp	00147$
00141$:
	C$usb.c$507$5$30 ==.
;	libraries/src/usb/usb.c:507: usbControlRead(2, response);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbStandardDeviceRequestHandler_response_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_usbStandardDeviceRequestHandler_response_1_1 >> 8)
	movx	@r0,a
	mov	dptr,#0x0002
	lcall	_usbControlRead
	C$usb.c$508$5$30 ==.
;	libraries/src/usb/usb.c:508: return;
	C$usb.c$510$3$24 ==.
;	libraries/src/usb/usb.c:510: }
	sjmp	00147$
00142$:
	C$usb.c$511$3$24 ==.
;	libraries/src/usb/usb.c:511: return;
	C$usb.c$519$2$2 ==.
;	libraries/src/usb/usb.c:519: case USB_REQUEST_SET_FEATURE:
	sjmp	00147$
00143$:
	C$usb.c$520$2$2 ==.
;	libraries/src/usb/usb.c:520: case USB_REQUEST_CLEAR_FEATURE:
00144$:
	C$usb.c$523$3$33 ==.
;	libraries/src/usb/usb.c:523: usbControlAcknowledge();
	lcall	_usbControlAcknowledge
	C$usb.c$524$3$33 ==.
;	libraries/src/usb/usb.c:524: return;
	C$usb.c$526$2$2 ==.
;	libraries/src/usb/usb.c:526: case USB_REQUEST_SYNCH_FRAME:
	sjmp	00147$
00145$:
	C$usb.c$529$3$34 ==.
;	libraries/src/usb/usb.c:529: usbControlRead(2, response);
	mov	r0,#_usbControlRead_PARM_2
	mov	a,#_usbStandardDeviceRequestHandler_response_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_usbStandardDeviceRequestHandler_response_1_1 >> 8)
	movx	@r0,a
	mov	dptr,#0x0002
	lcall	_usbControlRead
	C$usb.c$530$3$34 ==.
;	libraries/src/usb/usb.c:530: return;
	C$usb.c$532$1$1 ==.
;	libraries/src/usb/usb.c:532: }
00146$:
00147$:
	C$usb.c$533$1$1 ==.
	XFusb$usbStandardDeviceRequestHandler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbSuspended'
;------------------------------------------------------------
	G$usbSuspended$0$0 ==.
	C$usb.c$535$1$1 ==.
;	libraries/src/usb/usb.c:535: BIT usbSuspended()
;	-----------------------------------------
;	 function usbSuspended
;	-----------------------------------------
_usbSuspended:
	C$usb.c$537$1$1 ==.
;	libraries/src/usb/usb.c:537: return usbSuspendMode;
	mov	c,_usbSuspendMode
	C$usb.c$538$1$1 ==.
	XG$usbSuspended$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbSleep'
;------------------------------------------------------------
	G$usbSleep$0$0 ==.
	C$usb.c$554$1$1 ==.
;	libraries/src/usb/usb.c:554: void usbSleep()
;	-----------------------------------------
;	 function usbSleep
;	-----------------------------------------
_usbSleep:
	C$usb.c$556$1$1 ==.
;	libraries/src/usb/usb.c:556: uint8 savedPICTL = PICTL;
	mov	r7,_PICTL
	C$usb.c$557$1$1 ==.
;	libraries/src/usb/usb.c:557: BIT savedP0IE = P0IE;
	mov	c,_P0IE
	mov	_usbSleep_savedP0IE_1_1,c
	C$usb.c$561$1$1 ==.
;	libraries/src/usb/usb.c:561: P0IE = 0;         // Disable the P0 interrupt while we are reconfiguring it (maybe not necessary).
	clr	_P0IE
	C$usb.c$562$1$1 ==.
;	libraries/src/usb/usb.c:562: PICTL |= (1<<4);  // PICTL.P0IENH = 1  Enable the Port 0 interrupts for inputs 4-7 (USB_RESUME is #7).
	orl	_PICTL,#0x10
	C$usb.c$563$1$1 ==.
;	libraries/src/usb/usb.c:563: PICTL &= ~(1<<0); // PICTL.P0ICON = 0  Detect rising edges (this is required for waking up).
	mov	r6,_PICTL
	anl	ar6,#0xFE
	mov	_PICTL,r6
	C$usb.c$565$1$1 ==.
;	libraries/src/usb/usb.c:565: do
00106$:
	C$usb.c$568$2$2 ==.
;	libraries/src/usb/usb.c:568: P0IFG = 0;   // Clear Port 0 module interrupt flags.
	mov	_P0IFG,#0x00
	C$usb.c$569$2$2 ==.
;	libraries/src/usb/usb.c:569: P0IF = 0;    // Clear Port 0 CPU interrupt flag (IRCON.P0IF = 0).
	clr	_P0IF
	C$usb.c$571$2$2 ==.
;	libraries/src/usb/usb.c:571: P0IE = 1;    // Enable the Port 0 interrupt (IEN1.P0IE = 1) so we can wake up.
	setb	_P0IE
	C$usb.c$574$2$2 ==.
;	libraries/src/usb/usb.c:574: SLEEP = (SLEEP & ~3) | 1;    // SLEEP.MODE = 1 : Selects Power Mode 1 (PM1).
	mov	r6,_SLEEP
	mov	a,#0xFC
	anl	a,r6
	orl	a,#0x01
	mov	r6,a
	mov	_SLEEP,r6
	C$usb.c$575$2$2 ==.
;	libraries/src/usb/usb.c:575: __asm nop __endasm; __asm nop __endasm; __asm nop __endasm;
	 nop 
	 nop 
	 nop 
	C$usb.c$576$2$2 ==.
;	libraries/src/usb/usb.c:576: if (SLEEP & 3)
	mov	a,_SLEEP
	anl	a,#0x03
	jz	00102$
	C$usb.c$578$3$3 ==.
;	libraries/src/usb/usb.c:578: P1_0 = 1;
	setb	_P1_0
	C$usb.c$579$3$3 ==.
;	libraries/src/usb/usb.c:579: PCON |= 1;    // PCON.IDLE = 1 : Actually go to sleep.
	orl	_PCON,#0x01
	C$usb.c$580$3$3 ==.
;	libraries/src/usb/usb.c:580: P1_0 = 0;
	clr	_P1_0
00102$:
	C$usb.c$586$2$2 ==.
;	libraries/src/usb/usb.c:586: P0IE = 0; // (IEN1.P0IE = 1)
	clr	_P0IE
	C$usb.c$592$2$2 ==.
;	libraries/src/usb/usb.c:592: if (P0IFG & 0x80)
	mov	a,_P0IFG
	jnb	acc.7,00107$
	C$usb.c$594$3$4 ==.
;	libraries/src/usb/usb.c:594: usbSuspendMode = 0;
	clr	_usbSuspendMode
00107$:
	C$usb.c$597$1$1 ==.
;	libraries/src/usb/usb.c:597: while(usbSuspendMode && !vinPowerPresent());
	jnb	_usbSuspendMode,00109$
	push	ar7
	lcall	_vinPowerPresent
	pop	ar7
	jnc	00106$
	C$usb.c$601$1$1 ==.
;	libraries/src/usb/usb.c:601: while(!(SLEEP & (1<<6))){};
00109$:
	mov	a,_SLEEP
	jnb	acc.6,00109$
	C$usb.c$604$1$1 ==.
;	libraries/src/usb/usb.c:604: PICTL = savedPICTL;
	mov	_PICTL,r7
	C$usb.c$605$1$1 ==.
;	libraries/src/usb/usb.c:605: P0IE = savedP0IE;
	mov	c,_usbSleep_savedP0IE_1_1
	mov	_P0IE,c
	C$usb.c$606$1$1 ==.
	XG$usbSleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbControlRead'
;------------------------------------------------------------
	G$usbControlRead$0$0 ==.
	C$usb.c$608$1$1 ==.
;	libraries/src/usb/usb.c:608: void usbControlRead(uint16 bytesCount, uint8 XDATA * source)
;	-----------------------------------------
;	 function usbControlRead
;	-----------------------------------------
_usbControlRead:
	mov	r6,dpl
	mov	r7,dph
	C$usb.c$610$1$1 ==.
;	libraries/src/usb/usb.c:610: controlTransferState = CONTROL_TRANSFER_STATE_READ;
	mov	dptr,#_controlTransferState
	mov	a,#0x02
	movx	@dptr,a
	C$usb.c$611$1$1 ==.
;	libraries/src/usb/usb.c:611: controlTransferBytesLeft = bytesCount;
	mov	dptr,#_controlTransferBytesLeft
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$usb.c$612$1$1 ==.
;	libraries/src/usb/usb.c:612: controlTransferPointer = source;
	mov	r0,#_usbControlRead_PARM_2
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_controlTransferPointer
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$usb.c$613$1$1 ==.
	XG$usbControlRead$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbControlWrite'
;------------------------------------------------------------
	G$usbControlWrite$0$0 ==.
	C$usb.c$615$1$1 ==.
;	libraries/src/usb/usb.c:615: void usbControlWrite(uint16 bytesCount, uint8 XDATA * source)
;	-----------------------------------------
;	 function usbControlWrite
;	-----------------------------------------
_usbControlWrite:
	mov	r6,dpl
	mov	r7,dph
	C$usb.c$617$1$1 ==.
;	libraries/src/usb/usb.c:617: controlTransferState = CONTROL_TRANSFER_STATE_WRITE;
	mov	dptr,#_controlTransferState
	mov	a,#0x01
	movx	@dptr,a
	C$usb.c$618$1$1 ==.
;	libraries/src/usb/usb.c:618: controlTransferBytesLeft = bytesCount;
	mov	dptr,#_controlTransferBytesLeft
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$usb.c$619$1$1 ==.
;	libraries/src/usb/usb.c:619: controlTransferPointer = source;
	mov	r0,#_usbControlWrite_PARM_2
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_controlTransferPointer
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$usb.c$620$1$1 ==.
	XG$usbControlWrite$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbControlAcknowledge'
;------------------------------------------------------------
	G$usbControlAcknowledge$0$0 ==.
	C$usb.c$622$1$1 ==.
;	libraries/src/usb/usb.c:622: void usbControlAcknowledge()
;	-----------------------------------------
;	 function usbControlAcknowledge
;	-----------------------------------------
_usbControlAcknowledge:
	C$usb.c$624$1$1 ==.
;	libraries/src/usb/usb.c:624: controlTransferState = CONTROL_TRANSFER_STATE_WRITE;
	mov	dptr,#_controlTransferState
	mov	a,#0x01
	movx	@dptr,a
	C$usb.c$625$1$1 ==.
;	libraries/src/usb/usb.c:625: controlTransferBytesLeft = 0;
	mov	dptr,#_controlTransferBytesLeft
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$usb.c$626$1$1 ==.
	XG$usbControlAcknowledge$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbControlStall'
;------------------------------------------------------------
	G$usbControlStall$0$0 ==.
	C$usb.c$628$1$1 ==.
;	libraries/src/usb/usb.c:628: void usbControlStall()
;	-----------------------------------------
;	 function usbControlStall
;	-----------------------------------------
_usbControlStall:
	C$usb.c$630$1$1 ==.
;	libraries/src/usb/usb.c:630: controlTransferState = CONTROL_TRANSFER_STATE_NONE;
	mov	dptr,#_controlTransferState
	clr	a
	movx	@dptr,a
	C$usb.c$631$1$1 ==.
	XG$usbControlStall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbInitEndpointIn'
;------------------------------------------------------------
	G$usbInitEndpointIn$0$0 ==.
	C$usb.c$633$1$1 ==.
;	libraries/src/usb/usb.c:633: void usbInitEndpointIn(uint8 endpointNumber, uint8 maxPacketSize)
;	-----------------------------------------
;	 function usbInitEndpointIn
;	-----------------------------------------
_usbInitEndpointIn:
	mov	a,dpl
	mov	dptr,#_USBINDEX
	movx	@dptr,a
	C$usb.c$636$1$1 ==.
;	libraries/src/usb/usb.c:636: USBMAXI = (maxPacketSize + 7) >> 3;
	mov	r0,#_usbInitEndpointIn_PARM_2
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.4,00103$
	orl	a,#0xE0
00103$:
	mov	dptr,#_USBMAXI
	mov	a,r6
	movx	@dptr,a
	C$usb.c$637$1$1 ==.
;	libraries/src/usb/usb.c:637: USBCSIH = 1;                    // Enable Double buffering
	mov	dptr,#_USBCSIH
	mov	a,#0x01
	movx	@dptr,a
	C$usb.c$638$1$1 ==.
	XG$usbInitEndpointIn$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbInitEndpointOut'
;------------------------------------------------------------
	G$usbInitEndpointOut$0$0 ==.
	C$usb.c$640$1$1 ==.
;	libraries/src/usb/usb.c:640: void usbInitEndpointOut(uint8 endpointNumber, uint8 maxPacketSize)
;	-----------------------------------------
;	 function usbInitEndpointOut
;	-----------------------------------------
_usbInitEndpointOut:
	mov	a,dpl
	mov	dptr,#_USBINDEX
	movx	@dptr,a
	C$usb.c$643$1$1 ==.
;	libraries/src/usb/usb.c:643: USBMAXO = (maxPacketSize + 7) >> 3;
	mov	r0,#_usbInitEndpointOut_PARM_2
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.4,00103$
	orl	a,#0xE0
00103$:
	mov	dptr,#_USBMAXO
	mov	a,r6
	movx	@dptr,a
	C$usb.c$644$1$1 ==.
;	libraries/src/usb/usb.c:644: USBCSOH = 1;                    // Enable Double buffering
	mov	dptr,#_USBCSOH
	mov	a,#0x01
	movx	@dptr,a
	C$usb.c$645$1$1 ==.
	XG$usbInitEndpointOut$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
Fusb$__xinit_usbDeviceState$0$0 == .
__xinit__usbDeviceState:
	.db #0x00	; 0
Fusb$__xinit_controlTransferState$0$0 == .
__xinit__controlTransferState:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
