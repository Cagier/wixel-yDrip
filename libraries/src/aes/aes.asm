;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Oct 29 00:37:11 2016
;--------------------------------------------------------
	.module aes
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _AES128_CBC_encrypt_buffer_PARM_5
	.globl _AES128_CBC_encrypt_buffer_PARM_4
	.globl _AES128_CBC_encrypt_buffer_PARM_3
	.globl _AES128_CBC_encrypt_buffer_PARM_2
	.globl _AES128_CBC_encrypt_buffer
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
Laes.KeyExpansion$sloc0$1$0==.
_KeyExpansion_sloc0_1_0:
	.ds 1
Laes.KeyExpansion$sloc1$1$0==.
_KeyExpansion_sloc1_1_0:
	.ds 2
Laes.KeyExpansion$sloc2$1$0==.
_KeyExpansion_sloc2_1_0:
	.ds 4
Laes.KeyExpansion$sloc3$1$0==.
_KeyExpansion_sloc3_1_0:
	.ds 4
Laes.KeyExpansion$sloc4$1$0==.
_KeyExpansion_sloc4_1_0:
	.ds 4
Laes.Cipher$sloc0$1$0==.
_Cipher_sloc0_1_0:
	.ds 1
Laes.Cipher$sloc1$1$0==.
_Cipher_sloc1_1_0:
	.ds 1
Laes.Cipher$sloc2$1$0==.
_Cipher_sloc2_1_0:
	.ds 2
Laes.AES128_CBC_encrypt_buffer$sloc0$1$0==.
_AES128_CBC_encrypt_buffer_sloc0_1_0:
	.ds 4
Laes.AES128_CBC_encrypt_buffer$sloc1$1$0==.
_AES128_CBC_encrypt_buffer_sloc1_1_0:
	.ds 2
Laes.AES128_CBC_encrypt_buffer$sloc2$1$0==.
_AES128_CBC_encrypt_buffer_sloc2_1_0:
	.ds 4
Laes.AES128_CBC_encrypt_buffer$sloc3$1$0==.
_AES128_CBC_encrypt_buffer_sloc3_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
Laes.AddRoundKey$sloc0$1$0==.
_AddRoundKey_sloc0_1_0:
	.ds 1
Laes.AddRoundKey$sloc1$1$0==.
_AddRoundKey_sloc1_1_0:
	.ds 1
	.area	OSEG    (OVR,DATA)
Laes.ShiftRows$sloc0$1$0==.
_ShiftRows_sloc0_1_0:
	.ds 1
Laes.ShiftRows$sloc1$1$0==.
_ShiftRows_sloc1_1_0:
	.ds 2
Laes.ShiftRows$sloc2$1$0==.
_ShiftRows_sloc2_1_0:
	.ds 2
	.area	OSEG    (OVR,DATA)
Laes.BlockCopy$sloc0$1$0==.
_BlockCopy_sloc0_1_0:
	.ds 3
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
Faes$state$0$0==.
_state:
	.ds 2
Faes$Key$0$0==.
_Key:
	.ds 2
Faes$Iv$0$0==.
_Iv:
	.ds 2
Laes.BlockCopy$input$1$1==.
_BlockCopy_PARM_2:
	.ds 3
Laes.BlockCopy$output$1$1==.
_BlockCopy_output_1_1:
	.ds 3
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Faes$RoundKey$0$0==.
_RoundKey:
	.ds 176
Laes.getSBoxValue$num$1$1==.
_getSBoxValue_num_1_1:
	.ds 1
Laes.KeyExpansion$tempa$1$1==.
_KeyExpansion_tempa_1_1:
	.ds 4
Laes.AddRoundKey$round$1$1==.
_AddRoundKey_round_1_1:
	.ds 1
Laes.xtime$x$1$1==.
_xtime_x_1_1:
	.ds 1
Laes.Multiply$y$1$1==.
_Multiply_PARM_2:
	.ds 1
Laes.Multiply$x$1$1==.
_Multiply_x_1_1:
	.ds 1
Laes.Cipher$k$1$1==.
_Cipher_k_1_1:
	.ds 1
Laes.Cipher$Tmp$1$1==.
_Cipher_Tmp_1_1:
	.ds 1
Laes.Cipher$t$1$1==.
_Cipher_t_1_1:
	.ds 1
Laes.AES128_CBC_encrypt_buffer$input$1$1==.
_AES128_CBC_encrypt_buffer_PARM_2:
	.ds 2
Laes.AES128_CBC_encrypt_buffer$length$1$1==.
_AES128_CBC_encrypt_buffer_PARM_3:
	.ds 4
Laes.AES128_CBC_encrypt_buffer$key$1$1==.
_AES128_CBC_encrypt_buffer_PARM_4:
	.ds 2
Laes.AES128_CBC_encrypt_buffer$iv$1$1==.
_AES128_CBC_encrypt_buffer_PARM_5:
	.ds 2
Laes.AES128_CBC_encrypt_buffer$output$1$1==.
_AES128_CBC_encrypt_buffer_output_1_1:
	.ds 2
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
;Allocation info for local variables in function 'getSBoxValue'
;------------------------------------------------------------
;num                       Allocated with name '_getSBoxValue_num_1_1'
;------------------------------------------------------------
	Faes$getSBoxValue$0$0 ==.
	C$aes.c$132$0$0 ==.
;	libraries/src/aes/aes.c:132: XDATA static uint8_t getSBoxValue(XDATA uint8_t num)
;	-----------------------------------------
;	 function getSBoxValue
;	-----------------------------------------
_getSBoxValue:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	C$aes.c$134$1$1 ==.
;	libraries/src/aes/aes.c:134: return sbox[num];
	mov	dptr,#_getSBoxValue_num_1_1
	movx	@dptr,a
	mov	dptr,#_sbox
	movc	a,@a+dptr
	C$aes.c$135$1$1 ==.
	XFaes$getSBoxValue$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KeyExpansion'
;------------------------------------------------------------
;sloc0                     Allocated with name '_KeyExpansion_sloc0_1_0'
;sloc1                     Allocated with name '_KeyExpansion_sloc1_1_0'
;sloc2                     Allocated with name '_KeyExpansion_sloc2_1_0'
;sloc3                     Allocated with name '_KeyExpansion_sloc3_1_0'
;sloc4                     Allocated with name '_KeyExpansion_sloc4_1_0'
;i                         Allocated with name '_KeyExpansion_i_1_1'
;j                         Allocated with name '_KeyExpansion_j_1_1'
;k                         Allocated with name '_KeyExpansion_k_1_1'
;tempa                     Allocated with name '_KeyExpansion_tempa_1_1'
;------------------------------------------------------------
	Faes$KeyExpansion$0$0 ==.
	C$aes.c$139$1$1 ==.
;	libraries/src/aes/aes.c:139: XDATA static void KeyExpansion(void)
;	-----------------------------------------
;	 function KeyExpansion
;	-----------------------------------------
_KeyExpansion:
	C$aes.c$145$2$2 ==.
;	libraries/src/aes/aes.c:145: for(i = 0; i < Nk; ++i)
	clr	a
	mov	_KeyExpansion_sloc2_1_0,a
	mov	(_KeyExpansion_sloc2_1_0 + 1),a
	mov	(_KeyExpansion_sloc2_1_0 + 2),a
	mov	(_KeyExpansion_sloc2_1_0 + 3),a
00107$:
	clr	c
	mov	a,_KeyExpansion_sloc2_1_0
	subb	a,#0x04
	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
	subb	a,#0x00
	mov	a,(_KeyExpansion_sloc2_1_0 + 2)
	subb	a,#0x00
	mov	a,(_KeyExpansion_sloc2_1_0 + 3)
	subb	a,#0x00
	jc	00131$
	ljmp	00127$
00131$:
	C$aes.c$147$2$2 ==.
