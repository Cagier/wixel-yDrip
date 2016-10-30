;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:11 2016
;--------------------------------------------------------
	.module random
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _randomSeed_PARM_2
	.globl _randomNumber
	.globl _randomSeed
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Frandom$P0$0$0 == 0x0080
_P0	=	0x0080
Frandom$SP$0$0 == 0x0081
_SP	=	0x0081
Frandom$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Frandom$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Frandom$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Frandom$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Frandom$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Frandom$PCON$0$0 == 0x0087
_PCON	=	0x0087
Frandom$TCON$0$0 == 0x0088
_TCON	=	0x0088
Frandom$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Frandom$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Frandom$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Frandom$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Frandom$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Frandom$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Frandom$P1$0$0 == 0x0090
_P1	=	0x0090
Frandom$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Frandom$DPS$0$0 == 0x0092
_DPS	=	0x0092
Frandom$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Frandom$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Frandom$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Frandom$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Frandom$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Frandom$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Frandom$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Frandom$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Frandom$P2$0$0 == 0x00a0
_P2	=	0x00a0
Frandom$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Frandom$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Frandom$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Frandom$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Frandom$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Frandom$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Frandom$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Frandom$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Frandom$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Frandom$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Frandom$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Frandom$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Frandom$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Frandom$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Frandom$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Frandom$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Frandom$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Frandom$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Frandom$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Frandom$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Frandom$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Frandom$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Frandom$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Frandom$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Frandom$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Frandom$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Frandom$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Frandom$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Frandom$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Frandom$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Frandom$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Frandom$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Frandom$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Frandom$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Frandom$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Frandom$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Frandom$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Frandom$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Frandom$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Frandom$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Frandom$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Frandom$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Frandom$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Frandom$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Frandom$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Frandom$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Frandom$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Frandom$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Frandom$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Frandom$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Frandom$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Frandom$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Frandom$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Frandom$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Frandom$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Frandom$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Frandom$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Frandom$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Frandom$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Frandom$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Frandom$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Frandom$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Frandom$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Frandom$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Frandom$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Frandom$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Frandom$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Frandom$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Frandom$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Frandom$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Frandom$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Frandom$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Frandom$B$0$0 == 0x00f0
_B	=	0x00f0
Frandom$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Frandom$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Frandom$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Frandom$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Frandom$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Frandom$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Frandom$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Frandom$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Frandom$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Frandom$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Frandom$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Frandom$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Frandom$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Frandom$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Frandom$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Frandom$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Frandom$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Frandom$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Frandom$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Frandom$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Frandom$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Frandom$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Frandom$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Frandom$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Frandom$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Frandom$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Frandom$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Frandom$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Frandom$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Frandom$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Frandom$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Frandom$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Frandom$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Frandom$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Frandom$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Frandom$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Frandom$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Frandom$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Frandom$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Frandom$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Frandom$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Frandom$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Frandom$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Frandom$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Frandom$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Frandom$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Frandom$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Frandom$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Frandom$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Frandom$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Frandom$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Frandom$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Frandom$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Frandom$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Frandom$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Frandom$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Frandom$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Frandom$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Frandom$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Frandom$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Frandom$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Frandom$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Frandom$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Frandom$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Frandom$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Frandom$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Frandom$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Frandom$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Frandom$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Frandom$EA$0$0 == 0x00af
_EA	=	0x00af
Frandom$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Frandom$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Frandom$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Frandom$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Frandom$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Frandom$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Frandom$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Frandom$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Frandom$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Frandom$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Frandom$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Frandom$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Frandom$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Frandom$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Frandom$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Frandom$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Frandom$P$0$0 == 0x00d0
_P	=	0x00d0
Frandom$F1$0$0 == 0x00d1
_F1	=	0x00d1
Frandom$OV$0$0 == 0x00d2
_OV	=	0x00d2
Frandom$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Frandom$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Frandom$F0$0$0 == 0x00d5
_F0	=	0x00d5
Frandom$AC$0$0 == 0x00d6
_AC	=	0x00d6
Frandom$CY$0$0 == 0x00d7
_CY	=	0x00d7
Frandom$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Frandom$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Frandom$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Frandom$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Frandom$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Frandom$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Frandom$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Frandom$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Frandom$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Frandom$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Frandom$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Frandom$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Frandom$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Frandom$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Frandom$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Frandom$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Frandom$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Frandom$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Frandom$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Frandom$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Frandom$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Frandom$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Frandom$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Frandom$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Frandom$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Frandom$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Frandom$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Frandom$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Frandom$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Frandom$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Frandom$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Frandom$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Frandom$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Frandom$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Frandom$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Frandom$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Frandom$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Frandom$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Frandom$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Frandom$U1MODE$0$0 == 0x00ff
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
Lrandom.randomSeed$seed_lsb$1$1==.
_randomSeed_PARM_2:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Frandom$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Frandom$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Frandom$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Frandom$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Frandom$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Frandom$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Frandom$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Frandom$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Frandom$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Frandom$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Frandom$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Frandom$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Frandom$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Frandom$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Frandom$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Frandom$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Frandom$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Frandom$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Frandom$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Frandom$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Frandom$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Frandom$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Frandom$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Frandom$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Frandom$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Frandom$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Frandom$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Frandom$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Frandom$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Frandom$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Frandom$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Frandom$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Frandom$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Frandom$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Frandom$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Frandom$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Frandom$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Frandom$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Frandom$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Frandom$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Frandom$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Frandom$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Frandom$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Frandom$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Frandom$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Frandom$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Frandom$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Frandom$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Frandom$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Frandom$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Frandom$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Frandom$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Frandom$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Frandom$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Frandom$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Frandom$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Frandom$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Frandom$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Frandom$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Frandom$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Frandom$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Frandom$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Frandom$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Frandom$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Frandom$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Frandom$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Frandom$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Frandom$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Frandom$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Frandom$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Frandom$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Frandom$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Frandom$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Frandom$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Frandom$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Frandom$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Frandom$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Frandom$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Frandom$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Frandom$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Frandom$USBF5$0$0 == 0xde2a
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
;Allocation info for local variables in function 'randomNumber'
;------------------------------------------------------------
	G$randomNumber$0$0 ==.
	C$random.c$9$0$0 ==.
