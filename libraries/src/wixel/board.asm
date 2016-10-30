;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:08 2016
;--------------------------------------------------------
	.module board
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _dmaInit
	.globl _delayMs
	.globl _delayMicroseconds
	.globl _getMs
	.globl _timeInit
	.globl _systemInit
	.globl _boardService
	.globl _boardClockInit
	.globl _boardIoInit
	.globl _boardStartBootloader
	.globl _boardStartBootloaderIfNeeded
	.globl _usbPowerPresent
	.globl _vinPowerPresent
	.globl _disableUsbPullup
	.globl _enableUsbPullup
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fboard$P0$0$0 == 0x0080
_P0	=	0x0080
Fboard$SP$0$0 == 0x0081
_SP	=	0x0081
Fboard$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fboard$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fboard$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fboard$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fboard$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fboard$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fboard$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fboard$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fboard$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fboard$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fboard$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fboard$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fboard$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fboard$P1$0$0 == 0x0090
_P1	=	0x0090
Fboard$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fboard$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fboard$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fboard$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fboard$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fboard$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fboard$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fboard$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fboard$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fboard$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fboard$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fboard$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fboard$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fboard$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fboard$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fboard$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fboard$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fboard$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fboard$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fboard$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fboard$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fboard$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fboard$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fboard$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fboard$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fboard$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fboard$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fboard$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fboard$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fboard$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fboard$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fboard$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fboard$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fboard$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fboard$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fboard$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fboard$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fboard$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fboard$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fboard$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fboard$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fboard$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fboard$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fboard$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fboard$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fboard$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fboard$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fboard$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fboard$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fboard$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fboard$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fboard$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fboard$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fboard$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fboard$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fboard$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fboard$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fboard$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fboard$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fboard$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fboard$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fboard$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fboard$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fboard$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fboard$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fboard$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fboard$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fboard$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fboard$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fboard$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fboard$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fboard$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fboard$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fboard$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fboard$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fboard$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fboard$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fboard$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fboard$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fboard$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fboard$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fboard$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fboard$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fboard$B$0$0 == 0x00f0
_B	=	0x00f0
Fboard$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fboard$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fboard$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fboard$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fboard$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fboard$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fboard$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fboard$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fboard$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fboard$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fboard$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fboard$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fboard$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fboard$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fboard$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fboard$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fboard$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fboard$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fboard$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fboard$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fboard$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fboard$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fboard$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fboard$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fboard$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fboard$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fboard$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fboard$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fboard$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fboard$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fboard$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fboard$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fboard$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fboard$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fboard$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fboard$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fboard$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fboard$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fboard$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fboard$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fboard$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fboard$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fboard$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fboard$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fboard$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fboard$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fboard$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fboard$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fboard$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fboard$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fboard$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fboard$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fboard$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fboard$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fboard$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fboard$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fboard$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fboard$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fboard$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fboard$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fboard$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fboard$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fboard$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fboard$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fboard$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fboard$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fboard$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fboard$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fboard$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fboard$EA$0$0 == 0x00af
_EA	=	0x00af
Fboard$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fboard$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fboard$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fboard$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fboard$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fboard$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fboard$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fboard$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fboard$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fboard$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fboard$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fboard$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fboard$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fboard$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fboard$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fboard$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fboard$P$0$0 == 0x00d0
_P	=	0x00d0
Fboard$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fboard$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fboard$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fboard$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fboard$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fboard$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fboard$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fboard$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fboard$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fboard$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fboard$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fboard$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fboard$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fboard$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fboard$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fboard$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fboard$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fboard$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fboard$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fboard$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fboard$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fboard$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fboard$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fboard$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fboard$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fboard$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fboard$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fboard$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fboard$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fboard$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fboard$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fboard$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fboard$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fboard$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fboard$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fboard$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fboard$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fboard$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fboard$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fboard$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fboard$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fboard$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fboard$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fboard$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fboard$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fboard$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fboard$U1MODE$0$0 == 0x00ff
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
Fboard$vbusHighBit$0$0==.
_vbusHighBit:
	.ds 1
