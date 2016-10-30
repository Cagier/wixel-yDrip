;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:08 2016
;--------------------------------------------------------
	.module radio_queue
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _param_radio_channel
	.globl _randomNumber
	.globl _randomSeedFromSerialNumber
	.globl _radioCrcPassed
	.globl _radioMacRx
	.globl _radioMacTx
	.globl _radioMacStrobe
	.globl _radioMacInit
	.globl _radioQueueAllowCrcErrors
	.globl _radioQueueInit
	.globl _radioQueueTxAvailable
	.globl _radioQueueTxQueued
	.globl _radioQueueTxCurrentPacket
	.globl _radioQueueTxSendPacket
	.globl _radioQueueRxCurrentPacket
	.globl _radioQueueRxDoneWithPacket
	.globl _radioMacEventHandler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fradio_queue$P0$0$0 == 0x0080
_P0	=	0x0080
Fradio_queue$SP$0$0 == 0x0081
_SP	=	0x0081
Fradio_queue$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fradio_queue$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fradio_queue$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fradio_queue$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fradio_queue$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fradio_queue$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fradio_queue$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fradio_queue$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fradio_queue$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fradio_queue$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fradio_queue$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fradio_queue$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fradio_queue$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fradio_queue$P1$0$0 == 0x0090
_P1	=	0x0090
Fradio_queue$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fradio_queue$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fradio_queue$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fradio_queue$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fradio_queue$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fradio_queue$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fradio_queue$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fradio_queue$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fradio_queue$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fradio_queue$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fradio_queue$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fradio_queue$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fradio_queue$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fradio_queue$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fradio_queue$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fradio_queue$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fradio_queue$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fradio_queue$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fradio_queue$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fradio_queue$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fradio_queue$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fradio_queue$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fradio_queue$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fradio_queue$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fradio_queue$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fradio_queue$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fradio_queue$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fradio_queue$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fradio_queue$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fradio_queue$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fradio_queue$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fradio_queue$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fradio_queue$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fradio_queue$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fradio_queue$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fradio_queue$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fradio_queue$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fradio_queue$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fradio_queue$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fradio_queue$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fradio_queue$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fradio_queue$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fradio_queue$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fradio_queue$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fradio_queue$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fradio_queue$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fradio_queue$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fradio_queue$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fradio_queue$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fradio_queue$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fradio_queue$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fradio_queue$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fradio_queue$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fradio_queue$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fradio_queue$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fradio_queue$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fradio_queue$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fradio_queue$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fradio_queue$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fradio_queue$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fradio_queue$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fradio_queue$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fradio_queue$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fradio_queue$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fradio_queue$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fradio_queue$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fradio_queue$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fradio_queue$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fradio_queue$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fradio_queue$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fradio_queue$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fradio_queue$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fradio_queue$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fradio_queue$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fradio_queue$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fradio_queue$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fradio_queue$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fradio_queue$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fradio_queue$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fradio_queue$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fradio_queue$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fradio_queue$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fradio_queue$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fradio_queue$B$0$0 == 0x00f0
_B	=	0x00f0
Fradio_queue$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fradio_queue$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fradio_queue$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fradio_queue$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fradio_queue$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fradio_queue$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fradio_queue$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fradio_queue$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fradio_queue$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fradio_queue$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fradio_queue$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fradio_queue$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fradio_queue$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fradio_queue$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fradio_queue$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fradio_queue$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fradio_queue$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fradio_queue$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fradio_queue$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fradio_queue$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fradio_queue$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fradio_queue$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fradio_queue$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fradio_queue$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fradio_queue$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fradio_queue$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fradio_queue$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fradio_queue$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fradio_queue$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fradio_queue$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fradio_queue$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fradio_queue$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fradio_queue$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fradio_queue$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fradio_queue$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fradio_queue$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fradio_queue$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fradio_queue$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fradio_queue$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fradio_queue$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fradio_queue$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fradio_queue$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fradio_queue$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fradio_queue$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fradio_queue$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fradio_queue$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fradio_queue$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fradio_queue$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fradio_queue$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fradio_queue$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fradio_queue$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fradio_queue$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fradio_queue$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fradio_queue$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fradio_queue$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fradio_queue$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fradio_queue$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fradio_queue$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fradio_queue$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fradio_queue$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fradio_queue$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fradio_queue$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fradio_queue$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fradio_queue$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fradio_queue$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fradio_queue$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fradio_queue$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fradio_queue$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fradio_queue$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fradio_queue$EA$0$0 == 0x00af
_EA	=	0x00af
Fradio_queue$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fradio_queue$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fradio_queue$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fradio_queue$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fradio_queue$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fradio_queue$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fradio_queue$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fradio_queue$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fradio_queue$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fradio_queue$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fradio_queue$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fradio_queue$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fradio_queue$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fradio_queue$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fradio_queue$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fradio_queue$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fradio_queue$P$0$0 == 0x00d0
_P	=	0x00d0
Fradio_queue$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fradio_queue$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fradio_queue$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fradio_queue$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fradio_queue$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fradio_queue$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fradio_queue$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fradio_queue$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fradio_queue$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fradio_queue$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fradio_queue$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fradio_queue$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fradio_queue$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fradio_queue$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fradio_queue$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fradio_queue$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fradio_queue$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fradio_queue$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fradio_queue$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fradio_queue$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fradio_queue$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fradio_queue$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fradio_queue$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fradio_queue$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fradio_queue$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fradio_queue$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fradio_queue$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fradio_queue$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fradio_queue$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fradio_queue$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fradio_queue$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fradio_queue$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fradio_queue$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fradio_queue$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fradio_queue$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fradio_queue$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fradio_queue$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fradio_queue$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fradio_queue$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fradio_queue$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fradio_queue$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fradio_queue$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fradio_queue$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fradio_queue$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fradio_queue$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fradio_queue$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fradio_queue$U1MODE$0$0 == 0x00ff
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
Fradio_queue$radioQueueRxMainLoopIndex$0$0==.
_radioQueueRxMainLoopIndex:
	.ds 1
