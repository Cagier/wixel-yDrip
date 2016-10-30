;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:10 2016
;--------------------------------------------------------
	.module uart0
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uartTxPendingBytes
	.globl _uart0TxSend_PARM_2
	.globl _uart0RxBufferFullOccurred
	.globl _uart0RxFramingErrorOccurred
	.globl _uart0RxParityErrorOccurred
	.globl _uart0Init
	.globl _uart0SetBaudRate
	.globl _uart0SetParity
	.globl _uart0SetStopBits
	.globl _uart0TxAvailable
	.globl _uart0TxSend
	.globl _uart0TxSendByte
	.globl _uart0RxAvailable
	.globl _uart0RxReceiveByte
	.globl _ISR_UTX0
	.globl _ISR_URX0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fuart0$P0$0$0 == 0x0080
_P0	=	0x0080
Fuart0$SP$0$0 == 0x0081
_SP	=	0x0081
Fuart0$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fuart0$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fuart0$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fuart0$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fuart0$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fuart0$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fuart0$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fuart0$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fuart0$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fuart0$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fuart0$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fuart0$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fuart0$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fuart0$P1$0$0 == 0x0090
_P1	=	0x0090
Fuart0$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fuart0$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fuart0$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fuart0$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fuart0$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fuart0$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fuart0$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fuart0$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fuart0$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fuart0$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fuart0$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fuart0$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fuart0$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fuart0$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fuart0$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fuart0$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fuart0$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fuart0$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fuart0$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fuart0$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fuart0$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fuart0$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fuart0$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fuart0$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fuart0$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fuart0$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fuart0$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fuart0$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fuart0$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fuart0$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fuart0$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fuart0$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fuart0$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fuart0$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fuart0$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fuart0$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fuart0$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fuart0$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fuart0$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fuart0$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fuart0$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fuart0$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fuart0$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fuart0$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fuart0$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fuart0$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fuart0$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fuart0$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fuart0$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fuart0$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fuart0$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fuart0$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fuart0$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fuart0$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fuart0$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fuart0$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fuart0$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fuart0$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fuart0$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fuart0$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fuart0$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fuart0$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fuart0$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fuart0$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fuart0$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fuart0$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fuart0$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fuart0$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fuart0$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fuart0$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fuart0$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fuart0$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fuart0$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fuart0$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fuart0$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fuart0$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fuart0$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fuart0$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fuart0$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fuart0$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fuart0$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fuart0$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fuart0$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fuart0$B$0$0 == 0x00f0
_B	=	0x00f0
Fuart0$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fuart0$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fuart0$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fuart0$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fuart0$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fuart0$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fuart0$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fuart0$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fuart0$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fuart0$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fuart0$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fuart0$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fuart0$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fuart0$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fuart0$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fuart0$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fuart0$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fuart0$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fuart0$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fuart0$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fuart0$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fuart0$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fuart0$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fuart0$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fuart0$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fuart0$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fuart0$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fuart0$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fuart0$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fuart0$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fuart0$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fuart0$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fuart0$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fuart0$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fuart0$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fuart0$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fuart0$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fuart0$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fuart0$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fuart0$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fuart0$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fuart0$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fuart0$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fuart0$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fuart0$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fuart0$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fuart0$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fuart0$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fuart0$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fuart0$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fuart0$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fuart0$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fuart0$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fuart0$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fuart0$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fuart0$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fuart0$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fuart0$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fuart0$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fuart0$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fuart0$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fuart0$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fuart0$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fuart0$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fuart0$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fuart0$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fuart0$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fuart0$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fuart0$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fuart0$EA$0$0 == 0x00af
_EA	=	0x00af
Fuart0$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fuart0$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fuart0$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fuart0$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fuart0$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fuart0$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fuart0$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fuart0$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fuart0$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fuart0$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fuart0$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fuart0$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fuart0$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fuart0$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fuart0$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fuart0$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fuart0$P$0$0 == 0x00d0
_P	=	0x00d0
Fuart0$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fuart0$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fuart0$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fuart0$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fuart0$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fuart0$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fuart0$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fuart0$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fuart0$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fuart0$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fuart0$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fuart0$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fuart0$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fuart0$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fuart0$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fuart0$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fuart0$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fuart0$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fuart0$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fuart0$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fuart0$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fuart0$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fuart0$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fuart0$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fuart0$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fuart0$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fuart0$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fuart0$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fuart0$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fuart0$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fuart0$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fuart0$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fuart0$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fuart0$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fuart0$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fuart0$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fuart0$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fuart0$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fuart0$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fuart0$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fuart0$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fuart0$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fuart0$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fuart0$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fuart0$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fuart0$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fuart0$U1MODE$0$0 == 0x00ff
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
Fuart0$uartTxBufferMainLoopIndex$0$0==.
_uartTxBufferMainLoopIndex:
	.ds 1
