;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:11 2016
;--------------------------------------------------------
	.module random_from_sernum
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _randomSeed
	.globl _randomSeedFromSerialNumber
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Frandom_from_sernum$P0$0$0 == 0x0080
_P0	=	0x0080
Frandom_from_sernum$SP$0$0 == 0x0081
_SP	=	0x0081
Frandom_from_sernum$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Frandom_from_sernum$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Frandom_from_sernum$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Frandom_from_sernum$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Frandom_from_sernum$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Frandom_from_sernum$PCON$0$0 == 0x0087
_PCON	=	0x0087
Frandom_from_sernum$TCON$0$0 == 0x0088
_TCON	=	0x0088
Frandom_from_sernum$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Frandom_from_sernum$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Frandom_from_sernum$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Frandom_from_sernum$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Frandom_from_sernum$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Frandom_from_sernum$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Frandom_from_sernum$P1$0$0 == 0x0090
_P1	=	0x0090
Frandom_from_sernum$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Frandom_from_sernum$DPS$0$0 == 0x0092
_DPS	=	0x0092
Frandom_from_sernum$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Frandom_from_sernum$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Frandom_from_sernum$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Frandom_from_sernum$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Frandom_from_sernum$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Frandom_from_sernum$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Frandom_from_sernum$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Frandom_from_sernum$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Frandom_from_sernum$P2$0$0 == 0x00a0
_P2	=	0x00a0
Frandom_from_sernum$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Frandom_from_sernum$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Frandom_from_sernum$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Frandom_from_sernum$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Frandom_from_sernum$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Frandom_from_sernum$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Frandom_from_sernum$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Frandom_from_sernum$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Frandom_from_sernum$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Frandom_from_sernum$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Frandom_from_sernum$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Frandom_from_sernum$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Frandom_from_sernum$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Frandom_from_sernum$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Frandom_from_sernum$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Frandom_from_sernum$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Frandom_from_sernum$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Frandom_from_sernum$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Frandom_from_sernum$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Frandom_from_sernum$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Frandom_from_sernum$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Frandom_from_sernum$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Frandom_from_sernum$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Frandom_from_sernum$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Frandom_from_sernum$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Frandom_from_sernum$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Frandom_from_sernum$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Frandom_from_sernum$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Frandom_from_sernum$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Frandom_from_sernum$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Frandom_from_sernum$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Frandom_from_sernum$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Frandom_from_sernum$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Frandom_from_sernum$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Frandom_from_sernum$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Frandom_from_sernum$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Frandom_from_sernum$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Frandom_from_sernum$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Frandom_from_sernum$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Frandom_from_sernum$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Frandom_from_sernum$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Frandom_from_sernum$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Frandom_from_sernum$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Frandom_from_sernum$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Frandom_from_sernum$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Frandom_from_sernum$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Frandom_from_sernum$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Frandom_from_sernum$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Frandom_from_sernum$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Frandom_from_sernum$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Frandom_from_sernum$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Frandom_from_sernum$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Frandom_from_sernum$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Frandom_from_sernum$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Frandom_from_sernum$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Frandom_from_sernum$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Frandom_from_sernum$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Frandom_from_sernum$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Frandom_from_sernum$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Frandom_from_sernum$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Frandom_from_sernum$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Frandom_from_sernum$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Frandom_from_sernum$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Frandom_from_sernum$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Frandom_from_sernum$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Frandom_from_sernum$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Frandom_from_sernum$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Frandom_from_sernum$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Frandom_from_sernum$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Frandom_from_sernum$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Frandom_from_sernum$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Frandom_from_sernum$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Frandom_from_sernum$B$0$0 == 0x00f0
_B	=	0x00f0
Frandom_from_sernum$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Frandom_from_sernum$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Frandom_from_sernum$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Frandom_from_sernum$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Frandom_from_sernum$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Frandom_from_sernum$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Frandom_from_sernum$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Frandom_from_sernum$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Frandom_from_sernum$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Frandom_from_sernum$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Frandom_from_sernum$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Frandom_from_sernum$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Frandom_from_sernum$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Frandom_from_sernum$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Frandom_from_sernum$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Frandom_from_sernum$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Frandom_from_sernum$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Frandom_from_sernum$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Frandom_from_sernum$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Frandom_from_sernum$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Frandom_from_sernum$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Frandom_from_sernum$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Frandom_from_sernum$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Frandom_from_sernum$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Frandom_from_sernum$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Frandom_from_sernum$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Frandom_from_sernum$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Frandom_from_sernum$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Frandom_from_sernum$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Frandom_from_sernum$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Frandom_from_sernum$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Frandom_from_sernum$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Frandom_from_sernum$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Frandom_from_sernum$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Frandom_from_sernum$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Frandom_from_sernum$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Frandom_from_sernum$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Frandom_from_sernum$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Frandom_from_sernum$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Frandom_from_sernum$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Frandom_from_sernum$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Frandom_from_sernum$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Frandom_from_sernum$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Frandom_from_sernum$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Frandom_from_sernum$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Frandom_from_sernum$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Frandom_from_sernum$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Frandom_from_sernum$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Frandom_from_sernum$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Frandom_from_sernum$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Frandom_from_sernum$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Frandom_from_sernum$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Frandom_from_sernum$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Frandom_from_sernum$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Frandom_from_sernum$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Frandom_from_sernum$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Frandom_from_sernum$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Frandom_from_sernum$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Frandom_from_sernum$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Frandom_from_sernum$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Frandom_from_sernum$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Frandom_from_sernum$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Frandom_from_sernum$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Frandom_from_sernum$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Frandom_from_sernum$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Frandom_from_sernum$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Frandom_from_sernum$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Frandom_from_sernum$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Frandom_from_sernum$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Frandom_from_sernum$EA$0$0 == 0x00af
_EA	=	0x00af
Frandom_from_sernum$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Frandom_from_sernum$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Frandom_from_sernum$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Frandom_from_sernum$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Frandom_from_sernum$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Frandom_from_sernum$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Frandom_from_sernum$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Frandom_from_sernum$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Frandom_from_sernum$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Frandom_from_sernum$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Frandom_from_sernum$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Frandom_from_sernum$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Frandom_from_sernum$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Frandom_from_sernum$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Frandom_from_sernum$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Frandom_from_sernum$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Frandom_from_sernum$P$0$0 == 0x00d0
_P	=	0x00d0
Frandom_from_sernum$F1$0$0 == 0x00d1
_F1	=	0x00d1
Frandom_from_sernum$OV$0$0 == 0x00d2
_OV	=	0x00d2
Frandom_from_sernum$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Frandom_from_sernum$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Frandom_from_sernum$F0$0$0 == 0x00d5
_F0	=	0x00d5
Frandom_from_sernum$AC$0$0 == 0x00d6
_AC	=	0x00d6
Frandom_from_sernum$CY$0$0 == 0x00d7
_CY	=	0x00d7
Frandom_from_sernum$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Frandom_from_sernum$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Frandom_from_sernum$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Frandom_from_sernum$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Frandom_from_sernum$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Frandom_from_sernum$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Frandom_from_sernum$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Frandom_from_sernum$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Frandom_from_sernum$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Frandom_from_sernum$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Frandom_from_sernum$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Frandom_from_sernum$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Frandom_from_sernum$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Frandom_from_sernum$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Frandom_from_sernum$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Frandom_from_sernum$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Frandom_from_sernum$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Frandom_from_sernum$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Frandom_from_sernum$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Frandom_from_sernum$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Frandom_from_sernum$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Frandom_from_sernum$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Frandom_from_sernum$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Frandom_from_sernum$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Frandom_from_sernum$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Frandom_from_sernum$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Frandom_from_sernum$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Frandom_from_sernum$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Frandom_from_sernum$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Frandom_from_sernum$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Frandom_from_sernum$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Frandom_from_sernum$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Frandom_from_sernum$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Frandom_from_sernum$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Frandom_from_sernum$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Frandom_from_sernum$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Frandom_from_sernum$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Frandom_from_sernum$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Frandom_from_sernum$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Frandom_from_sernum$U1MODE$0$0 == 0x00ff
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Frandom_from_sernum$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Frandom_from_sernum$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Frandom_from_sernum$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Frandom_from_sernum$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Frandom_from_sernum$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Frandom_from_sernum$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Frandom_from_sernum$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Frandom_from_sernum$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Frandom_from_sernum$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Frandom_from_sernum$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Frandom_from_sernum$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Frandom_from_sernum$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Frandom_from_sernum$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Frandom_from_sernum$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Frandom_from_sernum$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Frandom_from_sernum$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Frandom_from_sernum$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Frandom_from_sernum$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Frandom_from_sernum$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Frandom_from_sernum$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Frandom_from_sernum$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Frandom_from_sernum$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Frandom_from_sernum$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Frandom_from_sernum$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Frandom_from_sernum$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Frandom_from_sernum$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Frandom_from_sernum$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Frandom_from_sernum$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Frandom_from_sernum$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Frandom_from_sernum$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Frandom_from_sernum$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Frandom_from_sernum$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Frandom_from_sernum$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Frandom_from_sernum$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Frandom_from_sernum$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Frandom_from_sernum$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Frandom_from_sernum$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Frandom_from_sernum$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Frandom_from_sernum$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Frandom_from_sernum$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Frandom_from_sernum$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Frandom_from_sernum$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Frandom_from_sernum$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Frandom_from_sernum$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Frandom_from_sernum$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Frandom_from_sernum$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Frandom_from_sernum$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Frandom_from_sernum$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Frandom_from_sernum$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Frandom_from_sernum$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Frandom_from_sernum$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Frandom_from_sernum$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Frandom_from_sernum$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Frandom_from_sernum$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Frandom_from_sernum$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Frandom_from_sernum$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Frandom_from_sernum$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Frandom_from_sernum$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Frandom_from_sernum$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Frandom_from_sernum$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Frandom_from_sernum$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Frandom_from_sernum$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Frandom_from_sernum$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Frandom_from_sernum$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Frandom_from_sernum$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Frandom_from_sernum$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Frandom_from_sernum$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Frandom_from_sernum$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Frandom_from_sernum$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Frandom_from_sernum$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Frandom_from_sernum$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Frandom_from_sernum$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Frandom_from_sernum$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Frandom_from_sernum$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Frandom_from_sernum$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Frandom_from_sernum$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Frandom_from_sernum$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Frandom_from_sernum$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Frandom_from_sernum$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Frandom_from_sernum$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Frandom_from_sernum$USBF5$0$0 == 0xde2a
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
;Allocation info for local variables in function 'randomSeedFromSerialNumber'
;------------------------------------------------------------
	G$randomSeedFromSerialNumber$0$0 ==.
	C$random_from_sernum.c$9$0$0 ==.
;	libraries/src/random/random_from_sernum.c:9: void randomSeedFromSerialNumber(void)
;	-----------------------------------------
;	 function randomSeedFromSerialNumber
;	-----------------------------------------
_randomSeedFromSerialNumber:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$random_from_sernum.c$17$1$1 ==.
;	libraries/src/random/random_from_sernum.c:17: randomSeed(serialNumber[0], serialNumber[1]);
	mov	dptr,#_serialNumber
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_serialNumber + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r0,#_randomSeed_PARM_2
	movx	@r0,a
	mov	dpl,r7
	lcall	_randomSeed
	C$random_from_sernum.c$18$1$1 ==.
	XG$randomSeedFromSerialNumber$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
