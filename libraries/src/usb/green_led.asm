;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:07 2016
;--------------------------------------------------------
	.module green_led
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _getMs
	.globl _usbSuspended
	.globl _usbBlinkStart
	.globl _usbLastActivity
	.globl _usbBlinkActive
	.globl _usbShowStatusWithGreenLed
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fgreen_led$P0$0$0 == 0x0080
_P0	=	0x0080
Fgreen_led$SP$0$0 == 0x0081
_SP	=	0x0081
Fgreen_led$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fgreen_led$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fgreen_led$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fgreen_led$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fgreen_led$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fgreen_led$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fgreen_led$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fgreen_led$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fgreen_led$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fgreen_led$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fgreen_led$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fgreen_led$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fgreen_led$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fgreen_led$P1$0$0 == 0x0090
_P1	=	0x0090
Fgreen_led$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fgreen_led$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fgreen_led$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fgreen_led$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fgreen_led$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fgreen_led$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fgreen_led$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fgreen_led$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fgreen_led$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fgreen_led$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fgreen_led$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fgreen_led$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fgreen_led$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fgreen_led$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fgreen_led$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fgreen_led$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fgreen_led$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fgreen_led$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fgreen_led$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fgreen_led$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fgreen_led$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fgreen_led$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fgreen_led$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fgreen_led$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fgreen_led$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fgreen_led$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fgreen_led$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fgreen_led$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fgreen_led$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fgreen_led$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fgreen_led$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fgreen_led$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fgreen_led$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fgreen_led$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fgreen_led$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fgreen_led$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fgreen_led$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fgreen_led$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fgreen_led$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fgreen_led$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fgreen_led$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fgreen_led$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fgreen_led$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fgreen_led$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fgreen_led$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fgreen_led$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fgreen_led$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fgreen_led$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fgreen_led$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fgreen_led$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fgreen_led$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fgreen_led$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fgreen_led$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fgreen_led$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fgreen_led$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fgreen_led$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fgreen_led$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fgreen_led$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fgreen_led$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fgreen_led$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fgreen_led$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fgreen_led$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fgreen_led$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fgreen_led$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fgreen_led$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fgreen_led$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fgreen_led$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fgreen_led$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fgreen_led$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fgreen_led$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fgreen_led$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fgreen_led$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fgreen_led$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fgreen_led$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fgreen_led$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fgreen_led$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fgreen_led$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fgreen_led$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fgreen_led$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fgreen_led$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fgreen_led$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fgreen_led$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fgreen_led$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fgreen_led$B$0$0 == 0x00f0
_B	=	0x00f0
Fgreen_led$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fgreen_led$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fgreen_led$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fgreen_led$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fgreen_led$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fgreen_led$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fgreen_led$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fgreen_led$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fgreen_led$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fgreen_led$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fgreen_led$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fgreen_led$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fgreen_led$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fgreen_led$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fgreen_led$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fgreen_led$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fgreen_led$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fgreen_led$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fgreen_led$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fgreen_led$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fgreen_led$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fgreen_led$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fgreen_led$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fgreen_led$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fgreen_led$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fgreen_led$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fgreen_led$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fgreen_led$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fgreen_led$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fgreen_led$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fgreen_led$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fgreen_led$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fgreen_led$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fgreen_led$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fgreen_led$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fgreen_led$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fgreen_led$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fgreen_led$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fgreen_led$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fgreen_led$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fgreen_led$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fgreen_led$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fgreen_led$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fgreen_led$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fgreen_led$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fgreen_led$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fgreen_led$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fgreen_led$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fgreen_led$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fgreen_led$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fgreen_led$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fgreen_led$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fgreen_led$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fgreen_led$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fgreen_led$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fgreen_led$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fgreen_led$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fgreen_led$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fgreen_led$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fgreen_led$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fgreen_led$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fgreen_led$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fgreen_led$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fgreen_led$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fgreen_led$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fgreen_led$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fgreen_led$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fgreen_led$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fgreen_led$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fgreen_led$EA$0$0 == 0x00af
_EA	=	0x00af
Fgreen_led$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fgreen_led$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fgreen_led$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fgreen_led$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fgreen_led$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fgreen_led$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fgreen_led$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fgreen_led$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fgreen_led$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fgreen_led$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fgreen_led$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fgreen_led$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fgreen_led$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fgreen_led$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fgreen_led$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fgreen_led$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fgreen_led$P$0$0 == 0x00d0
_P	=	0x00d0
Fgreen_led$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fgreen_led$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fgreen_led$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fgreen_led$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fgreen_led$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fgreen_led$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fgreen_led$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fgreen_led$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fgreen_led$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fgreen_led$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fgreen_led$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fgreen_led$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fgreen_led$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fgreen_led$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fgreen_led$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fgreen_led$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fgreen_led$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fgreen_led$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fgreen_led$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fgreen_led$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fgreen_led$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fgreen_led$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fgreen_led$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fgreen_led$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fgreen_led$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fgreen_led$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fgreen_led$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fgreen_led$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fgreen_led$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fgreen_led$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fgreen_led$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fgreen_led$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fgreen_led$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fgreen_led$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fgreen_led$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fgreen_led$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fgreen_led$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fgreen_led$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fgreen_led$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fgreen_led$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fgreen_led$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fgreen_led$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fgreen_led$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fgreen_led$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fgreen_led$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fgreen_led$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fgreen_led$U1MODE$0$0 == 0x00ff
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
G$usbBlinkActive$0$0==.
_usbBlinkActive::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
G$usbLastActivity$0$0==.
_usbLastActivity::
	.ds 1