;	libraries/src/aes/aes.c:147: RoundKey[(i * 4) + 0] = Key[(i * 4) + 0];
	mov	a,_KeyExpansion_sloc2_1_0
	add	a,acc
	add	a,acc
	mov	_KeyExpansion_sloc0_1_0,a
	add	a,#_RoundKey
	mov	_KeyExpansion_sloc1_1_0,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	(_KeyExpansion_sloc1_1_0 + 1),a
	mov	a,_KeyExpansion_sloc2_1_0
	add	a,_KeyExpansion_sloc2_1_0
	mov	_KeyExpansion_sloc3_1_0,a
	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
	rlc	a
	mov	(_KeyExpansion_sloc3_1_0 + 1),a
	mov	a,(_KeyExpansion_sloc2_1_0 + 2)
	rlc	a
	mov	(_KeyExpansion_sloc3_1_0 + 2),a
	mov	a,(_KeyExpansion_sloc2_1_0 + 3)
	rlc	a
	mov	(_KeyExpansion_sloc3_1_0 + 3),a
	mov	a,_KeyExpansion_sloc3_1_0
	add	a,_KeyExpansion_sloc3_1_0
	mov	_KeyExpansion_sloc3_1_0,a
	mov	a,(_KeyExpansion_sloc3_1_0 + 1)
	rlc	a
	mov	(_KeyExpansion_sloc3_1_0 + 1),a
	mov	a,(_KeyExpansion_sloc3_1_0 + 2)
	rlc	a
	mov	(_KeyExpansion_sloc3_1_0 + 2),a
	mov	a,(_KeyExpansion_sloc3_1_0 + 3)
	rlc	a
	mov	(_KeyExpansion_sloc3_1_0 + 3),a
	mov	r0,#_Key
	movx	a,@r0
	add	a,_KeyExpansion_sloc3_1_0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,_KeyExpansion_sloc1_1_0
	mov	dph,(_KeyExpansion_sloc1_1_0 + 1)
	movx	@dptr,a
	C$aes.c$148$2$2 ==.
;	libraries/src/aes/aes.c:148: RoundKey[(i * 4) + 1] = Key[(i * 4) + 1];
	mov	a,_KeyExpansion_sloc0_1_0
	inc	a
	add	a,#_RoundKey
	mov	_KeyExpansion_sloc1_1_0,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	(_KeyExpansion_sloc1_1_0 + 1),a
	mov	a,#0x01
	add	a,_KeyExpansion_sloc3_1_0
	mov	r4,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
	mov	r5,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 2)
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 3)
	mov	r0,#_Key
	movx	a,@r0
	add	a,r4
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	dpl,_KeyExpansion_sloc1_1_0
	mov	dph,(_KeyExpansion_sloc1_1_0 + 1)
	movx	@dptr,a
	C$aes.c$149$2$2 ==.
;	libraries/src/aes/aes.c:149: RoundKey[(i * 4) + 2] = Key[(i * 4) + 2];
	mov	a,#0x02
	add	a,_KeyExpansion_sloc0_1_0
	add	a,#_RoundKey
	mov	r6,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	r7,a
	mov	a,#0x02
	add	a,_KeyExpansion_sloc3_1_0
	mov	r2,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
	mov	r3,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 2)
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 3)
	mov	r0,#_Key
	movx	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$aes.c$150$2$2 ==.
;	libraries/src/aes/aes.c:150: RoundKey[(i * 4) + 3] = Key[(i * 4) + 3];
	mov	a,#0x03
	add	a,_KeyExpansion_sloc0_1_0
	add	a,#_RoundKey
	mov	r6,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	r7,a
	mov	a,#0x03
	add	a,_KeyExpansion_sloc3_1_0
	mov	r2,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
	mov	r3,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 2)
	mov	r4,a
	clr	a
	addc	a,(_KeyExpansion_sloc3_1_0 + 3)
	mov	r0,#_Key
	movx	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$aes.c$145$1$1 ==.
;	libraries/src/aes/aes.c:145: for(i = 0; i < Nk; ++i)
	inc	_KeyExpansion_sloc2_1_0
	clr	a
	cjne	a,_KeyExpansion_sloc2_1_0,00132$
	inc	(_KeyExpansion_sloc2_1_0 + 1)
	cjne	a,(_KeyExpansion_sloc2_1_0 + 1),00132$
	inc	(_KeyExpansion_sloc2_1_0 + 2)
	cjne	a,(_KeyExpansion_sloc2_1_0 + 2),00132$
	inc	(_KeyExpansion_sloc2_1_0 + 3)
00132$:
	ljmp	00107$
00127$:
	mov	_KeyExpansion_sloc4_1_0,_KeyExpansion_sloc2_1_0
	mov	(_KeyExpansion_sloc4_1_0 + 1),(_KeyExpansion_sloc2_1_0 + 1)
	mov	(_KeyExpansion_sloc4_1_0 + 2),(_KeyExpansion_sloc2_1_0 + 2)
	mov	(_KeyExpansion_sloc4_1_0 + 3),(_KeyExpansion_sloc2_1_0 + 3)
00115$:
	C$aes.c$154$1$1 ==.
;	libraries/src/aes/aes.c:154: for(; (i < (Nb * (Nr + 1))); ++i)
	clr	c
	mov	a,_KeyExpansion_sloc4_1_0
	subb	a,#0x2C
	mov	a,(_KeyExpansion_sloc4_1_0 + 1)
	subb	a,#0x00
	mov	a,(_KeyExpansion_sloc4_1_0 + 2)
	subb	a,#0x00
	mov	a,(_KeyExpansion_sloc4_1_0 + 3)
	subb	a,#0x00
	jc	00133$
	ljmp	00119$
00133$:
	C$aes.c$156$3$4 ==.
;	libraries/src/aes/aes.c:156: for(j = 0; j < 4; ++j)
	mov	_KeyExpansion_sloc3_1_0,_KeyExpansion_sloc4_1_0
	mov	(_KeyExpansion_sloc3_1_0 + 1),(_KeyExpansion_sloc4_1_0 + 1)
	mov	(_KeyExpansion_sloc3_1_0 + 2),(_KeyExpansion_sloc4_1_0 + 2)
	mov	(_KeyExpansion_sloc3_1_0 + 3),(_KeyExpansion_sloc4_1_0 + 3)
	clr	a
	mov	_KeyExpansion_sloc2_1_0,a
	mov	(_KeyExpansion_sloc2_1_0 + 1),a
	mov	(_KeyExpansion_sloc2_1_0 + 2),a
	mov	(_KeyExpansion_sloc2_1_0 + 3),a
00111$:
	clr	c
	mov	a,_KeyExpansion_sloc2_1_0
	subb	a,#0x04
	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
	subb	a,#0x00
	mov	a,(_KeyExpansion_sloc2_1_0 + 2)
	subb	a,#0x00
	mov	a,(_KeyExpansion_sloc2_1_0 + 3)
	subb	a,#0x00
	jnc	00114$
	C$aes.c$158$1$1 ==.
;	libraries/src/aes/aes.c:158: tempa[j]=RoundKey[(i-1) * 4 + j];
	mov	a,_KeyExpansion_sloc2_1_0
	add	a,#_KeyExpansion_tempa_1_1
	mov	r2,a
	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
	addc	a,#(_KeyExpansion_tempa_1_1 >> 8)
	mov	r3,a
	mov	r7,_KeyExpansion_sloc3_1_0
	dec	r7
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r7,a
	mov	a,_KeyExpansion_sloc2_1_0
	mov	r6,a
	add	a,r7
	add	a,#_RoundKey
	mov	dpl,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
	C$aes.c$156$2$3 ==.
;	libraries/src/aes/aes.c:156: for(j = 0; j < 4; ++j)
	inc	_KeyExpansion_sloc2_1_0
	clr	a
	cjne	a,_KeyExpansion_sloc2_1_0,00135$
	inc	(_KeyExpansion_sloc2_1_0 + 1)
	cjne	a,(_KeyExpansion_sloc2_1_0 + 1),00135$
	inc	(_KeyExpansion_sloc2_1_0 + 2)
	cjne	a,(_KeyExpansion_sloc2_1_0 + 2),00111$
	inc	(_KeyExpansion_sloc2_1_0 + 3)
00135$:
	sjmp	00111$
00114$:
	C$aes.c$160$2$3 ==.
;	libraries/src/aes/aes.c:160: if (i % Nk == 0)
	mov	a,_KeyExpansion_sloc4_1_0
	anl	a,#0x03
	jz	00137$
	ljmp	00106$
00137$:
	C$aes.c$167$4$6 ==.
;	libraries/src/aes/aes.c:167: k = tempa[0];
	mov	dptr,#_KeyExpansion_tempa_1_1
	movx	a,@dptr
	mov	r2,a
	C$aes.c$168$4$6 ==.
;	libraries/src/aes/aes.c:168: tempa[0] = tempa[1];
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_KeyExpansion_tempa_1_1
	movx	@dptr,a
	C$aes.c$169$4$6 ==.
;	libraries/src/aes/aes.c:169: tempa[1] = tempa[2];
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
	movx	a,@dptr
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
	movx	@dptr,a
	C$aes.c$170$4$6 ==.
;	libraries/src/aes/aes.c:170: tempa[2] = tempa[3];
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
	movx	a,@dptr
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
	movx	@dptr,a
	C$aes.c$171$4$6 ==.
