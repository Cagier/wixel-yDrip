;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:09 2016
;--------------------------------------------------------
	.module sleep
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _boardClockInit
	.globl _dmaDesc
	.globl _PM3_BUF
	.globl _PM2_BUF
	.globl _sleepInit
	.globl _ISR_ST
	.globl _switchToRCOSC
	.globl _sleepMode1
	.globl _sleepMode2
	.globl _sleepMode3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fsleep$P0$0$0 == 0x0080
_P0	=	0x0080
Fsleep$SP$0$0 == 0x0081
_SP	=	0x0081
Fsleep$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fsleep$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fsleep$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fsleep$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fsleep$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fsleep$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fsleep$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fsleep$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fsleep$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fsleep$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fsleep$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fsleep$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fsleep$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fsleep$P1$0$0 == 0x0090
_P1	=	0x0090
Fsleep$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fsleep$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fsleep$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fsleep$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fsleep$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fsleep$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fsleep$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fsleep$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fsleep$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fsleep$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fsleep$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fsleep$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fsleep$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fsleep$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fsleep$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fsleep$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fsleep$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fsleep$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fsleep$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fsleep$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fsleep$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fsleep$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fsleep$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fsleep$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fsleep$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fsleep$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fsleep$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fsleep$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fsleep$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fsleep$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fsleep$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fsleep$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fsleep$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fsleep$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fsleep$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fsleep$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fsleep$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fsleep$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fsleep$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fsleep$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fsleep$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fsleep$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fsleep$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fsleep$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fsleep$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fsleep$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fsleep$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fsleep$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fsleep$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fsleep$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fsleep$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fsleep$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fsleep$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fsleep$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fsleep$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fsleep$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fsleep$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fsleep$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fsleep$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fsleep$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fsleep$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fsleep$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fsleep$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fsleep$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fsleep$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fsleep$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fsleep$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fsleep$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fsleep$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fsleep$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fsleep$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fsleep$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fsleep$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fsleep$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fsleep$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fsleep$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fsleep$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fsleep$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fsleep$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fsleep$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fsleep$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fsleep$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fsleep$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fsleep$B$0$0 == 0x00f0
_B	=	0x00f0
Fsleep$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fsleep$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fsleep$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fsleep$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fsleep$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fsleep$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fsleep$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fsleep$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fsleep$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fsleep$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fsleep$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fsleep$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fsleep$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fsleep$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fsleep$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fsleep$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fsleep$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fsleep$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fsleep$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fsleep$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fsleep$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fsleep$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fsleep$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fsleep$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fsleep$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fsleep$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fsleep$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fsleep$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fsleep$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fsleep$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fsleep$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fsleep$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fsleep$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fsleep$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fsleep$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fsleep$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fsleep$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fsleep$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fsleep$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fsleep$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fsleep$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fsleep$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fsleep$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fsleep$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fsleep$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fsleep$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fsleep$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fsleep$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fsleep$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fsleep$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fsleep$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fsleep$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fsleep$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fsleep$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fsleep$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fsleep$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fsleep$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fsleep$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fsleep$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fsleep$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fsleep$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fsleep$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fsleep$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fsleep$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fsleep$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fsleep$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fsleep$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fsleep$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fsleep$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fsleep$EA$0$0 == 0x00af
_EA	=	0x00af
Fsleep$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fsleep$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fsleep$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fsleep$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fsleep$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fsleep$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fsleep$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fsleep$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fsleep$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fsleep$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fsleep$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fsleep$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fsleep$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fsleep$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fsleep$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fsleep$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fsleep$P$0$0 == 0x00d0
_P	=	0x00d0
Fsleep$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fsleep$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fsleep$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fsleep$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fsleep$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fsleep$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fsleep$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fsleep$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fsleep$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fsleep$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fsleep$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fsleep$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fsleep$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fsleep$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fsleep$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fsleep$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fsleep$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fsleep$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fsleep$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fsleep$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fsleep$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fsleep$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fsleep$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fsleep$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fsleep$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fsleep$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fsleep$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fsleep$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fsleep$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fsleep$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fsleep$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fsleep$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fsleep$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fsleep$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fsleep$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fsleep$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fsleep$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fsleep$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fsleep$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fsleep$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fsleep$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fsleep$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fsleep$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fsleep$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fsleep$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fsleep$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fsleep$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
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
Lsleep.sleepMode2$storedDma0Armed$1$1==.
_sleepMode2_storedDma0Armed_1_1:
	.ds 1