Fuart0$uartTxBufferInterruptIndex$0$0==.
_uartTxBufferInterruptIndex:
	.ds 1
Fuart0$uartRxBufferMainLoopIndex$0$0==.
_uartRxBufferMainLoopIndex:
	.ds 1
Fuart0$uartRxBufferInterruptIndex$0$0==.
_uartRxBufferInterruptIndex:
	.ds 1
Luart0.uart0SetBaudRate$sloc0$1$0==.
_uart0SetBaudRate_sloc0_1_0:
	.ds 4
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
G$uart0RxParityErrorOccurred$0$0==.
_uart0RxParityErrorOccurred::
	.ds 1
G$uart0RxFramingErrorOccurred$0$0==.
_uart0RxFramingErrorOccurred::
	.ds 1
G$uart0RxBufferFullOccurred$0$0==.
_uart0RxBufferFullOccurred::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Luart0.uart0TxSend$size$1$1==.
_uart0TxSend_PARM_2:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fuart0$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fuart0$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fuart0$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fuart0$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fuart0$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fuart0$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fuart0$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fuart0$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fuart0$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fuart0$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fuart0$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fuart0$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fuart0$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fuart0$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fuart0$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fuart0$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fuart0$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fuart0$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fuart0$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fuart0$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fuart0$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fuart0$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fuart0$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fuart0$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fuart0$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fuart0$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fuart0$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fuart0$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fuart0$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fuart0$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fuart0$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fuart0$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fuart0$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fuart0$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fuart0$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fuart0$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fuart0$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fuart0$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fuart0$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fuart0$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fuart0$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fuart0$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fuart0$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fuart0$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fuart0$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fuart0$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fuart0$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fuart0$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fuart0$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fuart0$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fuart0$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fuart0$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fuart0$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fuart0$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fuart0$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fuart0$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fuart0$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fuart0$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fuart0$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fuart0$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fuart0$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fuart0$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fuart0$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fuart0$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fuart0$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fuart0$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fuart0$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fuart0$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fuart0$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fuart0$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fuart0$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fuart0$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fuart0$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fuart0$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fuart0$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fuart0$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fuart0$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fuart0$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fuart0$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fuart0$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fuart0$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
Fuart0$uartTxBuffer$0$0==.
_uartTxBuffer:
	.ds 256
Fuart0$uartRxBuffer$0$0==.
_uartRxBuffer:
	.ds 256
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
;Allocation info for local variables in function 'uart0Init'
;------------------------------------------------------------
	G$uart0Init$0$0 ==.
	C$uart0.c$87$0$0 ==.
;	libraries/src/uart/uart0.c:87: void uartNInit(void)
;	-----------------------------------------
;	 function uart0Init
;	-----------------------------------------
_uart0Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$uart0.c$99$1$1 ==.
;	libraries/src/uart/uart0.c:99: uartTxBufferMainLoopIndex = 0;
	mov	_uartTxBufferMainLoopIndex,#0x00
	C$uart0.c$100$1$1 ==.
