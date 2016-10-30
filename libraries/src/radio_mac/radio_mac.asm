;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:08 2016
;--------------------------------------------------------
	.module radio_mac
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _radioRegistersInit
	.globl _radioMacEventHandler
	.globl _radioMacRx_PARM_2
	.globl _radioTxUnderflowOccurred
	.globl _radioRxOverflowOccurred
	.globl _savedWOREVT1
	.globl _savedRadioMacState
	.globl _radioMacState
	.globl _ISR_RF
	.globl _radioMacStrobe
	.globl _radioMacSleep
	.globl _radioMacResume
	.globl _radioMacInit
	.globl _radioMacRx
	.globl _radioMacTx
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fradio_mac$P0$0$0 == 0x0080
_P0	=	0x0080
Fradio_mac$SP$0$0 == 0x0081
_SP	=	0x0081
Fradio_mac$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fradio_mac$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fradio_mac$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fradio_mac$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fradio_mac$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fradio_mac$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fradio_mac$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fradio_mac$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fradio_mac$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fradio_mac$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fradio_mac$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fradio_mac$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fradio_mac$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fradio_mac$P1$0$0 == 0x0090
_P1	=	0x0090
Fradio_mac$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fradio_mac$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fradio_mac$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fradio_mac$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fradio_mac$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fradio_mac$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fradio_mac$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fradio_mac$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fradio_mac$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fradio_mac$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fradio_mac$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fradio_mac$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fradio_mac$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fradio_mac$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fradio_mac$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fradio_mac$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fradio_mac$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fradio_mac$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fradio_mac$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fradio_mac$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fradio_mac$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fradio_mac$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fradio_mac$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fradio_mac$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fradio_mac$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fradio_mac$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fradio_mac$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fradio_mac$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fradio_mac$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fradio_mac$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fradio_mac$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fradio_mac$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fradio_mac$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fradio_mac$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fradio_mac$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fradio_mac$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fradio_mac$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fradio_mac$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fradio_mac$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fradio_mac$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fradio_mac$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fradio_mac$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fradio_mac$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fradio_mac$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fradio_mac$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fradio_mac$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fradio_mac$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fradio_mac$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fradio_mac$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fradio_mac$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fradio_mac$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fradio_mac$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fradio_mac$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fradio_mac$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fradio_mac$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fradio_mac$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fradio_mac$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fradio_mac$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fradio_mac$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fradio_mac$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fradio_mac$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fradio_mac$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fradio_mac$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fradio_mac$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fradio_mac$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fradio_mac$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fradio_mac$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fradio_mac$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fradio_mac$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fradio_mac$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fradio_mac$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fradio_mac$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fradio_mac$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fradio_mac$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fradio_mac$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fradio_mac$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fradio_mac$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fradio_mac$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fradio_mac$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fradio_mac$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fradio_mac$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fradio_mac$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fradio_mac$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fradio_mac$B$0$0 == 0x00f0
_B	=	0x00f0
Fradio_mac$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fradio_mac$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fradio_mac$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fradio_mac$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fradio_mac$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fradio_mac$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fradio_mac$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fradio_mac$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fradio_mac$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fradio_mac$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fradio_mac$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fradio_mac$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fradio_mac$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fradio_mac$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fradio_mac$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fradio_mac$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fradio_mac$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fradio_mac$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fradio_mac$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fradio_mac$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fradio_mac$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fradio_mac$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fradio_mac$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fradio_mac$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fradio_mac$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fradio_mac$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fradio_mac$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fradio_mac$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fradio_mac$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fradio_mac$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fradio_mac$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fradio_mac$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fradio_mac$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fradio_mac$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fradio_mac$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fradio_mac$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fradio_mac$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fradio_mac$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fradio_mac$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fradio_mac$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fradio_mac$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fradio_mac$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fradio_mac$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fradio_mac$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fradio_mac$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fradio_mac$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fradio_mac$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fradio_mac$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fradio_mac$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fradio_mac$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fradio_mac$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fradio_mac$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fradio_mac$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fradio_mac$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fradio_mac$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fradio_mac$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fradio_mac$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fradio_mac$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fradio_mac$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fradio_mac$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fradio_mac$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fradio_mac$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fradio_mac$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fradio_mac$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fradio_mac$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fradio_mac$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fradio_mac$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fradio_mac$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fradio_mac$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fradio_mac$EA$0$0 == 0x00af
_EA	=	0x00af
Fradio_mac$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fradio_mac$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fradio_mac$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fradio_mac$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fradio_mac$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fradio_mac$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fradio_mac$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fradio_mac$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fradio_mac$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fradio_mac$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fradio_mac$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fradio_mac$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fradio_mac$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fradio_mac$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fradio_mac$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fradio_mac$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fradio_mac$P$0$0 == 0x00d0
_P	=	0x00d0
Fradio_mac$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fradio_mac$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fradio_mac$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fradio_mac$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fradio_mac$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fradio_mac$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fradio_mac$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fradio_mac$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fradio_mac$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fradio_mac$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fradio_mac$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fradio_mac$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fradio_mac$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fradio_mac$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fradio_mac$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fradio_mac$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fradio_mac$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fradio_mac$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fradio_mac$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fradio_mac$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fradio_mac$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fradio_mac$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fradio_mac$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fradio_mac$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fradio_mac$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fradio_mac$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fradio_mac$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fradio_mac$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fradio_mac$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fradio_mac$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fradio_mac$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fradio_mac$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fradio_mac$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fradio_mac$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fradio_mac$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fradio_mac$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fradio_mac$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fradio_mac$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fradio_mac$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fradio_mac$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fradio_mac$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fradio_mac$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fradio_mac$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fradio_mac$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fradio_mac$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fradio_mac$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fradio_mac$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$radioMacState$0$0==.
_radioMacState::
	.ds 1