Lsleep.sleepMode3$storedDma0Armed$1$1==.
_sleepMode3_storedDma0Armed_1_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fsleep$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fsleep$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fsleep$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fsleep$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fsleep$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fsleep$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fsleep$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fsleep$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fsleep$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fsleep$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fsleep$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fsleep$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fsleep$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fsleep$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fsleep$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fsleep$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fsleep$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fsleep$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fsleep$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fsleep$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fsleep$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fsleep$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fsleep$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fsleep$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fsleep$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fsleep$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fsleep$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fsleep$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fsleep$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fsleep$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fsleep$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fsleep$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fsleep$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fsleep$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fsleep$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fsleep$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fsleep$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fsleep$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fsleep$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fsleep$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fsleep$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fsleep$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fsleep$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fsleep$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fsleep$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fsleep$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fsleep$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fsleep$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fsleep$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fsleep$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fsleep$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fsleep$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fsleep$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fsleep$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fsleep$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fsleep$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fsleep$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fsleep$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fsleep$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fsleep$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fsleep$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fsleep$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fsleep$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fsleep$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fsleep$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fsleep$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fsleep$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fsleep$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fsleep$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fsleep$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fsleep$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fsleep$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fsleep$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fsleep$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fsleep$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fsleep$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fsleep$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fsleep$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fsleep$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fsleep$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fsleep$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$PM2_BUF$0$0==.
_PM2_BUF::
	.ds 7
G$PM3_BUF$0$0==.
_PM3_BUF::
	.ds 7
G$dmaDesc$0$0==.
_dmaDesc::
	.ds 8
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
;Allocation info for local variables in function 'sleepInit'
;------------------------------------------------------------
	G$sleepInit$0$0 ==.
	C$sleep.c$15$0$0 ==.
;	libraries/src/wixel/sleep.c:15: void sleepInit(void)
;	-----------------------------------------
;	 function sleepInit
;	-----------------------------------------
_sleepInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$sleep.c$17$1$1 ==.
;	libraries/src/wixel/sleep.c:17: WORIRQ  |= (1<<4); // Enable Event0 interrupt  
	orl	_WORIRQ,#0x10
	C$sleep.c$18$1$1 ==.
	XG$sleepInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ST'
;------------------------------------------------------------
	G$ISR_ST$0$0 ==.
	C$sleep.c$20$1$1 ==.
;	libraries/src/wixel/sleep.c:20: ISR(ST, 1)
;	-----------------------------------------
;	 function ISR_ST
;	-----------------------------------------
_ISR_ST:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	C$sleep.c$23$1$1 ==.
;	libraries/src/wixel/sleep.c:23: IRCON &= 0x7F;
	anl	_IRCON,#0x7F
	C$sleep.c$26$1$1 ==.
;	libraries/src/wixel/sleep.c:26: WORIRQ &= 0xFE;
	anl	_WORIRQ,#0xFE
	C$sleep.c$28$1$1 ==.
;	libraries/src/wixel/sleep.c:28: SLEEP &= 0xFC; // Not required when resuming from PM0; Clear SLEEP.MODE[1:0]
	anl	_SLEEP,#0xFC
	C$sleep.c$29$1$1 ==.
	XG$ISR_ST$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'switchToRCOSC'
;------------------------------------------------------------
	G$switchToRCOSC$0$0 ==.
	C$sleep.c$31$1$1 ==.
;	libraries/src/wixel/sleep.c:31: void switchToRCOSC(void)
;	-----------------------------------------
;	 function switchToRCOSC
;	-----------------------------------------
_switchToRCOSC:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$sleep.c$34$1$1 ==.
;	libraries/src/wixel/sleep.c:34: SLEEP &= ~0x04;
	mov	r7,_SLEEP
	anl	ar7,#0xFB
	mov	_SLEEP,r7
	C$sleep.c$36$1$1 ==.
