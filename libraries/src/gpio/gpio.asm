;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:10 2016
;--------------------------------------------------------
	.module gpio
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _setDigitalOutput
	.globl _setDigitalInput
	.globl _isPinHigh
	.globl _setPort0PullType
	.globl _setPort1PullType
	.globl _setPort2PullType
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fgpio$P0$0$0 == 0x0080
_P0	=	0x0080
Fgpio$SP$0$0 == 0x0081
_SP	=	0x0081
Fgpio$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fgpio$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fgpio$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fgpio$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fgpio$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fgpio$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fgpio$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fgpio$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fgpio$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fgpio$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fgpio$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fgpio$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fgpio$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fgpio$P1$0$0 == 0x0090
_P1	=	0x0090
Fgpio$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fgpio$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fgpio$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fgpio$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fgpio$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fgpio$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fgpio$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fgpio$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fgpio$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fgpio$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fgpio$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fgpio$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fgpio$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fgpio$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fgpio$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fgpio$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fgpio$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fgpio$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fgpio$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fgpio$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fgpio$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fgpio$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fgpio$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fgpio$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fgpio$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fgpio$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fgpio$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fgpio$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fgpio$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fgpio$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fgpio$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fgpio$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fgpio$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fgpio$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fgpio$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fgpio$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fgpio$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fgpio$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fgpio$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fgpio$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fgpio$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fgpio$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fgpio$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fgpio$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fgpio$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fgpio$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fgpio$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fgpio$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fgpio$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fgpio$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fgpio$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fgpio$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fgpio$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fgpio$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fgpio$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fgpio$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fgpio$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fgpio$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fgpio$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fgpio$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fgpio$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fgpio$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fgpio$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fgpio$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fgpio$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fgpio$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fgpio$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fgpio$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fgpio$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fgpio$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fgpio$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fgpio$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fgpio$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fgpio$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fgpio$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fgpio$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fgpio$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fgpio$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fgpio$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fgpio$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fgpio$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fgpio$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fgpio$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fgpio$B$0$0 == 0x00f0
_B	=	0x00f0
Fgpio$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fgpio$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fgpio$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fgpio$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fgpio$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fgpio$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fgpio$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fgpio$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fgpio$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fgpio$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fgpio$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fgpio$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fgpio$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fgpio$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fgpio$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fgpio$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fgpio$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fgpio$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fgpio$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fgpio$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fgpio$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fgpio$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fgpio$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fgpio$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fgpio$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fgpio$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fgpio$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fgpio$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fgpio$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fgpio$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fgpio$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fgpio$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fgpio$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fgpio$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fgpio$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fgpio$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fgpio$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fgpio$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fgpio$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fgpio$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fgpio$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fgpio$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fgpio$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fgpio$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fgpio$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fgpio$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fgpio$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fgpio$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fgpio$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fgpio$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fgpio$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fgpio$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fgpio$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fgpio$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fgpio$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fgpio$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fgpio$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fgpio$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fgpio$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fgpio$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fgpio$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fgpio$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fgpio$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fgpio$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fgpio$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fgpio$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fgpio$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fgpio$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fgpio$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fgpio$EA$0$0 == 0x00af
_EA	=	0x00af
Fgpio$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fgpio$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fgpio$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fgpio$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fgpio$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fgpio$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fgpio$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fgpio$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fgpio$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fgpio$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fgpio$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fgpio$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fgpio$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fgpio$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fgpio$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fgpio$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fgpio$P$0$0 == 0x00d0
_P	=	0x00d0
Fgpio$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fgpio$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fgpio$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fgpio$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fgpio$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fgpio$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fgpio$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fgpio$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fgpio$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fgpio$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fgpio$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fgpio$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fgpio$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fgpio$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fgpio$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fgpio$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fgpio$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fgpio$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fgpio$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fgpio$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fgpio$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fgpio$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fgpio$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fgpio$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fgpio$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fgpio$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fgpio$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fgpio$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fgpio$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fgpio$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fgpio$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fgpio$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fgpio$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fgpio$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fgpio$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fgpio$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fgpio$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fgpio$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fgpio$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fgpio$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fgpio$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fgpio$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fgpio$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fgpio$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fgpio$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fgpio$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fgpio$U1MODE$0$0 == 0x00ff
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fgpio$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fgpio$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fgpio$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fgpio$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fgpio$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fgpio$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fgpio$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fgpio$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fgpio$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fgpio$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fgpio$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fgpio$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fgpio$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fgpio$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fgpio$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fgpio$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fgpio$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fgpio$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fgpio$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fgpio$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fgpio$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fgpio$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fgpio$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fgpio$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fgpio$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fgpio$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fgpio$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fgpio$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fgpio$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fgpio$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fgpio$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fgpio$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fgpio$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fgpio$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fgpio$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fgpio$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fgpio$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fgpio$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fgpio$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fgpio$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fgpio$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fgpio$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fgpio$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fgpio$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fgpio$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fgpio$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fgpio$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fgpio$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fgpio$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fgpio$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fgpio$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fgpio$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fgpio$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fgpio$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fgpio$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fgpio$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fgpio$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fgpio$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fgpio$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fgpio$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fgpio$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fgpio$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fgpio$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fgpio$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fgpio$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fgpio$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fgpio$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fgpio$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fgpio$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fgpio$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fgpio$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fgpio$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fgpio$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fgpio$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fgpio$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fgpio$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fgpio$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fgpio$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fgpio$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fgpio$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fgpio$USBF5$0$0 == 0xde2a
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
;Allocation info for local variables in function 'setDigitalOutput'
;------------------------------------------------------------
;value                     Allocated to registers b0 
;pinNumber                 Allocated to registers r7 
;------------------------------------------------------------
	G$setDigitalOutput$0$0 ==.
	C$gpio.c$36$0$0 ==.
