;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:08 2016
;--------------------------------------------------------
	.module radio_registers
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _radioRegistersInit
	.globl _radioCrcPassed
	.globl _radioLqi
	.globl _radioRssi
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fradio_registers$P0$0$0 == 0x0080
_P0	=	0x0080
Fradio_registers$SP$0$0 == 0x0081
_SP	=	0x0081
Fradio_registers$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fradio_registers$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fradio_registers$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fradio_registers$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fradio_registers$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fradio_registers$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fradio_registers$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fradio_registers$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fradio_registers$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fradio_registers$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fradio_registers$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fradio_registers$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fradio_registers$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fradio_registers$P1$0$0 == 0x0090
_P1	=	0x0090
Fradio_registers$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fradio_registers$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fradio_registers$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fradio_registers$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fradio_registers$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fradio_registers$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fradio_registers$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fradio_registers$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fradio_registers$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fradio_registers$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fradio_registers$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fradio_registers$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fradio_registers$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fradio_registers$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fradio_registers$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fradio_registers$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fradio_registers$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fradio_registers$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fradio_registers$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fradio_registers$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fradio_registers$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fradio_registers$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fradio_registers$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fradio_registers$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fradio_registers$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fradio_registers$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fradio_registers$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fradio_registers$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fradio_registers$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fradio_registers$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fradio_registers$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fradio_registers$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fradio_registers$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fradio_registers$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fradio_registers$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fradio_registers$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fradio_registers$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fradio_registers$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fradio_registers$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fradio_registers$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fradio_registers$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fradio_registers$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fradio_registers$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fradio_registers$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fradio_registers$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fradio_registers$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fradio_registers$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fradio_registers$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fradio_registers$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fradio_registers$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fradio_registers$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fradio_registers$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fradio_registers$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fradio_registers$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fradio_registers$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fradio_registers$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fradio_registers$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fradio_registers$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fradio_registers$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fradio_registers$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fradio_registers$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fradio_registers$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fradio_registers$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fradio_registers$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fradio_registers$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fradio_registers$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fradio_registers$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fradio_registers$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fradio_registers$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fradio_registers$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fradio_registers$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fradio_registers$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fradio_registers$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fradio_registers$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fradio_registers$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fradio_registers$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fradio_registers$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fradio_registers$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fradio_registers$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fradio_registers$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fradio_registers$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fradio_registers$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fradio_registers$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fradio_registers$B$0$0 == 0x00f0
_B	=	0x00f0
Fradio_registers$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fradio_registers$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fradio_registers$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fradio_registers$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fradio_registers$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fradio_registers$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fradio_registers$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fradio_registers$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fradio_registers$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fradio_registers$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fradio_registers$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fradio_registers$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fradio_registers$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fradio_registers$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fradio_registers$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fradio_registers$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fradio_registers$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fradio_registers$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fradio_registers$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fradio_registers$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fradio_registers$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fradio_registers$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fradio_registers$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fradio_registers$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fradio_registers$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fradio_registers$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fradio_registers$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fradio_registers$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fradio_registers$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fradio_registers$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fradio_registers$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fradio_registers$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fradio_registers$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fradio_registers$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fradio_registers$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fradio_registers$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fradio_registers$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fradio_registers$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fradio_registers$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fradio_registers$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fradio_registers$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fradio_registers$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fradio_registers$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fradio_registers$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fradio_registers$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fradio_registers$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fradio_registers$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fradio_registers$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fradio_registers$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fradio_registers$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fradio_registers$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fradio_registers$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fradio_registers$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fradio_registers$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fradio_registers$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fradio_registers$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fradio_registers$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fradio_registers$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fradio_registers$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fradio_registers$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fradio_registers$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fradio_registers$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fradio_registers$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fradio_registers$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fradio_registers$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fradio_registers$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fradio_registers$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fradio_registers$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fradio_registers$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fradio_registers$EA$0$0 == 0x00af
_EA	=	0x00af
Fradio_registers$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fradio_registers$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fradio_registers$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fradio_registers$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fradio_registers$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fradio_registers$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fradio_registers$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fradio_registers$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fradio_registers$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fradio_registers$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fradio_registers$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fradio_registers$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fradio_registers$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fradio_registers$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fradio_registers$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fradio_registers$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fradio_registers$P$0$0 == 0x00d0
_P	=	0x00d0
Fradio_registers$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fradio_registers$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fradio_registers$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fradio_registers$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fradio_registers$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fradio_registers$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fradio_registers$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fradio_registers$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fradio_registers$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fradio_registers$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fradio_registers$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fradio_registers$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fradio_registers$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fradio_registers$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fradio_registers$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fradio_registers$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fradio_registers$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fradio_registers$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fradio_registers$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fradio_registers$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fradio_registers$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fradio_registers$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fradio_registers$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fradio_registers$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fradio_registers$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fradio_registers$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fradio_registers$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fradio_registers$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fradio_registers$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fradio_registers$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fradio_registers$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fradio_registers$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fradio_registers$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fradio_registers$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fradio_registers$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fradio_registers$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fradio_registers$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fradio_registers$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fradio_registers$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fradio_registers$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fradio_registers$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fradio_registers$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fradio_registers$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fradio_registers$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fradio_registers$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fradio_registers$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fradio_registers$U1MODE$0$0 == 0x00ff
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
Fradio_registers$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fradio_registers$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fradio_registers$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fradio_registers$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fradio_registers$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fradio_registers$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fradio_registers$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fradio_registers$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fradio_registers$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fradio_registers$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fradio_registers$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fradio_registers$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fradio_registers$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fradio_registers$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fradio_registers$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fradio_registers$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fradio_registers$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fradio_registers$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fradio_registers$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fradio_registers$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fradio_registers$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fradio_registers$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fradio_registers$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fradio_registers$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fradio_registers$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fradio_registers$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fradio_registers$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fradio_registers$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fradio_registers$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fradio_registers$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fradio_registers$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fradio_registers$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fradio_registers$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fradio_registers$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fradio_registers$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fradio_registers$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fradio_registers$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fradio_registers$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fradio_registers$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fradio_registers$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fradio_registers$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fradio_registers$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fradio_registers$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fradio_registers$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fradio_registers$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fradio_registers$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fradio_registers$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fradio_registers$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fradio_registers$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fradio_registers$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fradio_registers$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fradio_registers$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fradio_registers$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fradio_registers$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fradio_registers$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fradio_registers$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fradio_registers$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fradio_registers$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fradio_registers$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fradio_registers$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fradio_registers$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fradio_registers$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fradio_registers$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fradio_registers$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fradio_registers$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fradio_registers$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fradio_registers$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fradio_registers$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fradio_registers$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fradio_registers$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fradio_registers$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fradio_registers$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fradio_registers$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fradio_registers$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fradio_registers$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fradio_registers$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fradio_registers$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fradio_registers$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fradio_registers$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fradio_registers$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fradio_registers$USBF5$0$0 == 0xde2a
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
;Allocation info for local variables in function 'radioRegistersInit'
;------------------------------------------------------------
	G$radioRegistersInit$0$0 ==.
	C$radio_registers.c$4$0$0 ==.