;	libraries/src/wixel/sleep.c:36: while ( ! (SLEEP & 0x20) );
00101$:
	mov	a,_SLEEP
	jnb	acc.5,00101$
	C$sleep.c$39$1$1 ==.
;	libraries/src/wixel/sleep.c:39: CLKCON = (CLKCON & ~0x07) | 0x40 | 0x01;
	mov	r7,_CLKCON
	mov	a,#0xF8
	anl	a,r7
	orl	a,#0x41
	mov	r7,a
	mov	_CLKCON,r7
	C$sleep.c$41$1$1 ==.
;	libraries/src/wixel/sleep.c:41: while ( !(CLKCON & 0x40) );
00104$:
	mov	a,_CLKCON
	jnb	acc.6,00104$
	C$sleep.c$43$1$1 ==.
;	libraries/src/wixel/sleep.c:43: SLEEP |= 0x04;
	orl	_SLEEP,#0x04
	C$sleep.c$44$1$1 ==.
	XG$switchToRCOSC$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sleepMode1'
;------------------------------------------------------------
	G$sleepMode1$0$0 ==.
	C$sleep.c$46$1$1 ==.
;	libraries/src/wixel/sleep.c:46: void sleepMode1(uint16 seconds)
;	-----------------------------------------
;	 function sleepMode1
;	-----------------------------------------
_sleepMode1:
	mov	r6,dpl
	mov	r7,dph
	C$sleep.c$54$1$1 ==.
;	libraries/src/wixel/sleep.c:54: WORCTRL |= 0x03; // WOR_RES[1:0]
	orl	_WORCTRL,#0x03
	C$sleep.c$57$1$1 ==.
;	libraries/src/wixel/sleep.c:57: IEN0 |= 0xA0; // Set EA and STIE bits
	orl	_IEN0,#0xA0
	C$sleep.c$59$1$1 ==.
;	libraries/src/wixel/sleep.c:59: WORCTRL |= 0x04; // Reset Sleep Timer; WOR_RESET
	orl	_WORCTRL,#0x04
	C$sleep.c$60$1$1 ==.
;	libraries/src/wixel/sleep.c:60: temp = WORTIME0;
	mov	r5,_WORTIME0
	C$sleep.c$61$1$1 ==.
;	libraries/src/wixel/sleep.c:61: while(temp == WORTIME0); // Wait until a positive 32 kHz edge
00101$:
	mov	a,r5
	cjne	a,_WORTIME0,00116$
	sjmp	00101$
00116$:
	C$sleep.c$62$1$1 ==.
;	libraries/src/wixel/sleep.c:62: temp = WORTIME0;
	mov	r5,_WORTIME0
	C$sleep.c$63$1$1 ==.
;	libraries/src/wixel/sleep.c:63: while(temp == WORTIME0); // Wait until a positive 32 kHz edge
00104$:
	mov	a,r5
	cjne	a,_WORTIME0,00117$
	sjmp	00104$
00117$:
	C$sleep.c$64$1$1 ==.
;	libraries/src/wixel/sleep.c:64: WOREVT1 = desired_event0 >> 8; // Set EVENT0, high byte
	mov	_WOREVT1,r7
	C$sleep.c$65$1$1 ==.
;	libraries/src/wixel/sleep.c:65: WOREVT0 = desired_event0; // Set EVENT0, low byte
	mov	_WOREVT0,r6
	C$sleep.c$68$1$1 ==.
;	libraries/src/wixel/sleep.c:68: SLEEP = (SLEEP & 0xFC) | 0x01; // SLEEP.MODE[1:0]
	mov	a,#0xFC
	anl	a,_SLEEP
	orl	a,#0x01
	mov	_SLEEP,a
	C$sleep.c$78$1$1 ==.
;	libraries/src/wixel/sleep.c:78: __asm nop __endasm;
	 nop 
	C$sleep.c$79$1$1 ==.
;	libraries/src/wixel/sleep.c:79: __asm nop __endasm;
	 nop 
	C$sleep.c$80$1$1 ==.
;	libraries/src/wixel/sleep.c:80: __asm nop __endasm;
	 nop 
	C$sleep.c$88$1$1 ==.