G$savedRadioMacState$0$0==.
_savedRadioMacState::
	.ds 1
G$savedWOREVT1$0$0==.
_savedWOREVT1::
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
Fradio_mac$strobe$0$0==.
_strobe:
	.ds 1
Fradio_mac$sleepRadioMac$0$0==.
_sleepRadioMac:
	.ds 1
G$radioRxOverflowOccurred$0$0==.
_radioRxOverflowOccurred::
	.ds 1
G$radioTxUnderflowOccurred$0$0==.
_radioTxUnderflowOccurred::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Lradio_mac.radioMacRx$timeout$1$1==.
_radioMacRx_PARM_2:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fradio_mac$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fradio_mac$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fradio_mac$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fradio_mac$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fradio_mac$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fradio_mac$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fradio_mac$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fradio_mac$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fradio_mac$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fradio_mac$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fradio_mac$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fradio_mac$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fradio_mac$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fradio_mac$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fradio_mac$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fradio_mac$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fradio_mac$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fradio_mac$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fradio_mac$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fradio_mac$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fradio_mac$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fradio_mac$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fradio_mac$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fradio_mac$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fradio_mac$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fradio_mac$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fradio_mac$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fradio_mac$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fradio_mac$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fradio_mac$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fradio_mac$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fradio_mac$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fradio_mac$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fradio_mac$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fradio_mac$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fradio_mac$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fradio_mac$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fradio_mac$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fradio_mac$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fradio_mac$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fradio_mac$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fradio_mac$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fradio_mac$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fradio_mac$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fradio_mac$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fradio_mac$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fradio_mac$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fradio_mac$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fradio_mac$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fradio_mac$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fradio_mac$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fradio_mac$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fradio_mac$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fradio_mac$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fradio_mac$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fradio_mac$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fradio_mac$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fradio_mac$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fradio_mac$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fradio_mac$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fradio_mac$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fradio_mac$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fradio_mac$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fradio_mac$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fradio_mac$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fradio_mac$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fradio_mac$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fradio_mac$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fradio_mac$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fradio_mac$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fradio_mac$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fradio_mac$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fradio_mac$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fradio_mac$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fradio_mac$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fradio_mac$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fradio_mac$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fradio_mac$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fradio_mac$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fradio_mac$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fradio_mac$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
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
	G$radioMacTx$0$0 ==.
	C$radio_mac.c$56$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:56: volatile uint8 DATA radioMacState = RADIO_MAC_STATE_OFF;
	mov	_radioMacState,#0x00
	G$radioMacTx$0$0 ==.
	C$radio_mac.c$44$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:44: static volatile BIT strobe = 0;
	clr	_strobe
	G$radioMacTx$0$0 ==.
	C$radio_mac.c$45$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:45: static volatile BIT sleepRadioMac = 0;
	clr	_sleepRadioMac
	G$radioMacTx$0$0 ==.
	C$radio_mac.c$48$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:48: volatile BIT radioRxOverflowOccurred = 0;
	clr	_radioRxOverflowOccurred
	G$radioMacTx$0$0 ==.
	C$radio_mac.c$49$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:49: volatile BIT radioTxUnderflowOccurred = 0;
	clr	_radioTxUnderflowOccurred
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
;Allocation info for local variables in function 'ISR_RF'
;------------------------------------------------------------
	G$ISR_RF$0$0 ==.
	C$radio_mac.c$60$0$0 ==.