;	libraries/src/gpio/gpio.c:36: void setDigitalOutput(uint8 pinNumber, BIT value) __reentrant
;	-----------------------------------------
;	 function setDigitalOutput
;	-----------------------------------------
_setDigitalOutput:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$gpio.c$38$1$1 ==.
;	libraries/src/gpio/gpio.c:38: PIN_SWITCH(SET_DIGITAL_OUTPUT);
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x18
	jnc	00124$
	ljmp	00121$
00124$:
	mov	a,r7
	add	a,#(00125$-3-.)
	movc	a,@a+pc
	push	acc
	mov	a,r7
	add	a,#(00126$-3-.)
	movc	a,@a+pc
	push	acc
	ret
00125$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00120$
	.db	00120$
	.db	00120$
	.db	00120$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00120$
	.db	00120$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00119$
00126$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
00101$:
	mov	c,b0
	mov	_P0_0,c
	orl	_P0DIR,#0x01
	ljmp	00121$
00102$:
	mov	c,b0
	mov	_P0_1,c
	orl	_P0DIR,#0x02
	ljmp	00121$
00103$:
	mov	c,b0
	mov	_P0_2,c
	orl	_P0DIR,#0x04
	ljmp	00121$
00104$:
	mov	c,b0
	mov	_P0_3,c
	orl	_P0DIR,#0x08
	ljmp	00121$
00105$:
	mov	c,b0
	mov	_P0_4,c
	orl	_P0DIR,#0x10
	ljmp	00121$
00106$:
	mov	c,b0
	mov	_P0_5,c
	orl	_P0DIR,#0x20
	ljmp	00121$
00107$:
	mov	c,b0
	mov	_P1_0,c
	orl	_P1DIR,#0x01
	sjmp	00121$
00108$:
	mov	c,b0
	mov	_P1_1,c
	orl	_P1DIR,#0x02
	sjmp	00121$
00109$:
	mov	c,b0
	mov	_P1_2,c
	orl	_P1DIR,#0x04
	sjmp	00121$
00110$:
	mov	c,b0
	mov	_P1_3,c
	orl	_P1DIR,#0x08
	sjmp	00121$