;	libraries/src/wixel/sleep.c:88: if (SLEEP & 0x03) // SLEEP.MODE[1:0]
	mov	a,_SLEEP
	anl	a,#0x03
	jz	00108$
	C$sleep.c$91$2$2 ==.
;	libraries/src/wixel/sleep.c:91: PCON |= 0x01;
	orl	_PCON,#0x01
	C$sleep.c$94$2$2 ==.
;	libraries/src/wixel/sleep.c:94: __asm nop __endasm;    
	 nop 
00108$:
	C$sleep.c$98$1$1 ==.
;	libraries/src/wixel/sleep.c:98: boardClockInit(); 
	lcall	_boardClockInit
	C$sleep.c$99$1$1 ==.
	XG$sleepMode1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sleepMode2'
;------------------------------------------------------------
	G$sleepMode2$0$0 ==.
	C$sleep.c$101$1$1 ==.
;	libraries/src/wixel/sleep.c:101: void sleepMode2(uint16 seconds)
;	-----------------------------------------
;	 function sleepMode2
;	-----------------------------------------
_sleepMode2:
	mov	r6,dpl
	mov	r7,dph
	C$sleep.c$113$1$1 ==.
;	libraries/src/wixel/sleep.c:113: WORCTRL |= 0x03; 
	orl	_WORCTRL,#0x03
	C$sleep.c$115$1$1 ==.
;	libraries/src/wixel/sleep.c:115: switchToRCOSC();
	push	ar7
	push	ar6
	lcall	_switchToRCOSC
	pop	ar6
	pop	ar7
	C$sleep.c$124$1$1 ==.
;	libraries/src/wixel/sleep.c:124: storedDescHigh = DMA0CFGH;
	mov	r5,_DMA0CFGH
	C$sleep.c$125$1$1 ==.
;	libraries/src/wixel/sleep.c:125: storedDescLow = DMA0CFGL;
	mov	r4,_DMA0CFGL
	C$sleep.c$126$1$1 ==.
;	libraries/src/wixel/sleep.c:126: storedDma0Armed = DMAARM & 0x01;
	mov	a,_DMAARM
	anl	a,#0x01
	add	a,#0xff
	mov	_sleepMode2_storedDma0Armed_1_1,c
	C$sleep.c$127$1$1 ==.
;	libraries/src/wixel/sleep.c:127: DMAARM |= 0x81; // Abort transfers on DMA Channel 0; Set ABORT and DMAARM0
	orl	_DMAARM,#0x81
	C$sleep.c$129$1$1 ==.
;	libraries/src/wixel/sleep.c:129: dmaDesc[0] = ((unsigned int)& PM2_BUF) >> 8;
	mov	r2,#_PM2_BUF
	mov	r3,#(_PM2_BUF >> 8)
	mov	ar2,r3
	mov	dptr,#_dmaDesc
	mov	a,r2
	movx	@dptr,a
	C$sleep.c$130$1$1 ==.
;	libraries/src/wixel/sleep.c:130: dmaDesc[1] = (unsigned int)& PM2_BUF;
	mov	r2,#_PM2_BUF
	mov	r3,#(_PM2_BUF >> 8)
	mov	dptr,#(_dmaDesc + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$sleep.c$132$1$1 ==.
;	libraries/src/wixel/sleep.c:132: DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
	mov	r2,#_dmaDesc
	mov	r3,#(_dmaDesc >> 8)
	mov	_DMA0CFGH,r3
	C$sleep.c$133$1$1 ==.
;	libraries/src/wixel/sleep.c:133: DMA0CFGL = (unsigned int)&dmaDesc;
	mov	r2,#_dmaDesc
	mov	r3,#(_dmaDesc >> 8)
	mov	_DMA0CFGL,r2
	C$sleep.c$134$1$1 ==.
;	libraries/src/wixel/sleep.c:134: DMAARM = 0x01; // Arm Channel 0; DMAARM0
	mov	_DMAARM,#0x01
	C$sleep.c$137$1$1 ==.
;	libraries/src/wixel/sleep.c:137: storedIEN0 = IEN0;
	mov	r3,_IEN0
	C$sleep.c$138$1$1 ==.