G$usbBlinkStart$0$0==.
_usbBlinkStart::
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fgreen_led$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fgreen_led$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fgreen_led$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fgreen_led$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fgreen_led$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fgreen_led$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fgreen_led$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fgreen_led$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fgreen_led$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fgreen_led$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fgreen_led$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fgreen_led$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fgreen_led$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fgreen_led$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fgreen_led$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fgreen_led$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fgreen_led$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fgreen_led$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fgreen_led$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fgreen_led$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fgreen_led$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fgreen_led$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fgreen_led$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fgreen_led$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fgreen_led$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fgreen_led$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fgreen_led$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fgreen_led$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fgreen_led$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fgreen_led$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fgreen_led$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fgreen_led$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fgreen_led$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fgreen_led$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fgreen_led$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fgreen_led$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fgreen_led$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fgreen_led$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fgreen_led$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fgreen_led$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fgreen_led$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fgreen_led$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fgreen_led$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fgreen_led$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fgreen_led$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fgreen_led$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fgreen_led$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fgreen_led$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fgreen_led$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fgreen_led$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fgreen_led$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fgreen_led$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fgreen_led$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fgreen_led$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fgreen_led$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fgreen_led$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fgreen_led$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fgreen_led$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fgreen_led$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fgreen_led$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fgreen_led$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fgreen_led$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fgreen_led$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fgreen_led$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fgreen_led$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fgreen_led$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fgreen_led$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fgreen_led$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fgreen_led$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fgreen_led$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fgreen_led$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fgreen_led$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fgreen_led$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fgreen_led$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fgreen_led$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fgreen_led$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fgreen_led$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fgreen_led$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fgreen_led$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fgreen_led$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fgreen_led$USBF5$0$0 == 0xde2a
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
	G$usbShowStatusWithGreenLed$0$0 ==.
	C$green_led.c$9$1$1 ==.
;	libraries/src/usb/green_led.c:9: BIT usbBlinkActive = 0;
	clr	_usbBlinkActive
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
;Allocation info for local variables in function 'usbShowStatusWithGreenLed'
;------------------------------------------------------------
	G$usbShowStatusWithGreenLed$0$0 ==.
	C$green_led.c$13$0$0 ==.
;	libraries/src/usb/green_led.c:13: void usbShowStatusWithGreenLed()
;	-----------------------------------------
;	 function usbShowStatusWithGreenLed
;	-----------------------------------------
_usbShowStatusWithGreenLed:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$green_led.c$15$1$1 ==.
;	libraries/src/usb/green_led.c:15: if (usbActivityFlag)
	C$green_led.c$18$2$2 ==.