00111$:
	mov	c,b0
	mov	_P1_4,c
	orl	_P1DIR,#0x10
	sjmp	00121$
00112$:
	mov	c,b0
	mov	_P1_5,c
	orl	_P1DIR,#0x20
	sjmp	00121$
00113$:
	mov	c,b0
	mov	_P1_6,c
	orl	_P1DIR,#0x40
	sjmp	00121$
00114$:
	mov	c,b0
	mov	_P1_7,c
	orl	_P1DIR,#0x80
	sjmp	00121$
00115$:
	mov	c,b0
	mov	_P2_0,c
	orl	_P2DIR,#0x01
	sjmp	00121$
00116$:
	mov	c,b0
	mov	_P2_1,c
	orl	_P2DIR,#0x02
	sjmp	00121$
00117$:
	mov	c,b0
	mov	_P2_2,c
	orl	_P2DIR,#0x04
	sjmp	00121$
00118$:
	mov	c,b0
	mov	_P2_3,c
	orl	_P2DIR,#0x08
	sjmp	00121$
00119$:
	mov	c,b0
	mov	_P2_4,c
	orl	_P2DIR,#0x10
00120$:
00121$:
	C$gpio.c$39$1$1 ==.
	XG$setDigitalOutput$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setDigitalInput'
;------------------------------------------------------------
;pulled                    Allocated to registers b0 
;pinNumber                 Allocated to registers r7 
;------------------------------------------------------------
	G$setDigitalInput$0$0 ==.
	C$gpio.c$41$1$1 ==.
;	libraries/src/gpio/gpio.c:41: void setDigitalInput(uint8 pinNumber, BIT pulled) __reentrant
;	-----------------------------------------
;	 function setDigitalInput
;	-----------------------------------------
_setDigitalInput:
	C$gpio.c$43$1$1 ==.
;	libraries/src/gpio/gpio.c:43: PIN_SWITCH(SET_DIGITAL_INPUT);
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x18
	jnc	00200$
	ljmp	00178$
00200$:
	mov	a,r7
	add	a,#(00201$-3-.)
	movc	a,@a+pc
	push	acc
	mov	a,r7
	add	a,#(00202$-3-.)
	movc	a,@a+pc
	push	acc
	ret
00201$:
	.db	00101$
	.db	00105$
	.db	00109$
	.db	00113$
	.db	00117$
	.db	00121$
	.db	00177$
	.db	00177$
	.db	00177$
	.db	00177$
	.db	00125$
	.db	00129$
	.db	00133$
	.db	00137$
	.db	00141$
	.db	00145$
	.db	00149$
	.db	00153$
	.db	00177$
	.db	00177$
	.db	00157$
	.db	00161$
	.db	00165$
	.db	00169$
	.db	00173$
00202$:
	.db	00101$>>8
	.db	00105$>>8
	.db	00109$>>8
	.db	00113$>>8
	.db	00117$>>8
	.db	00121$>>8
	.db	00177$>>8
	.db	00177$>>8
	.db	00177$>>8
	.db	00177$>>8
	.db	00125$>>8
	.db	00129$>>8
	.db	00133$>>8
	.db	00137$>>8
	.db	00141$>>8
	.db	00145$>>8
	.db	00149$>>8
	.db	00153$>>8
	.db	00177$>>8
	.db	00177$>>8
	.db	00157$>>8
	.db	00161$>>8
	.db	00165$>>8
	.db	00169$>>8
	.db	00173$>>8
00101$:
	jnb	b0,00103$
	mov	r7,_P0INP
	anl	ar7,#0xFE
	mov	_P0INP,r7
	sjmp	00104$
00103$:
	orl	_P0INP,#0x01
00104$:
	mov	r7,_P0DIR
	anl	ar7,#0xFE
	mov	_P0DIR,r7
	ljmp	00178$
00105$:
	jnb	b0,00107$
	mov	r7,_P0INP
	anl	ar7,#0xFD
	mov	_P0INP,r7
	sjmp	00108$