;	libraries/src/wixel/sleep.c:138: storedIEN1 = IEN1;
	mov	r2,_IEN1
	C$sleep.c$139$1$1 ==.
;	libraries/src/wixel/sleep.c:139: storedIEN2 = IEN2; 
	mov	r1,_IEN2
	C$sleep.c$143$1$1 ==.
;	libraries/src/wixel/sleep.c:143: IEN0 |= 0xA0; // Set EA and STIE bits
	orl	_IEN0,#0xA0
	C$sleep.c$146$1$1 ==.
;	libraries/src/wixel/sleep.c:146: IEN0 &= 0xA0;
	anl	_IEN0,#0xA0
	C$sleep.c$147$1$1 ==.
;	libraries/src/wixel/sleep.c:147: IEN1 &= ~0x3F;
	mov	r0,_IEN1
	anl	ar0,#0xC0
	mov	_IEN1,r0
	C$sleep.c$148$1$1 ==.
;	libraries/src/wixel/sleep.c:148: IEN2 &= ~0x3F;
	mov	r0,_IEN2
	anl	ar0,#0xC0
	mov	_IEN2,r0
	C$sleep.c$150$1$1 ==.
;	libraries/src/wixel/sleep.c:150: WORCTRL |= 0x04; // Reset Sleep Timer
	orl	_WORCTRL,#0x04
	C$sleep.c$151$1$1 ==.
;	libraries/src/wixel/sleep.c:151: temp = WORTIME0;
	mov	r0,_WORTIME0
	C$sleep.c$152$1$1 ==.
;	libraries/src/wixel/sleep.c:152: while(temp == WORTIME0); // Wait until a positive 32 kHz edge
00101$:
	mov	a,r0
	cjne	a,_WORTIME0,00119$
	sjmp	00101$
00119$:
	C$sleep.c$153$1$1 ==.
;	libraries/src/wixel/sleep.c:153: temp = WORTIME0;
	mov	r0,_WORTIME0
	C$sleep.c$154$1$1 ==.
;	libraries/src/wixel/sleep.c:154: while(temp == WORTIME0); // Wait until a positive 32 kHz edge
00104$:
	mov	a,r0
	cjne	a,_WORTIME0,00120$
	sjmp	00104$
00120$:
	C$sleep.c$155$1$1 ==.
;	libraries/src/wixel/sleep.c:155: WOREVT1 = desired_event0 >> 8; // Set EVENT0, high byte
	mov	_WOREVT1,r7
	C$sleep.c$156$1$1 ==.
;	libraries/src/wixel/sleep.c:156: WOREVT0 = desired_event0; // Set EVENT0, low byte
	mov	_WOREVT0,r6
	C$sleep.c$158$1$1 ==.
;	libraries/src/wixel/sleep.c:158: MEMCTR |= 0x02;  // Flash cache must be disabled.
	orl	_MEMCTR,#0x02
	C$sleep.c$159$1$1 ==.
;	libraries/src/wixel/sleep.c:159: SLEEP = 0x06; // PM2, disable USB, power down other oscillators
	mov	_SLEEP,#0x06
	C$sleep.c$161$1$1 ==.
;	libraries/src/wixel/sleep.c:161: __asm nop __endasm; 
	 nop 
	C$sleep.c$162$1$1 ==.
;	libraries/src/wixel/sleep.c:162: __asm nop __endasm; 
	 nop 
	C$sleep.c$163$1$1 ==.
;	libraries/src/wixel/sleep.c:163: __asm nop __endasm;
	 nop 
	C$sleep.c$165$1$1 ==.
;	libraries/src/wixel/sleep.c:165: if (SLEEP & 0x03)
	mov	a,_SLEEP
	anl	a,#0x03
	jz	00108$
	C$sleep.c$167$2$2 ==.
;	libraries/src/wixel/sleep.c:167: __asm mov 0xD7,#0x01 __endasm; // DMAREQ = 0x01;
	 mov 0xD7,#0x01 
	C$sleep.c$168$2$2 ==.
;	libraries/src/wixel/sleep.c:168: __asm nop __endasm;            // Needed to perfectly align the DMA transfer.
	 nop 
	C$sleep.c$169$2$2 ==.
