;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:12 2016
;--------------------------------------------------------
	.module millivolts
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _adcRead
	.globl _adcReadVddMillivolts
	.globl _adcSetMillivoltCalibration
	.globl _adcConvertToMillivolts
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
Fmillivolts$millivoltCalibration$0$0==.
_millivoltCalibration:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
	G$adcConvertToMillivolts$0$0 ==.
	C$millivolts.c$4$1$1 ==.
;	libraries/src/adc/millivolts.c:4: static uint16 millivoltCalibration = 3300;
	mov	r0,#_millivoltCalibration
	mov	a,#0xE4
	movx	@r0,a
	inc	r0
	mov	a,#0x0C
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
;Allocation info for local variables in function 'adcReadVddMillivolts'
;------------------------------------------------------------
	G$adcReadVddMillivolts$0$0 ==.
	C$millivolts.c$6$0$0 ==.
;	libraries/src/adc/millivolts.c:6: uint16 adcReadVddMillivolts()
;	-----------------------------------------
;	 function adcReadVddMillivolts
;	-----------------------------------------
_adcReadVddMillivolts:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$millivolts.c$9$1$1 ==.
;	libraries/src/adc/millivolts.c:9: return ((uint32)adcRead(15|ADC_REFERENCE_INTERNAL)*3750 + 1023) / 2047;
	mov	dpl,#0x8F
	lcall	_adcRead
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#__mullong_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dptr,#0x0EA6
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0xFF
	add	a,r4
	mov	r4,a
	mov	a,#0x03
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,#__divulong_PARM_2
	mov	a,#0xFF
	movx	@r0,a
	inc	r0
	mov	a,#0x07
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
	C$millivolts.c$10$1$1 ==.
	XG$adcReadVddMillivolts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adcSetMillivoltCalibration'
;------------------------------------------------------------
	G$adcSetMillivoltCalibration$0$0 ==.
	C$millivolts.c$12$1$1 ==.
;	libraries/src/adc/millivolts.c:12: void adcSetMillivoltCalibration(uint16 vddMillivolts)
;	-----------------------------------------
;	 function adcSetMillivoltCalibration
;	-----------------------------------------
_adcSetMillivoltCalibration:
	mov	r6,dpl
	mov	r7,dph
	C$millivolts.c$14$1$1 ==.
;	libraries/src/adc/millivolts.c:14: millivoltCalibration = vddMillivolts;
	mov	r0,#_millivoltCalibration
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$millivolts.c$15$1$1 ==.
	XG$adcSetMillivoltCalibration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adcConvertToMillivolts'
;------------------------------------------------------------
	G$adcConvertToMillivolts$0$0 ==.
	C$millivolts.c$17$1$1 ==.
;	libraries/src/adc/millivolts.c:17: int16 adcConvertToMillivolts(int16 adcResult)
;	-----------------------------------------
;	 function adcConvertToMillivolts
;	-----------------------------------------
_adcConvertToMillivolts:
	mov	r6,dpl
	C$millivolts.c$19$1$1 ==.
;	libraries/src/adc/millivolts.c:19: return ((int32)adcResult * millivoltCalibration + 1023) / 2047;
	mov	a,dph
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	mov	r0,#_millivoltCalibration
	mov	r1,#__mullong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	inc	r1
	movx	@r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0xFF
	add	a,r4
	mov	r4,a
	mov	a,#0x03
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r0,#__divslong_PARM_2
	mov	a,#0xFF
	movx	@r0,a
	inc	r0
	mov	a,#0x07
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
	lcall	__divslong
	C$millivolts.c$20$1$1 ==.
	XG$adcConvertToMillivolts$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