;	libraries/src/uart/uart0.c:100: uartTxBufferInterruptIndex = 0;
	mov	_uartTxBufferInterruptIndex,#0x00
	C$uart0.c$101$1$1 ==.
;	libraries/src/uart/uart0.c:101: uartRxBufferMainLoopIndex = 0;
	mov	_uartRxBufferMainLoopIndex,#0x00
	C$uart0.c$102$1$1 ==.
;	libraries/src/uart/uart0.c:102: uartRxBufferInterruptIndex = 0;
	mov	_uartRxBufferInterruptIndex,#0x00
	C$uart0.c$103$1$1 ==.
;	libraries/src/uart/uart0.c:103: uartNRxParityErrorOccurred = 0;
	clr	_uart0RxParityErrorOccurred
	C$uart0.c$104$1$1 ==.
;	libraries/src/uart/uart0.c:104: uartNRxFramingErrorOccurred = 0;
	clr	_uart0RxFramingErrorOccurred
	C$uart0.c$105$1$1 ==.
;	libraries/src/uart/uart0.c:105: uartNRxBufferFullOccurred = 0;
	clr	_uart0RxBufferFullOccurred
	C$uart0.c$112$1$1 ==.
;	libraries/src/uart/uart0.c:112: P2DIR &= ~0xC0;  // P2DIR.PRIP0 (7:6) = 00 : USART0 takes priority over USART1.
	mov	r7,_P2DIR
	anl	ar7,#0x3F
	mov	_P2DIR,r7
	C$uart0.c$113$1$1 ==.
;	libraries/src/uart/uart0.c:113: PERCFG &= ~0x01; // PERCFG.U0CFG (0) = 0 (Alt. 1) : USART0 uses alt. location 1.
	mov	r7,_PERCFG
	anl	ar7,#0xFE
	mov	_PERCFG,r7
	C$uart0.c$119$1$1 ==.
;	libraries/src/uart/uart0.c:119: UNUCR = 0x82;    // Stops the "current operation" and resets settings to their defaults.
	mov	_U0UCR,#0x82
	C$uart0.c$120$1$1 ==.
;	libraries/src/uart/uart0.c:120: UNCSR |= 0xc0;   // Enable UART mode and enable receiver.  TODO: change '|=' to '='
	orl	_U0CSR,#0xC0
	C$uart0.c$125$1$1 ==.
;	libraries/src/uart/uart0.c:125: P0SEL |= (1<<3); // P0SEL.SELP0_3 = 1
	orl	_P0SEL,#0x08
	C$uart0.c$134$1$1 ==.
;	libraries/src/uart/uart0.c:134: IP0 |= (1<<INTERRUPT_PRIORITY_GROUP);
	orl	_IP0,#0x04
	C$uart0.c$135$1$1 ==.
;	libraries/src/uart/uart0.c:135: IP1 &= ~(1<<INTERRUPT_PRIORITY_GROUP);
	mov	r7,_IP1
	anl	ar7,#0xFB
	mov	_IP1,r7
	C$uart0.c$137$1$1 ==.
;	libraries/src/uart/uart0.c:137: UTXNIF = 1; // Set TX flag so the interrupt fires when we enable it for the first time.
	setb	_UTX0IF
	C$uart0.c$138$1$1 ==.
;	libraries/src/uart/uart0.c:138: URXNIF = 0; // Clear RX flag.
	clr	_URX0IF
	C$uart0.c$139$1$1 ==.
;	libraries/src/uart/uart0.c:139: URXNIE = 1; // Enable Rx interrupt.
	setb	_URX0IE
	C$uart0.c$140$1$1 ==.
;	libraries/src/uart/uart0.c:140: EA = 1;     // Enable interrupts in general.
	setb	_EA
	C$uart0.c$141$1$1 ==.
	XG$uart0Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0SetBaudRate'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uart0SetBaudRate_sloc0_1_0'
;------------------------------------------------------------
	G$uart0SetBaudRate$0$0 ==.
	C$uart0.c$143$1$1 ==.