;	libraries/src/aes/aes.c:171: tempa[3] = k;
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
	mov	a,r2
	movx	@dptr,a
	C$aes.c$179$4$7 ==.
;	libraries/src/aes/aes.c:179: tempa[0] = getSBoxValue(tempa[0]);
	mov	dpl,r5
	lcall	_getSBoxValue
	mov	r7,dpl
	mov	dptr,#_KeyExpansion_tempa_1_1
	mov	a,r7
	movx	@dptr,a
	C$aes.c$180$4$7 ==.
;	libraries/src/aes/aes.c:180: tempa[1] = getSBoxValue(tempa[1]);
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_getSBoxValue
	mov	r7,dpl
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
	mov	a,r7
	movx	@dptr,a
	C$aes.c$181$4$7 ==.
;	libraries/src/aes/aes.c:181: tempa[2] = getSBoxValue(tempa[2]);
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
	movx	a,@dptr
	mov	dpl,a
	lcall	_getSBoxValue
	mov	r7,dpl
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
	mov	a,r7
	movx	@dptr,a
	C$aes.c$182$4$7 ==.
;	libraries/src/aes/aes.c:182: tempa[3] = getSBoxValue(tempa[3]);
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
	movx	a,@dptr
	mov	dpl,a
	lcall	_getSBoxValue
	mov	r7,dpl
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
	mov	a,r7
	movx	@dptr,a
	C$aes.c$185$3$5 ==.
;	libraries/src/aes/aes.c:185: tempa[0] =  tempa[0] ^ Rcon[i/Nk];
	mov	dptr,#_KeyExpansion_tempa_1_1
	movx	a,@dptr
	mov	r7,a
	mov	a,(_KeyExpansion_sloc4_1_0 + 3)
	clr	c
	rrc	a
	mov	r6,a
	mov	a,(_KeyExpansion_sloc4_1_0 + 2)
	rrc	a
	mov	r5,a
	mov	a,(_KeyExpansion_sloc4_1_0 + 1)
	rrc	a
	mov	r4,a
	mov	a,_KeyExpansion_sloc4_1_0
	rrc	a
	mov	r3,a
	mov	a,r6
	clr	c
	rrc	a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	add	a,#_Rcon
	mov	dpl,a
	mov	a,r4
	addc	a,#(_Rcon >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	xrl	ar7,a
	mov	dptr,#_KeyExpansion_tempa_1_1
	mov	a,r7
	movx	@dptr,a
	C$aes.c$194$2$3 ==.
;	libraries/src/aes/aes.c:194: tempa[3] = getSBoxValue(tempa[3]);
00106$:
	C$aes.c$197$2$3 ==.
;	libraries/src/aes/aes.c:197: RoundKey[i * 4 + 0] = RoundKey[(i - Nk) * 4 + 0] ^ tempa[0];
	mov	a,_KeyExpansion_sloc4_1_0
	mov	r4,a
	add	a,acc
	add	a,acc
	mov	r7,a
	add	a,#_RoundKey
	mov	r5,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	r6,a
	dec	r4
	dec	r4
	dec	r4
	dec	r4
	mov	a,r4
	add	a,r4
	add	a,acc
	mov	r4,a
	add	a,#_RoundKey
	mov	dpl,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_KeyExpansion_tempa_1_1
	movx	a,@dptr
	xrl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	C$aes.c$198$2$3 ==.
;	libraries/src/aes/aes.c:198: RoundKey[i * 4 + 1] = RoundKey[(i - Nk) * 4 + 1] ^ tempa[1];
	mov	a,r7
	inc	a
	add	a,#_RoundKey
	mov	r5,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	r6,a
	mov	a,r4
	inc	a
	add	a,#_RoundKey
	mov	dpl,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
	movx	a,@dptr
	xrl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	C$aes.c$199$2$3 ==.
;	libraries/src/aes/aes.c:199: RoundKey[i * 4 + 2] = RoundKey[(i - Nk) * 4 + 2] ^ tempa[2];
	mov	a,#0x02
	add	a,r7
	add	a,#_RoundKey
	mov	r5,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	r6,a
	mov	a,#0x02
	add	a,r4
	add	a,#_RoundKey
	mov	dpl,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
	movx	a,@dptr
	mov	r2,a
	xrl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	a,r3
	movx	@dptr,a
	C$aes.c$200$2$3 ==.
;	libraries/src/aes/aes.c:200: RoundKey[i * 4 + 3] = RoundKey[(i - Nk) * 4 + 3] ^ tempa[3];
	mov	a,#0x03
	add	a,r7
	add	a,#_RoundKey
	mov	r6,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	r7,a
	mov	a,#0x03
	add	a,r4
	add	a,#_RoundKey
	mov	dpl,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
	movx	a,@dptr
	mov	r4,a
	xrl	ar5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	C$aes.c$154$1$1 ==.
;	libraries/src/aes/aes.c:154: for(; (i < (Nb * (Nr + 1))); ++i)
	inc	_KeyExpansion_sloc4_1_0
	clr	a
	cjne	a,_KeyExpansion_sloc4_1_0,00138$
	inc	(_KeyExpansion_sloc4_1_0 + 1)
	cjne	a,(_KeyExpansion_sloc4_1_0 + 1),00138$
	inc	(_KeyExpansion_sloc4_1_0 + 2)
	cjne	a,(_KeyExpansion_sloc4_1_0 + 2),00138$
	inc	(_KeyExpansion_sloc4_1_0 + 3)
00138$:
	ljmp	00115$
00119$:
	C$aes.c$202$1$1 ==.
	XFaes$KeyExpansion$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AddRoundKey'
;------------------------------------------------------------
;round                     Allocated with name '_AddRoundKey_round_1_1'
;i                         Allocated with name '_AddRoundKey_i_1_1'
;j                         Allocated with name '_AddRoundKey_j_1_1'
;sloc0                     Allocated with name '_AddRoundKey_sloc0_1_0'
;sloc1                     Allocated with name '_AddRoundKey_sloc1_1_0'
;------------------------------------------------------------
	Faes$AddRoundKey$0$0 ==.
	C$aes.c$206$1$1 ==.
;	libraries/src/aes/aes.c:206: static void AddRoundKey(XDATA uint8_t round)
;	-----------------------------------------
;	 function AddRoundKey
;	-----------------------------------------
_AddRoundKey:
	mov	a,dpl
	C$aes.c$209$3$3 ==.
;	libraries/src/aes/aes.c:209: for(i=0;i<4;++i)
	mov	dptr,#_AddRoundKey_round_1_1
	movx	@dptr,a
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	r6,#0x00
00105$:
	cjne	r6,#0x04,00117$
00117$:
	jnc	00109$
	C$aes.c$211$3$3 ==.
;	libraries/src/aes/aes.c:211: for(j = 0; j < 4; ++j)
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r5,a
	add	a,r7
	mov	_AddRoundKey_sloc0_1_0,a
	mov	r3,#0x00
00101$:
	cjne	r3,#0x04,00119$
00119$:
	jnc	00107$
	C$aes.c$213$1$1 ==.
;	libraries/src/aes/aes.c:213: (*state)[i][j] ^= RoundKey[round * Nb * 4 + i * Nb + j];
	push	ar7
	mov	r0,#_state
	movx	a,@r0
	add	a,r5
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	a,r3
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r3
	add	a,_AddRoundKey_sloc0_1_0
	add	a,#_RoundKey
	mov	dpl,a
	clr	a
	addc	a,#(_RoundKey >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_AddRoundKey_sloc1_1_0,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	mov	a,_AddRoundKey_sloc1_1_0
	xrl	ar4,a
	mov	dpl,r2
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	C$aes.c$211$2$2 ==.
;	libraries/src/aes/aes.c:211: for(j = 0; j < 4; ++j)
	inc	r3
	pop	ar7
	sjmp	00101$
00107$:
	C$aes.c$209$1$1 ==.
;	libraries/src/aes/aes.c:209: for(i=0;i<4;++i)
	inc	r6
	sjmp	00105$
00109$:
	C$aes.c$216$1$1 ==.
	XFaes$AddRoundKey$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SubBytes'
;------------------------------------------------------------
;i                         Allocated with name '_SubBytes_i_1_1'
;j                         Allocated with name '_SubBytes_j_1_1'
;------------------------------------------------------------
	Faes$SubBytes$0$0 ==.
	C$aes.c$220$1$1 ==.
;	libraries/src/aes/aes.c:220: XDATA static void SubBytes(void)
;	-----------------------------------------
;	 function SubBytes
;	-----------------------------------------
_SubBytes:
	C$aes.c$223$1$1 ==.