Fradio_queue$radioQueueRxInterruptIndex$0$0==.
_radioQueueRxInterruptIndex:
	.ds 1
Fradio_queue$radioQueueTxMainLoopIndex$0$0==.
_radioQueueTxMainLoopIndex:
	.ds 1
Fradio_queue$radioQueueTxInterruptIndex$0$0==.
_radioQueueTxInterruptIndex:
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
Fradio_queue$channel_select$0$0==.
_channel_select:
	.ds 1
G$radioQueueAllowCrcErrors$0$0==.
_radioQueueAllowCrcErrors::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Fradio_queue$channel_number$0$0==.
_channel_number:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fradio_queue$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fradio_queue$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fradio_queue$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fradio_queue$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fradio_queue$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fradio_queue$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fradio_queue$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fradio_queue$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fradio_queue$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fradio_queue$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fradio_queue$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fradio_queue$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fradio_queue$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fradio_queue$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fradio_queue$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fradio_queue$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fradio_queue$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fradio_queue$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fradio_queue$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fradio_queue$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fradio_queue$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fradio_queue$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fradio_queue$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fradio_queue$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fradio_queue$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fradio_queue$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fradio_queue$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fradio_queue$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fradio_queue$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fradio_queue$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fradio_queue$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fradio_queue$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fradio_queue$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fradio_queue$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fradio_queue$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fradio_queue$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fradio_queue$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fradio_queue$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fradio_queue$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fradio_queue$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fradio_queue$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fradio_queue$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fradio_queue$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fradio_queue$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fradio_queue$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fradio_queue$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fradio_queue$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fradio_queue$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fradio_queue$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fradio_queue$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fradio_queue$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fradio_queue$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fradio_queue$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fradio_queue$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fradio_queue$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fradio_queue$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fradio_queue$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fradio_queue$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fradio_queue$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fradio_queue$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fradio_queue$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fradio_queue$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fradio_queue$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fradio_queue$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fradio_queue$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fradio_queue$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fradio_queue$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fradio_queue$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fradio_queue$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fradio_queue$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fradio_queue$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fradio_queue$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fradio_queue$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fradio_queue$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fradio_queue$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fradio_queue$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fradio_queue$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fradio_queue$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fradio_queue$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fradio_queue$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fradio_queue$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
Fradio_queue$radioQueueRxPacket$0$0==.
_radioQueueRxPacket:
	.ds 66