;	libraries/src/radio_mac/radio_mac.c:60: ISR(RF, 0)
;	-----------------------------------------
;	 function ISR_RF
;	-----------------------------------------
_ISR_RF:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	C$radio_mac.c$62$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:62: S1CON = 0; // Clear the general RFIF interrupt registers
	C$radio_mac.c$64$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:64: if (RFIF & 0x10) // Check IRQ_DONE
	clr	a
	mov	psw,a
	mov	_S1CON,a
	mov	a,_RFIF
	jnb	acc.4,00107$
	C$radio_mac.c$66$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:66: if (radioMacState == RADIO_MAC_STATE_TX)
	mov	a,#0x03
	cjne	a,_radioMacState,00104$
	C$radio_mac.c$69$3$3 ==.
;	libraries/src/radio_mac/radio_mac.c:69: radioMacEvent(RADIO_MAC_EVENT_TX);
	mov	dpl,#0x1E
	lcall	_radioMacEvent
	sjmp	00107$
00104$:
	C$radio_mac.c$71$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:71: else if (radioMacState == RADIO_MAC_STATE_RX)
	mov	a,#0x02
	cjne	a,_radioMacState,00107$
	C$radio_mac.c$75$3$4 ==.
;	libraries/src/radio_mac/radio_mac.c:75: radioMacEvent(RADIO_MAC_EVENT_RX);
	mov	dpl,#0x1F
	lcall	_radioMacEvent
00107$:
	C$radio_mac.c$79$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:79: if (RFIF & 0x20)  // Check IRQ_TIMEOUT
	mov	a,_RFIF
	jnb	acc.5,00109$
	C$radio_mac.c$83$2$5 ==.
;	libraries/src/radio_mac/radio_mac.c:83: radioMacEvent(RADIO_MAC_EVENT_RX_TIMEOUT);
	mov	dpl,#0x20
	lcall	_radioMacEvent
00109$:
	C$radio_mac.c$86$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:86: if (strobe)
	jnb	_strobe,00123$
	C$radio_mac.c$90$2$6 ==.
;	libraries/src/radio_mac/radio_mac.c:90: if (radioMacState == RADIO_MAC_STATE_TX)
	mov	a,#0x03
	cjne	a,_radioMacState,00111$
	C$radio_mac.c$94$3$7 ==.
;	libraries/src/radio_mac/radio_mac.c:94: return;
	sjmp	00128$
00111$:
	C$radio_mac.c$97$2$6 ==.