;	libraries/src/aes/aes.c:223: for(i = 0; i < 4; ++i)
	mov	r7,#0x00
00105$:
	cjne	r7,#0x04,00117$
00117$:
	jnc	00109$
	C$aes.c$225$3$3 ==.
;	libraries/src/aes/aes.c:225: for(j = 0; j < 4; ++j)
	mov	ar6,r7
	mov	r5,#0x00
00101$:
	cjne	r5,#0x04,00119$
00119$:
	jnc	00107$
	C$aes.c$227$3$3 ==.
;	libraries/src/aes/aes.c:227: (*state)[j][i] = getSBoxValue((*state)[j][i]);
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r4,a
	mov	r0,#_state
	movx	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	mov	a,r6
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r4
	mov	dph,r3
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_getSBoxValue
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r3
	mov	a,r2
	movx	@dptr,a
	C$aes.c$225$2$2 ==.
;	libraries/src/aes/aes.c:225: for(j = 0; j < 4; ++j)
	inc	r5
	sjmp	00101$
00107$:
	C$aes.c$223$1$1 ==.
;	libraries/src/aes/aes.c:223: for(i = 0; i < 4; ++i)
	inc	r7
	sjmp	00105$
00109$:
	C$aes.c$230$1$1 ==.
	XFaes$SubBytes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ShiftRows'
;------------------------------------------------------------
;temp                      Allocated with name '_ShiftRows_temp_1_1'
;sloc0                     Allocated with name '_ShiftRows_sloc0_1_0'
;sloc1                     Allocated with name '_ShiftRows_sloc1_1_0'
;sloc2                     Allocated with name '_ShiftRows_sloc2_1_0'
;------------------------------------------------------------
	Faes$ShiftRows$0$0 ==.
	C$aes.c$235$1$1 ==.
;	libraries/src/aes/aes.c:235: XDATA static void ShiftRows(void)
;	-----------------------------------------
;	 function ShiftRows
;	-----------------------------------------
_ShiftRows:
	C$aes.c$240$1$1 ==.
;	libraries/src/aes/aes.c:240: temp           = (*state)[0][1];
	mov	r0,#_state
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_ShiftRows_sloc0_1_0,a
	C$aes.c$241$1$1 ==.
;	libraries/src/aes/aes.c:241: (*state)[0][1] = (*state)[1][1];
	mov	a,#0x05
	add	a,r6
	mov	_ShiftRows_sloc1_1_0,a
	clr	a
	addc	a,r7
	mov	(_ShiftRows_sloc1_1_0 + 1),a
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$aes.c$242$1$1 ==.
;	libraries/src/aes/aes.c:242: (*state)[1][1] = (*state)[2][1];
	mov	a,#0x09
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	movx	@dptr,a
	C$aes.c$243$1$1 ==.
;	libraries/src/aes/aes.c:243: (*state)[2][1] = (*state)[3][1];
	mov	a,#0x0D
	add	a,r6
	mov	_ShiftRows_sloc1_1_0,a
	clr	a
	addc	a,r7
	mov	(_ShiftRows_sloc1_1_0 + 1),a
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$aes.c$244$1$1 ==.
;	libraries/src/aes/aes.c:244: (*state)[3][1] = temp;
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	mov	a,_ShiftRows_sloc0_1_0
	movx	@dptr,a
	C$aes.c$247$1$1 ==.
;	libraries/src/aes/aes.c:247: temp           = (*state)[0][2];
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_ShiftRows_sloc1_1_0,a
	C$aes.c$248$1$1 ==.
;	libraries/src/aes/aes.c:248: (*state)[0][2] = (*state)[2][2];
	mov	a,#0x0A
	add	a,r6
	mov	_ShiftRows_sloc2_1_0,a
	clr	a
	addc	a,r7
	mov	(_ShiftRows_sloc2_1_0 + 1),a
	mov	dpl,_ShiftRows_sloc2_1_0
	mov	dph,(_ShiftRows_sloc2_1_0 + 1)
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$aes.c$249$1$1 ==.
;	libraries/src/aes/aes.c:249: (*state)[2][2] = temp;
	mov	dpl,_ShiftRows_sloc2_1_0
	mov	dph,(_ShiftRows_sloc2_1_0 + 1)
	mov	a,_ShiftRows_sloc1_1_0
	movx	@dptr,a
	C$aes.c$251$1$1 ==.
;	libraries/src/aes/aes.c:251: temp       = (*state)[1][2];
	mov	a,#0x06
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_ShiftRows_sloc2_1_0,a
	C$aes.c$252$1$1 ==.
;	libraries/src/aes/aes.c:252: (*state)[1][2] = (*state)[3][2];
	mov	a,#0x0E
	add	a,r6
	mov	_ShiftRows_sloc1_1_0,a
	clr	a
	addc	a,r7
	mov	(_ShiftRows_sloc1_1_0 + 1),a
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$aes.c$253$1$1 ==.
;	libraries/src/aes/aes.c:253: (*state)[3][2] = temp;
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	mov	a,_ShiftRows_sloc2_1_0
	movx	@dptr,a
	C$aes.c$256$1$1 ==.
;	libraries/src/aes/aes.c:256: temp       = (*state)[0][3];
	mov	a,#0x03
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_ShiftRows_sloc2_1_0,a
	C$aes.c$257$1$1 ==.
;	libraries/src/aes/aes.c:257: (*state)[0][3] = (*state)[3][3];
	mov	a,#0x0F
	add	a,r6
	mov	_ShiftRows_sloc1_1_0,a
	clr	a
	addc	a,r7
	mov	(_ShiftRows_sloc1_1_0 + 1),a
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$aes.c$258$1$1 ==.
;	libraries/src/aes/aes.c:258: (*state)[3][3] = (*state)[2][3];
	mov	a,#0x0B
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	dpl,_ShiftRows_sloc1_1_0
	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
	movx	@dptr,a
	C$aes.c$259$1$1 ==.
;	libraries/src/aes/aes.c:259: (*state)[2][3] = (*state)[1][3];
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$aes.c$260$1$1 ==.
;	libraries/src/aes/aes.c:260: (*state)[1][3] = temp;
	mov	dpl,r6
	mov	dph,r7
	mov	a,_ShiftRows_sloc2_1_0
	movx	@dptr,a
	C$aes.c$261$1$1 ==.
	XFaes$ShiftRows$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xtime'
;------------------------------------------------------------
;x                         Allocated with name '_xtime_x_1_1'
;------------------------------------------------------------
	Faes$xtime$0$0 ==.
	C$aes.c$263$1$1 ==.
;	libraries/src/aes/aes.c:263: static XDATA uint8_t xtime(XDATA uint8_t x)
;	-----------------------------------------
;	 function xtime
;	-----------------------------------------
_xtime:
	mov	a,dpl
	C$aes.c$265$1$1 ==.
;	libraries/src/aes/aes.c:265: return ((x<<1) ^ (((x>>7) & 1) * 0x1b));
	mov	dptr,#_xtime_x_1_1
	movx	@dptr,a
	mov	r7,a
	add	a,acc
	mov	r6,a
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	b,#0x1B
	mul	ab
	xrl	ar6,a
	mov	dpl,r6
	C$aes.c$266$1$1 ==.
	XFaes$xtime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Multiply'
;------------------------------------------------------------
;y                         Allocated with name '_Multiply_PARM_2'
;x                         Allocated with name '_Multiply_x_1_1'
;------------------------------------------------------------
	Faes$Multiply$0$0 ==.
	C$aes.c$290$1$1 ==.
;	libraries/src/aes/aes.c:290: static XDATA uint8_t Multiply(XDATA uint8_t x, XDATA uint8_t y)
;	-----------------------------------------
;	 function Multiply
;	-----------------------------------------
_Multiply:
	mov	a,dpl
	mov	dptr,#_Multiply_x_1_1
	movx	@dptr,a
	C$aes.c$292$1$1 ==.