;	libraries/src/uart/uart0.c:143: void uartNSetBaudRate(uint32 baud)
;	-----------------------------------------
;	 function uart0SetBaudRate
;	-----------------------------------------
_uart0SetBaudRate:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	C$uart0.c$149$1$1 ==.
;	libraries/src/uart/uart0.c:149: if (baud < 23 || baud > 1500000)
	clr	c
	mov	a,r7
	subb	a,#0x17
	mov	a,r6
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x00
	jc	00101$
	mov	a,#0x60
	subb	a,r7
	mov	a,#0xE3
	subb	a,r6
	mov	a,#0x16
	subb	a,r5
	clr	a
	subb	a,r4
	jnc	00114$
00101$:
	C$uart0.c$150$1$1 ==.
;	libraries/src/uart/uart0.c:150: return;
	ljmp	00110$
	C$uart0.c$153$1$1 ==.
;	libraries/src/uart/uart0.c:153: while (baud > 495782)
00114$:
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,#0xA6
	subb	a,r7
	mov	a,#0x90
	subb	a,r6
	mov	a,#0x07
	subb	a,r5
	clr	a
	subb	a,r4
	jnc	00106$
	C$uart0.c$155$2$2 ==.
;	libraries/src/uart/uart0.c:155: baudE++;
	inc	r3
	C$uart0.c$156$2$2 ==.
;	libraries/src/uart/uart0.c:156: baud /= 2;
	mov	a,r4
	clr	c
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
	sjmp	00104$
00106$:
	C$uart0.c$161$1$1 ==.
;	libraries/src/uart/uart0.c:161: baudMPlus256 = (baud * 11) + (baud * 8663 / 46875);
	mov	r0,#__mullong_PARM_2
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	mov	dptr,#(0x0B&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__mullong
	mov	_uart0SetBaudRate_sloc0_1_0,dpl
	mov	(_uart0SetBaudRate_sloc0_1_0 + 1),dph
	mov	(_uart0SetBaudRate_sloc0_1_0 + 2),b
	mov	(_uart0SetBaudRate_sloc0_1_0 + 3),a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#__mullong_PARM_2
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	mov	dptr,#0x21D7
	clr	a
	mov	b,a
	push	ar3
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#__divulong_PARM_2
	mov	a,#0x1B
	movx	@r0,a
	inc	r0
	mov	a,#0xB7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,r4
	add	a,_uart0SetBaudRate_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_uart0SetBaudRate_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r6
	addc	a,(_uart0SetBaudRate_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_uart0SetBaudRate_sloc0_1_0 + 3)
	mov	r7,a
	C$uart0.c$164$1$1 ==.
;	libraries/src/uart/uart0.c:164: while (baudMPlus256 > 0x1ff)
00107$:
	mov	a,r5
	anl	a,#0xFE
	jnz	00122$
	mov	a,r6
	jnz	00122$
	mov	a,r7
	jz	00109$
00122$:
	C$uart0.c$166$2$3 ==.
;	libraries/src/uart/uart0.c:166: baudE++;
	inc	r3
	C$uart0.c$167$2$3 ==.
;	libraries/src/uart/uart0.c:167: baudMPlus256 /= 2;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	sjmp	00107$
00109$:
	C$uart0.c$169$1$1 ==.
;	libraries/src/uart/uart0.c:169: UNGCR = baudE; // UNGCR.BAUD_E (4:0)
	mov	_U0GCR,r3
	C$uart0.c$170$1$1 ==.
;	libraries/src/uart/uart0.c:170: UNBAUD = baudMPlus256; // UNBAUD.BAUD_M (7:0) - only the lowest 8 bits of baudMPlus256 are used, so this is effectively baudMPlus256 - 256
	mov	_U0BAUD,r4
00110$:
	C$uart0.c$171$1$1 ==.
	XG$uart0SetBaudRate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0SetParity'
;------------------------------------------------------------
	G$uart0SetParity$0$0 ==.
	C$uart0.c$173$1$1 ==.