Lboard.boardDetectVbus$savedState$2$2==.
_boardDetectVbus_savedState_2_2:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Lboard.boardDetectVbus$lastCheck$1$1==.
_boardDetectVbus_lastCheck_1_1:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fboard$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fboard$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fboard$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fboard$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fboard$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fboard$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fboard$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fboard$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fboard$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fboard$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fboard$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fboard$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fboard$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fboard$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fboard$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fboard$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fboard$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fboard$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fboard$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fboard$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fboard$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fboard$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fboard$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fboard$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fboard$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fboard$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fboard$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fboard$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fboard$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fboard$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fboard$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fboard$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fboard$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fboard$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fboard$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fboard$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fboard$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fboard$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fboard$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fboard$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fboard$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fboard$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fboard$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fboard$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fboard$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fboard$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fboard$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fboard$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fboard$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fboard$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fboard$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fboard$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fboard$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fboard$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fboard$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fboard$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fboard$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fboard$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fboard$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fboard$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fboard$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fboard$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fboard$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fboard$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fboard$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fboard$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fboard$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fboard$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fboard$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fboard$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fboard$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fboard$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fboard$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fboard$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fboard$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fboard$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fboard$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fboard$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fboard$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fboard$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fboard$USBF5$0$0 == 0xde2a
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
;------------------------------------------------------------
;Allocation info for local variables in function 'boardDetectVbus'
;------------------------------------------------------------
	Fboard$boardDetectVbus$0$0 ==.
	C$board.c$86$2$1 ==.
;	libraries/src/wixel/board.c:86: static uint8 lastCheck = 128;
	mov	r0,#_boardDetectVbus_lastCheck_1_1
	mov	a,#0x80
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
;Allocation info for local variables in function 'systemInit'
;------------------------------------------------------------
	G$systemInit$0$0 ==.
	C$board.c$29$0$0 ==.
;	libraries/src/wixel/board.c:29: void systemInit()
;	-----------------------------------------
;	 function systemInit
;	-----------------------------------------
_systemInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$board.c$31$1$1 ==.
;	libraries/src/wixel/board.c:31: boardIoInit();
	lcall	_boardIoInit
	C$board.c$32$1$1 ==.
;	libraries/src/wixel/board.c:32: boardClockInit();
	lcall	_boardClockInit
	C$board.c$33$1$1 ==.
;	libraries/src/wixel/board.c:33: timeInit();
	lcall	_timeInit
	C$board.c$34$1$1 ==.
;	libraries/src/wixel/board.c:34: dmaInit();
	lcall	_dmaInit
	C$board.c$35$1$1 ==.
	XG$systemInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boardService'
;------------------------------------------------------------
	G$boardService$0$0 ==.
	C$board.c$37$1$1 ==.
;	libraries/src/wixel/board.c:37: void boardService()
;	-----------------------------------------
;	 function boardService
;	-----------------------------------------
_boardService:
	C$board.c$39$1$1 ==.
;	libraries/src/wixel/board.c:39: boardStartBootloaderIfNeeded();
	lcall	_boardStartBootloaderIfNeeded
	C$board.c$40$1$1 ==.
	XG$boardService$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boardClockInit'
;------------------------------------------------------------
	G$boardClockInit$0$0 ==.
	C$board.c$45$1$1 ==.
;	libraries/src/wixel/board.c:45: void boardClockInit()
;	-----------------------------------------
;	 function boardClockInit
;	-----------------------------------------
_boardClockInit:
	C$board.c$48$1$1 ==.
;	libraries/src/wixel/board.c:48: SLEEP &= ~0x04;
	mov	r7,_SLEEP
	anl	ar7,#0xFB
	mov	_SLEEP,r7
	C$board.c$53$1$1 ==.
;	libraries/src/wixel/board.c:53: while(!(SLEEP & 0x40));
00101$:
	mov	a,_SLEEP
	jnb	acc.6,00101$
	C$board.c$60$1$1 ==.
;	libraries/src/wixel/board.c:60: CLKCON = 0x80;
	mov	_CLKCON,#0x80
	C$board.c$64$1$1 ==.
;	libraries/src/wixel/board.c:64: SLEEP |= 0x04;
	orl	_SLEEP,#0x04
	C$board.c$68$1$1 ==.
;	libraries/src/wixel/board.c:68: MEMCTR = 0;
	mov	_MEMCTR,#0x00
	C$board.c$69$1$1 ==.
	XG$boardClockInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boardIoInit'
;------------------------------------------------------------
	G$boardIoInit$0$0 ==.
	C$board.c$71$1$1 ==.
;	libraries/src/wixel/board.c:71: void boardIoInit()
;	-----------------------------------------
;	 function boardIoInit
;	-----------------------------------------
_boardIoInit:
	C$board.c$73$1$1 ==.
;	libraries/src/wixel/board.c:73: P2DIR = 0;           // Make all the Port 2 pins be inputs.
	mov	_P2DIR,#0x00
	C$board.c$74$1$1 ==.
;	libraries/src/wixel/board.c:74: P2 = 0b00000110;     // P2_1 = 1: drive the red LED line high LATER (when LED_RED(1) is called)
	mov	_P2,#0x06
	C$board.c$77$1$1 ==.