;	libraries/src/radio_mac/radio_mac.c:97: if (radioMacState == RADIO_MAC_STATE_RX && MARCSTATE == 0x0D)
	mov	a,#0x02
	cjne	a,_radioMacState,00118$
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00118$
	C$radio_mac.c$99$3$8 ==.
;	libraries/src/radio_mac/radio_mac.c:99: if (PKTSTATUS & (1<<3))  // Check SFD bit (Start of Frame Delimiter)
	mov	dptr,#_PKTSTATUS
	movx	a,@dptr
	mov	r7,a
	C$radio_mac.c$105$4$9 ==.
;	libraries/src/radio_mac/radio_mac.c:105: return;
	jb	acc.3,00128$
	C$radio_mac.c$107$3$8 ==.
;	libraries/src/radio_mac/radio_mac.c:107: if ((MCSM2&7) != 7 && WOREVT1 < MAX_LATENCY_OF_STROBE)
	mov	dptr,#_MCSM2
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
	cjne	r7,#0x07,00158$
	sjmp	00118$
00158$:
	mov	a,#0x100 - 0x0A
	add	a,_WOREVT1
	C$radio_mac.c$112$4$10 ==.
;	libraries/src/radio_mac/radio_mac.c:112: return;
	jnc	00128$
00118$:
	C$radio_mac.c$123$2$6 ==.
;	libraries/src/radio_mac/radio_mac.c:123: if (MARCSTATE != 0x0D)
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0D,00160$
	sjmp	00121$
00160$:
	C$radio_mac.c$125$3$11 ==.
;	libraries/src/radio_mac/radio_mac.c:125: RFST = SIDLE;
	mov	_RFST,#0x04
00121$:
	C$radio_mac.c$130$2$6 ==.
;	libraries/src/radio_mac/radio_mac.c:130: radioMacEvent(RADIO_MAC_EVENT_STROBE);
	mov	dpl,#0x21
	lcall	_radioMacEvent
00123$:
	C$radio_mac.c$133$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:133: if (RFIF & 0x80)   // Check IRQ_TXUNF
	mov	a,_RFIF
	jnb	acc.7,00125$
	C$radio_mac.c$138$2$12 ==.
;	libraries/src/radio_mac/radio_mac.c:138: radioTxUnderflowOccurred = 1;
	setb	_radioTxUnderflowOccurred
	C$radio_mac.c$139$2$12 ==.
;	libraries/src/radio_mac/radio_mac.c:139: RFIF = ~0x80;
	mov	_RFIF,#0x7F
00125$:
	C$radio_mac.c$142$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:142: if (RFIF & 0x40)   // Check IRQ_RXOVF
	mov	a,_RFIF
	jnb	acc.6,00128$
	C$radio_mac.c$147$2$13 ==.
;	libraries/src/radio_mac/radio_mac.c:147: radioRxOverflowOccurred = 1;
	setb	_radioRxOverflowOccurred
	C$radio_mac.c$148$2$13 ==.
;	libraries/src/radio_mac/radio_mac.c:148: RFIF = ~0x40;
	mov	_RFIF,#0xBF
00128$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$radio_mac.c$156$2$1 ==.
	XG$ISR_RF$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacEvent'
;------------------------------------------------------------
	G$radioMacEvent$0$0 ==.
	C$radio_mac.c$158$2$1 ==.
;	libraries/src/radio_mac/radio_mac.c:158: void radioMacEvent(uint8 event)
;	-----------------------------------------
;	 function radioMacEvent
;	-----------------------------------------
_radioMacEvent:
	mov	r7,dpl
	C$radio_mac.c$166$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:166: if (MARCSTATE != 0x12 && MARCSTATE != 0x01 && MARCSTATE != 0x00 && MARCSTATE != 0x15)
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x12,00122$
	sjmp	00102$
00122$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00123$
	sjmp	00102$
00123$:
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	jz	00102$
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x15,00125$
	sjmp	00102$