00107$:
	orl	_P0INP,#0x02
00108$:
	mov	r7,_P0DIR
	anl	ar7,#0xFD
	mov	_P0DIR,r7
	ljmp	00178$
00109$:
	jnb	b0,00111$
	mov	r7,_P0INP
	anl	ar7,#0xFB
	mov	_P0INP,r7
	sjmp	00112$
00111$:
	orl	_P0INP,#0x04
00112$:
	mov	r7,_P0DIR
	anl	ar7,#0xFB
	mov	_P0DIR,r7
	ljmp	00178$
00113$:
	jnb	b0,00115$
	mov	r7,_P0INP
	anl	ar7,#0xF7
	mov	_P0INP,r7
	sjmp	00116$
00115$:
	orl	_P0INP,#0x08
00116$:
	mov	r7,_P0DIR
	anl	ar7,#0xF7
	mov	_P0DIR,r7
	ljmp	00178$
00117$:
	jnb	b0,00119$
	mov	r7,_P0INP
	anl	ar7,#0xEF
	mov	_P0INP,r7
	sjmp	00120$
00119$:
	orl	_P0INP,#0x10
00120$:
	mov	r7,_P0DIR
	anl	ar7,#0xEF
	mov	_P0DIR,r7
	ljmp	00178$
00121$:
	jnb	b0,00123$
	mov	r7,_P0INP
	anl	ar7,#0xDF
	mov	_P0INP,r7
	sjmp	00124$
00123$:
	orl	_P0INP,#0x20
00124$:
	mov	r7,_P0DIR
	anl	ar7,#0xDF
	mov	_P0DIR,r7
	ljmp	00178$
00125$:
	jnb	b0,00127$
	mov	r7,_P1INP
	anl	ar7,#0xFE
	mov	_P1INP,r7
	sjmp	00128$
00127$:
	orl	_P1INP,#0x01
00128$:
	mov	r7,_P1DIR
	anl	ar7,#0xFE
	mov	_P1DIR,r7
	ljmp	00178$
00129$:
	jnb	b0,00131$
	mov	r7,_P1INP
	anl	ar7,#0xFD
	mov	_P1INP,r7
	sjmp	00132$
00131$:
	orl	_P1INP,#0x02
00132$:
	mov	r7,_P1DIR
	anl	ar7,#0xFD
	mov	_P1DIR,r7
	ljmp	00178$
00133$:
	jnb	b0,00135$
	mov	r7,_P1INP
	anl	ar7,#0xFB
	mov	_P1INP,r7
	sjmp	00136$
00135$:
	orl	_P1INP,#0x04
00136$:
	mov	r7,_P1DIR
	anl	ar7,#0xFB
	mov	_P1DIR,r7
	ljmp	00178$
00137$:
	jnb	b0,00139$
	mov	r7,_P1INP
	anl	ar7,#0xF7
	mov	_P1INP,r7
	sjmp	00140$
00139$:
	orl	_P1INP,#0x08
00140$:
	mov	r7,_P1DIR
	anl	ar7,#0xF7
	mov	_P1DIR,r7
	ljmp	00178$
00141$:
	jnb	b0,00143$
	mov	r7,_P1INP
	anl	ar7,#0xEF
	mov	_P1INP,r7
	sjmp	00144$
00143$:
	orl	_P1INP,#0x10
00144$:
	mov	r7,_P1DIR
	anl	ar7,#0xEF
	mov	_P1DIR,r7
	ljmp	00178$
00145$:
	jnb	b0,00147$
	mov	r7,_P1INP
	anl	ar7,#0xDF
	mov	_P1INP,r7
	sjmp	00148$
00147$:
	orl	_P1INP,#0x20
00148$:
	mov	r7,_P1DIR
	anl	ar7,#0xDF
	mov	_P1DIR,r7
	ljmp	00178$
00149$:
	jnb	b0,00151$
	mov	r7,_P1INP
	anl	ar7,#0xBF
	mov	_P1INP,r7
	sjmp	00152$