;	libraries/src/uart/uart0.c:173: void uartNSetParity(uint8 parity)
;	-----------------------------------------
;	 function uart0SetParity
;	-----------------------------------------
_uart0SetParity:
	mov	r7,dpl
	C$uart0.c$182$1$1 ==.
;	libraries/src/uart/uart0.c:182: uint8 tmp = 0;
	mov	r6,#0x00
	C$uart0.c$184$1$1 ==.
;	libraries/src/uart/uart0.c:184: switch(parity)
	cjne	r7,#0x01,00112$
	sjmp	00101$
00112$:
	cjne	r7,#0x02,00113$
	sjmp	00102$
00113$:
	cjne	r7,#0x03,00114$
	sjmp	00103$
00114$:
	C$uart0.c$186$2$2 ==.
;	libraries/src/uart/uart0.c:186: case PARITY_ODD:   tmp = 0b111 << 3; break;
	cjne	r7,#0x04,00105$
	sjmp	00104$
00101$:
	mov	r6,#0x38
	C$uart0.c$187$2$2 ==.
;	libraries/src/uart/uart0.c:187: case PARITY_EVEN:  tmp = 0b011 << 3; break;
	sjmp	00105$
00102$:
	mov	r6,#0x18
	C$uart0.c$188$2$2 ==.
;	libraries/src/uart/uart0.c:188: case PARITY_MARK:  tmp = 0b110 << 3; break;
	sjmp	00105$
00103$:
	mov	r6,#0x30
	C$uart0.c$189$2$2 ==.
;	libraries/src/uart/uart0.c:189: case PARITY_SPACE: tmp = 0b010 << 3; break;
	sjmp	00105$
00104$:
	mov	r6,#0x10
	C$uart0.c$190$1$1 ==.
;	libraries/src/uart/uart0.c:190: }
00105$:
	C$uart0.c$192$1$1 ==.
;	libraries/src/uart/uart0.c:192: UNUCR = (UNUCR & 0b01000111) | tmp;
	mov	a,#0x47
	anl	a,_U0UCR
	orl	a,r6
	mov	_U0UCR,a
	C$uart0.c$193$1$1 ==.
	XG$uart0SetParity$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0SetStopBits'
;------------------------------------------------------------
	G$uart0SetStopBits$0$0 ==.
	C$uart0.c$195$1$1 ==.
;	libraries/src/uart/uart0.c:195: void uartNSetStopBits(uint8 stopBits)
;	-----------------------------------------
;	 function uart0SetStopBits
;	-----------------------------------------
_uart0SetStopBits:
	mov	r7,dpl
	C$uart0.c$197$1$1 ==.
;	libraries/src/uart/uart0.c:197: if (stopBits == STOP_BITS_2)
	cjne	r7,#0x02,00102$
	C$uart0.c$199$2$2 ==.
;	libraries/src/uart/uart0.c:199: UNUCR |= (1<<2);    // 2 stop bits
	orl	_U0UCR,#0x04
	sjmp	00104$
00102$:
	C$uart0.c$203$2$3 ==.
;	libraries/src/uart/uart0.c:203: UNUCR &= ~(1<<2);   // 1 stop bit
	mov	r7,_U0UCR
	anl	ar7,#0xFB
	mov	_U0UCR,r7
00104$:
	C$uart0.c$206$1$1 ==.
	XG$uart0SetStopBits$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0TxAvailable'
;------------------------------------------------------------
	G$uart0TxAvailable$0$0 ==.
	C$uart0.c$208$1$1 ==.
;	libraries/src/uart/uart0.c:208: uint8 uartNTxAvailable(void)
;	-----------------------------------------
;	 function uart0TxAvailable
;	-----------------------------------------
_uart0TxAvailable:
	C$uart0.c$210$1$1 ==.