;	libraries/src/usb/green_led.c:18: usbActivityFlag = 0;
	jbc	_usbActivityFlag,00131$
	sjmp	00104$
00131$:
	C$green_led.c$21$2$2 ==.
;	libraries/src/usb/green_led.c:21: usbLastActivity = USBFRML;
	mov	dptr,#_USBFRML
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_usbLastActivity
	movx	@r0,a
	C$green_led.c$25$2$2 ==.
;	libraries/src/usb/green_led.c:25: if (!usbBlinkActive)
	jb	_usbBlinkActive,00104$
	C$green_led.c$27$3$3 ==.
;	libraries/src/usb/green_led.c:27: usbBlinkActive = 1;
	setb	_usbBlinkActive
	C$green_led.c$28$3$3 ==.
;	libraries/src/usb/green_led.c:28: usbBlinkStart = USBFRML;
	mov	dptr,#_USBFRML
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_usbBlinkStart
	movx	@r0,a
00104$:
	C$green_led.c$32$1$1 ==.
;	libraries/src/usb/green_led.c:32: if (usbSuspended() || usbDeviceState == USB_STATE_DETACHED)
	lcall	_usbSuspended
	jc	00113$
	mov	dptr,#_usbDeviceState
	movx	a,@dptr
	mov	r7,a
	jnz	00114$
00113$:
	C$green_led.c$34$3$5 ==.
;	libraries/src/usb/green_led.c:34: LED_GREEN(0);                         // We aren't connected to USB, or we are in suspend
	mov	r6,_P2DIR
	anl	ar6,#0xEF
	mov	_P2DIR,r6
	sjmp	00117$
00114$:
	C$green_led.c$37$1$1 ==.
;	libraries/src/usb/green_led.c:37: else if (usbDeviceState == USB_STATE_CONFIGURED)
	cjne	r7,#0x10,00111$
	C$green_led.c$39$2$6 ==.
;	libraries/src/usb/green_led.c:39: if (usbBlinkActive)
	jnb	_usbBlinkActive,00108$
	C$green_led.c$41$4$8 ==.
;	libraries/src/usb/green_led.c:41: LED_GREEN((USBFRML - usbBlinkStart) & 64);
	mov	dptr,#_USBFRML
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r0,#_usbBlinkStart
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	a,r7
	clr	c
	subb	a,r4
	mov	r7,a
	mov	a,r6
	subb	a,r5
	mov	r6,a
	mov	a,r7
	jnb	acc.6,00119$
	orl	_P2DIR,#0x10
	sjmp	00120$
00119$:
	mov	r7,_P2DIR
	anl	ar7,#0xEF
	mov	_P2DIR,r7
00120$:
	C$green_led.c$43$3$7 ==.
;	libraries/src/usb/green_led.c:43: if ((uint8)(USBFRML - usbLastActivity) > 96)
	mov	dptr,#_USBFRML
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_usbLastActivity
	setb	c
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov  r7,a
	add	a,#0xff - 0x60
	jnc	00117$
	C$green_led.c$45$4$9 ==.
;	libraries/src/usb/green_led.c:45: usbBlinkActive = 0;
	clr	_usbBlinkActive
	sjmp	00117$
00108$:
	C$green_led.c$50$4$11 ==.
;	libraries/src/usb/green_led.c:50: LED_GREEN(1);  // On solid because we are properly connected.
	orl	_P2DIR,#0x10
	sjmp	00117$
00111$:
	C$green_led.c$57$3$13 ==.
;	libraries/src/usb/green_led.c:57: LED_GREEN(getMs() >> 9 & 1);           // Blink with a period of 1024 ms.
	lcall	_getMs
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r5
	rr	a
	anl	a,#0x01
	mov	r4,a
	jz	00121$
	orl	_P2DIR,#0x10
	sjmp	00117$
00121$:
	mov	r7,_P2DIR
	anl	ar7,#0xEF
	mov	_P2DIR,r7
00117$:
	C$green_led.c$59$1$1 ==.
	XG$usbShowStatusWithGreenLed$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
