;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:12 2016
;--------------------------------------------------------
	.module adc
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _adcRead
	.globl _adcReadDifferential
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fadc$P0$0$0 == 0x0080
_P0	=	0x0080
Fadc$SP$0$0 == 0x0081
_SP	=	0x0081
Fadc$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fadc$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fadc$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fadc$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fadc$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fadc$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fadc$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fadc$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fadc$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fadc$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fadc$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fadc$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fadc$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fadc$P1$0$0 == 0x0090
_P1	=	0x0090
Fadc$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fadc$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fadc$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fadc$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fadc$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fadc$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fadc$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fadc$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fadc$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fadc$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fadc$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fadc$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fadc$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fadc$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fadc$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fadc$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fadc$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fadc$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fadc$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fadc$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fadc$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fadc$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fadc$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fadc$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fadc$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fadc$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fadc$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fadc$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fadc$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fadc$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fadc$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fadc$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fadc$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fadc$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fadc$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fadc$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fadc$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fadc$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fadc$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fadc$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fadc$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fadc$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fadc$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fadc$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fadc$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fadc$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fadc$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fadc$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fadc$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fadc$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fadc$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fadc$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fadc$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fadc$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fadc$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fadc$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fadc$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fadc$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fadc$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fadc$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fadc$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fadc$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fadc$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fadc$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fadc$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fadc$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fadc$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fadc$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fadc$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fadc$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fadc$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fadc$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fadc$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fadc$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fadc$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fadc$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fadc$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fadc$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fadc$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fadc$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fadc$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fadc$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fadc$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fadc$B$0$0 == 0x00f0
_B	=	0x00f0
Fadc$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fadc$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fadc$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fadc$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fadc$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fadc$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fadc$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fadc$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fadc$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fadc$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fadc$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fadc$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fadc$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fadc$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fadc$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fadc$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fadc$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fadc$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fadc$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fadc$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fadc$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fadc$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fadc$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fadc$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fadc$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fadc$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fadc$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fadc$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fadc$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fadc$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fadc$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fadc$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fadc$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fadc$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fadc$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fadc$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fadc$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fadc$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fadc$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fadc$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fadc$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fadc$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fadc$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fadc$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fadc$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fadc$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fadc$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fadc$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fadc$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fadc$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fadc$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fadc$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fadc$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fadc$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fadc$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fadc$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fadc$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fadc$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fadc$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fadc$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fadc$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fadc$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fadc$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fadc$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fadc$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fadc$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fadc$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fadc$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fadc$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fadc$EA$0$0 == 0x00af
_EA	=	0x00af
Fadc$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fadc$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fadc$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fadc$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fadc$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fadc$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fadc$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fadc$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fadc$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fadc$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fadc$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fadc$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fadc$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fadc$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fadc$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fadc$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fadc$P$0$0 == 0x00d0
_P	=	0x00d0
Fadc$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fadc$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fadc$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fadc$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fadc$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fadc$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fadc$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fadc$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fadc$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fadc$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fadc$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fadc$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fadc$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fadc$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fadc$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fadc$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fadc$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fadc$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fadc$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fadc$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fadc$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fadc$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fadc$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fadc$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fadc$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fadc$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fadc$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fadc$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fadc$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fadc$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fadc$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fadc$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fadc$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fadc$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fadc$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fadc$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fadc$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fadc$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fadc$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fadc$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fadc$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fadc$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fadc$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fadc$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fadc$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fadc$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fadc$U1MODE$0$0 == 0x00ff
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
Fadc$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fadc$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fadc$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fadc$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fadc$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fadc$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fadc$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fadc$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fadc$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fadc$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fadc$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fadc$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fadc$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fadc$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fadc$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fadc$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fadc$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fadc$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fadc$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fadc$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fadc$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fadc$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fadc$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fadc$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fadc$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fadc$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fadc$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fadc$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fadc$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fadc$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fadc$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fadc$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fadc$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fadc$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fadc$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fadc$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fadc$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fadc$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fadc$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fadc$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fadc$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fadc$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fadc$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fadc$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fadc$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fadc$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fadc$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fadc$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fadc$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fadc$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fadc$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fadc$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fadc$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fadc$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fadc$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fadc$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fadc$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fadc$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fadc$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fadc$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fadc$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fadc$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fadc$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fadc$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fadc$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fadc$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fadc$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fadc$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fadc$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fadc$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fadc$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fadc$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fadc$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fadc$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fadc$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fadc$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fadc$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fadc$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fadc$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fadc$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fadc$USBF5$0$0 == 0xde2a
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
;Allocation info for local variables in function 'adcRead'
;------------------------------------------------------------
	G$adcRead$0$0 ==.
	C$adc.c$5$0$0 ==.