;	libraries/src/aes/aes.c:292: return (((y & 1) * x) ^
	mov	dptr,#_Multiply_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	anl	a,r7
	mov	r6,a
	mov	dptr,#_Multiply_x_1_1
	movx	a,@dptr
	mov	r5,a
	mov	b,r6
	mul	ab
	mov	r6,a
	C$aes.c$293$1$1 ==.
;	libraries/src/aes/aes.c:293: ((y>>1 & 1) * xtime(x)) ^
	mov	a,r7
	rr	a
	anl	a,#0x01
	mov	r4,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_xtime
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b,r4
	mov	a,r3
	mul	ab
	xrl	ar6,a
	C$aes.c$294$1$1 ==.
;	libraries/src/aes/aes.c:294: ((y>>2 & 1) * xtime(xtime(x))) ^
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
	mov	r4,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_xtime
	lcall	_xtime
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b,r4
	mov	a,r3
	mul	ab
	xrl	ar6,a
	C$aes.c$295$1$1 ==.
;	libraries/src/aes/aes.c:295: ((y>>3 & 1) * xtime(xtime(xtime(x)))) ^
	mov	a,r7
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r4,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_xtime
	lcall	_xtime
	lcall	_xtime
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b,r4
	mov	a,r3
	mul	ab
	xrl	ar6,a
	C$aes.c$296$1$1 ==.
;	libraries/src/aes/aes.c:296: ((y>>4 & 1) * xtime(xtime(xtime(xtime(x))))));
	mov	a,r7
	swap	a
	anl	a,#0x01
	mov	r7,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_xtime
	lcall	_xtime
	lcall	_xtime
	lcall	_xtime
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	b,r7
	mov	a,r5
	mul	ab
	xrl	ar6,a
	mov	dpl,r6
	C$aes.c$297$1$1 ==.
	XFaes$Multiply$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Cipher'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Cipher_sloc0_1_0'
;sloc1                     Allocated with name '_Cipher_sloc1_1_0'
;sloc2                     Allocated with name '_Cipher_sloc2_1_0'
;round                     Allocated with name '_Cipher_round_1_1'
;i                         Allocated with name '_Cipher_i_1_1'
;k                         Allocated with name '_Cipher_k_1_1'
;Tmp                       Allocated with name '_Cipher_Tmp_1_1'
;Tm                        Allocated with name '_Cipher_Tm_1_1'
;t                         Allocated with name '_Cipher_t_1_1'
;------------------------------------------------------------
	Faes$Cipher$0$0 ==.
	C$aes.c$315$1$1 ==.
;	libraries/src/aes/aes.c:315: static void Cipher(void)
;	-----------------------------------------
;	 function Cipher
;	-----------------------------------------
_Cipher:
	C$aes.c$326$1$1 ==.
;	libraries/src/aes/aes.c:326: AddRoundKey(0);
	mov	dpl,#0x00
	lcall	_AddRoundKey
	C$aes.c$331$1$1 ==.
;	libraries/src/aes/aes.c:331: for(round = 1; round < Nr; ++round)
	mov	r7,#0x01
00109$:
	cjne	r7,#0x0A,00123$
00123$:
	jc	00124$
	ljmp	00112$
00124$:
	C$aes.c$333$2$2 ==.
;	libraries/src/aes/aes.c:333: SubBytes();
	push	ar7
	lcall	_SubBytes
	C$aes.c$334$2$2 ==.
;	libraries/src/aes/aes.c:334: ShiftRows();
	lcall	_ShiftRows
	pop	ar7
	C$aes.c$341$1$1 ==.
;	libraries/src/aes/aes.c:341: for(i = 0; i < 4; ++i)
	mov	r6,#0x00
00105$:
	cjne	r6,#0x04,00125$
00125$:
	jc	00126$
	ljmp	00108$
00126$:
	C$aes.c$343$1$1 ==.
;	libraries/src/aes/aes.c:343: t   = (*state)[i][0];
	push	ar7
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r5,a
	mov	r0,#_state
	movx	a,@r0
	add	a,r5
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_Cipher_t_1_1
	movx	@dptr,a
	C$aes.c$344$3$3 ==.
;	libraries/src/aes/aes.c:344: Tmp = (*state)[i][0] ^ (*state)[i][1] ^ (*state)[i][2] ^ (*state)[i][3] ;
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	xrl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	xrl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	xrl	a,r2
	mov	_Cipher_sloc0_1_0,a
	mov	dptr,#_Cipher_Tmp_1_1
	movx	@dptr,a
	C$aes.c$346$3$3 ==.
;	libraries/src/aes/aes.c:346: for(k = 0; k < 3; ++k)
	mov	dptr,#_Cipher_k_1_1
	clr	a
	movx	@dptr,a
	C$aes.c$370$1$1 ==.
;	libraries/src/aes/aes.c:370: AddRoundKey(Nr);
	pop	ar7
	C$aes.c$346$4$4 ==.
;	libraries/src/aes/aes.c:346: for(k = 0; k < 3; ++k)
	mov	_Cipher_sloc1_1_0,r5
00101$:
	mov	dptr,#_Cipher_k_1_1
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x03,00127$
00127$:
	jnc	00104$
	C$aes.c$348$1$1 ==.
;	libraries/src/aes/aes.c:348: Tm  = (*state)[i][k] ^ (*state)[i][k+1] ; Tm = xtime(Tm);  (*state)[i][k] ^= Tm ^ Tmp ;
	push	ar7
	mov	r0,#_state
	movx	a,@r0
	add	a,_Cipher_sloc1_1_0
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	a,r3
	add	a,r2
	mov	_Cipher_sloc2_1_0,a
	clr	a
	addc	a,r7
	mov	(_Cipher_sloc2_1_0 + 1),a
	mov	a,r3
	inc	a
	mov	r5,a
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_Cipher_sloc2_1_0
	mov	dph,(_Cipher_sloc2_1_0 + 1)
	movx	a,@dptr
	mov	r4,a
	mov	a,r7
	xrl	a,r4
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar3
	lcall	_xtime
	mov	r7,dpl
	pop	ar3
	pop	ar5
	pop	ar6
	mov	r0,#_state
	movx	a,@r0
	add	a,_Cipher_sloc1_1_0
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r4,a
	mov	a,r3
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,_Cipher_sloc0_1_0
	xrl	ar7,a
	mov	dpl,r2
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	xrl	ar7,a
	mov	dpl,r2
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
	C$aes.c$346$3$3 ==.
;	libraries/src/aes/aes.c:346: for(k = 0; k < 3; ++k)
	mov	dptr,#_Cipher_k_1_1
	mov	a,r5
	movx	@dptr,a
	pop	ar7
	sjmp	00101$
00104$:
	C$aes.c$358$3$3 ==.
;	libraries/src/aes/aes.c:358: Tm  = (*state)[i][3] ^ t ;        Tm = xtime(Tm);  (*state)[i][3] ^= Tm ^ Tmp ;
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r5,a
	mov	r0,#_state
	movx	a,@r0
	add	a,r5
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r4,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_Cipher_t_1_1
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	xrl	a,r3
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_xtime
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_state
	movx	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_Cipher_Tmp_1_1
	movx	a,@dptr
	xrl	ar4,a
	mov	dpl,r5
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	xrl	ar4,a
	mov	dpl,r5
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	C$aes.c$341$2$2 ==.
;	libraries/src/aes/aes.c:341: for(i = 0; i < 4; ++i)
	inc	r6
	ljmp	00105$
00108$:
	C$aes.c$360$2$2 ==.
;	libraries/src/aes/aes.c:360: AddRoundKey(round);
	mov	dpl,r7
	push	ar7
	lcall	_AddRoundKey
	pop	ar7
	C$aes.c$331$1$1 ==.
;	libraries/src/aes/aes.c:331: for(round = 1; round < Nr; ++round)
	inc	r7
	ljmp	00109$
00112$:
	C$aes.c$368$1$1 ==.
;	libraries/src/aes/aes.c:368: SubBytes();
	lcall	_SubBytes
	C$aes.c$369$1$1 ==.
;	libraries/src/aes/aes.c:369: ShiftRows();
	lcall	_ShiftRows
	C$aes.c$370$1$1 ==.
;	libraries/src/aes/aes.c:370: AddRoundKey(Nr);
	mov	dpl,#0x0A
	lcall	_AddRoundKey
	C$aes.c$371$1$1 ==.
	XFaes$Cipher$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BlockCopy'
;------------------------------------------------------------
;i                         Allocated with name '_BlockCopy_i_1_1'
;sloc0                     Allocated with name '_BlockCopy_sloc0_1_0'
;------------------------------------------------------------
	Faes$BlockCopy$0$0 ==.
	C$aes.c$375$1$1 ==.
;	libraries/src/aes/aes.c:375: static void BlockCopy(uint8_t* output, uint8_t* input)
;	-----------------------------------------
;	 function BlockCopy
;	-----------------------------------------
_BlockCopy:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_BlockCopy_output_1_1
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$aes.c$378$1$1 ==.
;	libraries/src/aes/aes.c:378: for (i=0;i<KEYLEN;++i)
	mov	r4,#0x00