;	libraries/src/wixel/sleep.c:169: __asm orl 0x87,#0x01 __endasm; // PCON |= 0x01;
	 orl 0x87,#0x01 
	C$sleep.c$170$2$2 ==.
;	libraries/src/wixel/sleep.c:170: __asm nop __endasm;      
	 nop 
00108$:
	C$sleep.c$174$1$1 ==.
;	libraries/src/wixel/sleep.c:174: IEN0 = storedIEN0;
	mov	_IEN0,r3
	C$sleep.c$175$1$1 ==.
;	libraries/src/wixel/sleep.c:175: IEN1 = storedIEN1;
	mov	_IEN1,r2
	C$sleep.c$176$1$1 ==.
;	libraries/src/wixel/sleep.c:176: IEN2 = storedIEN2; 
	mov	_IEN2,r1
	C$sleep.c$179$1$1 ==.
;	libraries/src/wixel/sleep.c:179: DMA0CFGH = storedDescHigh;
	mov	_DMA0CFGH,r5
	C$sleep.c$180$1$1 ==.
;	libraries/src/wixel/sleep.c:180: DMA0CFGL = storedDescLow;
	mov	_DMA0CFGL,r4
	C$sleep.c$181$1$1 ==.
;	libraries/src/wixel/sleep.c:181: if (storedDma0Armed)
	jnb	_sleepMode2_storedDma0Armed_1_1,00110$
	C$sleep.c$182$1$1 ==.
;	libraries/src/wixel/sleep.c:182: DMAARM |= 0x01; // Set DMA0ARM
	orl	_DMAARM,#0x01
00110$:
	C$sleep.c$185$1$1 ==.
;	libraries/src/wixel/sleep.c:185: boardClockInit();   
	lcall	_boardClockInit
	C$sleep.c$186$1$1 ==.
	XG$sleepMode2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sleepMode3'
;------------------------------------------------------------
	G$sleepMode3$0$0 ==.
	C$sleep.c$189$1$1 ==.
;	libraries/src/wixel/sleep.c:189: void sleepMode3(void)
;	-----------------------------------------
;	 function sleepMode3
;	-----------------------------------------
_sleepMode3:
	C$sleep.c$195$1$1 ==.
;	libraries/src/wixel/sleep.c:195: WORCTRL |= 0x03; 
	orl	_WORCTRL,#0x03
	C$sleep.c$197$1$1 ==.
;	libraries/src/wixel/sleep.c:197: switchToRCOSC();
	lcall	_switchToRCOSC
	C$sleep.c$206$1$1 ==.
;	libraries/src/wixel/sleep.c:206: storedDescHigh = DMA0CFGH;
	mov	r7,_DMA0CFGH
	C$sleep.c$207$1$1 ==.
;	libraries/src/wixel/sleep.c:207: storedDescLow = DMA0CFGL;
	mov	r6,_DMA0CFGL
	C$sleep.c$208$1$1 ==.
;	libraries/src/wixel/sleep.c:208: storedDma0Armed = DMAARM & 0x01;
	mov	a,_DMAARM
	anl	a,#0x01
	add	a,#0xff
	mov	_sleepMode3_storedDma0Armed_1_1,c
	C$sleep.c$209$1$1 ==.
;	libraries/src/wixel/sleep.c:209: DMAARM |= 0x81; // Abort transfers on DMA Channel 0; Set ABORT and DMAARM0
	orl	_DMAARM,#0x81
	C$sleep.c$211$1$1 ==.
;	libraries/src/wixel/sleep.c:211: dmaDesc[0] = ((unsigned int)& PM3_BUF) >> 8;
	mov	r4,#_PM3_BUF
	mov	r5,#(_PM3_BUF >> 8)
	mov	ar4,r5
	mov	dptr,#_dmaDesc
	mov	a,r4
	movx	@dptr,a
	C$sleep.c$212$1$1 ==.
;	libraries/src/wixel/sleep.c:212: dmaDesc[1] = (unsigned int)& PM3_BUF;
	mov	r4,#_PM3_BUF
	mov	r5,#(_PM3_BUF >> 8)
	mov	dptr,#(_dmaDesc + 0x0001)
	mov	a,r4
	movx	@dptr,a
	C$sleep.c$214$1$1 ==.