Fradio_queue$radioQueueTxPacket$0$0==.
_radioQueueTxPacket:
	.ds 320
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$58$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:58: static volatile uint8 DATA radioQueueRxMainLoopIndex = 0;   // The index of the next rxBuffer to read from the main loop.
	mov	_radioQueueRxMainLoopIndex,#0x00
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$59$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:59: static volatile uint8 DATA radioQueueRxInterruptIndex = 0;  // The index of the next rxBuffer to write to when a packet comes from the radio.
	mov	_radioQueueRxInterruptIndex,#0x00
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$64$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:64: static volatile uint8 DATA radioQueueTxMainLoopIndex = 0;   // The index of the next txPacket to write to in the main loop.
	mov	_radioQueueTxMainLoopIndex,#0x00
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$65$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:65: static volatile uint8 DATA radioQueueTxInterruptIndex = 0;  // The index of the current txPacket we are trying to send on the radio.
	mov	_radioQueueTxInterruptIndex,#0x00
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$29$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:29: static volatile BIT channel_select = 0;
	clr	_channel_select
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$67$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:67: BIT radioQueueAllowCrcErrors = 0;
	clr	_radioQueueAllowCrcErrors
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$28$2$1 ==.
;	libraries/src/radio_queue/radio_queue.c:28: static int32 channel_number = 0;
	mov	r0,#_channel_number
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
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
;Allocation info for local variables in function 'radioQueueInit'
;------------------------------------------------------------
	G$radioQueueInit$0$0 ==.
	C$radio_queue.c$71$0$0 ==.
;	libraries/src/radio_queue/radio_queue.c:71: void radioQueueInit()
;	-----------------------------------------
;	 function radioQueueInit
;	-----------------------------------------
_radioQueueInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$radio_queue.c$73$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:73: randomSeedFromSerialNumber();
	lcall	_randomSeedFromSerialNumber
	C$radio_queue.c$75$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:75: PKTLEN = RADIO_MAX_PACKET_SIZE;
	mov	dptr,#_PKTLEN
	mov	a,#0x13
	movx	@dptr,a
	C$radio_queue.c$76$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:76: if (channel_select)
	jnb	_channel_select,00102$
	C$radio_queue.c$77$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:77: {CHANNR = channel_number;}
	mov	r0,#_channel_number
	mov	dptr,#_CHANNR
	movx	a,@r0
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$radio_queue.c$79$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:79: {CHANNR = param_radio_channel;}
	mov	dptr,#_param_radio_channel
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_CHANNR
	mov	a,r4
	movx	@dptr,a
00103$:
	C$radio_queue.c$81$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:81: radioMacInit();
	lcall	_radioMacInit
	C$radio_queue.c$82$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:82: radioMacStrobe();
	lcall	_radioMacStrobe
	C$radio_queue.c$83$1$1 ==.
	XG$radioQueueInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'randomTxDelay'
;------------------------------------------------------------
	Fradio_queue$randomTxDelay$0$0 ==.
	C$radio_queue.c$87$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:87: static uint8 randomTxDelay()