00101$:
	cjne	r4,#0x10,00110$
00110$:
	jnc	00105$
	C$aes.c$380$2$2 ==.
;	libraries/src/aes/aes.c:380: output[i] = input[i];
	mov	r0,#_BlockCopy_output_1_1
	movx	a,@r0
	add	a,r4
	mov	_BlockCopy_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	(_BlockCopy_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_BlockCopy_sloc0_1_0 + 2),a
	mov	r0,#_BlockCopy_PARM_2
	movx	a,@r0
	add	a,r4
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dpl,_BlockCopy_sloc0_1_0
	mov	dph,(_BlockCopy_sloc0_1_0 + 1)
	mov	b,(_BlockCopy_sloc0_1_0 + 2)
	lcall	__gptrput
	C$aes.c$378$1$1 ==.
;	libraries/src/aes/aes.c:378: for (i=0;i<KEYLEN;++i)
	inc	r4
	sjmp	00101$
00105$:
	C$aes.c$382$1$1 ==.
	XFaes$BlockCopy$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'XorWithIv'
;------------------------------------------------------------
;i                         Allocated with name '_XorWithIv_i_1_1'
;------------------------------------------------------------
	Faes$XorWithIv$0$0 ==.
	C$aes.c$390$1$1 ==.
;	libraries/src/aes/aes.c:390: static void XorWithIv(XDATA uint8_t* buf)
;	-----------------------------------------
;	 function XorWithIv
;	-----------------------------------------
_XorWithIv:
	mov	r6,dpl
	mov	r7,dph
	C$aes.c$393$1$1 ==.
;	libraries/src/aes/aes.c:393: for(i = 0; i < KEYLEN; ++i)
	mov	r5,#0x00
00101$:
	cjne	r5,#0x10,00110$
00110$:
	jnc	00105$
	C$aes.c$395$2$2 ==.
;	libraries/src/aes/aes.c:395: buf[i] ^= Iv[i];
	mov	a,r5
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	mov	r0,#_Iv
	movx	a,@r0
	add	a,r5
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	push	ar6
	push	ar7
	movx	a,@dptr
	xrl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	C$aes.c$393$1$1 ==.
;	libraries/src/aes/aes.c:393: for(i = 0; i < KEYLEN; ++i)
	inc	r5
	pop	ar7
	pop	ar6
	sjmp	00101$
00105$:
	C$aes.c$397$1$1 ==.
	XFaes$XorWithIv$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AES128_CBC_encrypt_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc0_1_0'
;sloc1                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc1_1_0'
;sloc2                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc2_1_0'
;sloc3                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc3_1_0'
;input                     Allocated with name '_AES128_CBC_encrypt_buffer_PARM_2'
;length                    Allocated with name '_AES128_CBC_encrypt_buffer_PARM_3'
;key                       Allocated with name '_AES128_CBC_encrypt_buffer_PARM_4'
;iv                        Allocated with name '_AES128_CBC_encrypt_buffer_PARM_5'
;output                    Allocated with name '_AES128_CBC_encrypt_buffer_output_1_1'
;i                         Allocated with name '_AES128_CBC_encrypt_buffer_i_1_1'
;remainders                Allocated with name '_AES128_CBC_encrypt_buffer_remainders_1_1'
;------------------------------------------------------------
	G$AES128_CBC_encrypt_buffer$0$0 ==.
	C$aes.c$399$1$1 ==.
;	libraries/src/aes/aes.c:399: void AES128_CBC_encrypt_buffer(XDATA uint8_t* XDATA output, XDATA uint8_t* XDATA input, XDATA uint32_t length, XDATA const uint8_t* XDATA key, XDATA const uint8_t* XDATA iv)
;	-----------------------------------------
;	 function AES128_CBC_encrypt_buffer
;	-----------------------------------------
_AES128_CBC_encrypt_buffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$aes.c$403$1$1 ==.
;	libraries/src/aes/aes.c:403: XDATA uint8_t remainders = length % KEYLEN; /* Remaining bytes in the last non-full block */
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_3
	movx	a,@dptr
	mov	_AES128_CBC_encrypt_buffer_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 3),a
	mov	a,#0x0F
	anl	a,_AES128_CBC_encrypt_buffer_sloc0_1_0
	mov	r2,a
	C$aes.c$408$1$1 ==.
;	libraries/src/aes/aes.c:408: BlockCopy(output, input);
	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar3,r6
	mov	ar4,r7
	mov	r5,#0x00
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_2
	movx	a,@dptr
	mov	_AES128_CBC_encrypt_buffer_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1),a
	mov	r0,#_BlockCopy_PARM_2
	mov	a,_AES128_CBC_encrypt_buffer_sloc1_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	push	ar2
	lcall	_BlockCopy
	pop	ar2
	pop	ar6
	pop	ar7
	C$aes.c$409$1$1 ==.
;	libraries/src/aes/aes.c:409: state = (state_t*)output;
	mov	r0,#_state
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$aes.c$412$1$1 ==.
;	libraries/src/aes/aes.c:412: if(0 != key)
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00102$
	C$aes.c$414$2$2 ==.
;	libraries/src/aes/aes.c:414: Key = key;
	mov	r0,#_Key
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$aes.c$415$2$2 ==.
;	libraries/src/aes/aes.c:415: KeyExpansion();
	push	ar2
	lcall	_KeyExpansion
	pop	ar2
00102$:
	C$aes.c$418$1$1 ==.
;	libraries/src/aes/aes.c:418: if(iv != 0)
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00116$
	C$aes.c$420$2$3 ==.
;	libraries/src/aes/aes.c:420: Iv = (uint8_t*)iv;
	mov	r0,#_Iv
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$aes.c$423$2$1 ==.
;	libraries/src/aes/aes.c:423: for(i = 0; i < length; i += KEYLEN)
00116$:
	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	a
	mov	_AES128_CBC_encrypt_buffer_sloc2_1_0,a
	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1),a
	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2),a
	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3),a
00107$:
	clr	c
	mov	a,_AES128_CBC_encrypt_buffer_sloc2_1_0
	subb	a,_AES128_CBC_encrypt_buffer_sloc0_1_0
	mov	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1)
	subb	a,(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 1)
	mov	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2)
	subb	a,(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 2)
	mov	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3)
	subb	a,(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 3)
	jc	00121$
	ljmp	00118$
00121$:
	C$aes.c$425$2$1 ==.
;	libraries/src/aes/aes.c:425: XorWithIv(input);
	push	ar2
	mov	dpl,_AES128_CBC_encrypt_buffer_sloc1_1_0
	mov	dph,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
	push	ar5
	push	ar4
	push	ar2
	lcall	_XorWithIv
	pop	ar2
	pop	ar4
	pop	ar5
	C$aes.c$426$2$4 ==.
;	libraries/src/aes/aes.c:426: BlockCopy(output, input);
	mov	ar2,r4
	mov	ar3,r5
	mov	_AES128_CBC_encrypt_buffer_sloc3_1_0,r2
	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1),r3
	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2),#0x00
	mov	r6,_AES128_CBC_encrypt_buffer_sloc1_1_0
	mov	r7,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
	mov	r0,#_BlockCopy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,_AES128_CBC_encrypt_buffer_sloc3_1_0
	mov	dph,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1)
	mov	b,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2)
	push	ar5
	push	ar4
	push	ar2
	lcall	_BlockCopy
	pop	ar2
	pop	ar4
	pop	ar5
	C$aes.c$427$2$4 ==.
;	libraries/src/aes/aes.c:427: state = (state_t*)output;
	mov	ar6,r4
	mov	ar7,r5
	mov	r0,#_state
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$aes.c$428$2$4 ==.
;	libraries/src/aes/aes.c:428: Cipher();
	push	ar5
	push	ar4
	push	ar2
	lcall	_Cipher
	pop	ar2
	pop	ar4
	pop	ar5
	C$aes.c$429$2$4 ==.
;	libraries/src/aes/aes.c:429: Iv = output;
	mov	r0,#_Iv
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	C$aes.c$430$2$4 ==.
;	libraries/src/aes/aes.c:430: input += KEYLEN;
	mov	a,#0x10
	add	a,_AES128_CBC_encrypt_buffer_sloc1_1_0
	mov	_AES128_CBC_encrypt_buffer_sloc1_1_0,a
	clr	a
	addc	a,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
	mov	(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1),a
	C$aes.c$431$2$4 ==.