;	libraries/src/uart/uart0.c:210: return UART_TX_BUFFER_FREE_BYTES();
	mov	a,_uartTxBufferInterruptIndex
	clr	c
	subb	a,_uartTxBufferMainLoopIndex
	dec	a
	C$uart0.c$211$1$1 ==.
	XG$uart0TxAvailable$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0TxSend'
;------------------------------------------------------------
	G$uart0TxSend$0$0 ==.
	C$uart0.c$213$1$1 ==.
;	libraries/src/uart/uart0.c:213: void uartNTxSend(const uint8 XDATA * buffer, uint8 size)
;	-----------------------------------------
;	 function uart0TxSend
;	-----------------------------------------
_uart0TxSend:
	mov	r6,dpl
	mov	r7,dph
	C$uart0.c$218$1$1 ==.
;	libraries/src/uart/uart0.c:218: while (size)
	mov	r0,#_uart0TxSend_PARM_2
	movx	a,@r0
	mov	r5,a
00101$:
	mov	a,r5
	jz	00104$
	C$uart0.c$220$2$2 ==.
;	libraries/src/uart/uart0.c:220: uartTxBuffer[uartTxBufferMainLoopIndex] = *buffer;
	mov	a,_uartTxBufferMainLoopIndex
	add	a,#_uartTxBuffer
	mov	r3,a
	clr	a
	addc	a,#(_uartTxBuffer >> 8)
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$uart0.c$222$2$2 ==.
;	libraries/src/uart/uart0.c:222: buffer++;
	C$uart0.c$223$2$2 ==.
;	libraries/src/uart/uart0.c:223: uartTxBufferMainLoopIndex = (uartTxBufferMainLoopIndex + 1) & (sizeof(uartTxBuffer) - 1);
	mov	a,_uartTxBufferMainLoopIndex
	inc	a
	mov	r4,a
	mov	_uartTxBufferMainLoopIndex,r4
	C$uart0.c$224$2$2 ==.
;	libraries/src/uart/uart0.c:224: size--;
	dec	r5
	C$uart0.c$226$2$2 ==.
;	libraries/src/uart/uart0.c:226: IEN2 |= BV_UTXNIE; // Enable TX interrupt
	orl	_IEN2,#0x04
	sjmp	00101$
00104$:
	C$uart0.c$228$1$1 ==.
	XG$uart0TxSend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0TxSendByte'
;------------------------------------------------------------
	G$uart0TxSendByte$0$0 ==.
	C$uart0.c$230$1$1 ==.
;	libraries/src/uart/uart0.c:230: void uartNTxSendByte(uint8 byte)
;	-----------------------------------------
;	 function uart0TxSendByte
;	-----------------------------------------
_uart0TxSendByte:
	mov	r7,dpl
	C$uart0.c$234$1$1 ==.
;	libraries/src/uart/uart0.c:234: uartTxBuffer[uartTxBufferMainLoopIndex] = byte;
	mov	a,_uartTxBufferMainLoopIndex
	add	a,#_uartTxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_uartTxBuffer >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
	C$uart0.c$235$1$1 ==.
;	libraries/src/uart/uart0.c:235: uartTxBufferMainLoopIndex = (uartTxBufferMainLoopIndex + 1) & (sizeof(uartTxBuffer) - 1);
	mov	a,_uartTxBufferMainLoopIndex
	inc	a
	mov	r7,a
	mov	_uartTxBufferMainLoopIndex,r7
	C$uart0.c$237$1$1 ==.
;	libraries/src/uart/uart0.c:237: IEN2 |= BV_UTXNIE; // Enable TX interrupt
	orl	_IEN2,#0x04
	C$uart0.c$238$1$1 ==.
	XG$uart0TxSendByte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0RxAvailable'
;------------------------------------------------------------
	G$uart0RxAvailable$0$0 ==.
	C$uart0.c$240$1$1 ==.
;	libraries/src/uart/uart0.c:240: uint8 uartNRxAvailable(void)
;	-----------------------------------------
;	 function uart0RxAvailable
;	-----------------------------------------
_uart0RxAvailable:
	C$uart0.c$242$1$1 ==.