;	-----------------------------------------
;	 function randomTxDelay
;	-----------------------------------------
_randomTxDelay:
	C$radio_queue.c$89$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:89: return 1 + (randomNumber() & 3);
	lcall	_randomNumber
	mov	a,dpl
	anl	a,#0x03
	inc	a
	mov	dpl,a
	C$radio_queue.c$90$1$1 ==.
	XFradio_queue$randomTxDelay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioQueueTxAvailable'
;------------------------------------------------------------
	G$radioQueueTxAvailable$0$0 ==.
	C$radio_queue.c$94$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:94: uint8 radioQueueTxAvailable(void)
;	-----------------------------------------
;	 function radioQueueTxAvailable
;	-----------------------------------------
_radioQueueTxAvailable:
	C$radio_queue.c$97$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:97: return (radioQueueTxInterruptIndex - radioQueueTxMainLoopIndex - 1) & (TX_PACKET_COUNT - 1);
	mov	a,_radioQueueTxInterruptIndex
	clr	c
	subb	a,_radioQueueTxMainLoopIndex
	dec	a
	anl	a,#0x0F
	mov	dpl,a
	C$radio_queue.c$98$1$1 ==.
	XG$radioQueueTxAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioQueueTxQueued'
;------------------------------------------------------------
	G$radioQueueTxQueued$0$0 ==.
	C$radio_queue.c$100$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:100: uint8 radioQueueTxQueued(void)
;	-----------------------------------------
;	 function radioQueueTxQueued
;	-----------------------------------------
_radioQueueTxQueued:
	C$radio_queue.c$102$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:102: return (radioQueueTxMainLoopIndex - radioQueueTxInterruptIndex) & (TX_PACKET_COUNT - 1);
	mov	a,_radioQueueTxMainLoopIndex
	clr	c
	subb	a,_radioQueueTxInterruptIndex
	anl	a,#0x0F
	mov	dpl,a
	C$radio_queue.c$103$1$1 ==.
	XG$radioQueueTxQueued$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioQueueTxCurrentPacket'
;------------------------------------------------------------
	G$radioQueueTxCurrentPacket$0$0 ==.
	C$radio_queue.c$105$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:105: uint8 XDATA * radioQueueTxCurrentPacket()
;	-----------------------------------------
;	 function radioQueueTxCurrentPacket
;	-----------------------------------------
_radioQueueTxCurrentPacket:
	C$radio_queue.c$107$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:107: if (!radioQueueTxAvailable())
	lcall	_radioQueueTxAvailable
	mov	a,dpl
	jnz	00102$
	C$radio_queue.c$109$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:109: return 0;
	mov	dptr,#0x0000
	sjmp	00103$
00102$:
	C$radio_queue.c$112$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:112: return radioQueueTxPacket[radioQueueTxMainLoopIndex];
	mov	a,_radioQueueTxMainLoopIndex
	mov	b,#0x14
	mul	ab
	add	a,#_radioQueueTxPacket
	mov	r6,a
	mov	a,#(_radioQueueTxPacket >> 8)
	addc	a,b
	C$radio_queue.c$113$1$1 ==.
	XG$radioQueueTxCurrentPacket$0$0 ==.
	mov	dpl,r6
	mov	dph,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioQueueTxSendPacket'
;------------------------------------------------------------
	G$radioQueueTxSendPacket$0$0 ==.
	C$radio_queue.c$115$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:115: void radioQueueTxSendPacket(void)
;	-----------------------------------------
;	 function radioQueueTxSendPacket
;	-----------------------------------------
_radioQueueTxSendPacket:
	C$radio_queue.c$118$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:118: if (radioQueueTxMainLoopIndex == TX_PACKET_COUNT - 1)
	mov	a,#0x0F
	cjne	a,_radioQueueTxMainLoopIndex,00102$
	C$radio_queue.c$120$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:120: radioQueueTxMainLoopIndex = 0;
	mov	_radioQueueTxMainLoopIndex,#0x00
	sjmp	00103$