;	libraries/src/wixel/sleep.c:214: DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
	mov	r4,#_dmaDesc
	mov	r5,#(_dmaDesc >> 8)
	mov	_DMA0CFGH,r5
	C$sleep.c$215$1$1 ==.
;	libraries/src/wixel/sleep.c:215: DMA0CFGL = (unsigned int)&dmaDesc;
	mov	r4,#_dmaDesc
	mov	r5,#(_dmaDesc >> 8)
	mov	_DMA0CFGL,r4
	C$sleep.c$216$1$1 ==.
;	libraries/src/wixel/sleep.c:216: DMAARM = 0x01; // Arm Channel 0; DMAARM0
	mov	_DMAARM,#0x01
	C$sleep.c$219$1$1 ==.
;	libraries/src/wixel/sleep.c:219: IEN0 |= (1<<7);
	orl	_IEN0,#0x80
	C$sleep.c$221$1$1 ==.
;	libraries/src/wixel/sleep.c:221: MEMCTR |= 0x02;  // Flash cache must be disabled.
	orl	_MEMCTR,#0x02
	C$sleep.c$222$1$1 ==.
;	libraries/src/wixel/sleep.c:222: SLEEP = 0x07; // PM3, disable USB, power down other oscillators
	mov	_SLEEP,#0x07
	C$sleep.c$224$1$1 ==.
;	libraries/src/wixel/sleep.c:224: __asm nop __endasm; 
	 nop 
	C$sleep.c$225$1$1 ==.
;	libraries/src/wixel/sleep.c:225: __asm nop __endasm; 
	 nop 
	C$sleep.c$226$1$1 ==.
;	libraries/src/wixel/sleep.c:226: __asm nop __endasm;
	 nop 
	C$sleep.c$228$1$1 ==.
;	libraries/src/wixel/sleep.c:228: if (SLEEP & 0x03)
	mov	a,_SLEEP
	anl	a,#0x03
	jz	00102$
	C$sleep.c$230$2$2 ==.
;	libraries/src/wixel/sleep.c:230: __asm mov 0xD7,#0x01 __endasm; // DMAREQ = 0x01;
	 mov 0xD7,#0x01 
	C$sleep.c$231$2$2 ==.
;	libraries/src/wixel/sleep.c:231: __asm nop __endasm;            // Needed to perfectly align the DMA transfer.
	 nop 
	C$sleep.c$232$2$2 ==.
;	libraries/src/wixel/sleep.c:232: __asm orl 0x87,#0x01 __endasm; // PCON |= 0x01;
	 orl 0x87,#0x01 
	C$sleep.c$233$2$2 ==.
;	libraries/src/wixel/sleep.c:233: __asm nop __endasm;      
	 nop 
00102$:
	C$sleep.c$237$1$1 ==.
;	libraries/src/wixel/sleep.c:237: DMA0CFGH = storedDescHigh;
	mov	_DMA0CFGH,r7
	C$sleep.c$238$1$1 ==.
;	libraries/src/wixel/sleep.c:238: DMA0CFGL = storedDescLow;
	mov	_DMA0CFGL,r6
	C$sleep.c$239$1$1 ==.
;	libraries/src/wixel/sleep.c:239: if (storedDma0Armed)
	jnb	_sleepMode3_storedDma0Armed_1_1,00104$
	C$sleep.c$240$1$1 ==.
;	libraries/src/wixel/sleep.c:240: DMAARM |= 0x01; // Set DMA0ARM
	orl	_DMAARM,#0x01
00104$:
	C$sleep.c$243$1$1 ==.
;	libraries/src/wixel/sleep.c:243: boardClockInit();    
	lcall	_boardClockInit
	C$sleep.c$244$1$1 ==.
	XG$sleepMode3$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
Fsleep$__xinit_PM2_BUF$0$0 == .
__xinit__PM2_BUF:
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x04	; 4
Fsleep$__xinit_PM3_BUF$0$0 == .
__xinit__PM3_BUF:
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
Fsleep$__xinit_dmaDesc$0$0 == .
__xinit__dmaDesc:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0xBE	; 190
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.area CABS    (ABS,CODE)