;	libraries/src/uart/uart0.c:242: return UART_RX_BUFFER_USED_BYTES();
	mov	a,_uartRxBufferInterruptIndex
	clr	c
	subb	a,_uartRxBufferMainLoopIndex
	C$uart0.c$243$1$1 ==.
	XG$uart0RxAvailable$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0RxReceiveByte'
;------------------------------------------------------------
	G$uart0RxReceiveByte$0$0 ==.
	C$uart0.c$245$1$1 ==.
;	libraries/src/uart/uart0.c:245: uint8 uartNRxReceiveByte(void)
;	-----------------------------------------
;	 function uart0RxReceiveByte
;	-----------------------------------------
_uart0RxReceiveByte:
	C$uart0.c$249$1$1 ==.
;	libraries/src/uart/uart0.c:249: uint8 byte = uartRxBuffer[uartRxBufferMainLoopIndex];
	mov	a,_uartRxBufferMainLoopIndex
	add	a,#_uartRxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_uartRxBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	C$uart0.c$250$1$1 ==.
;	libraries/src/uart/uart0.c:250: uartRxBufferMainLoopIndex = (uartRxBufferMainLoopIndex + 1) & (sizeof(uartRxBuffer) - 1);
	mov	a,_uartRxBufferMainLoopIndex
	inc	a
	mov	r6,a
	mov	_uartRxBufferMainLoopIndex,r6
	C$uart0.c$251$1$1 ==.
;	libraries/src/uart/uart0.c:251: return byte;
	mov	dpl,r7
	C$uart0.c$252$1$1 ==.
	XG$uart0RxReceiveByte$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_UTX0'
;------------------------------------------------------------
	G$ISR_UTX0$0$0 ==.
	C$uart0.c$254$1$1 ==.
;	libraries/src/uart/uart0.c:254: ISR_UTX()
;	-----------------------------------------
;	 function ISR_UTX0
;	-----------------------------------------
_ISR_UTX0:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
	C$uart0.c$259$1$1 ==.
;	libraries/src/uart/uart0.c:259: if (uartTxBufferInterruptIndex != uartTxBufferMainLoopIndex)
	mov	a,_uartTxBufferMainLoopIndex
	cjne	a,_uartTxBufferInterruptIndex,00107$
	sjmp	00102$
00107$:
	C$uart0.c$264$2$2 ==.
;	libraries/src/uart/uart0.c:264: UTXNIF = 0;
	clr	_UTX0IF
	C$uart0.c$266$2$2 ==.
;	libraries/src/uart/uart0.c:266: UNDBUF = uartTxBuffer[uartTxBufferInterruptIndex];
	mov	a,_uartTxBufferInterruptIndex
	add	a,#_uartTxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_uartTxBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_U0DBUF,a
	C$uart0.c$267$2$2 ==.
;	libraries/src/uart/uart0.c:267: uartTxBufferInterruptIndex = (uartTxBufferInterruptIndex + 1) & (sizeof(uartTxBuffer) - 1);
	mov	a,_uartTxBufferInterruptIndex
	inc	a
	mov	r7,a
	mov	_uartTxBufferInterruptIndex,r7
	sjmp	00104$
00102$:
	C$uart0.c$272$2$3 ==.
;	libraries/src/uart/uart0.c:272: IEN2 &= ~BV_UTXNIE;
	mov	r7,_IEN2
	anl	ar7,#0xFB
	mov	_IEN2,r7
00104$:
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	C$uart0.c$274$1$1 ==.
	XG$ISR_UTX0$0$0 ==.
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_URX0'
;------------------------------------------------------------
	G$ISR_URX0$0$0 ==.
	C$uart0.c$276$1$1 ==.
;	libraries/src/uart/uart0.c:276: ISR_URX()
;	-----------------------------------------
;	 function ISR_URX0
;	-----------------------------------------
_ISR_URX0:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	psw
	mov	psw,#0x00
	C$uart0.c$280$1$1 ==.