00102$:
	C$radio_queue.c$124$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:124: radioQueueTxMainLoopIndex++;
	inc	_radioQueueTxMainLoopIndex
00103$:
	C$radio_queue.c$129$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:129: radioMacStrobe();
	lcall	_radioMacStrobe
	C$radio_queue.c$130$1$1 ==.
	XG$radioQueueTxSendPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioQueueRxCurrentPacket'
;------------------------------------------------------------
	G$radioQueueRxCurrentPacket$0$0 ==.
	C$radio_queue.c$134$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:134: uint8 XDATA * radioQueueRxCurrentPacket(void)
;	-----------------------------------------
;	 function radioQueueRxCurrentPacket
;	-----------------------------------------
_radioQueueRxCurrentPacket:
	C$radio_queue.c$136$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:136: if (radioQueueRxMainLoopIndex == radioQueueRxInterruptIndex)
	mov	a,_radioQueueRxInterruptIndex
	cjne	a,_radioQueueRxMainLoopIndex,00102$
	C$radio_queue.c$138$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:138: return 0;
	mov	dptr,#0x0000
	sjmp	00103$
00102$:
	C$radio_queue.c$140$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:140: return radioQueueRxPacket[radioQueueRxMainLoopIndex];
	mov	a,_radioQueueRxMainLoopIndex
	mov	b,#0x16
	mul	ab
	add	a,#_radioQueueRxPacket
	mov	r6,a
	clr	a
	addc	a,#(_radioQueueRxPacket >> 8)
	C$radio_queue.c$141$1$1 ==.
	XG$radioQueueRxCurrentPacket$0$0 ==.
	mov	dpl,r6
	mov	dph,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioQueueRxDoneWithPacket'
;------------------------------------------------------------
	G$radioQueueRxDoneWithPacket$0$0 ==.
	C$radio_queue.c$143$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:143: void radioQueueRxDoneWithPacket(void)
;	-----------------------------------------
;	 function radioQueueRxDoneWithPacket
;	-----------------------------------------
_radioQueueRxDoneWithPacket:
	C$radio_queue.c$145$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:145: if (radioQueueRxMainLoopIndex == RX_PACKET_COUNT - 1)
	mov	a,#0x02
	cjne	a,_radioQueueRxMainLoopIndex,00102$
	C$radio_queue.c$147$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:147: radioQueueRxMainLoopIndex = 0;
	mov	_radioQueueRxMainLoopIndex,#0x00
	sjmp	00104$
00102$:
	C$radio_queue.c$151$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:151: radioQueueRxMainLoopIndex++;
	inc	_radioQueueRxMainLoopIndex
00104$:
	C$radio_queue.c$153$1$1 ==.
	XG$radioQueueRxDoneWithPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'takeInitiative'
;------------------------------------------------------------
	Fradio_queue$takeInitiative$0$0 ==.
	C$radio_queue.c$157$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:157: static void takeInitiative()
;	-----------------------------------------
;	 function takeInitiative
;	-----------------------------------------
_takeInitiative:
	C$radio_queue.c$159$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:159: if (radioQueueTxInterruptIndex != radioQueueTxMainLoopIndex)
	mov	a,_radioQueueTxMainLoopIndex
	cjne	a,_radioQueueTxInterruptIndex,00107$
	sjmp	00102$
00107$:
	C$radio_queue.c$162$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:162: radioMacTx(radioQueueTxPacket[radioQueueTxInterruptIndex]);
	mov	a,_radioQueueTxInterruptIndex
	mov	b,#0x14
	mul	ab
	add	a,#_radioQueueTxPacket
	mov	dpl,a
	mov	a,#(_radioQueueTxPacket >> 8)
	addc	a,b
	mov	dph,a
	lcall	_radioMacTx
	sjmp	00104$