;	libraries/src/radio_registers/radio_registers.c:4: void radioRegistersInit()
;	-----------------------------------------
;	 function radioRegistersInit
;	-----------------------------------------
_radioRegistersInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$radio_registers.c$8$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:8: IOCFG0   =0x0E;
	mov	dptr,#_IOCFG0
	mov	a,#0x0E
	movx	@dptr,a
	C$radio_registers.c$9$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:9: CHANNR   =0x00;
	mov	dptr,#_CHANNR
	clr	a
	movx	@dptr,a
	C$radio_registers.c$10$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:10: FSCTRL1  =0x0A;
	mov	dptr,#_FSCTRL1
	mov	a,#0x0A
	movx	@dptr,a
	C$radio_registers.c$11$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:11: FSCTRL0	 =0x00;
	mov	dptr,#_FSCTRL0
	clr	a
	movx	@dptr,a
	C$radio_registers.c$12$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:12: FREQ2    =0x65;
	mov	dptr,#_FREQ2
	mov	a,#0x65
	movx	@dptr,a
	C$radio_registers.c$13$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:13: FREQ1    =0x0A;
	mov	dptr,#_FREQ1
	mov	a,#0x0A
	movx	@dptr,a
	C$radio_registers.c$14$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:14: FREQ0    =0xAA;
	mov	dptr,#_FREQ0
	mov	a,#0xAA
	movx	@dptr,a
	C$radio_registers.c$15$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:15: MDMCFG4  =0x4B;
	mov	dptr,#_MDMCFG4
	mov	a,#0x4B
	movx	@dptr,a
	C$radio_registers.c$16$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:16: MDMCFG3  =0x11;
	mov	dptr,#_MDMCFG3
	mov	a,#0x11
	movx	@dptr,a
	C$radio_registers.c$17$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:17: MDMCFG2  =0x73;
	mov	dptr,#_MDMCFG2
	mov	a,#0x73
	movx	@dptr,a
	C$radio_registers.c$18$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:18: MDMCFG1  =0x03;
	mov	dptr,#_MDMCFG1
	mov	a,#0x03
	movx	@dptr,a
	C$radio_registers.c$19$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:19: MDMCFG0  =0x55;
	mov	dptr,#_MDMCFG0
	mov	a,#0x55
	movx	@dptr,a
	C$radio_registers.c$20$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:20: DEVIATN  =0x00;
	mov	dptr,#_DEVIATN
	clr	a
	movx	@dptr,a
	C$radio_registers.c$21$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:21: MCSM0    =0x14;
	mov	dptr,#_MCSM0
	mov	a,#0x14
	movx	@dptr,a
	C$radio_registers.c$22$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:22: FOCCFG   =0x0A;
	mov	dptr,#_FOCCFG
	mov	a,#0x0A
	movx	@dptr,a
	C$radio_registers.c$24$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:24: FSCAL3   =0xA9;
	mov	dptr,#_FSCAL3
	mov	a,#0xA9
	movx	@dptr,a
	C$radio_registers.c$25$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:25: FSCAL2   =0x0A;
	mov	dptr,#_FSCAL2
	mov	a,#0x0A
	movx	@dptr,a
	C$radio_registers.c$26$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:26: FSCAL1   =0x20;
	mov	dptr,#_FSCAL1
	mov	a,#0x20
	movx	@dptr,a
	C$radio_registers.c$27$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:27: FSCAL0   =0x0D;
	mov	dptr,#_FSCAL0
	mov	a,#0x0D
	movx	@dptr,a
	C$radio_registers.c$29$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:29: TEST2    =0x81;
	mov	dptr,#_TEST2
	mov	a,#0x81
	movx	@dptr,a
	C$radio_registers.c$30$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:30: TEST1    =0x35;
	mov	dptr,#_TEST1
	mov	a,#0x35
	movx	@dptr,a
	C$radio_registers.c$31$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:31: TEST0    =0x0B;
	mov	dptr,#_TEST0
	mov	a,#0x0B
	movx	@dptr,a
	C$radio_registers.c$33$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:33: PA_TABLE0=0x00;
	mov	dptr,#_PA_TABLE0
	clr	a
	movx	@dptr,a
	C$radio_registers.c$35$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:35: SYNC1	 =0xD3;
	mov	dptr,#_SYNC1
	mov	a,#0xD3
	movx	@dptr,a
	C$radio_registers.c$36$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:36: SYNC0	 =0x91;
	mov	dptr,#_SYNC0
	mov	a,#0x91
	movx	@dptr,a
	C$radio_registers.c$38$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:38: ADDR	 =0x00;
	mov	dptr,#_ADDR
	clr	a
	movx	@dptr,a
	C$radio_registers.c$40$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:40: FREND1	 =0xB6;
	mov	dptr,#_FREND1
	mov	a,#0xB6
	movx	@dptr,a
	C$radio_registers.c$41$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:41: FREND0	 =0x10;
	mov	dptr,#_FREND0
	mov	a,#0x10
	movx	@dptr,a
	C$radio_registers.c$43$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:43: BSCFG	 =0x6C;
	mov	dptr,#_BSCFG
	mov	a,#0x6C
	movx	@dptr,a
	C$radio_registers.c$45$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:45: AGCCTRL2 =0x44;
	mov	dptr,#_AGCCTRL2
	mov	a,#0x44
	movx	@dptr,a
	C$radio_registers.c$47$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:47: AGCCTRL1 =0x00;
	mov	dptr,#_AGCCTRL1
	clr	a
	movx	@dptr,a
	C$radio_registers.c$51$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:51: AGCCTRL0 =0xB2;
	mov	dptr,#_AGCCTRL0
	mov	a,#0xB2
	movx	@dptr,a
	C$radio_registers.c$54$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:54: PKTCTRL1 =0x04;
	mov	dptr,#_PKTCTRL1
	mov	a,#0x04
	movx	@dptr,a
	C$radio_registers.c$55$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:55: PKTCTRL0 =0x05;
	mov	dptr,#_PKTCTRL0
	mov	a,#0x05
	movx	@dptr,a
	C$radio_registers.c$57$1$1 ==.
	XG$radioRegistersInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioCrcPassed'