;	libraries/src/wixel/board.c:77: P2INP = 0b10011001;  // Pull down LED pins (P2_2, P2_1), and tristate the other Port 2 pins.
	mov	_P2INP,#0x99
	C$board.c$78$1$1 ==.
	XG$boardIoInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boardDetectVbus'
;------------------------------------------------------------
	Fboard$boardDetectVbus$0$0 ==.
	C$board.c$84$1$1 ==.
;	libraries/src/wixel/board.c:84: static void boardDetectVbus()
;	-----------------------------------------
;	 function boardDetectVbus
;	-----------------------------------------
_boardDetectVbus:
	C$board.c$87$1$1 ==.
;	libraries/src/wixel/board.c:87: if ((uint8)(getMs() - lastCheck) > 25)
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_boardDetectVbus_lastCheck_1_1
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	mov  r4,a
	add	a,#0xff - 0x19
	jnc	00107$
	C$board.c$89$2$1 ==.
;	libraries/src/wixel/board.c:89: BIT savedState = (P2DIR >> 4) & 1;
	mov	a,_P2DIR
	swap	a
	anl	a,#0x01
	mov	r7,a
	add	a,#0xff
	C$board.c$90$2$2 ==.
;	libraries/src/wixel/board.c:90: if (savedState == 0)
	mov	_boardDetectVbus_savedState_2_2,c
	jc	00102$
	C$board.c$92$3$3 ==.
;	libraries/src/wixel/board.c:92: P2DIR |= (1<<4);       // Drive the VBUS_IN low
	orl	_P2DIR,#0x10
	C$board.c$93$3$3 ==.
;	libraries/src/wixel/board.c:93: delayMicroseconds(2);
	mov	dpl,#0x02
	lcall	_delayMicroseconds
00102$:
	C$board.c$95$2$2 ==.
;	libraries/src/wixel/board.c:95: P2INP &= ~(1<<4);          // Set input mode to pull-down
	mov	r7,_P2INP
	anl	ar7,#0xEF
	mov	_P2INP,r7
	C$board.c$96$2$2 ==.
;	libraries/src/wixel/board.c:96: P2DIR &= ~(1<<4);          // Make the line an input.
	mov	r7,_P2DIR
	anl	ar7,#0xEF
	mov	_P2DIR,r7
	C$board.c$97$2$2 ==.
;	libraries/src/wixel/board.c:97: delayMicroseconds(1);
	mov	dpl,#0x01
	lcall	_delayMicroseconds
	C$board.c$99$2$2 ==.
;	libraries/src/wixel/board.c:99: vbusHighBit = P2_4;           // Measure the voltage.
	mov	c,_P2_4
	mov	_vbusHighBit,c
	C$board.c$101$2$2 ==.
;	libraries/src/wixel/board.c:101: P2INP |= (1<<4);           // Set input mode to tristate.
	orl	_P2INP,#0x10
	C$board.c$102$2$2 ==.
;	libraries/src/wixel/board.c:102: if (savedState)
	jnb	_boardDetectVbus_savedState_2_2,00104$
	C$board.c$104$3$4 ==.
;	libraries/src/wixel/board.c:104: P2DIR |= (1<<4);  // LED was on previously so turn it back on.
	orl	_P2DIR,#0x10
00104$:
	C$board.c$107$2$2 ==.
;	libraries/src/wixel/board.c:107: lastCheck = getMs();
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_boardDetectVbus_lastCheck_1_1
	mov	a,r4
	movx	@r0,a
00107$:
	C$board.c$109$2$1 ==.
	XFboard$boardDetectVbus$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boardStartBootloader'
;------------------------------------------------------------
	G$boardStartBootloader$0$0 ==.
	C$board.c$111$2$1 ==.
;	libraries/src/wixel/board.c:111: void boardStartBootloader()
;	-----------------------------------------
;	 function boardStartBootloader
;	-----------------------------------------
_boardStartBootloader:
	C$board.c$113$1$1 ==.
;	libraries/src/wixel/board.c:113: EA = 0;             // Disable interrupts.
	clr	_EA
	C$board.c$115$1$1 ==.
;	libraries/src/wixel/board.c:115: DMAARM = 0x9F;      // Disarm all DMA channels.
	mov	_DMAARM,#0x9F
	C$board.c$117$1$1 ==.
;	libraries/src/wixel/board.c:117: delayMicroseconds(10);  // Probably not necessary anymore.  Used to be 10 milliseconds.
	mov	dpl,#0x0A
	lcall	_delayMicroseconds
	C$board.c$123$1$1 ==.
;	libraries/src/wixel/board.c:123: P0DIR = P1DIR = P2DIR = 0;
	mov	_P2DIR,#0x00
	mov	_P1DIR,#0x00
	mov	_P0DIR,#0x00
	C$board.c$124$1$1 ==.