00102$:
	C$radio_queue.c$166$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:166: radioMacRx(radioQueueRxPacket[radioQueueRxInterruptIndex], 0);
	mov	a,_radioQueueRxInterruptIndex
	mov	b,#0x16
	mul	ab
	add	a,#_radioQueueRxPacket
	mov	dpl,a
	clr	a
	addc	a,#(_radioQueueRxPacket >> 8)
	mov	dph,a
	mov	r0,#_radioMacRx_PARM_2
	clr	a
	movx	@r0,a
	lcall	_radioMacRx
00104$:
	C$radio_queue.c$168$1$1 ==.
	XFradio_queue$takeInitiative$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacEventHandler'
;------------------------------------------------------------
	G$radioMacEventHandler$0$0 ==.
	C$radio_queue.c$170$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:170: void radioMacEventHandler(uint8 event) // called by the MAC in an ISR
;	-----------------------------------------
;	 function radioMacEventHandler
;	-----------------------------------------
_radioMacEventHandler:
	mov	r7,dpl
	C$radio_queue.c$172$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:172: if (event == RADIO_MAC_EVENT_STROBE)
	cjne	r7,#0x21,00126$
	C$radio_queue.c$174$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:174: takeInitiative();
	lcall	_takeInitiative
	C$radio_queue.c$175$2$2 ==.
;	libraries/src/radio_queue/radio_queue.c:175: return;
	ljmp	00128$
00126$:
	C$radio_queue.c$177$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:177: else if (event == RADIO_MAC_EVENT_TX)
	cjne	r7,#0x1E,00123$
	C$radio_queue.c$180$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:180: if (radioQueueTxInterruptIndex == TX_PACKET_COUNT - 1)
	mov	a,#0x0F
	cjne	a,_radioQueueTxInterruptIndex,00102$
	C$radio_queue.c$182$3$4 ==.
;	libraries/src/radio_queue/radio_queue.c:182: radioQueueTxInterruptIndex = 0;
	mov	_radioQueueTxInterruptIndex,#0x00
	sjmp	00103$
00102$:
	C$radio_queue.c$186$3$5 ==.
;	libraries/src/radio_queue/radio_queue.c:186: radioQueueTxInterruptIndex++;
	inc	_radioQueueTxInterruptIndex
00103$:
	C$radio_queue.c$190$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:190: radioMacRx(radioQueueRxPacket[radioQueueRxInterruptIndex], randomTxDelay());
	mov	a,_radioQueueRxInterruptIndex
	mov	b,#0x16
	mul	ab
	add	a,#_radioQueueRxPacket
	mov	r5,a
	clr	a
	addc	a,#(_radioQueueRxPacket >> 8)
	mov	r6,a
	push	ar6
	push	ar5
	lcall	_randomTxDelay
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_radioMacRx_PARM_2
	mov	a,r4
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_radioMacRx
	C$radio_queue.c$191$2$3 ==.
;	libraries/src/radio_queue/radio_queue.c:191: return;
	sjmp	00128$
00123$:
	C$radio_queue.c$193$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:193: else if (event == RADIO_MAC_EVENT_RX)
	cjne	r7,#0x1F,00120$
	C$radio_queue.c$195$2$6 ==.
;	libraries/src/radio_queue/radio_queue.c:195: uint8 XDATA * currentRxPacket = radioQueueRxPacket[radioQueueRxInterruptIndex];
	mov	a,_radioQueueRxInterruptIndex
	mov	b,#0x16
	mul	ab
	add	a,#_radioQueueRxPacket
	mov	r5,a
	clr	a
	addc	a,#(_radioQueueRxPacket >> 8)
	mov	r6,a
	C$radio_queue.c$197$2$6 ==.
;	libraries/src/radio_queue/radio_queue.c:197: if (!radioQueueAllowCrcErrors && !radioCrcPassed())
	jb	_radioQueueAllowCrcErrors,00108$
	push	ar6
	push	ar5
	lcall	_radioCrcPassed
	pop	ar5
	pop	ar6
	jc	00108$
	C$radio_queue.c$199$3$7 ==.