;	libraries/src/random/random.c:9: uint8 randomNumber()
;	-----------------------------------------
;	 function randomNumber
;	-----------------------------------------
_randomNumber:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$random.c$12$1$1 ==.
;	libraries/src/random/random.c:12: while(ADCCON1 & 0x0C);                   // Wait for the random number to finish.
00101$:
	mov	a,_ADCCON1
	anl	a,#0x0C
	jz	00109$
	sjmp	00101$
00109$:
	C$random.c$13$1$1 ==.
;	libraries/src/random/random.c:13: rand = RNDL;                             // Get the random number.
	mov	dpl,_RNDL
	C$random.c$14$1$1 ==.
;	libraries/src/random/random.c:14: ADCCON1 = (ADCCON1 & 0x30) | 0x07;       // Start generating the next random number.
	mov	a,#0x30
	anl	a,_ADCCON1
	orl	a,#0x07
	mov	_ADCCON1,a
	C$random.c$15$1$1 ==.
;	libraries/src/random/random.c:15: return rand;
	C$random.c$16$1$1 ==.
	XG$randomNumber$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'randomSeed'
;------------------------------------------------------------
	G$randomSeed$0$0 ==.
	C$random.c$18$1$1 ==.
;	libraries/src/random/random.c:18: void randomSeed(uint8 seed_msb, uint8 seed_lsb)
;	-----------------------------------------
;	 function randomSeed
;	-----------------------------------------
_randomSeed:
	mov	r7,dpl
	C$random.c$23$1$1 ==.
;	libraries/src/random/random.c:23: if ((seed_lsb == 0 && seed_msb == 0) || (seed_lsb == 0x03 && seed_msb == 0x80))
	mov	r0,#_randomSeed_PARM_2
	movx	a,@r0
	jnz	00105$
	mov	a,r7
	jz	00101$
00105$:
	mov	r0,#_randomSeed_PARM_2
	movx	a,@r0
	cjne	a,#0x03,00102$
	cjne	r7,#0x80,00102$
00101$:
	C$random.c$25$2$2 ==.
;	libraries/src/random/random.c:25: seed_lsb = 0xAA;
	mov	r0,#_randomSeed_PARM_2
	mov	a,#0xAA
	movx	@r0,a
00102$:
	C$random.c$28$1$1 ==.
;	libraries/src/random/random.c:28: RNDL = seed_msb;
	mov	_RNDL,r7
	C$random.c$29$1$1 ==.
;	libraries/src/random/random.c:29: RNDL = seed_lsb;
	mov	r0,#_randomSeed_PARM_2
	movx	a,@r0
	mov	_RNDL,a
	C$random.c$30$1$1 ==.
;	libraries/src/random/random.c:30: randomNumber();
	lcall	_randomNumber
	C$random.c$31$1$1 ==.
;	libraries/src/random/random.c:31: randomNumber();
	lcall	_randomNumber
	C$random.c$32$1$1 ==.
;	libraries/src/random/random.c:32: randomNumber();
	lcall	_randomNumber
	C$random.c$33$1$1 ==.
	XG$randomSeed$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