;	libraries/src/aes/aes.c:431: output += KEYLEN;
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	C$aes.c$423$1$1 ==.
;	libraries/src/aes/aes.c:423: for(i = 0; i < length; i += KEYLEN)
	mov	a,#0x10
	add	a,_AES128_CBC_encrypt_buffer_sloc2_1_0
	mov	_AES128_CBC_encrypt_buffer_sloc2_1_0,a
	clr	a
	addc	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1)
	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1),a
	clr	a
	addc	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2)
	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2),a
	clr	a
	addc	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3)
	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3),a
	pop	ar2
	ljmp	00107$
00118$:
	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	C$aes.c$434$1$1 ==.
;	libraries/src/aes/aes.c:434: if(remainders)
	mov	a,r2
	jz	00111$
	C$aes.c$436$2$5 ==.
;	libraries/src/aes/aes.c:436: BlockCopy(output, input);
	mov	ar6,r4
	mov	ar7,r5
	mov	_AES128_CBC_encrypt_buffer_sloc3_1_0,r6
	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1),r7
	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2),#0x00
	mov	r6,_AES128_CBC_encrypt_buffer_sloc1_1_0
	mov	r7,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
	mov	r0,#_BlockCopy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dpl,_AES128_CBC_encrypt_buffer_sloc3_1_0
	mov	dph,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1)
	mov	b,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2)
	push	ar5
	push	ar4
	push	ar2
	lcall	_BlockCopy
	pop	ar2
	pop	ar4
	pop	ar5
	C$aes.c$437$2$5 ==.
;	libraries/src/aes/aes.c:437: memset(output + remainders, 0, KEYLEN - remainders); /* add 0-padding */
	mov	a,r2
	add	a,r4
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r7,a
	mov	_AES128_CBC_encrypt_buffer_sloc3_1_0,r6
	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1),r7
	clr	a
	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2),a
	mov	r7,a
	mov	a,#0x10
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	r0,#_memset_PARM_3
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	r0,#_memset_PARM_2
	clr	a
	movx	@r0,a
	mov	dpl,_AES128_CBC_encrypt_buffer_sloc3_1_0
	mov	dph,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1)
	mov	b,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2)
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
	C$aes.c$438$2$5 ==.
;	libraries/src/aes/aes.c:438: state = (state_t*)output;
	mov	r0,#_state
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	C$aes.c$439$2$5 ==.
;	libraries/src/aes/aes.c:439: Cipher();
	lcall	_Cipher
00111$:
	C$aes.c$441$2$1 ==.
	XG$AES128_CBC_encrypt_buffer$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Faes$sbox$0$0 == .
_sbox:
	.db #0x63	; 99	'c'
	.db #0x7C	; 124
	.db #0x77	; 119	'w'
	.db #0x7B	; 123
	.db #0xF2	; 242
	.db #0x6B	; 107	'k'
	.db #0x6F	; 111	'o'
	.db #0xC5	; 197
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x67	; 103	'g'
	.db #0x2B	; 43
	.db #0xFE	; 254
	.db #0xD7	; 215
	.db #0xAB	; 171
	.db #0x76	; 118	'v'
	.db #0xCA	; 202
	.db #0x82	; 130
	.db #0xC9	; 201
	.db #0x7D	; 125
	.db #0xFA	; 250
	.db #0x59	; 89	'Y'
	.db #0x47	; 71	'G'
	.db #0xF0	; 240
	.db #0xAD	; 173
	.db #0xD4	; 212
	.db #0xA2	; 162
	.db #0xAF	; 175
	.db #0x9C	; 156
	.db #0xA4	; 164
	.db #0x72	; 114	'r'
	.db #0xC0	; 192
	.db #0xB7	; 183
	.db #0xFD	; 253
	.db #0x93	; 147
	.db #0x26	; 38
	.db #0x36	; 54	'6'
	.db #0x3F	; 63
	.db #0xF7	; 247
	.db #0xCC	; 204
	.db #0x34	; 52	'4'
	.db #0xA5	; 165
	.db #0xE5	; 229
	.db #0xF1	; 241
	.db #0x71	; 113	'q'
	.db #0xD8	; 216
	.db #0x31	; 49	'1'
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0xC7	; 199
	.db #0x23	; 35
	.db #0xC3	; 195
	.db #0x18	; 24
	.db #0x96	; 150
	.db #0x05	; 5
	.db #0x9A	; 154
	.db #0x07	; 7
	.db #0x12	; 18
	.db #0x80	; 128
	.db #0xE2	; 226
	.db #0xEB	; 235
	.db #0x27	; 39
	.db #0xB2	; 178
	.db #0x75	; 117	'u'
	.db #0x09	; 9
	.db #0x83	; 131
	.db #0x2C	; 44
	.db #0x1A	; 26
	.db #0x1B	; 27
	.db #0x6E	; 110	'n'
	.db #0x5A	; 90	'Z'
	.db #0xA0	; 160
	.db #0x52	; 82	'R'
	.db #0x3B	; 59
	.db #0xD6	; 214
	.db #0xB3	; 179
	.db #0x29	; 41
	.db #0xE3	; 227
	.db #0x2F	; 47
	.db #0x84	; 132
	.db #0x53	; 83	'S'
	.db #0xD1	; 209
	.db #0x00	; 0
	.db #0xED	; 237
	.db #0x20	; 32
	.db #0xFC	; 252
	.db #0xB1	; 177
	.db #0x5B	; 91
	.db #0x6A	; 106	'j'
	.db #0xCB	; 203
	.db #0xBE	; 190
	.db #0x39	; 57	'9'
	.db #0x4A	; 74	'J'
	.db #0x4C	; 76	'L'
	.db #0x58	; 88	'X'
	.db #0xCF	; 207
	.db #0xD0	; 208
	.db #0xEF	; 239
	.db #0xAA	; 170
	.db #0xFB	; 251
	.db #0x43	; 67	'C'
	.db #0x4D	; 77	'M'
	.db #0x33	; 51	'3'
	.db #0x85	; 133
	.db #0x45	; 69	'E'
	.db #0xF9	; 249
	.db #0x02	; 2
	.db #0x7F	; 127
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0x9F	; 159
	.db #0xA8	; 168
	.db #0x51	; 81	'Q'
	.db #0xA3	; 163
	.db #0x40	; 64
	.db #0x8F	; 143
	.db #0x92	; 146
	.db #0x9D	; 157
	.db #0x38	; 56	'8'
	.db #0xF5	; 245
	.db #0xBC	; 188
	.db #0xB6	; 182
	.db #0xDA	; 218
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xD2	; 210
	.db #0xCD	; 205
	.db #0x0C	; 12
	.db #0x13	; 19
	.db #0xEC	; 236
	.db #0x5F	; 95
	.db #0x97	; 151
	.db #0x44	; 68	'D'
	.db #0x17	; 23
	.db #0xC4	; 196
	.db #0xA7	; 167
	.db #0x7E	; 126
	.db #0x3D	; 61
	.db #0x64	; 100	'd'
	.db #0x5D	; 93
	.db #0x19	; 25
	.db #0x73	; 115	's'
	.db #0x60	; 96
	.db #0x81	; 129
	.db #0x4F	; 79	'O'
	.db #0xDC	; 220
	.db #0x22	; 34
	.db #0x2A	; 42
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x46	; 70	'F'
	.db #0xEE	; 238
	.db #0xB8	; 184
	.db #0x14	; 20
	.db #0xDE	; 222
	.db #0x5E	; 94
	.db #0x0B	; 11
	.db #0xDB	; 219
	.db #0xE0	; 224
	.db #0x32	; 50	'2'
	.db #0x3A	; 58
	.db #0x0A	; 10
	.db #0x49	; 73	'I'
	.db #0x06	; 6
	.db #0x24	; 36
	.db #0x5C	; 92
	.db #0xC2	; 194
	.db #0xD3	; 211
	.db #0xAC	; 172
	.db #0x62	; 98	'b'
	.db #0x91	; 145
	.db #0x95	; 149
	.db #0xE4	; 228
	.db #0x79	; 121	'y'
	.db #0xE7	; 231
	.db #0xC8	; 200
	.db #0x37	; 55	'7'
	.db #0x6D	; 109	'm'
	.db #0x8D	; 141
	.db #0xD5	; 213
	.db #0x4E	; 78	'N'
	.db #0xA9	; 169
	.db #0x6C	; 108	'l'
	.db #0x56	; 86	'V'
	.db #0xF4	; 244
	.db #0xEA	; 234
	.db #0x65	; 101	'e'
	.db #0x7A	; 122	'z'
	.db #0xAE	; 174
	.db #0x08	; 8
	.db #0xBA	; 186
	.db #0x78	; 120	'x'
	.db #0x25	; 37
	.db #0x2E	; 46
	.db #0x1C	; 28
	.db #0xA6	; 166
	.db #0xB4	; 180
	.db #0xC6	; 198
	.db #0xE8	; 232
	.db #0xDD	; 221
	.db #0x74	; 116	't'
	.db #0x1F	; 31
	.db #0x4B	; 75	'K'
	.db #0xBD	; 189
	.db #0x8B	; 139
	.db #0x8A	; 138
	.db #0x70	; 112	'p'
	.db #0x3E	; 62
	.db #0xB5	; 181
	.db #0x66	; 102	'f'
	.db #0x48	; 72	'H'
	.db #0x03	; 3
	.db #0xF6	; 246
	.db #0x0E	; 14
	.db #0x61	; 97	'a'
	.db #0x35	; 53	'5'
	.db #0x57	; 87	'W'
	.db #0xB9	; 185
	.db #0x86	; 134
	.db #0xC1	; 193
	.db #0x1D	; 29
	.db #0x9E	; 158
	.db #0xE1	; 225
	.db #0xF8	; 248
	.db #0x98	; 152
	.db #0x11	; 17
	.db #0x69	; 105	'i'
	.db #0xD9	; 217
	.db #0x8E	; 142
	.db #0x94	; 148
	.db #0x9B	; 155
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0xE9	; 233
	.db #0xCE	; 206
	.db #0x55	; 85	'U'
	.db #0x28	; 40
	.db #0xDF	; 223
	.db #0x8C	; 140
	.db #0xA1	; 161
	.db #0x89	; 137
	.db #0x0D	; 13
	.db #0xBF	; 191
	.db #0xE6	; 230
	.db #0x42	; 66	'B'
	.db #0x68	; 104	'h'
	.db #0x41	; 65	'A'
	.db #0x99	; 153
	.db #0x2D	; 45
	.db #0x0F	; 15
	.db #0xB0	; 176
	.db #0x54	; 84	'T'
	.db #0xBB	; 187
	.db #0x16	; 22