;	libraries/src/radio_queue/radio_queue.c:199: if (radioQueueTxInterruptIndex != radioQueueTxMainLoopIndex)
	mov	a,_radioQueueTxMainLoopIndex
	cjne	a,_radioQueueTxInterruptIndex,00151$
	sjmp	00105$
00151$:
	C$radio_queue.c$201$4$8 ==.
;	libraries/src/radio_queue/radio_queue.c:201: radioMacRx(currentRxPacket, randomTxDelay());
	push	ar6
	push	ar5
	lcall	_randomTxDelay
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_radioMacRx_PARM_2
	mov	a,r4
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_radioMacRx
	sjmp	00106$
00105$:
	C$radio_queue.c$205$4$9 ==.
;	libraries/src/radio_queue/radio_queue.c:205: radioMacRx(currentRxPacket, 0);
	mov	r0,#_radioMacRx_PARM_2
	clr	a
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_radioMacRx
00106$:
	C$radio_queue.c$207$3$7 ==.
;	libraries/src/radio_queue/radio_queue.c:207: return;
	sjmp	00128$
00108$:
	C$radio_queue.c$210$2$6 ==.
;	libraries/src/radio_queue/radio_queue.c:210: if (currentRxPacket[RADIO_QUEUE_PACKET_LENGTH_OFFSET] > 0)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jz	00116$
	C$radio_queue.c$217$3$10 ==.
;	libraries/src/radio_queue/radio_queue.c:217: if (radioQueueRxInterruptIndex == RX_PACKET_COUNT - 1)
	mov	a,#0x02
	cjne	a,_radioQueueRxInterruptIndex,00111$
	C$radio_queue.c$219$4$11 ==.
;	libraries/src/radio_queue/radio_queue.c:219: nextradioQueueRxInterruptIndex = 0;
	mov	r6,#0x00
	sjmp	00112$
00111$:
	C$radio_queue.c$223$4$12 ==.
;	libraries/src/radio_queue/radio_queue.c:223: nextradioQueueRxInterruptIndex = radioQueueRxInterruptIndex + 1;
	mov	a,_radioQueueRxInterruptIndex
	inc	a
	mov	r6,a
00112$:
	C$radio_queue.c$226$3$10 ==.
;	libraries/src/radio_queue/radio_queue.c:226: if (nextradioQueueRxInterruptIndex != radioQueueRxMainLoopIndex)
	mov	a,r6
	cjne	a,_radioQueueRxMainLoopIndex,00155$
	sjmp	00116$
00155$:
	C$radio_queue.c$229$4$13 ==.
;	libraries/src/radio_queue/radio_queue.c:229: radioQueueRxInterruptIndex = nextradioQueueRxInterruptIndex;
	mov	_radioQueueRxInterruptIndex,r6
00116$:
	C$radio_queue.c$233$2$6 ==.
;	libraries/src/radio_queue/radio_queue.c:233: takeInitiative();
	lcall	_takeInitiative
	C$radio_queue.c$234$2$6 ==.
;	libraries/src/radio_queue/radio_queue.c:234: return;
	sjmp	00128$
00120$:
	C$radio_queue.c$236$1$1 ==.
;	libraries/src/radio_queue/radio_queue.c:236: else if (event == RADIO_MAC_EVENT_RX_TIMEOUT)
	cjne	r7,#0x20,00128$
	C$radio_queue.c$238$2$14 ==.
;	libraries/src/radio_queue/radio_queue.c:238: takeInitiative();
	lcall	_takeInitiative
	C$radio_queue.c$239$2$14 ==.
;	libraries/src/radio_queue/radio_queue.c:239: return;
00128$:
	C$radio_queue.c$241$2$1 ==.
	XG$radioMacEventHandler$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$param_radio_channel$0$0 == .
_param_radio_channel:
	.byte #0x80,#0x00,#0x00,#0x00	;  128
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