;	libraries/src/uart/uart0.c:280: URXNIF = 0;
	clr	_URX0IF
	C$uart0.c$285$1$1 ==.
;	libraries/src/uart/uart0.c:285: csr = UNCSR;
	C$uart0.c$288$1$1 ==.
;	libraries/src/uart/uart0.c:288: if (!(csr & 0x18)) // UNCSR.FE (4) == 0; UNCSR.ERR (3) == 0
	mov	a,_U0CSR
	mov	r7,a
	anl	a,#0x18
	jz	00118$
	sjmp	00109$
00118$:
	C$uart0.c$292$2$2 ==.
;	libraries/src/uart/uart0.c:292: if (UART_RX_BUFFER_FREE_BYTES())
	mov	r5,_uartRxBufferMainLoopIndex
	mov	r6,#0x00
	mov	r3,_uartRxBufferInterruptIndex
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	dec	r5
	cjne	r5,#0xFF,00119$
	dec	r6
00119$:
	mov	a,r5
	jz	00102$
	C$uart0.c$295$3$3 ==.
;	libraries/src/uart/uart0.c:295: uartRxBuffer[uartRxBufferInterruptIndex] = UNDBUF;
	mov	a,_uartRxBufferInterruptIndex
	add	a,#_uartRxBuffer
	mov	dpl,a
	clr	a
	addc	a,#(_uartRxBuffer >> 8)
	mov	dph,a
	mov	a,_U0DBUF
	movx	@dptr,a
	C$uart0.c$296$3$3 ==.
;	libraries/src/uart/uart0.c:296: uartRxBufferInterruptIndex = (uartRxBufferInterruptIndex + 1) & (sizeof(uartRxBuffer) - 1);
	mov	a,_uartRxBufferInterruptIndex
	inc	a
	mov	r6,a
	mov	_uartRxBufferInterruptIndex,r6
	sjmp	00111$
00102$:
	C$uart0.c$301$3$4 ==.
;	libraries/src/uart/uart0.c:301: uartNRxBufferFullOccurred = 1;
	setb	_uart0RxBufferFullOccurred
	sjmp	00111$
00109$:
	C$uart0.c$306$2$5 ==.
;	libraries/src/uart/uart0.c:306: if (csr & 0x10) // UNCSR.FE (4) == 1
	mov	a,r7
	jnb	acc.4,00105$
	C$uart0.c$308$3$6 ==.
;	libraries/src/uart/uart0.c:308: uartNRxFramingErrorOccurred = 1;
	setb	_uart0RxFramingErrorOccurred
00105$:
	C$uart0.c$310$2$5 ==.
;	libraries/src/uart/uart0.c:310: if (csr & 0x08) // UNCSR.ERR (3) == 1
	mov	a,r7
	jnb	acc.3,00111$
	C$uart0.c$312$3$7 ==.
;	libraries/src/uart/uart0.c:312: uartNRxParityErrorOccurred = 1;
	setb	_uart0RxParityErrorOccurred
00111$:
	pop	psw
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	C$uart0.c$315$1$1 ==.
	XG$ISR_URX0$0$0 ==.
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTxPendingBytes'
;------------------------------------------------------------
	G$uartTxPendingBytes$0$0 ==.
	C$uart0.c$317$1$1 ==.
;	libraries/src/uart/uart0.c:317: uint8 uartTxPendingBytes() {
;	-----------------------------------------
;	 function uartTxPendingBytes
;	-----------------------------------------
_uartTxPendingBytes:
	C$uart0.c$318$1$1 ==.
;	libraries/src/uart/uart0.c:318: return uartTxBufferInterruptIndex - uartTxBufferMainLoopIndex;
	mov	a,_uartTxBufferInterruptIndex
	clr	c
	subb	a,_uartTxBufferMainLoopIndex
	mov	dpl,a
	C$uart0.c$319$1$1 ==.
	XG$uartTxPendingBytes$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