00151$:
	orl	_P1INP,#0x40
00152$:
	mov	r7,_P1DIR
	anl	ar7,#0xBF
	mov	_P1DIR,r7
	ljmp	00178$
00153$:
	jnb	b0,00155$
	mov	r7,_P1INP
	anl	ar7,#0x7F
	mov	_P1INP,r7
	sjmp	00156$
00155$:
	orl	_P1INP,#0x80
00156$:
	mov	r7,_P1DIR
	anl	ar7,#0x7F
	mov	_P1DIR,r7
	ljmp	00178$
00157$:
	jnb	b0,00159$
	mov	r7,_P2INP
	anl	ar7,#0xFE
	mov	_P2INP,r7
	sjmp	00160$
00159$:
	orl	_P2INP,#0x01
00160$:
	mov	r7,_P2DIR
	anl	ar7,#0xFE
	mov	_P2DIR,r7
	sjmp	00178$
00161$:
	jnb	b0,00163$
	mov	r7,_P2INP
	anl	ar7,#0xFD
	mov	_P2INP,r7
	sjmp	00164$
00163$:
	orl	_P2INP,#0x02
00164$:
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	sjmp	00178$
00165$:
	jnb	b0,00167$
	mov	r7,_P2INP
	anl	ar7,#0xFB
	mov	_P2INP,r7
	sjmp	00168$
00167$:
	orl	_P2INP,#0x04
00168$:
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	sjmp	00178$
00169$:
	jnb	b0,00171$
	mov	r7,_P2INP
	anl	ar7,#0xF7
	mov	_P2INP,r7
	sjmp	00172$
00171$:
	orl	_P2INP,#0x08
00172$:
	mov	r7,_P2DIR
	anl	ar7,#0xF7
	mov	_P2DIR,r7
	sjmp	00178$
00173$:
	jnb	b0,00175$
	mov	r7,_P2INP
	anl	ar7,#0xEF
	mov	_P2INP,r7
	sjmp	00176$
00175$:
	orl	_P2INP,#0x10
00176$:
	mov	r7,_P2DIR
	anl	ar7,#0xEF
	mov	_P2DIR,r7
00177$:
00178$:
	C$gpio.c$44$1$1 ==.
	XG$setDigitalInput$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isPinHigh'
;------------------------------------------------------------
;pinNumber                 Allocated to registers r7 
;------------------------------------------------------------
	G$isPinHigh$0$0 ==.
	C$gpio.c$46$1$1 ==.
;	libraries/src/gpio/gpio.c:46: BIT isPinHigh(uint8 pinNumber) __reentrant
;	-----------------------------------------
;	 function isPinHigh
;	-----------------------------------------
_isPinHigh:
	C$gpio.c$48$1$1 ==.
;	libraries/src/gpio/gpio.c:48: PIN_SWITCH(IS_DIGITAL_INPUT_HIGH);
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x18
	jnc	00124$
	ljmp	00120$
00124$:
	mov	a,r7
	add	a,#(00125$-3-.)
	movc	a,@a+pc
	push	acc
	mov	a,r7
	add	a,#(00126$-3-.)
	movc	a,@a+pc
	push	acc
	ret
00125$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00120$
	.db	00120$
	.db	00120$
	.db	00120$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00120$
	.db	00120$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00119$
00126$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00120$>>8
	.db	00120$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
00101$:
	mov	c,_P0_0
	sjmp	00121$
00102$:
	mov	c,_P0_1
	sjmp	00121$
00103$:
	mov	c,_P0_2
	sjmp	00121$
00104$:
	mov	c,_P0_3
	sjmp	00121$
00105$:
	mov	c,_P0_4
	sjmp	00121$
00106$:
	mov	c,_P0_5
	sjmp	00121$
00107$:
	mov	c,_P1_0
	sjmp	00121$
00108$:
	mov	c,_P1_1
	sjmp	00121$
00109$:
	mov	c,_P1_2
	sjmp	00121$