;	libraries/src/wixel/board.c:124: P0SEL = P1SEL = P2SEL = 0;
	mov	_P2SEL,#0x00
	mov	_P1SEL,#0x00
	mov	_P0SEL,#0x00
	C$board.c$126$1$1 ==.
;	libraries/src/wixel/board.c:126: delayMs(100);       // Delay to give the USB host a chance to detect that we disconnected.
	mov	dptr,#0x0064
	lcall	_delayMs
	C$board.c$127$1$1 ==.
;	libraries/src/wixel/board.c:127: __asm ljmp 6 __endasm;
	 ljmp 6 
	C$board.c$128$1$1 ==.
	XG$boardStartBootloader$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'boardStartBootloaderIfNeeded'
;------------------------------------------------------------
	G$boardStartBootloaderIfNeeded$0$0 ==.
	C$board.c$130$1$1 ==.
;	libraries/src/wixel/board.c:130: void boardStartBootloaderIfNeeded()
;	-----------------------------------------
;	 function boardStartBootloaderIfNeeded
;	-----------------------------------------
_boardStartBootloaderIfNeeded:
	C$board.c$132$1$1 ==.
;	libraries/src/wixel/board.c:132: if (!(P2DIR & (1<<2)))       // If the yellow LED is off...
	mov	a,_P2DIR
	jb	acc.2,00105$
	C$board.c$134$2$2 ==.
;	libraries/src/wixel/board.c:134: delayMicroseconds(10);
	mov	dpl,#0x0A
	lcall	_delayMicroseconds
	C$board.c$135$2$2 ==.
;	libraries/src/wixel/board.c:135: if (P2_2)
	jnb	_P2_2,00105$
	C$board.c$137$3$3 ==.
;	libraries/src/wixel/board.c:137: boardStartBootloader();
	lcall	_boardStartBootloader
00105$:
	C$board.c$140$1$1 ==.
	XG$boardStartBootloaderIfNeeded$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbPowerPresent'
;------------------------------------------------------------
	G$usbPowerPresent$0$0 ==.
	C$board.c$142$1$1 ==.
;	libraries/src/wixel/board.c:142: BIT usbPowerPresent()
;	-----------------------------------------
;	 function usbPowerPresent
;	-----------------------------------------
_usbPowerPresent:
	C$board.c$144$1$1 ==.
;	libraries/src/wixel/board.c:144: boardDetectVbus();
	lcall	_boardDetectVbus
	C$board.c$145$1$1 ==.
;	libraries/src/wixel/board.c:145: return vbusHighBit;
	mov	c,_vbusHighBit
	C$board.c$146$1$1 ==.
	XG$usbPowerPresent$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vinPowerPresent'
;------------------------------------------------------------
	G$vinPowerPresent$0$0 ==.
	C$board.c$148$1$1 ==.
;	libraries/src/wixel/board.c:148: BIT vinPowerPresent()
;	-----------------------------------------
;	 function vinPowerPresent
;	-----------------------------------------
_vinPowerPresent:
	C$board.c$150$1$1 ==.
;	libraries/src/wixel/board.c:150: return P2_3;       // Read VIN_IN.
	mov	c,_P2_3
	C$board.c$151$1$1 ==.
	XG$vinPowerPresent$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disableUsbPullup'
;------------------------------------------------------------
	G$disableUsbPullup$0$0 ==.
	C$board.c$153$1$1 ==.
;	libraries/src/wixel/board.c:153: void disableUsbPullup()
;	-----------------------------------------
;	 function disableUsbPullup
;	-----------------------------------------
_disableUsbPullup:
	C$board.c$155$1$1 ==.
;	libraries/src/wixel/board.c:155: P2DIR &= ~(1<<0);  // Make P2_0 be a floating input.
	mov	r7,_P2DIR
	anl	ar7,#0xFE
	mov	_P2DIR,r7
	C$board.c$156$1$1 ==.
	XG$disableUsbPullup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableUsbPullup'
;------------------------------------------------------------
	G$enableUsbPullup$0$0 ==.
	C$board.c$158$1$1 ==.
;	libraries/src/wixel/board.c:158: void enableUsbPullup()
;	-----------------------------------------
;	 function enableUsbPullup
;	-----------------------------------------
_enableUsbPullup:
	C$board.c$160$1$1 ==.
;	libraries/src/wixel/board.c:160: P2_0 = 1;
	setb	_P2_0
	C$board.c$161$1$1 ==.
;	libraries/src/wixel/board.c:161: P2DIR |= (1<<0);   // Drive P2_0 high.
	orl	_P2DIR,#0x01
	C$board.c$162$1$1 ==.
	XG$enableUsbPullup$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