00125$:
	C$radio_mac.c$169$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:169: RFST = SFSTXON;
	mov	_RFST,#0x00
00102$:
	C$radio_mac.c$173$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:173: DMAARM = 0x80 | (1<<DMA_CHANNEL_RADIO); // Abort any ongoing radio DMA transfer.
	mov	_DMAARM,#0x82
	C$radio_mac.c$174$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:174: DMAIRQ &= ~(1<<DMA_CHANNEL_RADIO);      // Clear any pending radio DMA interrupt
	mov	r6,_DMAIRQ
	anl	ar6,#0xFD
	mov	_DMAIRQ,r6
	C$radio_mac.c$177$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:177: radioMacState = RADIO_MAC_STATE_RX;    // Default next state: RX
	mov	_radioMacState,#0x02
	C$radio_mac.c$178$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:178: MCSM2 = 0x07;                          // Default next timeout: infinite.
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
	C$radio_mac.c$179$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:179: radioMacEventHandler(event);
	mov	dpl,r7
	lcall	_radioMacEventHandler
	C$radio_mac.c$181$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:181: if (sleepRadioMac)
	jnb	_sleepRadioMac,00107$
	C$radio_mac.c$183$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:183: IEN2 &= ~0x01;    // Disable RF general interrupt
	mov	r7,_IEN2
	anl	ar7,#0xFE
	mov	_IEN2,r7
	C$radio_mac.c$184$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:184: savedWOREVT1 = WOREVT1;
	mov	_savedWOREVT1,_WOREVT1
	C$radio_mac.c$185$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:185: savedRadioMacState = radioMacState;
	mov	_savedRadioMacState,_radioMacState
	C$radio_mac.c$186$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:186: radioMacState = RADIO_MAC_STATE_IDLE;
	mov	_radioMacState,#0x01
	C$radio_mac.c$187$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:187: sleepRadioMac = 0;
	clr	_sleepRadioMac
00107$:
	C$radio_mac.c$194$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:194: RFIF = ~0x30;  // Clear IRQ_DONE and IRQ_TIMEOUT if they are set.
	mov	_RFIF,#0xCF
	C$radio_mac.c$197$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:197: switch(radioMacState)
	mov	r7,_radioMacState
	cjne	r7,#0x01,00127$
	sjmp	00110$
00127$:
	cjne	r7,#0x02,00128$
	sjmp	00108$
00128$:
	C$radio_mac.c$199$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:199: case RADIO_MAC_STATE_RX:
	cjne	r7,#0x03,00111$
	sjmp	00109$
00108$:
	C$radio_mac.c$200$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:200: DMAARM |= (1<<DMA_CHANNEL_RADIO);   // Arm DMA channel.
	orl	_DMAARM,#0x02
	C$radio_mac.c$201$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:201: RFST = SRX;                         // Switch radio to RX.
	mov	_RFST,#0x02
	C$radio_mac.c$202$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:202: break;
	C$radio_mac.c$203$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:203: case RADIO_MAC_STATE_TX:
	sjmp	00111$
00109$:
	C$radio_mac.c$204$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:204: DMAARM |= (1<<DMA_CHANNEL_RADIO);   // Arm DMA channel.
	orl	_DMAARM,#0x02
	C$radio_mac.c$205$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:205: RFST = STX;                         // Switch radio to TX.
	mov	_RFST,#0x03
	C$radio_mac.c$206$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:206: break;
	C$radio_mac.c$207$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:207: case RADIO_MAC_STATE_IDLE:
	sjmp	00111$
00110$:
	C$radio_mac.c$208$2$4 ==.
;	libraries/src/radio_mac/radio_mac.c:208: RFST = SIDLE;
	mov	_RFST,#0x04
	C$radio_mac.c$210$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:210: }
00111$:
	C$radio_mac.c$213$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:213: strobe = 0;
	clr	_strobe
	C$radio_mac.c$214$1$1 ==.
	XG$radioMacEvent$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacStrobe'