;------------------------------------------------------------
	G$radioCrcPassed$0$0 ==.
	C$radio_registers.c$59$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:59: BIT radioCrcPassed()
;	-----------------------------------------
;	 function radioCrcPassed
;	-----------------------------------------
_radioCrcPassed:
	C$radio_registers.c$61$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:61: return (LQI & 0x80) ? 1 : 0;
	mov	dptr,#_LQI
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	add	a,#0xff
	C$radio_registers.c$62$1$1 ==.
	XG$radioCrcPassed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioLqi'
;------------------------------------------------------------
	G$radioLqi$0$0 ==.
	C$radio_registers.c$64$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:64: uint8 radioLqi()
;	-----------------------------------------
;	 function radioLqi
;	-----------------------------------------
_radioLqi:
	C$radio_registers.c$66$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:66: return LQI & 0x7F;
	mov	dptr,#_LQI
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x7F
	anl	a,r7
	mov	dpl,a
	C$radio_registers.c$67$1$1 ==.
	XG$radioLqi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRssi'
;------------------------------------------------------------
	G$radioRssi$0$0 ==.
	C$radio_registers.c$69$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:69: int8 radioRssi()
;	-----------------------------------------
;	 function radioRssi
;	-----------------------------------------
_radioRssi:
	C$radio_registers.c$71$1$1 ==.
;	libraries/src/radio_registers/radio_registers.c:71: return ((int8)RSSI)/2 - RSSI_OFFSET;
	mov	dptr,#_RSSI
	movx	a,@dptr
	mov	r7,a
	clr	F0
	mov	b,#0x02
	mov	a,r7
	jnb	acc.7,00103$
	cpl	F0
	cpl	a
	inc	a
00103$:
	div	ab
	jnb	F0,00104$
	cpl	a
	inc	a
00104$:
	add	a,#0xB9
	mov	dpl,a
	C$radio_registers.c$72$1$1 ==.
	XG$radioRssi$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