Faes$Rcon$0$0 == .
_Rcon:
	.db #0x8D	; 141
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x1B	; 27
	.db #0x36	; 54	'6'
	.db #0x6C	; 108	'l'
	.db #0xD8	; 216
	.db #0xAB	; 171
	.db #0x4D	; 77	'M'
	.db #0x9A	; 154
	.db #0x2F	; 47
	.db #0x5E	; 94
	.db #0xBC	; 188
	.db #0x63	; 99	'c'
	.db #0xC6	; 198
	.db #0x97	; 151
	.db #0x35	; 53	'5'
	.db #0x6A	; 106	'j'
	.db #0xD4	; 212
	.db #0xB3	; 179
	.db #0x7D	; 125
	.db #0xFA	; 250
	.db #0xEF	; 239
	.db #0xC5	; 197
	.db #0x91	; 145
	.db #0x39	; 57	'9'
	.db #0x72	; 114	'r'
	.db #0xE4	; 228
	.db #0xD3	; 211
	.db #0xBD	; 189
	.db #0x61	; 97	'a'
	.db #0xC2	; 194
	.db #0x9F	; 159
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x94	; 148
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xCC	; 204
	.db #0x83	; 131
	.db #0x1D	; 29
	.db #0x3A	; 58
	.db #0x74	; 116	't'
	.db #0xE8	; 232
	.db #0xCB	; 203
	.db #0x8D	; 141
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x1B	; 27
	.db #0x36	; 54	'6'
	.db #0x6C	; 108	'l'
	.db #0xD8	; 216
	.db #0xAB	; 171
	.db #0x4D	; 77	'M'
	.db #0x9A	; 154
	.db #0x2F	; 47
	.db #0x5E	; 94
	.db #0xBC	; 188
	.db #0x63	; 99	'c'
	.db #0xC6	; 198
	.db #0x97	; 151
	.db #0x35	; 53	'5'
	.db #0x6A	; 106	'j'
	.db #0xD4	; 212
	.db #0xB3	; 179
	.db #0x7D	; 125
	.db #0xFA	; 250
	.db #0xEF	; 239
	.db #0xC5	; 197
	.db #0x91	; 145
	.db #0x39	; 57	'9'
	.db #0x72	; 114	'r'
	.db #0xE4	; 228
	.db #0xD3	; 211
	.db #0xBD	; 189
	.db #0x61	; 97	'a'
	.db #0xC2	; 194
	.db #0x9F	; 159
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x94	; 148
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xCC	; 204
	.db #0x83	; 131
	.db #0x1D	; 29
	.db #0x3A	; 58
	.db #0x74	; 116	't'
	.db #0xE8	; 232
	.db #0xCB	; 203
	.db #0x8D	; 141
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x1B	; 27
	.db #0x36	; 54	'6'
	.db #0x6C	; 108	'l'
	.db #0xD8	; 216
	.db #0xAB	; 171
	.db #0x4D	; 77	'M'
	.db #0x9A	; 154
	.db #0x2F	; 47
	.db #0x5E	; 94
	.db #0xBC	; 188
	.db #0x63	; 99	'c'
	.db #0xC6	; 198
	.db #0x97	; 151
	.db #0x35	; 53	'5'
	.db #0x6A	; 106	'j'
	.db #0xD4	; 212
	.db #0xB3	; 179
	.db #0x7D	; 125
	.db #0xFA	; 250
	.db #0xEF	; 239
	.db #0xC5	; 197
	.db #0x91	; 145
	.db #0x39	; 57	'9'
	.db #0x72	; 114	'r'
	.db #0xE4	; 228
	.db #0xD3	; 211
	.db #0xBD	; 189
	.db #0x61	; 97	'a'
	.db #0xC2	; 194
	.db #0x9F	; 159
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x94	; 148
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xCC	; 204
	.db #0x83	; 131
	.db #0x1D	; 29
	.db #0x3A	; 58
	.db #0x74	; 116	't'
	.db #0xE8	; 232
	.db #0xCB	; 203
	.db #0x8D	; 141
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x1B	; 27
	.db #0x36	; 54	'6'
	.db #0x6C	; 108	'l'
	.db #0xD8	; 216
	.db #0xAB	; 171
	.db #0x4D	; 77	'M'
	.db #0x9A	; 154
	.db #0x2F	; 47
	.db #0x5E	; 94
	.db #0xBC	; 188
	.db #0x63	; 99	'c'
	.db #0xC6	; 198
	.db #0x97	; 151
	.db #0x35	; 53	'5'
	.db #0x6A	; 106	'j'
	.db #0xD4	; 212
	.db #0xB3	; 179
	.db #0x7D	; 125
	.db #0xFA	; 250
	.db #0xEF	; 239
	.db #0xC5	; 197
	.db #0x91	; 145
	.db #0x39	; 57	'9'
	.db #0x72	; 114	'r'
	.db #0xE4	; 228
	.db #0xD3	; 211
	.db #0xBD	; 189
	.db #0x61	; 97	'a'
	.db #0xC2	; 194
	.db #0x9F	; 159
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x94	; 148
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xCC	; 204
	.db #0x83	; 131
	.db #0x1D	; 29
	.db #0x3A	; 58
	.db #0x74	; 116	't'
	.db #0xE8	; 232
	.db #0xCB	; 203
	.db #0x8D	; 141
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x1B	; 27
	.db #0x36	; 54	'6'
	.db #0x6C	; 108	'l'
	.db #0xD8	; 216
	.db #0xAB	; 171
	.db #0x4D	; 77	'M'
	.db #0x9A	; 154
	.db #0x2F	; 47
	.db #0x5E	; 94
	.db #0xBC	; 188
	.db #0x63	; 99	'c'
	.db #0xC6	; 198
	.db #0x97	; 151
	.db #0x35	; 53	'5'
	.db #0x6A	; 106	'j'
	.db #0xD4	; 212
	.db #0xB3	; 179
	.db #0x7D	; 125
	.db #0xFA	; 250
	.db #0xEF	; 239
	.db #0xC5	; 197
	.db #0x91	; 145
	.db #0x39	; 57	'9'
	.db #0x72	; 114	'r'
	.db #0xE4	; 228
	.db #0xD3	; 211
	.db #0xBD	; 189
	.db #0x61	; 97	'a'
	.db #0xC2	; 194
	.db #0x9F	; 159
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x94	; 148
	.db #0x33	; 51	'3'
	.db #0x66	; 102	'f'
	.db #0xCC	; 204
	.db #0x83	; 131
	.db #0x1D	; 29
	.db #0x3A	; 58
	.db #0x74	; 116	't'
	.db #0xE8	; 232
	.db #0xCB	; 203
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