;	libraries/src/adc/adc.c:5: uint16 adcRead(uint8 channel)
;	-----------------------------------------
;	 function adcRead
;	-----------------------------------------
_adcRead:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	C$adc.c$7$1$1 ==.
;	libraries/src/adc/adc.c:7: ADCIF = 0;               // Clear the flag.
	clr	_ADCIF
	C$adc.c$8$1$1 ==.
;	libraries/src/adc/adc.c:8: ADCCON3 = 0b10110000 ^ channel;
	mov	a,#0xB0
	xrl	a,r7
	mov	_ADCCON3,a
	C$adc.c$9$1$1 ==.
;	libraries/src/adc/adc.c:9: while(!ADCIF){};         // Wait for the reading to finish.
00101$:
	jnb	_ADCIF,00101$
	C$adc.c$11$1$1 ==.
;	libraries/src/adc/adc.c:11: if (ADCH & 0x80)
	mov	a,_ADCH
	jnb	acc.7,00105$
	C$adc.c$14$2$3 ==.
;	libraries/src/adc/adc.c:14: return 0;
	mov	dptr,#0x0000
	sjmp	00107$
00105$:
	C$adc.c$21$2$4 ==.
;	libraries/src/adc/adc.c:21: return ADC >> 4;
	mov	dpl,_ADC
	mov	a,(_ADC >> 8)
	swap	a
	xch	a,dpl
	swap	a
	anl	a,#0x0F
	xrl	a,dpl
	xch	a,dpl
	anl	a,#0x0F
	xch	a,dpl
	xrl	a,dpl
	xch	a,dpl
	mov	dph,a
00107$:
	C$adc.c$23$1$1 ==.
	XG$adcRead$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adcReadDifferential'
;------------------------------------------------------------
	G$adcReadDifferential$0$0 ==.
	C$adc.c$25$1$1 ==.
;	libraries/src/adc/adc.c:25: int16 adcReadDifferential(uint8 channel)
;	-----------------------------------------
;	 function adcReadDifferential
;	-----------------------------------------
_adcReadDifferential:
	mov	r7,dpl
	C$adc.c$27$1$1 ==.
;	libraries/src/adc/adc.c:27: ADCIF = 0;               // Clear the flag.
	clr	_ADCIF
	C$adc.c$28$1$1 ==.
;	libraries/src/adc/adc.c:28: ADCCON3 = 0b10110000 ^ channel;
	mov	a,#0xB0
	xrl	a,r7
	mov	_ADCCON3,a
	C$adc.c$29$1$1 ==.
;	libraries/src/adc/adc.c:29: while(!ADCIF){};         // Wait for the reading to finish.
00101$:
	jnb	_ADCIF,00101$
	C$adc.c$31$1$1 ==.
;	libraries/src/adc/adc.c:31: return (int16)ADC >> 4;
	mov	r6,_ADC
	mov	r7,(_ADC >> 8)
	mov	dpl,r6
	mov	a,r7
	swap	a
	xch	a,dpl
	swap	a
	anl	a,#0x0F
	xrl	a,dpl
	xch	a,dpl
	anl	a,#0x0F
	xch	a,dpl
	xrl	a,dpl
	xch	a,dpl
	jnb	acc.3,00109$
	orl	a,#0xF0
00109$:
	mov	dph,a
	C$adc.c$32$1$1 ==.
	XG$adcReadDifferential$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