;------------------------------------------------------------
	G$radioMacStrobe$0$0 ==.
	C$radio_mac.c$216$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:216: void radioMacStrobe()
;	-----------------------------------------
;	 function radioMacStrobe
;	-----------------------------------------
_radioMacStrobe:
	C$radio_mac.c$218$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:218: strobe = 1;
	setb	_strobe
	C$radio_mac.c$219$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:219: S1CON |= 3;
	orl	_S1CON,#0x03
	C$radio_mac.c$220$1$1 ==.
	XG$radioMacStrobe$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacSleep'
;------------------------------------------------------------
	G$radioMacSleep$0$0 ==.
	C$radio_mac.c$222$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:222: void radioMacSleep()
;	-----------------------------------------
;	 function radioMacSleep
;	-----------------------------------------
_radioMacSleep:
	C$radio_mac.c$224$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:224: sleepRadioMac = 1;
	setb	_sleepRadioMac
	C$radio_mac.c$225$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:225: radioMacStrobe();
	lcall	_radioMacStrobe
	C$radio_mac.c$226$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:226: while (strobe);
00101$:
	jb	_strobe,00101$
	C$radio_mac.c$227$1$1 ==.
	XG$radioMacSleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacResume'
;------------------------------------------------------------
	G$radioMacResume$0$0 ==.
	C$radio_mac.c$229$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:229: void radioMacResume()
;	-----------------------------------------
;	 function radioMacResume
;	-----------------------------------------
_radioMacResume:
	C$radio_mac.c$231$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:231: radioMacState = savedRadioMacState;
	mov	_radioMacState,_savedRadioMacState
	C$radio_mac.c$233$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:233: if (MCSM2 == 0x00)
	mov	dptr,#_MCSM2
	movx	a,@dptr
	mov	r7,a
	C$radio_mac.c$235$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:235: WORCTRL = 0;
	C$radio_mac.c$236$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:236: WOREVT1 = savedWOREVT1;
	C$radio_mac.c$237$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:237: WOREVT0 = 0;
	jnz	00102$
	mov	_WORCTRL,a
	mov	_WOREVT1,_savedWOREVT1
	mov	_WOREVT0,a
00102$:
	C$radio_mac.c$240$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:240: IEN2 |= 0x01;    // Enable RF general interrupt
	orl	_IEN2,#0x01
	C$radio_mac.c$242$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:242: switch(radioMacState)
	mov	r7,_radioMacState
	cjne	r7,#0x02,00112$
	sjmp	00103$
00112$:
	C$radio_mac.c$244$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:244: case RADIO_MAC_STATE_RX:
	cjne	r7,#0x03,00106$
	sjmp	00104$
00103$:
	C$radio_mac.c$245$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:245: DMAARM |= (1<<DMA_CHANNEL_RADIO);   // Arm DMA channel.
	orl	_DMAARM,#0x02
	C$radio_mac.c$246$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:246: RFST = SRX;                         // Switch radio to RX.
	mov	_RFST,#0x02
	C$radio_mac.c$247$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:247: break;
	C$radio_mac.c$248$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:248: case RADIO_MAC_STATE_TX:
	sjmp	00106$
00104$:
	C$radio_mac.c$249$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:249: DMAARM |= (1<<DMA_CHANNEL_RADIO);   // Arm DMA channel.
	orl	_DMAARM,#0x02
	C$radio_mac.c$250$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:250: RFST = STX;                         // Switch radio to TX.
	mov	_RFST,#0x03
	C$radio_mac.c$252$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:252: }
00106$:
	C$radio_mac.c$253$1$1 ==.
	XG$radioMacResume$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacInit'
;------------------------------------------------------------
	G$radioMacInit$0$0 ==.
	C$radio_mac.c$257$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:257: void radioMacInit()