00110$:
	mov	c,_P1_3
	sjmp	00121$
00111$:
	mov	c,_P1_4
	sjmp	00121$
00112$:
	mov	c,_P1_5
	sjmp	00121$
00113$:
	mov	c,_P1_6
	sjmp	00121$
00114$:
	mov	c,_P1_7
	sjmp	00121$
00115$:
	mov	c,_P2_0
	sjmp	00121$
00116$:
	mov	c,_P2_1
	sjmp	00121$
00117$:
	mov	c,_P2_2
	sjmp	00121$
00118$:
	mov	c,_P2_3
	sjmp	00121$
00119$:
	mov	c,_P2_4
	sjmp	00121$
00120$:
	C$gpio.c$49$1$1 ==.
;	libraries/src/gpio/gpio.c:49: return 0;
	clr	c
00121$:
	C$gpio.c$50$1$1 ==.
	XG$isPinHigh$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPort0PullType'
;------------------------------------------------------------
;pullType                  Allocated to registers b0 
;------------------------------------------------------------
	G$setPort0PullType$0$0 ==.
	C$gpio.c$52$1$1 ==.
;	libraries/src/gpio/gpio.c:52: void setPort0PullType(BIT pullType) __reentrant
;	-----------------------------------------
;	 function setPort0PullType
;	-----------------------------------------
_setPort0PullType:
	C$gpio.c$54$1$1 ==.
;	libraries/src/gpio/gpio.c:54: if (pullType){ P2INP &= ~(1<<5); }
	jnb	b0,00102$
	mov	r7,_P2INP
	anl	ar7,#0xDF
	mov	_P2INP,r7
	sjmp	00104$
00102$:
	C$gpio.c$55$2$3 ==.
;	libraries/src/gpio/gpio.c:55: else { P2INP |= (1<<5); }
	orl	_P2INP,#0x20
00104$:
	C$gpio.c$56$1$1 ==.
	XG$setPort0PullType$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPort1PullType'
;------------------------------------------------------------
;pullType                  Allocated to registers b0 
;------------------------------------------------------------
	G$setPort1PullType$0$0 ==.
	C$gpio.c$58$1$1 ==.
;	libraries/src/gpio/gpio.c:58: void setPort1PullType(BIT pullType) __reentrant
;	-----------------------------------------
;	 function setPort1PullType
;	-----------------------------------------
_setPort1PullType:
	C$gpio.c$60$1$1 ==.
;	libraries/src/gpio/gpio.c:60: if (pullType){ P2INP &= ~(1<<6); }
	jnb	b0,00102$
	mov	r7,_P2INP
	anl	ar7,#0xBF
	mov	_P2INP,r7
	sjmp	00104$
00102$:
	C$gpio.c$61$2$3 ==.
;	libraries/src/gpio/gpio.c:61: else { P2INP |= (1<<6); }
	orl	_P2INP,#0x40
00104$:
	C$gpio.c$62$1$1 ==.
	XG$setPort1PullType$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setPort2PullType'
;------------------------------------------------------------
;pullType                  Allocated to registers b0 
;------------------------------------------------------------
	G$setPort2PullType$0$0 ==.
	C$gpio.c$64$1$1 ==.
;	libraries/src/gpio/gpio.c:64: void setPort2PullType(BIT pullType) __reentrant
;	-----------------------------------------
;	 function setPort2PullType
;	-----------------------------------------
_setPort2PullType:
	C$gpio.c$66$1$1 ==.
;	libraries/src/gpio/gpio.c:66: if (pullType){ P2INP &= ~(1<<7); }
	jnb	b0,00102$
	mov	r7,_P2INP
	anl	ar7,#0x7F
	mov	_P2INP,r7
	sjmp	00104$
00102$:
	C$gpio.c$67$2$3 ==.
;	libraries/src/gpio/gpio.c:67: else { P2INP |= (1<<7); }
	orl	_P2INP,#0x80
00104$:
	C$gpio.c$68$1$1 ==.
	XG$setPort2PullType$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