;	-----------------------------------------
;	 function radioMacInit
;	-----------------------------------------
_radioMacInit:
	C$radio_mac.c$259$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:259: radioRegistersInit();
	lcall	_radioRegistersInit
	C$radio_mac.c$262$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:262: MCSM0 = 0x14;    // Main Radio Control State Machine Configuration
	mov	dptr,#_MCSM0
	mov	a,#0x14
	movx	@dptr,a
	C$radio_mac.c$263$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:263: MCSM1 = 0x05;    // Disable CCA.  After RX, go to FSTXON.  After TX, go to FSTXON.
	mov	dptr,#_MCSM1
	mov	a,#0x05
	movx	@dptr,a
	C$radio_mac.c$264$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:264: MCSM2 = 0x07;    // NOTE: MCSM2 also gets set every time we go into RX mode.
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
	C$radio_mac.c$266$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:266: IEN2 |= 0x01;    // Enable RF general interrupt
	orl	_IEN2,#0x01
	C$radio_mac.c$267$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:267: RFIM = 0xF0;     // Enable these interrupts: DONE, RXOVF, TXUNF, TIMEOUT
	mov	_RFIM,#0xF0
	C$radio_mac.c$269$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:269: EA = 1;          // Enable interrupts in general
	setb	_EA
	C$radio_mac.c$271$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:271: dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
	mov	dptr,#(_dmaConfig + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	C$radio_mac.c$272$1$1 ==.
	XG$radioMacInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacRx'
;------------------------------------------------------------
	G$radioMacRx$0$0 ==.
	C$radio_mac.c$274$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:274: void radioMacRx(uint8 XDATA * packet, uint8 timeout)
;	-----------------------------------------
;	 function radioMacRx
;	-----------------------------------------
_radioMacRx:
	mov	r6,dpl
	mov	r7,dph
	C$radio_mac.c$276$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:276: if (timeout)
	mov	r0,#_radioMacRx_PARM_2
	movx	a,@r0
	jz	00102$
	C$radio_mac.c$278$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:278: MCSM2 = 0x00;   // RX_TIME = 0.  Helps determine the units of the RX timeout period.
	mov	dptr,#_MCSM2
	clr	a
	movx	@dptr,a
	C$radio_mac.c$279$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:279: WORCTRL = 0;    // WOR_RES = 0.  Helps determine the units of the RX timeout period.
	mov	_WORCTRL,#0x00
	C$radio_mac.c$280$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:280: WOREVT1 = timeout;
	mov	r0,#_radioMacRx_PARM_2
	movx	a,@r0
	mov	_WOREVT1,a
	C$radio_mac.c$281$2$2 ==.
;	libraries/src/radio_mac/radio_mac.c:281: WOREVT0 = 0;
	mov	_WOREVT0,#0x00
	sjmp	00103$
00102$:
	C$radio_mac.c$285$2$3 ==.
;	libraries/src/radio_mac/radio_mac.c:285: MCSM2 = 0x07;  // RX_TIME = 7: No timeout.
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
00103$:
	C$radio_mac.c$288$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:288: dmaConfig.radio.SRCADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
	mov	r4,#_RFD
	mov	r5,#0x00
	mov	a,#0xDF
	add	a,r5
	mov	r4,a
	mov	dptr,#_dmaConfig
	mov	a,r4
	movx	@dptr,a
	C$radio_mac.c$289$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:289: dmaConfig.radio.SRCADDRL = XDATA_SFR_ADDRESS(RFD);
	mov	r4,#_RFD
	mov	dptr,#(_dmaConfig + 0x0001)
	mov	a,r4
	movx	@dptr,a
	C$radio_mac.c$290$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:290: dmaConfig.radio.DESTADDRH = (unsigned int)packet >> 8;
	mov	ar5,r7
	mov	dptr,#(_dmaConfig + 0x0002)
	mov	a,r5
	movx	@dptr,a
	C$radio_mac.c$291$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:291: dmaConfig.radio.DESTADDRL = (unsigned int)packet;
	mov	dptr,#(_dmaConfig + 0x0003)
	mov	a,r6
	movx	@dptr,a
	C$radio_mac.c$292$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:292: dmaConfig.radio.LENL = 1 + PKTLEN + 2;
	mov	dptr,#_PKTLEN
	movx	a,@dptr
	mov	r7,a
	inc	r7
	inc	r7
	inc	r7
	mov	dptr,#(_dmaConfig + 0x0005)
	mov	a,r7
	movx	@dptr,a
	C$radio_mac.c$293$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:293: dmaConfig.radio.VLEN_LENH = 0b10000000; // Transfer length is FirstByte+3
	mov	dptr,#(_dmaConfig + 0x0004)
	mov	a,#0x80
	movx	@dptr,a
	C$radio_mac.c$295$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:295: dmaConfig.radio.DC7 = 0x10; // SRCINC = 0, DESTINC = 1, IRQMASK = 0, M8 = 0, PRIORITY = 0
	mov	dptr,#(_dmaConfig + 0x0007)
	mov	a,#0x10
	movx	@dptr,a
	C$radio_mac.c$297$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:297: radioMacState = RADIO_MAC_STATE_RX;
	mov	_radioMacState,#0x02
	C$radio_mac.c$298$1$1 ==.
	XG$radioMacRx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioMacTx'
;------------------------------------------------------------
	G$radioMacTx$0$0 ==.
	C$radio_mac.c$302$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:302: void radioMacTx(uint8 XDATA * packet)
;	-----------------------------------------
;	 function radioMacTx
;	-----------------------------------------
_radioMacTx:
	mov	r6,dpl
	mov	r7,dph
	C$radio_mac.c$304$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:304: dmaConfig.radio.SRCADDRH = (unsigned int)packet >> 8;
	mov	ar5,r7
	mov	dptr,#_dmaConfig
	mov	a,r5
	movx	@dptr,a
	C$radio_mac.c$305$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:305: dmaConfig.radio.SRCADDRL = (unsigned int)packet;
	mov	dptr,#(_dmaConfig + 0x0001)
	mov	a,r6
	movx	@dptr,a
	C$radio_mac.c$306$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:306: dmaConfig.radio.DESTADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
	mov	r6,#_RFD
	mov	r7,#0x00
	mov	a,#0xDF
	add	a,r7
	mov	r6,a
	mov	dptr,#(_dmaConfig + 0x0002)
	mov	a,r6
	movx	@dptr,a
	C$radio_mac.c$307$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:307: dmaConfig.radio.DESTADDRL = XDATA_SFR_ADDRESS(RFD);
	mov	r6,#_RFD
	mov	dptr,#(_dmaConfig + 0x0003)
	mov	a,r6
	movx	@dptr,a
	C$radio_mac.c$308$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:308: dmaConfig.radio.LENL = 1 + PKTLEN;
	mov	dptr,#_PKTLEN
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_dmaConfig + 0x0005)
	mov	a,r7
	movx	@dptr,a
	C$radio_mac.c$309$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:309: dmaConfig.radio.VLEN_LENH = 0b00100000; // Transfer length is FirstByte+1
	mov	dptr,#(_dmaConfig + 0x0004)
	mov	a,#0x20
	movx	@dptr,a
	C$radio_mac.c$311$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:311: dmaConfig.radio.DC7 = 0x40; // SRCINC = 1, DESTINC = 0, IRQMASK = 0, M8 = 0, PRIORITY = 0
	mov	dptr,#(_dmaConfig + 0x0007)
	mov	a,#0x40
	movx	@dptr,a
	C$radio_mac.c$313$1$1 ==.
;	libraries/src/radio_mac/radio_mac.c:313: radioMacState = RADIO_MAC_STATE_TX;
	mov	_radioMacState,#0x03
	C$radio_mac.c$314$1$1 ==.
	XG$radioMacTx$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
