                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Tue Feb 23 23:36:46 2016
                              5 ;--------------------------------------------------------
                              6 	.module aes
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _memset
                             13 	.globl _AES128_CBC_encrypt_buffer_PARM_5
                             14 	.globl _AES128_CBC_encrypt_buffer_PARM_4
                             15 	.globl _AES128_CBC_encrypt_buffer_PARM_3
                             16 	.globl _AES128_CBC_encrypt_buffer_PARM_2
                             17 	.globl _AES128_CBC_encrypt_buffer
                             18 ;--------------------------------------------------------
                             19 ; special function registers
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (ABS,DATA)
   0000                      22 	.org 0x0000
                             23 ;--------------------------------------------------------
                             24 ; special function bits
                             25 ;--------------------------------------------------------
                             26 	.area RSEG    (ABS,DATA)
   0000                      27 	.org 0x0000
                             28 ;--------------------------------------------------------
                             29 ; overlayable register banks
                             30 ;--------------------------------------------------------
                             31 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      32 	.ds 8
                             33 ;--------------------------------------------------------
                             34 ; internal ram data
                             35 ;--------------------------------------------------------
                             36 	.area DSEG    (DATA)
                    0000     37 Laes.KeyExpansion$sloc0$1$0==.
   0026                      38 _KeyExpansion_sloc0_1_0:
   0026                      39 	.ds 1
                    0001     40 Laes.KeyExpansion$sloc1$1$0==.
   0027                      41 _KeyExpansion_sloc1_1_0:
   0027                      42 	.ds 2
                    0003     43 Laes.KeyExpansion$sloc2$1$0==.
   0029                      44 _KeyExpansion_sloc2_1_0:
   0029                      45 	.ds 4
                    0007     46 Laes.KeyExpansion$sloc3$1$0==.
   002D                      47 _KeyExpansion_sloc3_1_0:
   002D                      48 	.ds 4
                    000B     49 Laes.KeyExpansion$sloc4$1$0==.
   0031                      50 _KeyExpansion_sloc4_1_0:
   0031                      51 	.ds 4
                    000F     52 Laes.Cipher$sloc0$1$0==.
   0035                      53 _Cipher_sloc0_1_0:
   0035                      54 	.ds 1
                    0010     55 Laes.Cipher$sloc1$1$0==.
   0036                      56 _Cipher_sloc1_1_0:
   0036                      57 	.ds 1
                    0011     58 Laes.Cipher$sloc2$1$0==.
   0037                      59 _Cipher_sloc2_1_0:
   0037                      60 	.ds 2
                    0013     61 Laes.AES128_CBC_encrypt_buffer$sloc0$1$0==.
   0039                      62 _AES128_CBC_encrypt_buffer_sloc0_1_0:
   0039                      63 	.ds 4
                    0017     64 Laes.AES128_CBC_encrypt_buffer$sloc1$1$0==.
   003D                      65 _AES128_CBC_encrypt_buffer_sloc1_1_0:
   003D                      66 	.ds 2
                    0019     67 Laes.AES128_CBC_encrypt_buffer$sloc2$1$0==.
   003F                      68 _AES128_CBC_encrypt_buffer_sloc2_1_0:
   003F                      69 	.ds 4
                    001D     70 Laes.AES128_CBC_encrypt_buffer$sloc3$1$0==.
   0043                      71 _AES128_CBC_encrypt_buffer_sloc3_1_0:
   0043                      72 	.ds 3
                             73 ;--------------------------------------------------------
                             74 ; overlayable items in internal ram 
                             75 ;--------------------------------------------------------
                             76 	.area	OSEG    (OVR,DATA)
                    0000     77 Laes.AddRoundKey$sloc0$1$0==.
   0079                      78 _AddRoundKey_sloc0_1_0:
   0079                      79 	.ds 1
                    0001     80 Laes.AddRoundKey$sloc1$1$0==.
   007A                      81 _AddRoundKey_sloc1_1_0:
   007A                      82 	.ds 1
                             83 	.area	OSEG    (OVR,DATA)
                    0000     84 Laes.ShiftRows$sloc0$1$0==.
   0079                      85 _ShiftRows_sloc0_1_0:
   0079                      86 	.ds 1
                    0001     87 Laes.ShiftRows$sloc1$1$0==.
   007A                      88 _ShiftRows_sloc1_1_0:
   007A                      89 	.ds 2
                    0003     90 Laes.ShiftRows$sloc2$1$0==.
   007C                      91 _ShiftRows_sloc2_1_0:
   007C                      92 	.ds 2
                             93 	.area	OSEG    (OVR,DATA)
                    0000     94 Laes.BlockCopy$sloc0$1$0==.
   0079                      95 _BlockCopy_sloc0_1_0:
   0079                      96 	.ds 3
                             97 ;--------------------------------------------------------
                             98 ; indirectly addressable internal ram data
                             99 ;--------------------------------------------------------
                            100 	.area ISEG    (DATA)
                            101 ;--------------------------------------------------------
                            102 ; absolute internal ram data
                            103 ;--------------------------------------------------------
                            104 	.area IABS    (ABS,DATA)
                            105 	.area IABS    (ABS,DATA)
                            106 ;--------------------------------------------------------
                            107 ; bit data
                            108 ;--------------------------------------------------------
                            109 	.area BSEG    (BIT)
                            110 ;--------------------------------------------------------
                            111 ; paged external ram data
                            112 ;--------------------------------------------------------
                            113 	.area PSEG    (PAG,XDATA)
                    0000    114 Faes$state$0$0==.
   F000                     115 _state:
   F000                     116 	.ds 2
                    0002    117 Faes$Key$0$0==.
   F002                     118 _Key:
   F002                     119 	.ds 2
                    0004    120 Faes$Iv$0$0==.
   F004                     121 _Iv:
   F004                     122 	.ds 2
                    0006    123 Laes.BlockCopy$input$1$1==.
   F006                     124 _BlockCopy_PARM_2:
   F006                     125 	.ds 3
                    0009    126 Laes.BlockCopy$output$1$1==.
   F009                     127 _BlockCopy_output_1_1:
   F009                     128 	.ds 3
                            129 ;--------------------------------------------------------
                            130 ; external ram data
                            131 ;--------------------------------------------------------
                            132 	.area XSEG    (XDATA)
                    0000    133 Faes$RoundKey$0$0==.
   F0FC                     134 _RoundKey:
   F0FC                     135 	.ds 176
                    00B0    136 Laes.getSBoxValue$num$1$1==.
   F1AC                     137 _getSBoxValue_num_1_1:
   F1AC                     138 	.ds 1
                    00B1    139 Laes.KeyExpansion$tempa$1$1==.
   F1AD                     140 _KeyExpansion_tempa_1_1:
   F1AD                     141 	.ds 4
                    00B5    142 Laes.AddRoundKey$round$1$1==.
   F1B1                     143 _AddRoundKey_round_1_1:
   F1B1                     144 	.ds 1
                    00B6    145 Laes.xtime$x$1$1==.
   F1B2                     146 _xtime_x_1_1:
   F1B2                     147 	.ds 1
                    00B7    148 Laes.Multiply$y$1$1==.
   F1B3                     149 _Multiply_PARM_2:
   F1B3                     150 	.ds 1
                    00B8    151 Laes.Multiply$x$1$1==.
   F1B4                     152 _Multiply_x_1_1:
   F1B4                     153 	.ds 1
                    00B9    154 Laes.Cipher$k$1$1==.
   F1B5                     155 _Cipher_k_1_1:
   F1B5                     156 	.ds 1
                    00BA    157 Laes.Cipher$Tmp$1$1==.
   F1B6                     158 _Cipher_Tmp_1_1:
   F1B6                     159 	.ds 1
                    00BB    160 Laes.Cipher$t$1$1==.
   F1B7                     161 _Cipher_t_1_1:
   F1B7                     162 	.ds 1
                    00BC    163 Laes.AES128_CBC_encrypt_buffer$input$1$1==.
   F1B8                     164 _AES128_CBC_encrypt_buffer_PARM_2:
   F1B8                     165 	.ds 2
                    00BE    166 Laes.AES128_CBC_encrypt_buffer$length$1$1==.
   F1BA                     167 _AES128_CBC_encrypt_buffer_PARM_3:
   F1BA                     168 	.ds 4
                    00C2    169 Laes.AES128_CBC_encrypt_buffer$key$1$1==.
   F1BE                     170 _AES128_CBC_encrypt_buffer_PARM_4:
   F1BE                     171 	.ds 2
                    00C4    172 Laes.AES128_CBC_encrypt_buffer$iv$1$1==.
   F1C0                     173 _AES128_CBC_encrypt_buffer_PARM_5:
   F1C0                     174 	.ds 2
                    00C6    175 Laes.AES128_CBC_encrypt_buffer$output$1$1==.
   F1C2                     176 _AES128_CBC_encrypt_buffer_output_1_1:
   F1C2                     177 	.ds 2
                            178 ;--------------------------------------------------------
                            179 ; absolute external ram data
                            180 ;--------------------------------------------------------
                            181 	.area XABS    (ABS,XDATA)
                            182 ;--------------------------------------------------------
                            183 ; external initialized ram data
                            184 ;--------------------------------------------------------
                            185 	.area XISEG   (XDATA)
                            186 	.area HOME    (CODE)
                            187 	.area GSINIT0 (CODE)
                            188 	.area GSINIT1 (CODE)
                            189 	.area GSINIT2 (CODE)
                            190 	.area GSINIT3 (CODE)
                            191 	.area GSINIT4 (CODE)
                            192 	.area GSINIT5 (CODE)
                            193 	.area GSINIT  (CODE)
                            194 	.area GSFINAL (CODE)
                            195 	.area CSEG    (CODE)
                            196 ;--------------------------------------------------------
                            197 ; global & static initialisations
                            198 ;--------------------------------------------------------
                            199 	.area HOME    (CODE)
                            200 	.area GSINIT  (CODE)
                            201 	.area GSFINAL (CODE)
                            202 	.area GSINIT  (CODE)
                            203 ;--------------------------------------------------------
                            204 ; Home
                            205 ;--------------------------------------------------------
                            206 	.area HOME    (CODE)
                            207 	.area HOME    (CODE)
                            208 ;--------------------------------------------------------
                            209 ; code
                            210 ;--------------------------------------------------------
                            211 	.area CSEG    (CODE)
                            212 ;------------------------------------------------------------
                            213 ;Allocation info for local variables in function 'getSBoxValue'
                            214 ;------------------------------------------------------------
                            215 ;num                       Allocated with name '_getSBoxValue_num_1_1'
                            216 ;------------------------------------------------------------
                    0000    217 	Faes$getSBoxValue$0$0 ==.
                    0000    218 	C$aes.c$128$0$0 ==.
                            219 ;	apps/dexdrip/aes.c:128: XDATA static uint8_t getSBoxValue(XDATA uint8_t num)
                            220 ;	-----------------------------------------
                            221 ;	 function getSBoxValue
                            222 ;	-----------------------------------------
   0629                     223 _getSBoxValue:
                    0007    224 	ar7 = 0x07
                    0006    225 	ar6 = 0x06
                    0005    226 	ar5 = 0x05
                    0004    227 	ar4 = 0x04
                    0003    228 	ar3 = 0x03
                    0002    229 	ar2 = 0x02
                    0001    230 	ar1 = 0x01
                    0000    231 	ar0 = 0x00
   0629 E5 82               232 	mov	a,dpl
                    0002    233 	C$aes.c$130$1$1 ==.
                            234 ;	apps/dexdrip/aes.c:130: return sbox[num];
   062B 90 F1 AC            235 	mov	dptr,#_getSBoxValue_num_1_1
   062E F0                  236 	movx	@dptr,a
   062F 90 5C 7F            237 	mov	dptr,#_sbox
   0632 93                  238 	movc	a,@a+dptr
                    000A    239 	C$aes.c$131$1$1 ==.
                    000A    240 	XFaes$getSBoxValue$0$0 ==.
   0633 F5 82               241 	mov	dpl,a
   0635 22                  242 	ret
                            243 ;------------------------------------------------------------
                            244 ;Allocation info for local variables in function 'KeyExpansion'
                            245 ;------------------------------------------------------------
                            246 ;sloc0                     Allocated with name '_KeyExpansion_sloc0_1_0'
                            247 ;sloc1                     Allocated with name '_KeyExpansion_sloc1_1_0'
                            248 ;sloc2                     Allocated with name '_KeyExpansion_sloc2_1_0'
                            249 ;sloc3                     Allocated with name '_KeyExpansion_sloc3_1_0'
                            250 ;sloc4                     Allocated with name '_KeyExpansion_sloc4_1_0'
                            251 ;i                         Allocated with name '_KeyExpansion_i_1_1'
                            252 ;j                         Allocated with name '_KeyExpansion_j_1_1'
                            253 ;k                         Allocated with name '_KeyExpansion_k_1_1'
                            254 ;tempa                     Allocated with name '_KeyExpansion_tempa_1_1'
                            255 ;------------------------------------------------------------
                    000D    256 	Faes$KeyExpansion$0$0 ==.
                    000D    257 	C$aes.c$135$1$1 ==.
                            258 ;	apps/dexdrip/aes.c:135: XDATA static void KeyExpansion(void)
                            259 ;	-----------------------------------------
                            260 ;	 function KeyExpansion
                            261 ;	-----------------------------------------
   0636                     262 _KeyExpansion:
                    000D    263 	C$aes.c$141$2$2 ==.
                            264 ;	apps/dexdrip/aes.c:141: for(i = 0; i < Nk; ++i)
   0636 E4                  265 	clr	a
   0637 F5 29               266 	mov	_KeyExpansion_sloc2_1_0,a
   0639 F5 2A               267 	mov	(_KeyExpansion_sloc2_1_0 + 1),a
   063B F5 2B               268 	mov	(_KeyExpansion_sloc2_1_0 + 2),a
   063D F5 2C               269 	mov	(_KeyExpansion_sloc2_1_0 + 3),a
   063F                     270 00107$:
   063F C3                  271 	clr	c
   0640 E5 29               272 	mov	a,_KeyExpansion_sloc2_1_0
   0642 94 04               273 	subb	a,#0x04
   0644 E5 2A               274 	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
   0646 94 00               275 	subb	a,#0x00
   0648 E5 2B               276 	mov	a,(_KeyExpansion_sloc2_1_0 + 2)
   064A 94 00               277 	subb	a,#0x00
   064C E5 2C               278 	mov	a,(_KeyExpansion_sloc2_1_0 + 3)
   064E 94 00               279 	subb	a,#0x00
   0650 40 03               280 	jc	00131$
   0652 02 07 40            281 	ljmp	00127$
   0655                     282 00131$:
                    002C    283 	C$aes.c$143$2$2 ==.
                            284 ;	apps/dexdrip/aes.c:143: RoundKey[(i * 4) + 0] = Key[(i * 4) + 0];
   0655 E5 29               285 	mov	a,_KeyExpansion_sloc2_1_0
   0657 25 E0               286 	add	a,acc
   0659 25 E0               287 	add	a,acc
   065B F5 26               288 	mov	_KeyExpansion_sloc0_1_0,a
   065D 24 FC               289 	add	a,#_RoundKey
   065F F5 27               290 	mov	_KeyExpansion_sloc1_1_0,a
   0661 E4                  291 	clr	a
   0662 34 F0               292 	addc	a,#(_RoundKey >> 8)
   0664 F5 28               293 	mov	(_KeyExpansion_sloc1_1_0 + 1),a
   0666 E5 29               294 	mov	a,_KeyExpansion_sloc2_1_0
   0668 25 29               295 	add	a,_KeyExpansion_sloc2_1_0
   066A F5 2D               296 	mov	_KeyExpansion_sloc3_1_0,a
   066C E5 2A               297 	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
   066E 33                  298 	rlc	a
   066F F5 2E               299 	mov	(_KeyExpansion_sloc3_1_0 + 1),a
   0671 E5 2B               300 	mov	a,(_KeyExpansion_sloc2_1_0 + 2)
   0673 33                  301 	rlc	a
   0674 F5 2F               302 	mov	(_KeyExpansion_sloc3_1_0 + 2),a
   0676 E5 2C               303 	mov	a,(_KeyExpansion_sloc2_1_0 + 3)
   0678 33                  304 	rlc	a
   0679 F5 30               305 	mov	(_KeyExpansion_sloc3_1_0 + 3),a
   067B E5 2D               306 	mov	a,_KeyExpansion_sloc3_1_0
   067D 25 2D               307 	add	a,_KeyExpansion_sloc3_1_0
   067F F5 2D               308 	mov	_KeyExpansion_sloc3_1_0,a
   0681 E5 2E               309 	mov	a,(_KeyExpansion_sloc3_1_0 + 1)
   0683 33                  310 	rlc	a
   0684 F5 2E               311 	mov	(_KeyExpansion_sloc3_1_0 + 1),a
   0686 E5 2F               312 	mov	a,(_KeyExpansion_sloc3_1_0 + 2)
   0688 33                  313 	rlc	a
   0689 F5 2F               314 	mov	(_KeyExpansion_sloc3_1_0 + 2),a
   068B E5 30               315 	mov	a,(_KeyExpansion_sloc3_1_0 + 3)
   068D 33                  316 	rlc	a
   068E F5 30               317 	mov	(_KeyExpansion_sloc3_1_0 + 3),a
   0690 78 02               318 	mov	r0,#_Key
   0692 E2                  319 	movx	a,@r0
   0693 25 2D               320 	add	a,_KeyExpansion_sloc3_1_0
   0695 F5 82               321 	mov	dpl,a
   0697 08                  322 	inc	r0
   0698 E2                  323 	movx	a,@r0
   0699 35 2E               324 	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
   069B F5 83               325 	mov	dph,a
   069D E0                  326 	movx	a,@dptr
   069E 85 27 82            327 	mov	dpl,_KeyExpansion_sloc1_1_0
   06A1 85 28 83            328 	mov	dph,(_KeyExpansion_sloc1_1_0 + 1)
   06A4 F0                  329 	movx	@dptr,a
                    007C    330 	C$aes.c$144$2$2 ==.
                            331 ;	apps/dexdrip/aes.c:144: RoundKey[(i * 4) + 1] = Key[(i * 4) + 1];
   06A5 E5 26               332 	mov	a,_KeyExpansion_sloc0_1_0
   06A7 04                  333 	inc	a
   06A8 24 FC               334 	add	a,#_RoundKey
   06AA F5 27               335 	mov	_KeyExpansion_sloc1_1_0,a
   06AC E4                  336 	clr	a
   06AD 34 F0               337 	addc	a,#(_RoundKey >> 8)
   06AF F5 28               338 	mov	(_KeyExpansion_sloc1_1_0 + 1),a
   06B1 74 01               339 	mov	a,#0x01
   06B3 25 2D               340 	add	a,_KeyExpansion_sloc3_1_0
   06B5 FC                  341 	mov	r4,a
   06B6 E4                  342 	clr	a
   06B7 35 2E               343 	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
   06B9 FD                  344 	mov	r5,a
   06BA E4                  345 	clr	a
   06BB 35 2F               346 	addc	a,(_KeyExpansion_sloc3_1_0 + 2)
   06BD E4                  347 	clr	a
   06BE 35 30               348 	addc	a,(_KeyExpansion_sloc3_1_0 + 3)
   06C0 78 02               349 	mov	r0,#_Key
   06C2 E2                  350 	movx	a,@r0
   06C3 2C                  351 	add	a,r4
   06C4 F5 82               352 	mov	dpl,a
   06C6 08                  353 	inc	r0
   06C7 E2                  354 	movx	a,@r0
   06C8 3D                  355 	addc	a,r5
   06C9 F5 83               356 	mov	dph,a
   06CB E0                  357 	movx	a,@dptr
   06CC 85 27 82            358 	mov	dpl,_KeyExpansion_sloc1_1_0
   06CF 85 28 83            359 	mov	dph,(_KeyExpansion_sloc1_1_0 + 1)
   06D2 F0                  360 	movx	@dptr,a
                    00AA    361 	C$aes.c$145$2$2 ==.
                            362 ;	apps/dexdrip/aes.c:145: RoundKey[(i * 4) + 2] = Key[(i * 4) + 2];
   06D3 74 02               363 	mov	a,#0x02
   06D5 25 26               364 	add	a,_KeyExpansion_sloc0_1_0
   06D7 24 FC               365 	add	a,#_RoundKey
   06D9 FE                  366 	mov	r6,a
   06DA E4                  367 	clr	a
   06DB 34 F0               368 	addc	a,#(_RoundKey >> 8)
   06DD FF                  369 	mov	r7,a
   06DE 74 02               370 	mov	a,#0x02
   06E0 25 2D               371 	add	a,_KeyExpansion_sloc3_1_0
   06E2 FA                  372 	mov	r2,a
   06E3 E4                  373 	clr	a
   06E4 35 2E               374 	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
   06E6 FB                  375 	mov	r3,a
   06E7 E4                  376 	clr	a
   06E8 35 2F               377 	addc	a,(_KeyExpansion_sloc3_1_0 + 2)
   06EA E4                  378 	clr	a
   06EB 35 30               379 	addc	a,(_KeyExpansion_sloc3_1_0 + 3)
   06ED 78 02               380 	mov	r0,#_Key
   06EF E2                  381 	movx	a,@r0
   06F0 2A                  382 	add	a,r2
   06F1 F5 82               383 	mov	dpl,a
   06F3 08                  384 	inc	r0
   06F4 E2                  385 	movx	a,@r0
   06F5 3B                  386 	addc	a,r3
   06F6 F5 83               387 	mov	dph,a
   06F8 E0                  388 	movx	a,@dptr
   06F9 8E 82               389 	mov	dpl,r6
   06FB 8F 83               390 	mov	dph,r7
   06FD F0                  391 	movx	@dptr,a
                    00D5    392 	C$aes.c$146$2$2 ==.
                            393 ;	apps/dexdrip/aes.c:146: RoundKey[(i * 4) + 3] = Key[(i * 4) + 3];
   06FE 74 03               394 	mov	a,#0x03
   0700 25 26               395 	add	a,_KeyExpansion_sloc0_1_0
   0702 24 FC               396 	add	a,#_RoundKey
   0704 FE                  397 	mov	r6,a
   0705 E4                  398 	clr	a
   0706 34 F0               399 	addc	a,#(_RoundKey >> 8)
   0708 FF                  400 	mov	r7,a
   0709 74 03               401 	mov	a,#0x03
   070B 25 2D               402 	add	a,_KeyExpansion_sloc3_1_0
   070D FA                  403 	mov	r2,a
   070E E4                  404 	clr	a
   070F 35 2E               405 	addc	a,(_KeyExpansion_sloc3_1_0 + 1)
   0711 FB                  406 	mov	r3,a
   0712 E4                  407 	clr	a
   0713 35 2F               408 	addc	a,(_KeyExpansion_sloc3_1_0 + 2)
   0715 FC                  409 	mov	r4,a
   0716 E4                  410 	clr	a
   0717 35 30               411 	addc	a,(_KeyExpansion_sloc3_1_0 + 3)
   0719 78 02               412 	mov	r0,#_Key
   071B E2                  413 	movx	a,@r0
   071C 2A                  414 	add	a,r2
   071D F5 82               415 	mov	dpl,a
   071F 08                  416 	inc	r0
   0720 E2                  417 	movx	a,@r0
   0721 3B                  418 	addc	a,r3
   0722 F5 83               419 	mov	dph,a
   0724 E0                  420 	movx	a,@dptr
   0725 FD                  421 	mov	r5,a
   0726 8E 82               422 	mov	dpl,r6
   0728 8F 83               423 	mov	dph,r7
   072A F0                  424 	movx	@dptr,a
                    0102    425 	C$aes.c$141$1$1 ==.
                            426 ;	apps/dexdrip/aes.c:141: for(i = 0; i < Nk; ++i)
   072B 05 29               427 	inc	_KeyExpansion_sloc2_1_0
   072D E4                  428 	clr	a
   072E B5 29 0C            429 	cjne	a,_KeyExpansion_sloc2_1_0,00132$
   0731 05 2A               430 	inc	(_KeyExpansion_sloc2_1_0 + 1)
   0733 B5 2A 07            431 	cjne	a,(_KeyExpansion_sloc2_1_0 + 1),00132$
   0736 05 2B               432 	inc	(_KeyExpansion_sloc2_1_0 + 2)
   0738 B5 2B 02            433 	cjne	a,(_KeyExpansion_sloc2_1_0 + 2),00132$
   073B 05 2C               434 	inc	(_KeyExpansion_sloc2_1_0 + 3)
   073D                     435 00132$:
   073D 02 06 3F            436 	ljmp	00107$
   0740                     437 00127$:
   0740 85 29 31            438 	mov	_KeyExpansion_sloc4_1_0,_KeyExpansion_sloc2_1_0
   0743 85 2A 32            439 	mov	(_KeyExpansion_sloc4_1_0 + 1),(_KeyExpansion_sloc2_1_0 + 1)
   0746 85 2B 33            440 	mov	(_KeyExpansion_sloc4_1_0 + 2),(_KeyExpansion_sloc2_1_0 + 2)
   0749 85 2C 34            441 	mov	(_KeyExpansion_sloc4_1_0 + 3),(_KeyExpansion_sloc2_1_0 + 3)
   074C                     442 00115$:
                    0123    443 	C$aes.c$150$1$1 ==.
                            444 ;	apps/dexdrip/aes.c:150: for(; (i < (Nb * (Nr + 1))); ++i)
   074C C3                  445 	clr	c
   074D E5 31               446 	mov	a,_KeyExpansion_sloc4_1_0
   074F 94 2C               447 	subb	a,#0x2C
   0751 E5 32               448 	mov	a,(_KeyExpansion_sloc4_1_0 + 1)
   0753 94 00               449 	subb	a,#0x00
   0755 E5 33               450 	mov	a,(_KeyExpansion_sloc4_1_0 + 2)
   0757 94 00               451 	subb	a,#0x00
   0759 E5 34               452 	mov	a,(_KeyExpansion_sloc4_1_0 + 3)
   075B 94 00               453 	subb	a,#0x00
   075D 40 03               454 	jc	00133$
   075F 02 09 11            455 	ljmp	00119$
   0762                     456 00133$:
                    0139    457 	C$aes.c$152$3$4 ==.
                            458 ;	apps/dexdrip/aes.c:152: for(j = 0; j < 4; ++j)
   0762 85 31 2D            459 	mov	_KeyExpansion_sloc3_1_0,_KeyExpansion_sloc4_1_0
   0765 85 32 2E            460 	mov	(_KeyExpansion_sloc3_1_0 + 1),(_KeyExpansion_sloc4_1_0 + 1)
   0768 85 33 2F            461 	mov	(_KeyExpansion_sloc3_1_0 + 2),(_KeyExpansion_sloc4_1_0 + 2)
   076B 85 34 30            462 	mov	(_KeyExpansion_sloc3_1_0 + 3),(_KeyExpansion_sloc4_1_0 + 3)
   076E E4                  463 	clr	a
   076F F5 29               464 	mov	_KeyExpansion_sloc2_1_0,a
   0771 F5 2A               465 	mov	(_KeyExpansion_sloc2_1_0 + 1),a
   0773 F5 2B               466 	mov	(_KeyExpansion_sloc2_1_0 + 2),a
   0775 F5 2C               467 	mov	(_KeyExpansion_sloc2_1_0 + 3),a
   0777                     468 00111$:
   0777 C3                  469 	clr	c
   0778 E5 29               470 	mov	a,_KeyExpansion_sloc2_1_0
   077A 94 04               471 	subb	a,#0x04
   077C E5 2A               472 	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
   077E 94 00               473 	subb	a,#0x00
   0780 E5 2B               474 	mov	a,(_KeyExpansion_sloc2_1_0 + 2)
   0782 94 00               475 	subb	a,#0x00
   0784 E5 2C               476 	mov	a,(_KeyExpansion_sloc2_1_0 + 3)
   0786 94 00               477 	subb	a,#0x00
   0788 50 3A               478 	jnc	00114$
                    0161    479 	C$aes.c$154$1$1 ==.
                            480 ;	apps/dexdrip/aes.c:154: tempa[j]=RoundKey[(i-1) * 4 + j];
   078A E5 29               481 	mov	a,_KeyExpansion_sloc2_1_0
   078C 24 AD               482 	add	a,#_KeyExpansion_tempa_1_1
   078E FA                  483 	mov	r2,a
   078F E5 2A               484 	mov	a,(_KeyExpansion_sloc2_1_0 + 1)
   0791 34 F1               485 	addc	a,#(_KeyExpansion_tempa_1_1 >> 8)
   0793 FB                  486 	mov	r3,a
   0794 AF 2D               487 	mov	r7,_KeyExpansion_sloc3_1_0
   0796 1F                  488 	dec	r7
   0797 EF                  489 	mov	a,r7
   0798 2F                  490 	add	a,r7
   0799 25 E0               491 	add	a,acc
   079B FF                  492 	mov	r7,a
   079C E5 29               493 	mov	a,_KeyExpansion_sloc2_1_0
   079E FE                  494 	mov	r6,a
   079F 2F                  495 	add	a,r7
   07A0 24 FC               496 	add	a,#_RoundKey
   07A2 F5 82               497 	mov	dpl,a
   07A4 E4                  498 	clr	a
   07A5 34 F0               499 	addc	a,#(_RoundKey >> 8)
   07A7 F5 83               500 	mov	dph,a
   07A9 E0                  501 	movx	a,@dptr
   07AA FF                  502 	mov	r7,a
   07AB 8A 82               503 	mov	dpl,r2
   07AD 8B 83               504 	mov	dph,r3
   07AF F0                  505 	movx	@dptr,a
                    0187    506 	C$aes.c$152$2$3 ==.
                            507 ;	apps/dexdrip/aes.c:152: for(j = 0; j < 4; ++j)
   07B0 05 29               508 	inc	_KeyExpansion_sloc2_1_0
   07B2 E4                  509 	clr	a
   07B3 B5 29 0C            510 	cjne	a,_KeyExpansion_sloc2_1_0,00135$
   07B6 05 2A               511 	inc	(_KeyExpansion_sloc2_1_0 + 1)
   07B8 B5 2A 07            512 	cjne	a,(_KeyExpansion_sloc2_1_0 + 1),00135$
   07BB 05 2B               513 	inc	(_KeyExpansion_sloc2_1_0 + 2)
   07BD B5 2B B7            514 	cjne	a,(_KeyExpansion_sloc2_1_0 + 2),00111$
   07C0 05 2C               515 	inc	(_KeyExpansion_sloc2_1_0 + 3)
   07C2                     516 00135$:
   07C2 80 B3               517 	sjmp	00111$
   07C4                     518 00114$:
                    019B    519 	C$aes.c$156$2$3 ==.
                            520 ;	apps/dexdrip/aes.c:156: if (i % Nk == 0)
   07C4 E5 31               521 	mov	a,_KeyExpansion_sloc4_1_0
   07C6 54 03               522 	anl	a,#0x03
   07C8 60 03               523 	jz	00137$
   07CA 02 08 61            524 	ljmp	00106$
   07CD                     525 00137$:
                    01A4    526 	C$aes.c$163$4$6 ==.
                            527 ;	apps/dexdrip/aes.c:163: k = tempa[0];
   07CD 90 F1 AD            528 	mov	dptr,#_KeyExpansion_tempa_1_1
   07D0 E0                  529 	movx	a,@dptr
   07D1 FA                  530 	mov	r2,a
                    01A9    531 	C$aes.c$164$4$6 ==.
                            532 ;	apps/dexdrip/aes.c:164: tempa[0] = tempa[1];
   07D2 90 F1 AE            533 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
   07D5 E0                  534 	movx	a,@dptr
   07D6 FD                  535 	mov	r5,a
   07D7 90 F1 AD            536 	mov	dptr,#_KeyExpansion_tempa_1_1
   07DA F0                  537 	movx	@dptr,a
                    01B2    538 	C$aes.c$165$4$6 ==.
                            539 ;	apps/dexdrip/aes.c:165: tempa[1] = tempa[2];
   07DB 90 F1 AF            540 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
   07DE E0                  541 	movx	a,@dptr
   07DF 90 F1 AE            542 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
   07E2 F0                  543 	movx	@dptr,a
                    01BA    544 	C$aes.c$166$4$6 ==.
                            545 ;	apps/dexdrip/aes.c:166: tempa[2] = tempa[3];
   07E3 90 F1 B0            546 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
   07E6 E0                  547 	movx	a,@dptr
   07E7 90 F1 AF            548 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
   07EA F0                  549 	movx	@dptr,a
                    01C2    550 	C$aes.c$167$4$6 ==.
                            551 ;	apps/dexdrip/aes.c:167: tempa[3] = k;
   07EB 90 F1 B0            552 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
   07EE EA                  553 	mov	a,r2
   07EF F0                  554 	movx	@dptr,a
                    01C7    555 	C$aes.c$175$4$7 ==.
                            556 ;	apps/dexdrip/aes.c:175: tempa[0] = getSBoxValue(tempa[0]);
   07F0 8D 82               557 	mov	dpl,r5
   07F2 12 06 29            558 	lcall	_getSBoxValue
   07F5 AF 82               559 	mov	r7,dpl
   07F7 90 F1 AD            560 	mov	dptr,#_KeyExpansion_tempa_1_1
   07FA EF                  561 	mov	a,r7
   07FB F0                  562 	movx	@dptr,a
                    01D3    563 	C$aes.c$176$4$7 ==.
                            564 ;	apps/dexdrip/aes.c:176: tempa[1] = getSBoxValue(tempa[1]);
   07FC 90 F1 AE            565 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
   07FF E0                  566 	movx	a,@dptr
   0800 F5 82               567 	mov	dpl,a
   0802 12 06 29            568 	lcall	_getSBoxValue
   0805 AF 82               569 	mov	r7,dpl
   0807 90 F1 AE            570 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
   080A EF                  571 	mov	a,r7
   080B F0                  572 	movx	@dptr,a
                    01E3    573 	C$aes.c$177$4$7 ==.
                            574 ;	apps/dexdrip/aes.c:177: tempa[2] = getSBoxValue(tempa[2]);
   080C 90 F1 AF            575 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
   080F E0                  576 	movx	a,@dptr
   0810 F5 82               577 	mov	dpl,a
   0812 12 06 29            578 	lcall	_getSBoxValue
   0815 AF 82               579 	mov	r7,dpl
   0817 90 F1 AF            580 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
   081A EF                  581 	mov	a,r7
   081B F0                  582 	movx	@dptr,a
                    01F3    583 	C$aes.c$178$4$7 ==.
                            584 ;	apps/dexdrip/aes.c:178: tempa[3] = getSBoxValue(tempa[3]);
   081C 90 F1 B0            585 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
   081F E0                  586 	movx	a,@dptr
   0820 F5 82               587 	mov	dpl,a
   0822 12 06 29            588 	lcall	_getSBoxValue
   0825 AF 82               589 	mov	r7,dpl
   0827 90 F1 B0            590 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
   082A EF                  591 	mov	a,r7
   082B F0                  592 	movx	@dptr,a
                    0203    593 	C$aes.c$181$3$5 ==.
                            594 ;	apps/dexdrip/aes.c:181: tempa[0] =  tempa[0] ^ Rcon[i/Nk];
   082C 90 F1 AD            595 	mov	dptr,#_KeyExpansion_tempa_1_1
   082F E0                  596 	movx	a,@dptr
   0830 FF                  597 	mov	r7,a
   0831 E5 34               598 	mov	a,(_KeyExpansion_sloc4_1_0 + 3)
   0833 C3                  599 	clr	c
   0834 13                  600 	rrc	a
   0835 FE                  601 	mov	r6,a
   0836 E5 33               602 	mov	a,(_KeyExpansion_sloc4_1_0 + 2)
   0838 13                  603 	rrc	a
   0839 FD                  604 	mov	r5,a
   083A E5 32               605 	mov	a,(_KeyExpansion_sloc4_1_0 + 1)
   083C 13                  606 	rrc	a
   083D FC                  607 	mov	r4,a
   083E E5 31               608 	mov	a,_KeyExpansion_sloc4_1_0
   0840 13                  609 	rrc	a
   0841 FB                  610 	mov	r3,a
   0842 EE                  611 	mov	a,r6
   0843 C3                  612 	clr	c
   0844 13                  613 	rrc	a
   0845 ED                  614 	mov	a,r5
   0846 13                  615 	rrc	a
   0847 FD                  616 	mov	r5,a
   0848 EC                  617 	mov	a,r4
   0849 13                  618 	rrc	a
   084A FC                  619 	mov	r4,a
   084B EB                  620 	mov	a,r3
   084C 13                  621 	rrc	a
   084D FB                  622 	mov	r3,a
   084E 24 7F               623 	add	a,#_Rcon
   0850 F5 82               624 	mov	dpl,a
   0852 EC                  625 	mov	a,r4
   0853 34 5D               626 	addc	a,#(_Rcon >> 8)
   0855 F5 83               627 	mov	dph,a
   0857 E4                  628 	clr	a
   0858 93                  629 	movc	a,@a+dptr
   0859 FE                  630 	mov	r6,a
   085A 62 07               631 	xrl	ar7,a
   085C 90 F1 AD            632 	mov	dptr,#_KeyExpansion_tempa_1_1
   085F EF                  633 	mov	a,r7
   0860 F0                  634 	movx	@dptr,a
                    0238    635 	C$aes.c$190$2$3 ==.
                            636 ;	apps/dexdrip/aes.c:190: tempa[3] = getSBoxValue(tempa[3]);
   0861                     637 00106$:
                    0238    638 	C$aes.c$193$2$3 ==.
                            639 ;	apps/dexdrip/aes.c:193: RoundKey[i * 4 + 0] = RoundKey[(i - Nk) * 4 + 0] ^ tempa[0];
   0861 E5 31               640 	mov	a,_KeyExpansion_sloc4_1_0
   0863 FC                  641 	mov	r4,a
   0864 25 E0               642 	add	a,acc
   0866 25 E0               643 	add	a,acc
   0868 FF                  644 	mov	r7,a
   0869 24 FC               645 	add	a,#_RoundKey
   086B FD                  646 	mov	r5,a
   086C E4                  647 	clr	a
   086D 34 F0               648 	addc	a,#(_RoundKey >> 8)
   086F FE                  649 	mov	r6,a
   0870 1C                  650 	dec	r4
   0871 1C                  651 	dec	r4
   0872 1C                  652 	dec	r4
   0873 1C                  653 	dec	r4
   0874 EC                  654 	mov	a,r4
   0875 2C                  655 	add	a,r4
   0876 25 E0               656 	add	a,acc
   0878 FC                  657 	mov	r4,a
   0879 24 FC               658 	add	a,#_RoundKey
   087B F5 82               659 	mov	dpl,a
   087D E4                  660 	clr	a
   087E 34 F0               661 	addc	a,#(_RoundKey >> 8)
   0880 F5 83               662 	mov	dph,a
   0882 E0                  663 	movx	a,@dptr
   0883 FB                  664 	mov	r3,a
   0884 90 F1 AD            665 	mov	dptr,#_KeyExpansion_tempa_1_1
   0887 E0                  666 	movx	a,@dptr
   0888 62 03               667 	xrl	ar3,a
   088A 8D 82               668 	mov	dpl,r5
   088C 8E 83               669 	mov	dph,r6
   088E EB                  670 	mov	a,r3
   088F F0                  671 	movx	@dptr,a
                    0267    672 	C$aes.c$194$2$3 ==.
                            673 ;	apps/dexdrip/aes.c:194: RoundKey[i * 4 + 1] = RoundKey[(i - Nk) * 4 + 1] ^ tempa[1];
   0890 EF                  674 	mov	a,r7
   0891 04                  675 	inc	a
   0892 24 FC               676 	add	a,#_RoundKey
   0894 FD                  677 	mov	r5,a
   0895 E4                  678 	clr	a
   0896 34 F0               679 	addc	a,#(_RoundKey >> 8)
   0898 FE                  680 	mov	r6,a
   0899 EC                  681 	mov	a,r4
   089A 04                  682 	inc	a
   089B 24 FC               683 	add	a,#_RoundKey
   089D F5 82               684 	mov	dpl,a
   089F E4                  685 	clr	a
   08A0 34 F0               686 	addc	a,#(_RoundKey >> 8)
   08A2 F5 83               687 	mov	dph,a
   08A4 E0                  688 	movx	a,@dptr
   08A5 FB                  689 	mov	r3,a
   08A6 90 F1 AE            690 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0001)
   08A9 E0                  691 	movx	a,@dptr
   08AA 62 03               692 	xrl	ar3,a
   08AC 8D 82               693 	mov	dpl,r5
   08AE 8E 83               694 	mov	dph,r6
   08B0 EB                  695 	mov	a,r3
   08B1 F0                  696 	movx	@dptr,a
                    0289    697 	C$aes.c$195$2$3 ==.
                            698 ;	apps/dexdrip/aes.c:195: RoundKey[i * 4 + 2] = RoundKey[(i - Nk) * 4 + 2] ^ tempa[2];
   08B2 74 02               699 	mov	a,#0x02
   08B4 2F                  700 	add	a,r7
   08B5 24 FC               701 	add	a,#_RoundKey
   08B7 FD                  702 	mov	r5,a
   08B8 E4                  703 	clr	a
   08B9 34 F0               704 	addc	a,#(_RoundKey >> 8)
   08BB FE                  705 	mov	r6,a
   08BC 74 02               706 	mov	a,#0x02
   08BE 2C                  707 	add	a,r4
   08BF 24 FC               708 	add	a,#_RoundKey
   08C1 F5 82               709 	mov	dpl,a
   08C3 E4                  710 	clr	a
   08C4 34 F0               711 	addc	a,#(_RoundKey >> 8)
   08C6 F5 83               712 	mov	dph,a
   08C8 E0                  713 	movx	a,@dptr
   08C9 FB                  714 	mov	r3,a
   08CA 90 F1 AF            715 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0002)
   08CD E0                  716 	movx	a,@dptr
   08CE FA                  717 	mov	r2,a
   08CF 62 03               718 	xrl	ar3,a
   08D1 8D 82               719 	mov	dpl,r5
   08D3 8E 83               720 	mov	dph,r6
   08D5 EB                  721 	mov	a,r3
   08D6 F0                  722 	movx	@dptr,a
                    02AE    723 	C$aes.c$196$2$3 ==.
                            724 ;	apps/dexdrip/aes.c:196: RoundKey[i * 4 + 3] = RoundKey[(i - Nk) * 4 + 3] ^ tempa[3];
   08D7 74 03               725 	mov	a,#0x03
   08D9 2F                  726 	add	a,r7
   08DA 24 FC               727 	add	a,#_RoundKey
   08DC FE                  728 	mov	r6,a
   08DD E4                  729 	clr	a
   08DE 34 F0               730 	addc	a,#(_RoundKey >> 8)
   08E0 FF                  731 	mov	r7,a
   08E1 74 03               732 	mov	a,#0x03
   08E3 2C                  733 	add	a,r4
   08E4 24 FC               734 	add	a,#_RoundKey
   08E6 F5 82               735 	mov	dpl,a
   08E8 E4                  736 	clr	a
   08E9 34 F0               737 	addc	a,#(_RoundKey >> 8)
   08EB F5 83               738 	mov	dph,a
   08ED E0                  739 	movx	a,@dptr
   08EE FD                  740 	mov	r5,a
   08EF 90 F1 B0            741 	mov	dptr,#(_KeyExpansion_tempa_1_1 + 0x0003)
   08F2 E0                  742 	movx	a,@dptr
   08F3 FC                  743 	mov	r4,a
   08F4 62 05               744 	xrl	ar5,a
   08F6 8E 82               745 	mov	dpl,r6
   08F8 8F 83               746 	mov	dph,r7
   08FA ED                  747 	mov	a,r5
   08FB F0                  748 	movx	@dptr,a
                    02D3    749 	C$aes.c$150$1$1 ==.
                            750 ;	apps/dexdrip/aes.c:150: for(; (i < (Nb * (Nr + 1))); ++i)
   08FC 05 31               751 	inc	_KeyExpansion_sloc4_1_0
   08FE E4                  752 	clr	a
   08FF B5 31 0C            753 	cjne	a,_KeyExpansion_sloc4_1_0,00138$
   0902 05 32               754 	inc	(_KeyExpansion_sloc4_1_0 + 1)
   0904 B5 32 07            755 	cjne	a,(_KeyExpansion_sloc4_1_0 + 1),00138$
   0907 05 33               756 	inc	(_KeyExpansion_sloc4_1_0 + 2)
   0909 B5 33 02            757 	cjne	a,(_KeyExpansion_sloc4_1_0 + 2),00138$
   090C 05 34               758 	inc	(_KeyExpansion_sloc4_1_0 + 3)
   090E                     759 00138$:
   090E 02 07 4C            760 	ljmp	00115$
   0911                     761 00119$:
                    02E8    762 	C$aes.c$198$1$1 ==.
                    02E8    763 	XFaes$KeyExpansion$0$0 ==.
   0911 22                  764 	ret
                            765 ;------------------------------------------------------------
                            766 ;Allocation info for local variables in function 'AddRoundKey'
                            767 ;------------------------------------------------------------
                            768 ;round                     Allocated with name '_AddRoundKey_round_1_1'
                            769 ;i                         Allocated with name '_AddRoundKey_i_1_1'
                            770 ;j                         Allocated with name '_AddRoundKey_j_1_1'
                            771 ;sloc0                     Allocated with name '_AddRoundKey_sloc0_1_0'
                            772 ;sloc1                     Allocated with name '_AddRoundKey_sloc1_1_0'
                            773 ;------------------------------------------------------------
                    02E9    774 	Faes$AddRoundKey$0$0 ==.
                    02E9    775 	C$aes.c$202$1$1 ==.
                            776 ;	apps/dexdrip/aes.c:202: static void AddRoundKey(XDATA uint8_t round)
                            777 ;	-----------------------------------------
                            778 ;	 function AddRoundKey
                            779 ;	-----------------------------------------
   0912                     780 _AddRoundKey:
   0912 E5 82               781 	mov	a,dpl
                    02EB    782 	C$aes.c$205$3$3 ==.
                            783 ;	apps/dexdrip/aes.c:205: for(i=0;i<4;++i)
   0914 90 F1 B1            784 	mov	dptr,#_AddRoundKey_round_1_1
   0917 F0                  785 	movx	@dptr,a
   0918 C4                  786 	swap	a
   0919 54 F0               787 	anl	a,#0xF0
   091B FF                  788 	mov	r7,a
   091C 7E 00               789 	mov	r6,#0x00
   091E                     790 00105$:
   091E BE 04 00            791 	cjne	r6,#0x04,00117$
   0921                     792 00117$:
   0921 50 48               793 	jnc	00109$
                    02FA    794 	C$aes.c$207$3$3 ==.
                            795 ;	apps/dexdrip/aes.c:207: for(j = 0; j < 4; ++j)
   0923 EE                  796 	mov	a,r6
   0924 2E                  797 	add	a,r6
   0925 25 E0               798 	add	a,acc
   0927 FD                  799 	mov	r5,a
   0928 2F                  800 	add	a,r7
   0929 F5 79               801 	mov	_AddRoundKey_sloc0_1_0,a
   092B 7B 00               802 	mov	r3,#0x00
   092D                     803 00101$:
   092D BB 04 00            804 	cjne	r3,#0x04,00119$
   0930                     805 00119$:
   0930 50 36               806 	jnc	00107$
                    0309    807 	C$aes.c$209$1$1 ==.
                            808 ;	apps/dexdrip/aes.c:209: (*state)[i][j] ^= RoundKey[round * Nb * 4 + i * Nb + j];
   0932 C0 07               809 	push	ar7
   0934 78 00               810 	mov	r0,#_state
   0936 E2                  811 	movx	a,@r0
   0937 2D                  812 	add	a,r5
   0938 FA                  813 	mov	r2,a
   0939 08                  814 	inc	r0
   093A E2                  815 	movx	a,@r0
   093B 34 00               816 	addc	a,#0x00
   093D FF                  817 	mov	r7,a
   093E EB                  818 	mov	a,r3
   093F 2A                  819 	add	a,r2
   0940 FA                  820 	mov	r2,a
   0941 E4                  821 	clr	a
   0942 3F                  822 	addc	a,r7
   0943 FF                  823 	mov	r7,a
   0944 EB                  824 	mov	a,r3
   0945 25 79               825 	add	a,_AddRoundKey_sloc0_1_0
   0947 24 FC               826 	add	a,#_RoundKey
   0949 F5 82               827 	mov	dpl,a
   094B E4                  828 	clr	a
   094C 34 F0               829 	addc	a,#(_RoundKey >> 8)
   094E F5 83               830 	mov	dph,a
   0950 E0                  831 	movx	a,@dptr
   0951 F5 7A               832 	mov	_AddRoundKey_sloc1_1_0,a
   0953 8A 82               833 	mov	dpl,r2
   0955 8F 83               834 	mov	dph,r7
   0957 E0                  835 	movx	a,@dptr
   0958 FC                  836 	mov	r4,a
   0959 E5 7A               837 	mov	a,_AddRoundKey_sloc1_1_0
   095B 62 04               838 	xrl	ar4,a
   095D 8A 82               839 	mov	dpl,r2
   095F 8F 83               840 	mov	dph,r7
   0961 EC                  841 	mov	a,r4
   0962 F0                  842 	movx	@dptr,a
                    033A    843 	C$aes.c$207$2$2 ==.
                            844 ;	apps/dexdrip/aes.c:207: for(j = 0; j < 4; ++j)
   0963 0B                  845 	inc	r3
   0964 D0 07               846 	pop	ar7
   0966 80 C5               847 	sjmp	00101$
   0968                     848 00107$:
                    033F    849 	C$aes.c$205$1$1 ==.
                            850 ;	apps/dexdrip/aes.c:205: for(i=0;i<4;++i)
   0968 0E                  851 	inc	r6
   0969 80 B3               852 	sjmp	00105$
   096B                     853 00109$:
                    0342    854 	C$aes.c$212$1$1 ==.
                    0342    855 	XFaes$AddRoundKey$0$0 ==.
   096B 22                  856 	ret
                            857 ;------------------------------------------------------------
                            858 ;Allocation info for local variables in function 'SubBytes'
                            859 ;------------------------------------------------------------
                            860 ;i                         Allocated with name '_SubBytes_i_1_1'
                            861 ;j                         Allocated with name '_SubBytes_j_1_1'
                            862 ;------------------------------------------------------------
                    0343    863 	Faes$SubBytes$0$0 ==.
                    0343    864 	C$aes.c$216$1$1 ==.
                            865 ;	apps/dexdrip/aes.c:216: XDATA static void SubBytes(void)
                            866 ;	-----------------------------------------
                            867 ;	 function SubBytes
                            868 ;	-----------------------------------------
   096C                     869 _SubBytes:
                    0343    870 	C$aes.c$219$1$1 ==.
                            871 ;	apps/dexdrip/aes.c:219: for(i = 0; i < 4; ++i)
   096C 7F 00               872 	mov	r7,#0x00
   096E                     873 00105$:
   096E BF 04 00            874 	cjne	r7,#0x04,00117$
   0971                     875 00117$:
   0971 50 4A               876 	jnc	00109$
                    034A    877 	C$aes.c$221$3$3 ==.
                            878 ;	apps/dexdrip/aes.c:221: for(j = 0; j < 4; ++j)
   0973 8F 06               879 	mov	ar6,r7
   0975 7D 00               880 	mov	r5,#0x00
   0977                     881 00101$:
   0977 BD 04 00            882 	cjne	r5,#0x04,00119$
   097A                     883 00119$:
   097A 50 3E               884 	jnc	00107$
                    0353    885 	C$aes.c$223$3$3 ==.
                            886 ;	apps/dexdrip/aes.c:223: (*state)[j][i] = getSBoxValue((*state)[j][i]);
   097C ED                  887 	mov	a,r5
   097D 2D                  888 	add	a,r5
   097E 25 E0               889 	add	a,acc
   0980 FC                  890 	mov	r4,a
   0981 78 00               891 	mov	r0,#_state
   0983 E2                  892 	movx	a,@r0
   0984 2C                  893 	add	a,r4
   0985 FC                  894 	mov	r4,a
   0986 08                  895 	inc	r0
   0987 E2                  896 	movx	a,@r0
   0988 34 00               897 	addc	a,#0x00
   098A FB                  898 	mov	r3,a
   098B EE                  899 	mov	a,r6
   098C 2C                  900 	add	a,r4
   098D FC                  901 	mov	r4,a
   098E E4                  902 	clr	a
   098F 3B                  903 	addc	a,r3
   0990 FB                  904 	mov	r3,a
   0991 8C 82               905 	mov	dpl,r4
   0993 8B 83               906 	mov	dph,r3
   0995 E0                  907 	movx	a,@dptr
   0996 F5 82               908 	mov	dpl,a
   0998 C0 07               909 	push	ar7
   099A C0 06               910 	push	ar6
   099C C0 05               911 	push	ar5
   099E C0 04               912 	push	ar4
   09A0 C0 03               913 	push	ar3
   09A2 12 06 29            914 	lcall	_getSBoxValue
   09A5 AA 82               915 	mov	r2,dpl
   09A7 D0 03               916 	pop	ar3
   09A9 D0 04               917 	pop	ar4
   09AB D0 05               918 	pop	ar5
   09AD D0 06               919 	pop	ar6
   09AF D0 07               920 	pop	ar7
   09B1 8C 82               921 	mov	dpl,r4
   09B3 8B 83               922 	mov	dph,r3
   09B5 EA                  923 	mov	a,r2
   09B6 F0                  924 	movx	@dptr,a
                    038E    925 	C$aes.c$221$2$2 ==.
                            926 ;	apps/dexdrip/aes.c:221: for(j = 0; j < 4; ++j)
   09B7 0D                  927 	inc	r5
   09B8 80 BD               928 	sjmp	00101$
   09BA                     929 00107$:
                    0391    930 	C$aes.c$219$1$1 ==.
                            931 ;	apps/dexdrip/aes.c:219: for(i = 0; i < 4; ++i)
   09BA 0F                  932 	inc	r7
   09BB 80 B1               933 	sjmp	00105$
   09BD                     934 00109$:
                    0394    935 	C$aes.c$226$1$1 ==.
                    0394    936 	XFaes$SubBytes$0$0 ==.
   09BD 22                  937 	ret
                            938 ;------------------------------------------------------------
                            939 ;Allocation info for local variables in function 'ShiftRows'
                            940 ;------------------------------------------------------------
                            941 ;temp                      Allocated with name '_ShiftRows_temp_1_1'
                            942 ;sloc0                     Allocated with name '_ShiftRows_sloc0_1_0'
                            943 ;sloc1                     Allocated with name '_ShiftRows_sloc1_1_0'
                            944 ;sloc2                     Allocated with name '_ShiftRows_sloc2_1_0'
                            945 ;------------------------------------------------------------
                    0395    946 	Faes$ShiftRows$0$0 ==.
                    0395    947 	C$aes.c$231$1$1 ==.
                            948 ;	apps/dexdrip/aes.c:231: XDATA static void ShiftRows(void)
                            949 ;	-----------------------------------------
                            950 ;	 function ShiftRows
                            951 ;	-----------------------------------------
   09BE                     952 _ShiftRows:
                    0395    953 	C$aes.c$236$1$1 ==.
                            954 ;	apps/dexdrip/aes.c:236: temp           = (*state)[0][1];
   09BE 78 00               955 	mov	r0,#_state
   09C0 E2                  956 	movx	a,@r0
   09C1 FE                  957 	mov	r6,a
   09C2 08                  958 	inc	r0
   09C3 E2                  959 	movx	a,@r0
   09C4 FF                  960 	mov	r7,a
   09C5 74 01               961 	mov	a,#0x01
   09C7 2E                  962 	add	a,r6
   09C8 FC                  963 	mov	r4,a
   09C9 E4                  964 	clr	a
   09CA 3F                  965 	addc	a,r7
   09CB FD                  966 	mov	r5,a
   09CC 8C 82               967 	mov	dpl,r4
   09CE 8D 83               968 	mov	dph,r5
   09D0 E0                  969 	movx	a,@dptr
   09D1 F5 79               970 	mov	_ShiftRows_sloc0_1_0,a
                    03AA    971 	C$aes.c$237$1$1 ==.
                            972 ;	apps/dexdrip/aes.c:237: (*state)[0][1] = (*state)[1][1];
   09D3 74 05               973 	mov	a,#0x05
   09D5 2E                  974 	add	a,r6
   09D6 F5 7A               975 	mov	_ShiftRows_sloc1_1_0,a
   09D8 E4                  976 	clr	a
   09D9 3F                  977 	addc	a,r7
   09DA F5 7B               978 	mov	(_ShiftRows_sloc1_1_0 + 1),a
   09DC 85 7A 82            979 	mov	dpl,_ShiftRows_sloc1_1_0
   09DF 85 7B 83            980 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   09E2 E0                  981 	movx	a,@dptr
   09E3 8C 82               982 	mov	dpl,r4
   09E5 8D 83               983 	mov	dph,r5
   09E7 F0                  984 	movx	@dptr,a
                    03BF    985 	C$aes.c$238$1$1 ==.
                            986 ;	apps/dexdrip/aes.c:238: (*state)[1][1] = (*state)[2][1];
   09E8 74 09               987 	mov	a,#0x09
   09EA 2E                  988 	add	a,r6
   09EB FC                  989 	mov	r4,a
   09EC E4                  990 	clr	a
   09ED 3F                  991 	addc	a,r7
   09EE FD                  992 	mov	r5,a
   09EF 8C 82               993 	mov	dpl,r4
   09F1 8D 83               994 	mov	dph,r5
   09F3 E0                  995 	movx	a,@dptr
   09F4 85 7A 82            996 	mov	dpl,_ShiftRows_sloc1_1_0
   09F7 85 7B 83            997 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   09FA F0                  998 	movx	@dptr,a
                    03D2    999 	C$aes.c$239$1$1 ==.
                           1000 ;	apps/dexdrip/aes.c:239: (*state)[2][1] = (*state)[3][1];
   09FB 74 0D              1001 	mov	a,#0x0D
   09FD 2E                 1002 	add	a,r6
   09FE F5 7A              1003 	mov	_ShiftRows_sloc1_1_0,a
   0A00 E4                 1004 	clr	a
   0A01 3F                 1005 	addc	a,r7
   0A02 F5 7B              1006 	mov	(_ShiftRows_sloc1_1_0 + 1),a
   0A04 85 7A 82           1007 	mov	dpl,_ShiftRows_sloc1_1_0
   0A07 85 7B 83           1008 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   0A0A E0                 1009 	movx	a,@dptr
   0A0B 8C 82              1010 	mov	dpl,r4
   0A0D 8D 83              1011 	mov	dph,r5
   0A0F F0                 1012 	movx	@dptr,a
                    03E7   1013 	C$aes.c$240$1$1 ==.
                           1014 ;	apps/dexdrip/aes.c:240: (*state)[3][1] = temp;
   0A10 85 7A 82           1015 	mov	dpl,_ShiftRows_sloc1_1_0
   0A13 85 7B 83           1016 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   0A16 E5 79              1017 	mov	a,_ShiftRows_sloc0_1_0
   0A18 F0                 1018 	movx	@dptr,a
                    03F0   1019 	C$aes.c$243$1$1 ==.
                           1020 ;	apps/dexdrip/aes.c:243: temp           = (*state)[0][2];
   0A19 74 02              1021 	mov	a,#0x02
   0A1B 2E                 1022 	add	a,r6
   0A1C FC                 1023 	mov	r4,a
   0A1D E4                 1024 	clr	a
   0A1E 3F                 1025 	addc	a,r7
   0A1F FD                 1026 	mov	r5,a
   0A20 8C 82              1027 	mov	dpl,r4
   0A22 8D 83              1028 	mov	dph,r5
   0A24 E0                 1029 	movx	a,@dptr
   0A25 F5 7A              1030 	mov	_ShiftRows_sloc1_1_0,a
                    03FE   1031 	C$aes.c$244$1$1 ==.
                           1032 ;	apps/dexdrip/aes.c:244: (*state)[0][2] = (*state)[2][2];
   0A27 74 0A              1033 	mov	a,#0x0A
   0A29 2E                 1034 	add	a,r6
   0A2A F5 7C              1035 	mov	_ShiftRows_sloc2_1_0,a
   0A2C E4                 1036 	clr	a
   0A2D 3F                 1037 	addc	a,r7
   0A2E F5 7D              1038 	mov	(_ShiftRows_sloc2_1_0 + 1),a
   0A30 85 7C 82           1039 	mov	dpl,_ShiftRows_sloc2_1_0
   0A33 85 7D 83           1040 	mov	dph,(_ShiftRows_sloc2_1_0 + 1)
   0A36 E0                 1041 	movx	a,@dptr
   0A37 8C 82              1042 	mov	dpl,r4
   0A39 8D 83              1043 	mov	dph,r5
   0A3B F0                 1044 	movx	@dptr,a
                    0413   1045 	C$aes.c$245$1$1 ==.
                           1046 ;	apps/dexdrip/aes.c:245: (*state)[2][2] = temp;
   0A3C 85 7C 82           1047 	mov	dpl,_ShiftRows_sloc2_1_0
   0A3F 85 7D 83           1048 	mov	dph,(_ShiftRows_sloc2_1_0 + 1)
   0A42 E5 7A              1049 	mov	a,_ShiftRows_sloc1_1_0
   0A44 F0                 1050 	movx	@dptr,a
                    041C   1051 	C$aes.c$247$1$1 ==.
                           1052 ;	apps/dexdrip/aes.c:247: temp       = (*state)[1][2];
   0A45 74 06              1053 	mov	a,#0x06
   0A47 2E                 1054 	add	a,r6
   0A48 FC                 1055 	mov	r4,a
   0A49 E4                 1056 	clr	a
   0A4A 3F                 1057 	addc	a,r7
   0A4B FD                 1058 	mov	r5,a
   0A4C 8C 82              1059 	mov	dpl,r4
   0A4E 8D 83              1060 	mov	dph,r5
   0A50 E0                 1061 	movx	a,@dptr
   0A51 F5 7C              1062 	mov	_ShiftRows_sloc2_1_0,a
                    042A   1063 	C$aes.c$248$1$1 ==.
                           1064 ;	apps/dexdrip/aes.c:248: (*state)[1][2] = (*state)[3][2];
   0A53 74 0E              1065 	mov	a,#0x0E
   0A55 2E                 1066 	add	a,r6
   0A56 F5 7A              1067 	mov	_ShiftRows_sloc1_1_0,a
   0A58 E4                 1068 	clr	a
   0A59 3F                 1069 	addc	a,r7
   0A5A F5 7B              1070 	mov	(_ShiftRows_sloc1_1_0 + 1),a
   0A5C 85 7A 82           1071 	mov	dpl,_ShiftRows_sloc1_1_0
   0A5F 85 7B 83           1072 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   0A62 E0                 1073 	movx	a,@dptr
   0A63 8C 82              1074 	mov	dpl,r4
   0A65 8D 83              1075 	mov	dph,r5
   0A67 F0                 1076 	movx	@dptr,a
                    043F   1077 	C$aes.c$249$1$1 ==.
                           1078 ;	apps/dexdrip/aes.c:249: (*state)[3][2] = temp;
   0A68 85 7A 82           1079 	mov	dpl,_ShiftRows_sloc1_1_0
   0A6B 85 7B 83           1080 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   0A6E E5 7C              1081 	mov	a,_ShiftRows_sloc2_1_0
   0A70 F0                 1082 	movx	@dptr,a
                    0448   1083 	C$aes.c$252$1$1 ==.
                           1084 ;	apps/dexdrip/aes.c:252: temp       = (*state)[0][3];
   0A71 74 03              1085 	mov	a,#0x03
   0A73 2E                 1086 	add	a,r6
   0A74 FC                 1087 	mov	r4,a
   0A75 E4                 1088 	clr	a
   0A76 3F                 1089 	addc	a,r7
   0A77 FD                 1090 	mov	r5,a
   0A78 8C 82              1091 	mov	dpl,r4
   0A7A 8D 83              1092 	mov	dph,r5
   0A7C E0                 1093 	movx	a,@dptr
   0A7D F5 7C              1094 	mov	_ShiftRows_sloc2_1_0,a
                    0456   1095 	C$aes.c$253$1$1 ==.
                           1096 ;	apps/dexdrip/aes.c:253: (*state)[0][3] = (*state)[3][3];
   0A7F 74 0F              1097 	mov	a,#0x0F
   0A81 2E                 1098 	add	a,r6
   0A82 F5 7A              1099 	mov	_ShiftRows_sloc1_1_0,a
   0A84 E4                 1100 	clr	a
   0A85 3F                 1101 	addc	a,r7
   0A86 F5 7B              1102 	mov	(_ShiftRows_sloc1_1_0 + 1),a
   0A88 85 7A 82           1103 	mov	dpl,_ShiftRows_sloc1_1_0
   0A8B 85 7B 83           1104 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   0A8E E0                 1105 	movx	a,@dptr
   0A8F 8C 82              1106 	mov	dpl,r4
   0A91 8D 83              1107 	mov	dph,r5
   0A93 F0                 1108 	movx	@dptr,a
                    046B   1109 	C$aes.c$254$1$1 ==.
                           1110 ;	apps/dexdrip/aes.c:254: (*state)[3][3] = (*state)[2][3];
   0A94 74 0B              1111 	mov	a,#0x0B
   0A96 2E                 1112 	add	a,r6
   0A97 FC                 1113 	mov	r4,a
   0A98 E4                 1114 	clr	a
   0A99 3F                 1115 	addc	a,r7
   0A9A FD                 1116 	mov	r5,a
   0A9B 8C 82              1117 	mov	dpl,r4
   0A9D 8D 83              1118 	mov	dph,r5
   0A9F E0                 1119 	movx	a,@dptr
   0AA0 85 7A 82           1120 	mov	dpl,_ShiftRows_sloc1_1_0
   0AA3 85 7B 83           1121 	mov	dph,(_ShiftRows_sloc1_1_0 + 1)
   0AA6 F0                 1122 	movx	@dptr,a
                    047E   1123 	C$aes.c$255$1$1 ==.
                           1124 ;	apps/dexdrip/aes.c:255: (*state)[2][3] = (*state)[1][3];
   0AA7 74 07              1125 	mov	a,#0x07
   0AA9 2E                 1126 	add	a,r6
   0AAA FE                 1127 	mov	r6,a
   0AAB E4                 1128 	clr	a
   0AAC 3F                 1129 	addc	a,r7
   0AAD FF                 1130 	mov	r7,a
   0AAE 8E 82              1131 	mov	dpl,r6
   0AB0 8F 83              1132 	mov	dph,r7
   0AB2 E0                 1133 	movx	a,@dptr
   0AB3 8C 82              1134 	mov	dpl,r4
   0AB5 8D 83              1135 	mov	dph,r5
   0AB7 F0                 1136 	movx	@dptr,a
                    048F   1137 	C$aes.c$256$1$1 ==.
                           1138 ;	apps/dexdrip/aes.c:256: (*state)[1][3] = temp;
   0AB8 8E 82              1139 	mov	dpl,r6
   0ABA 8F 83              1140 	mov	dph,r7
   0ABC E5 7C              1141 	mov	a,_ShiftRows_sloc2_1_0
   0ABE F0                 1142 	movx	@dptr,a
                    0496   1143 	C$aes.c$257$1$1 ==.
                    0496   1144 	XFaes$ShiftRows$0$0 ==.
   0ABF 22                 1145 	ret
                           1146 ;------------------------------------------------------------
                           1147 ;Allocation info for local variables in function 'xtime'
                           1148 ;------------------------------------------------------------
                           1149 ;x                         Allocated with name '_xtime_x_1_1'
                           1150 ;------------------------------------------------------------
                    0497   1151 	Faes$xtime$0$0 ==.
                    0497   1152 	C$aes.c$259$1$1 ==.
                           1153 ;	apps/dexdrip/aes.c:259: static XDATA uint8_t xtime(XDATA uint8_t x)
                           1154 ;	-----------------------------------------
                           1155 ;	 function xtime
                           1156 ;	-----------------------------------------
   0AC0                    1157 _xtime:
   0AC0 E5 82              1158 	mov	a,dpl
                    0499   1159 	C$aes.c$261$1$1 ==.
                           1160 ;	apps/dexdrip/aes.c:261: return ((x<<1) ^ (((x>>7) & 1) * 0x1b));
   0AC2 90 F1 B2           1161 	mov	dptr,#_xtime_x_1_1
   0AC5 F0                 1162 	movx	@dptr,a
   0AC6 FF                 1163 	mov	r7,a
   0AC7 25 E0              1164 	add	a,acc
   0AC9 FE                 1165 	mov	r6,a
   0ACA EF                 1166 	mov	a,r7
   0ACB 23                 1167 	rl	a
   0ACC 54 01              1168 	anl	a,#0x01
   0ACE 75 F0 1B           1169 	mov	b,#0x1B
   0AD1 A4                 1170 	mul	ab
   0AD2 62 06              1171 	xrl	ar6,a
   0AD4 8E 82              1172 	mov	dpl,r6
                    04AD   1173 	C$aes.c$262$1$1 ==.
                    04AD   1174 	XFaes$xtime$0$0 ==.
   0AD6 22                 1175 	ret
                           1176 ;------------------------------------------------------------
                           1177 ;Allocation info for local variables in function 'Multiply'
                           1178 ;------------------------------------------------------------
                           1179 ;y                         Allocated with name '_Multiply_PARM_2'
                           1180 ;x                         Allocated with name '_Multiply_x_1_1'
                           1181 ;------------------------------------------------------------
                    04AE   1182 	Faes$Multiply$0$0 ==.
                    04AE   1183 	C$aes.c$286$1$1 ==.
                           1184 ;	apps/dexdrip/aes.c:286: static XDATA uint8_t Multiply(XDATA uint8_t x, XDATA uint8_t y)
                           1185 ;	-----------------------------------------
                           1186 ;	 function Multiply
                           1187 ;	-----------------------------------------
   0AD7                    1188 _Multiply:
   0AD7 E5 82              1189 	mov	a,dpl
   0AD9 90 F1 B4           1190 	mov	dptr,#_Multiply_x_1_1
   0ADC F0                 1191 	movx	@dptr,a
                    04B4   1192 	C$aes.c$288$1$1 ==.
                           1193 ;	apps/dexdrip/aes.c:288: return (((y & 1) * x) ^
   0ADD 90 F1 B3           1194 	mov	dptr,#_Multiply_PARM_2
   0AE0 E0                 1195 	movx	a,@dptr
   0AE1 FF                 1196 	mov	r7,a
   0AE2 74 01              1197 	mov	a,#0x01
   0AE4 5F                 1198 	anl	a,r7
   0AE5 FE                 1199 	mov	r6,a
   0AE6 90 F1 B4           1200 	mov	dptr,#_Multiply_x_1_1
   0AE9 E0                 1201 	movx	a,@dptr
   0AEA FD                 1202 	mov	r5,a
   0AEB 8E F0              1203 	mov	b,r6
   0AED A4                 1204 	mul	ab
   0AEE FE                 1205 	mov	r6,a
                    04C6   1206 	C$aes.c$289$1$1 ==.
                           1207 ;	apps/dexdrip/aes.c:289: ((y>>1 & 1) * xtime(x)) ^
   0AEF EF                 1208 	mov	a,r7
   0AF0 03                 1209 	rr	a
   0AF1 54 01              1210 	anl	a,#0x01
   0AF3 FC                 1211 	mov	r4,a
   0AF4 8D 82              1212 	mov	dpl,r5
   0AF6 C0 07              1213 	push	ar7
   0AF8 C0 06              1214 	push	ar6
   0AFA C0 05              1215 	push	ar5
   0AFC C0 04              1216 	push	ar4
   0AFE 12 0A C0           1217 	lcall	_xtime
   0B01 AB 82              1218 	mov	r3,dpl
   0B03 D0 04              1219 	pop	ar4
   0B05 D0 05              1220 	pop	ar5
   0B07 D0 06              1221 	pop	ar6
   0B09 D0 07              1222 	pop	ar7
   0B0B 8C F0              1223 	mov	b,r4
   0B0D EB                 1224 	mov	a,r3
   0B0E A4                 1225 	mul	ab
   0B0F 62 06              1226 	xrl	ar6,a
                    04E8   1227 	C$aes.c$290$1$1 ==.
                           1228 ;	apps/dexdrip/aes.c:290: ((y>>2 & 1) * xtime(xtime(x))) ^
   0B11 EF                 1229 	mov	a,r7
   0B12 03                 1230 	rr	a
   0B13 03                 1231 	rr	a
   0B14 54 01              1232 	anl	a,#0x01
   0B16 FC                 1233 	mov	r4,a
   0B17 8D 82              1234 	mov	dpl,r5
   0B19 C0 07              1235 	push	ar7
   0B1B C0 06              1236 	push	ar6
   0B1D C0 05              1237 	push	ar5
   0B1F C0 04              1238 	push	ar4
   0B21 12 0A C0           1239 	lcall	_xtime
   0B24 12 0A C0           1240 	lcall	_xtime
   0B27 AB 82              1241 	mov	r3,dpl
   0B29 D0 04              1242 	pop	ar4
   0B2B D0 05              1243 	pop	ar5
   0B2D D0 06              1244 	pop	ar6
   0B2F D0 07              1245 	pop	ar7
   0B31 8C F0              1246 	mov	b,r4
   0B33 EB                 1247 	mov	a,r3
   0B34 A4                 1248 	mul	ab
   0B35 62 06              1249 	xrl	ar6,a
                    050E   1250 	C$aes.c$291$1$1 ==.
                           1251 ;	apps/dexdrip/aes.c:291: ((y>>3 & 1) * xtime(xtime(xtime(x)))) ^
   0B37 EF                 1252 	mov	a,r7
   0B38 A2 E3              1253 	mov	c,acc[3]
   0B3A E4                 1254 	clr	a
   0B3B 33                 1255 	rlc	a
   0B3C FC                 1256 	mov	r4,a
   0B3D 8D 82              1257 	mov	dpl,r5
   0B3F C0 07              1258 	push	ar7
   0B41 C0 06              1259 	push	ar6
   0B43 C0 05              1260 	push	ar5
   0B45 C0 04              1261 	push	ar4
   0B47 12 0A C0           1262 	lcall	_xtime
   0B4A 12 0A C0           1263 	lcall	_xtime
   0B4D 12 0A C0           1264 	lcall	_xtime
   0B50 AB 82              1265 	mov	r3,dpl
   0B52 D0 04              1266 	pop	ar4
   0B54 D0 05              1267 	pop	ar5
   0B56 D0 06              1268 	pop	ar6
   0B58 D0 07              1269 	pop	ar7
   0B5A 8C F0              1270 	mov	b,r4
   0B5C EB                 1271 	mov	a,r3
   0B5D A4                 1272 	mul	ab
   0B5E 62 06              1273 	xrl	ar6,a
                    0537   1274 	C$aes.c$292$1$1 ==.
                           1275 ;	apps/dexdrip/aes.c:292: ((y>>4 & 1) * xtime(xtime(xtime(xtime(x))))));
   0B60 EF                 1276 	mov	a,r7
   0B61 C4                 1277 	swap	a
   0B62 54 01              1278 	anl	a,#0x01
   0B64 FF                 1279 	mov	r7,a
   0B65 8D 82              1280 	mov	dpl,r5
   0B67 C0 07              1281 	push	ar7
   0B69 C0 06              1282 	push	ar6
   0B6B 12 0A C0           1283 	lcall	_xtime
   0B6E 12 0A C0           1284 	lcall	_xtime
   0B71 12 0A C0           1285 	lcall	_xtime
   0B74 12 0A C0           1286 	lcall	_xtime
   0B77 AD 82              1287 	mov	r5,dpl
   0B79 D0 06              1288 	pop	ar6
   0B7B D0 07              1289 	pop	ar7
   0B7D 8F F0              1290 	mov	b,r7
   0B7F ED                 1291 	mov	a,r5
   0B80 A4                 1292 	mul	ab
   0B81 62 06              1293 	xrl	ar6,a
   0B83 8E 82              1294 	mov	dpl,r6
                    055C   1295 	C$aes.c$293$1$1 ==.
                    055C   1296 	XFaes$Multiply$0$0 ==.
   0B85 22                 1297 	ret
                           1298 ;------------------------------------------------------------
                           1299 ;Allocation info for local variables in function 'Cipher'
                           1300 ;------------------------------------------------------------
                           1301 ;sloc0                     Allocated with name '_Cipher_sloc0_1_0'
                           1302 ;sloc1                     Allocated with name '_Cipher_sloc1_1_0'
                           1303 ;sloc2                     Allocated with name '_Cipher_sloc2_1_0'
                           1304 ;round                     Allocated with name '_Cipher_round_1_1'
                           1305 ;i                         Allocated with name '_Cipher_i_1_1'
                           1306 ;k                         Allocated with name '_Cipher_k_1_1'
                           1307 ;Tmp                       Allocated with name '_Cipher_Tmp_1_1'
                           1308 ;Tm                        Allocated with name '_Cipher_Tm_1_1'
                           1309 ;t                         Allocated with name '_Cipher_t_1_1'
                           1310 ;------------------------------------------------------------
                    055D   1311 	Faes$Cipher$0$0 ==.
                    055D   1312 	C$aes.c$311$1$1 ==.
                           1313 ;	apps/dexdrip/aes.c:311: static void Cipher(void)
                           1314 ;	-----------------------------------------
                           1315 ;	 function Cipher
                           1316 ;	-----------------------------------------
   0B86                    1317 _Cipher:
                    055D   1318 	C$aes.c$322$1$1 ==.
                           1319 ;	apps/dexdrip/aes.c:322: AddRoundKey(0);
   0B86 75 82 00           1320 	mov	dpl,#0x00
   0B89 12 09 12           1321 	lcall	_AddRoundKey
                    0563   1322 	C$aes.c$327$1$1 ==.
                           1323 ;	apps/dexdrip/aes.c:327: for(round = 1; round < Nr; ++round)
   0B8C 7F 01              1324 	mov	r7,#0x01
   0B8E                    1325 00109$:
   0B8E BF 0A 00           1326 	cjne	r7,#0x0A,00123$
   0B91                    1327 00123$:
   0B91 40 03              1328 	jc	00124$
   0B93 02 0C CE           1329 	ljmp	00112$
   0B96                    1330 00124$:
                    056D   1331 	C$aes.c$329$2$2 ==.
                           1332 ;	apps/dexdrip/aes.c:329: SubBytes();
   0B96 C0 07              1333 	push	ar7
   0B98 12 09 6C           1334 	lcall	_SubBytes
                    0572   1335 	C$aes.c$330$2$2 ==.
                           1336 ;	apps/dexdrip/aes.c:330: ShiftRows();
   0B9B 12 09 BE           1337 	lcall	_ShiftRows
   0B9E D0 07              1338 	pop	ar7
                    0577   1339 	C$aes.c$337$1$1 ==.
                           1340 ;	apps/dexdrip/aes.c:337: for(i = 0; i < 4; ++i)
   0BA0 7E 00              1341 	mov	r6,#0x00
   0BA2                    1342 00105$:
   0BA2 BE 04 00           1343 	cjne	r6,#0x04,00125$
   0BA5                    1344 00125$:
   0BA5 40 03              1345 	jc	00126$
   0BA7 02 0C C1           1346 	ljmp	00108$
   0BAA                    1347 00126$:
                    0581   1348 	C$aes.c$339$1$1 ==.
                           1349 ;	apps/dexdrip/aes.c:339: t   = (*state)[i][0];
   0BAA C0 07              1350 	push	ar7
   0BAC EE                 1351 	mov	a,r6
   0BAD 2E                 1352 	add	a,r6
   0BAE 25 E0              1353 	add	a,acc
   0BB0 FD                 1354 	mov	r5,a
   0BB1 78 00              1355 	mov	r0,#_state
   0BB3 E2                 1356 	movx	a,@r0
   0BB4 2D                 1357 	add	a,r5
   0BB5 FB                 1358 	mov	r3,a
   0BB6 08                 1359 	inc	r0
   0BB7 E2                 1360 	movx	a,@r0
   0BB8 34 00              1361 	addc	a,#0x00
   0BBA FC                 1362 	mov	r4,a
   0BBB 8B 82              1363 	mov	dpl,r3
   0BBD 8C 83              1364 	mov	dph,r4
   0BBF E0                 1365 	movx	a,@dptr
   0BC0 FA                 1366 	mov	r2,a
   0BC1 90 F1 B7           1367 	mov	dptr,#_Cipher_t_1_1
   0BC4 F0                 1368 	movx	@dptr,a
                    059C   1369 	C$aes.c$340$3$3 ==.
                           1370 ;	apps/dexdrip/aes.c:340: Tmp = (*state)[i][0] ^ (*state)[i][1] ^ (*state)[i][2] ^ (*state)[i][3] ;
   0BC5 8B 82              1371 	mov	dpl,r3
   0BC7 8C 83              1372 	mov	dph,r4
   0BC9 A3                 1373 	inc	dptr
   0BCA E0                 1374 	movx	a,@dptr
   0BCB 62 02              1375 	xrl	ar2,a
   0BCD 8B 82              1376 	mov	dpl,r3
   0BCF 8C 83              1377 	mov	dph,r4
   0BD1 A3                 1378 	inc	dptr
   0BD2 A3                 1379 	inc	dptr
   0BD3 E0                 1380 	movx	a,@dptr
   0BD4 62 02              1381 	xrl	ar2,a
   0BD6 8B 82              1382 	mov	dpl,r3
   0BD8 8C 83              1383 	mov	dph,r4
   0BDA A3                 1384 	inc	dptr
   0BDB A3                 1385 	inc	dptr
   0BDC A3                 1386 	inc	dptr
   0BDD E0                 1387 	movx	a,@dptr
   0BDE 6A                 1388 	xrl	a,r2
   0BDF F5 35              1389 	mov	_Cipher_sloc0_1_0,a
   0BE1 90 F1 B6           1390 	mov	dptr,#_Cipher_Tmp_1_1
   0BE4 F0                 1391 	movx	@dptr,a
                    05BC   1392 	C$aes.c$342$3$3 ==.
                           1393 ;	apps/dexdrip/aes.c:342: for(k = 0; k < 3; ++k)
   0BE5 90 F1 B5           1394 	mov	dptr,#_Cipher_k_1_1
   0BE8 E4                 1395 	clr	a
   0BE9 F0                 1396 	movx	@dptr,a
                    05C1   1397 	C$aes.c$366$1$1 ==.
                           1398 ;	apps/dexdrip/aes.c:366: AddRoundKey(Nr);
   0BEA D0 07              1399 	pop	ar7
                    05C3   1400 	C$aes.c$342$4$4 ==.
                           1401 ;	apps/dexdrip/aes.c:342: for(k = 0; k < 3; ++k)
   0BEC 8D 36              1402 	mov	_Cipher_sloc1_1_0,r5
   0BEE                    1403 00101$:
   0BEE 90 F1 B5           1404 	mov	dptr,#_Cipher_k_1_1
   0BF1 E0                 1405 	movx	a,@dptr
   0BF2 FB                 1406 	mov	r3,a
   0BF3 BB 03 00           1407 	cjne	r3,#0x03,00127$
   0BF6                    1408 00127$:
   0BF6 50 6A              1409 	jnc	00104$
                    05CF   1410 	C$aes.c$344$1$1 ==.
                           1411 ;	apps/dexdrip/aes.c:344: Tm  = (*state)[i][k] ^ (*state)[i][k+1] ; Tm = xtime(Tm);  (*state)[i][k] ^= Tm ^ Tmp ;
   0BF8 C0 07              1412 	push	ar7
   0BFA 78 00              1413 	mov	r0,#_state
   0BFC E2                 1414 	movx	a,@r0
   0BFD 25 36              1415 	add	a,_Cipher_sloc1_1_0
   0BFF FA                 1416 	mov	r2,a
   0C00 08                 1417 	inc	r0
   0C01 E2                 1418 	movx	a,@r0
   0C02 34 00              1419 	addc	a,#0x00
   0C04 FF                 1420 	mov	r7,a
   0C05 EB                 1421 	mov	a,r3
   0C06 2A                 1422 	add	a,r2
   0C07 F5 37              1423 	mov	_Cipher_sloc2_1_0,a
   0C09 E4                 1424 	clr	a
   0C0A 3F                 1425 	addc	a,r7
   0C0B F5 38              1426 	mov	(_Cipher_sloc2_1_0 + 1),a
   0C0D EB                 1427 	mov	a,r3
   0C0E 04                 1428 	inc	a
   0C0F FD                 1429 	mov	r5,a
   0C10 2A                 1430 	add	a,r2
   0C11 F5 82              1431 	mov	dpl,a
   0C13 E4                 1432 	clr	a
   0C14 3F                 1433 	addc	a,r7
   0C15 F5 83              1434 	mov	dph,a
   0C17 E0                 1435 	movx	a,@dptr
   0C18 FF                 1436 	mov	r7,a
   0C19 85 37 82           1437 	mov	dpl,_Cipher_sloc2_1_0
   0C1C 85 38 83           1438 	mov	dph,(_Cipher_sloc2_1_0 + 1)
   0C1F E0                 1439 	movx	a,@dptr
   0C20 FC                 1440 	mov	r4,a
   0C21 EF                 1441 	mov	a,r7
   0C22 6C                 1442 	xrl	a,r4
   0C23 F5 82              1443 	mov	dpl,a
   0C25 C0 06              1444 	push	ar6
   0C27 C0 05              1445 	push	ar5
   0C29 C0 03              1446 	push	ar3
   0C2B 12 0A C0           1447 	lcall	_xtime
   0C2E AF 82              1448 	mov	r7,dpl
   0C30 D0 03              1449 	pop	ar3
   0C32 D0 05              1450 	pop	ar5
   0C34 D0 06              1451 	pop	ar6
   0C36 78 00              1452 	mov	r0,#_state
   0C38 E2                 1453 	movx	a,@r0
   0C39 25 36              1454 	add	a,_Cipher_sloc1_1_0
   0C3B FA                 1455 	mov	r2,a
   0C3C 08                 1456 	inc	r0
   0C3D E2                 1457 	movx	a,@r0
   0C3E 34 00              1458 	addc	a,#0x00
   0C40 FC                 1459 	mov	r4,a
   0C41 EB                 1460 	mov	a,r3
   0C42 2A                 1461 	add	a,r2
   0C43 FA                 1462 	mov	r2,a
   0C44 E4                 1463 	clr	a
   0C45 3C                 1464 	addc	a,r4
   0C46 FC                 1465 	mov	r4,a
   0C47 E5 35              1466 	mov	a,_Cipher_sloc0_1_0
   0C49 62 07              1467 	xrl	ar7,a
   0C4B 8A 82              1468 	mov	dpl,r2
   0C4D 8C 83              1469 	mov	dph,r4
   0C4F E0                 1470 	movx	a,@dptr
   0C50 FB                 1471 	mov	r3,a
   0C51 62 07              1472 	xrl	ar7,a
   0C53 8A 82              1473 	mov	dpl,r2
   0C55 8C 83              1474 	mov	dph,r4
   0C57 EF                 1475 	mov	a,r7
   0C58 F0                 1476 	movx	@dptr,a
                    0630   1477 	C$aes.c$342$3$3 ==.
                           1478 ;	apps/dexdrip/aes.c:342: for(k = 0; k < 3; ++k)
   0C59 90 F1 B5           1479 	mov	dptr,#_Cipher_k_1_1
   0C5C ED                 1480 	mov	a,r5
   0C5D F0                 1481 	movx	@dptr,a
   0C5E D0 07              1482 	pop	ar7
   0C60 80 8C              1483 	sjmp	00101$
   0C62                    1484 00104$:
                    0639   1485 	C$aes.c$354$3$3 ==.
                           1486 ;	apps/dexdrip/aes.c:354: Tm  = (*state)[i][3] ^ t ;        Tm = xtime(Tm);  (*state)[i][3] ^= Tm ^ Tmp ;
   0C62 EE                 1487 	mov	a,r6
   0C63 2E                 1488 	add	a,r6
   0C64 25 E0              1489 	add	a,acc
   0C66 FD                 1490 	mov	r5,a
   0C67 78 00              1491 	mov	r0,#_state
   0C69 E2                 1492 	movx	a,@r0
   0C6A 2D                 1493 	add	a,r5
   0C6B FB                 1494 	mov	r3,a
   0C6C 08                 1495 	inc	r0
   0C6D E2                 1496 	movx	a,@r0
   0C6E 34 00              1497 	addc	a,#0x00
   0C70 FC                 1498 	mov	r4,a
   0C71 74 03              1499 	mov	a,#0x03
   0C73 2B                 1500 	add	a,r3
   0C74 FB                 1501 	mov	r3,a
   0C75 E4                 1502 	clr	a
   0C76 3C                 1503 	addc	a,r4
   0C77 FC                 1504 	mov	r4,a
   0C78 90 F1 B7           1505 	mov	dptr,#_Cipher_t_1_1
   0C7B E0                 1506 	movx	a,@dptr
   0C7C FA                 1507 	mov	r2,a
   0C7D 8B 82              1508 	mov	dpl,r3
   0C7F 8C 83              1509 	mov	dph,r4
   0C81 E0                 1510 	movx	a,@dptr
   0C82 FB                 1511 	mov	r3,a
   0C83 EA                 1512 	mov	a,r2
   0C84 6B                 1513 	xrl	a,r3
   0C85 F5 82              1514 	mov	dpl,a
   0C87 C0 07              1515 	push	ar7
   0C89 C0 06              1516 	push	ar6
   0C8B C0 05              1517 	push	ar5
   0C8D 12 0A C0           1518 	lcall	_xtime
   0C90 AC 82              1519 	mov	r4,dpl
   0C92 D0 05              1520 	pop	ar5
   0C94 D0 06              1521 	pop	ar6
   0C96 D0 07              1522 	pop	ar7
   0C98 78 00              1523 	mov	r0,#_state
   0C9A E2                 1524 	movx	a,@r0
   0C9B 2D                 1525 	add	a,r5
   0C9C FD                 1526 	mov	r5,a
   0C9D 08                 1527 	inc	r0
   0C9E E2                 1528 	movx	a,@r0
   0C9F 34 00              1529 	addc	a,#0x00
   0CA1 FB                 1530 	mov	r3,a
   0CA2 74 03              1531 	mov	a,#0x03
   0CA4 2D                 1532 	add	a,r5
   0CA5 FD                 1533 	mov	r5,a
   0CA6 E4                 1534 	clr	a
   0CA7 3B                 1535 	addc	a,r3
   0CA8 FB                 1536 	mov	r3,a
   0CA9 90 F1 B6           1537 	mov	dptr,#_Cipher_Tmp_1_1
   0CAC E0                 1538 	movx	a,@dptr
   0CAD 62 04              1539 	xrl	ar4,a
   0CAF 8D 82              1540 	mov	dpl,r5
   0CB1 8B 83              1541 	mov	dph,r3
   0CB3 E0                 1542 	movx	a,@dptr
   0CB4 FA                 1543 	mov	r2,a
   0CB5 62 04              1544 	xrl	ar4,a
   0CB7 8D 82              1545 	mov	dpl,r5
   0CB9 8B 83              1546 	mov	dph,r3
   0CBB EC                 1547 	mov	a,r4
   0CBC F0                 1548 	movx	@dptr,a
                    0694   1549 	C$aes.c$337$2$2 ==.
                           1550 ;	apps/dexdrip/aes.c:337: for(i = 0; i < 4; ++i)
   0CBD 0E                 1551 	inc	r6
   0CBE 02 0B A2           1552 	ljmp	00105$
   0CC1                    1553 00108$:
                    0698   1554 	C$aes.c$356$2$2 ==.
                           1555 ;	apps/dexdrip/aes.c:356: AddRoundKey(round);
   0CC1 8F 82              1556 	mov	dpl,r7
   0CC3 C0 07              1557 	push	ar7
   0CC5 12 09 12           1558 	lcall	_AddRoundKey
   0CC8 D0 07              1559 	pop	ar7
                    06A1   1560 	C$aes.c$327$1$1 ==.
                           1561 ;	apps/dexdrip/aes.c:327: for(round = 1; round < Nr; ++round)
   0CCA 0F                 1562 	inc	r7
   0CCB 02 0B 8E           1563 	ljmp	00109$
   0CCE                    1564 00112$:
                    06A5   1565 	C$aes.c$364$1$1 ==.
                           1566 ;	apps/dexdrip/aes.c:364: SubBytes();
   0CCE 12 09 6C           1567 	lcall	_SubBytes
                    06A8   1568 	C$aes.c$365$1$1 ==.
                           1569 ;	apps/dexdrip/aes.c:365: ShiftRows();
   0CD1 12 09 BE           1570 	lcall	_ShiftRows
                    06AB   1571 	C$aes.c$366$1$1 ==.
                           1572 ;	apps/dexdrip/aes.c:366: AddRoundKey(Nr);
   0CD4 75 82 0A           1573 	mov	dpl,#0x0A
   0CD7 12 09 12           1574 	lcall	_AddRoundKey
                    06B1   1575 	C$aes.c$367$1$1 ==.
                    06B1   1576 	XFaes$Cipher$0$0 ==.
   0CDA 22                 1577 	ret
                           1578 ;------------------------------------------------------------
                           1579 ;Allocation info for local variables in function 'BlockCopy'
                           1580 ;------------------------------------------------------------
                           1581 ;i                         Allocated with name '_BlockCopy_i_1_1'
                           1582 ;sloc0                     Allocated with name '_BlockCopy_sloc0_1_0'
                           1583 ;------------------------------------------------------------
                    06B2   1584 	Faes$BlockCopy$0$0 ==.
                    06B2   1585 	C$aes.c$371$1$1 ==.
                           1586 ;	apps/dexdrip/aes.c:371: static void BlockCopy(uint8_t* output, uint8_t* input)
                           1587 ;	-----------------------------------------
                           1588 ;	 function BlockCopy
                           1589 ;	-----------------------------------------
   0CDB                    1590 _BlockCopy:
   0CDB AF F0              1591 	mov	r7,b
   0CDD AE 83              1592 	mov	r6,dph
   0CDF E5 82              1593 	mov	a,dpl
   0CE1 78 09              1594 	mov	r0,#_BlockCopy_output_1_1
   0CE3 F2                 1595 	movx	@r0,a
   0CE4 08                 1596 	inc	r0
   0CE5 EE                 1597 	mov	a,r6
   0CE6 F2                 1598 	movx	@r0,a
   0CE7 08                 1599 	inc	r0
   0CE8 EF                 1600 	mov	a,r7
   0CE9 F2                 1601 	movx	@r0,a
                    06C1   1602 	C$aes.c$374$1$1 ==.
                           1603 ;	apps/dexdrip/aes.c:374: for (i=0;i<KEYLEN;++i)
   0CEA 7C 00              1604 	mov	r4,#0x00
   0CEC                    1605 00101$:
   0CEC BC 10 00           1606 	cjne	r4,#0x10,00110$
   0CEF                    1607 00110$:
   0CEF 50 36              1608 	jnc	00105$
                    06C8   1609 	C$aes.c$376$2$2 ==.
                           1610 ;	apps/dexdrip/aes.c:376: output[i] = input[i];
   0CF1 78 09              1611 	mov	r0,#_BlockCopy_output_1_1
   0CF3 E2                 1612 	movx	a,@r0
   0CF4 2C                 1613 	add	a,r4
   0CF5 F5 79              1614 	mov	_BlockCopy_sloc0_1_0,a
   0CF7 08                 1615 	inc	r0
   0CF8 E2                 1616 	movx	a,@r0
   0CF9 34 00              1617 	addc	a,#0x00
   0CFB F5 7A              1618 	mov	(_BlockCopy_sloc0_1_0 + 1),a
   0CFD 08                 1619 	inc	r0
   0CFE E2                 1620 	movx	a,@r0
   0CFF F5 7B              1621 	mov	(_BlockCopy_sloc0_1_0 + 2),a
   0D01 78 06              1622 	mov	r0,#_BlockCopy_PARM_2
   0D03 E2                 1623 	movx	a,@r0
   0D04 2C                 1624 	add	a,r4
   0D05 FD                 1625 	mov	r5,a
   0D06 08                 1626 	inc	r0
   0D07 E2                 1627 	movx	a,@r0
   0D08 34 00              1628 	addc	a,#0x00
   0D0A FE                 1629 	mov	r6,a
   0D0B 08                 1630 	inc	r0
   0D0C E2                 1631 	movx	a,@r0
   0D0D FF                 1632 	mov	r7,a
   0D0E 8D 82              1633 	mov	dpl,r5
   0D10 8E 83              1634 	mov	dph,r6
   0D12 8F F0              1635 	mov	b,r7
   0D14 12 5B D7           1636 	lcall	__gptrget
   0D17 FD                 1637 	mov	r5,a
   0D18 85 79 82           1638 	mov	dpl,_BlockCopy_sloc0_1_0
   0D1B 85 7A 83           1639 	mov	dph,(_BlockCopy_sloc0_1_0 + 1)
   0D1E 85 7B F0           1640 	mov	b,(_BlockCopy_sloc0_1_0 + 2)
   0D21 12 40 5A           1641 	lcall	__gptrput
                    06FB   1642 	C$aes.c$374$1$1 ==.
                           1643 ;	apps/dexdrip/aes.c:374: for (i=0;i<KEYLEN;++i)
   0D24 0C                 1644 	inc	r4
   0D25 80 C5              1645 	sjmp	00101$
   0D27                    1646 00105$:
                    06FE   1647 	C$aes.c$378$1$1 ==.
                    06FE   1648 	XFaes$BlockCopy$0$0 ==.
   0D27 22                 1649 	ret
                           1650 ;------------------------------------------------------------
                           1651 ;Allocation info for local variables in function 'XorWithIv'
                           1652 ;------------------------------------------------------------
                           1653 ;i                         Allocated with name '_XorWithIv_i_1_1'
                           1654 ;------------------------------------------------------------
                    06FF   1655 	Faes$XorWithIv$0$0 ==.
                    06FF   1656 	C$aes.c$386$1$1 ==.
                           1657 ;	apps/dexdrip/aes.c:386: static void XorWithIv(XDATA uint8_t* buf)
                           1658 ;	-----------------------------------------
                           1659 ;	 function XorWithIv
                           1660 ;	-----------------------------------------
   0D28                    1661 _XorWithIv:
   0D28 AE 82              1662 	mov	r6,dpl
   0D2A AF 83              1663 	mov	r7,dph
                    0703   1664 	C$aes.c$389$1$1 ==.
                           1665 ;	apps/dexdrip/aes.c:389: for(i = 0; i < KEYLEN; ++i)
   0D2C 7D 00              1666 	mov	r5,#0x00
   0D2E                    1667 00101$:
   0D2E BD 10 00           1668 	cjne	r5,#0x10,00110$
   0D31                    1669 00110$:
   0D31 50 2C              1670 	jnc	00105$
                    070A   1671 	C$aes.c$391$2$2 ==.
                           1672 ;	apps/dexdrip/aes.c:391: buf[i] ^= Iv[i];
   0D33 ED                 1673 	mov	a,r5
   0D34 2E                 1674 	add	a,r6
   0D35 FB                 1675 	mov	r3,a
   0D36 E4                 1676 	clr	a
   0D37 3F                 1677 	addc	a,r7
   0D38 FC                 1678 	mov	r4,a
   0D39 8B 82              1679 	mov	dpl,r3
   0D3B 8C 83              1680 	mov	dph,r4
   0D3D E0                 1681 	movx	a,@dptr
   0D3E FA                 1682 	mov	r2,a
   0D3F 78 04              1683 	mov	r0,#_Iv
   0D41 E2                 1684 	movx	a,@r0
   0D42 2D                 1685 	add	a,r5
   0D43 F5 82              1686 	mov	dpl,a
   0D45 08                 1687 	inc	r0
   0D46 E2                 1688 	movx	a,@r0
   0D47 34 00              1689 	addc	a,#0x00
   0D49 F5 83              1690 	mov	dph,a
   0D4B C0 06              1691 	push	ar6
   0D4D C0 07              1692 	push	ar7
   0D4F E0                 1693 	movx	a,@dptr
   0D50 62 02              1694 	xrl	ar2,a
   0D52 8B 82              1695 	mov	dpl,r3
   0D54 8C 83              1696 	mov	dph,r4
   0D56 EA                 1697 	mov	a,r2
   0D57 F0                 1698 	movx	@dptr,a
                    072F   1699 	C$aes.c$389$1$1 ==.
                           1700 ;	apps/dexdrip/aes.c:389: for(i = 0; i < KEYLEN; ++i)
   0D58 0D                 1701 	inc	r5
   0D59 D0 07              1702 	pop	ar7
   0D5B D0 06              1703 	pop	ar6
   0D5D 80 CF              1704 	sjmp	00101$
   0D5F                    1705 00105$:
                    0736   1706 	C$aes.c$393$1$1 ==.
                    0736   1707 	XFaes$XorWithIv$0$0 ==.
   0D5F 22                 1708 	ret
                           1709 ;------------------------------------------------------------
                           1710 ;Allocation info for local variables in function 'AES128_CBC_encrypt_buffer'
                           1711 ;------------------------------------------------------------
                           1712 ;sloc0                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc0_1_0'
                           1713 ;sloc1                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc1_1_0'
                           1714 ;sloc2                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc2_1_0'
                           1715 ;sloc3                     Allocated with name '_AES128_CBC_encrypt_buffer_sloc3_1_0'
                           1716 ;input                     Allocated with name '_AES128_CBC_encrypt_buffer_PARM_2'
                           1717 ;length                    Allocated with name '_AES128_CBC_encrypt_buffer_PARM_3'
                           1718 ;key                       Allocated with name '_AES128_CBC_encrypt_buffer_PARM_4'
                           1719 ;iv                        Allocated with name '_AES128_CBC_encrypt_buffer_PARM_5'
                           1720 ;output                    Allocated with name '_AES128_CBC_encrypt_buffer_output_1_1'
                           1721 ;i                         Allocated with name '_AES128_CBC_encrypt_buffer_i_1_1'
                           1722 ;remainders                Allocated with name '_AES128_CBC_encrypt_buffer_remainders_1_1'
                           1723 ;------------------------------------------------------------
                    0737   1724 	G$AES128_CBC_encrypt_buffer$0$0 ==.
                    0737   1725 	C$aes.c$395$1$1 ==.
                           1726 ;	apps/dexdrip/aes.c:395: void AES128_CBC_encrypt_buffer(XDATA uint8_t* XDATA output, XDATA uint8_t* XDATA input, XDATA uint32_t length, XDATA const uint8_t* XDATA key, XDATA const uint8_t* XDATA iv)
                           1727 ;	-----------------------------------------
                           1728 ;	 function AES128_CBC_encrypt_buffer
                           1729 ;	-----------------------------------------
   0D60                    1730 _AES128_CBC_encrypt_buffer:
   0D60 AF 83              1731 	mov	r7,dph
   0D62 E5 82              1732 	mov	a,dpl
   0D64 90 F1 C2           1733 	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
   0D67 F0                 1734 	movx	@dptr,a
   0D68 A3                 1735 	inc	dptr
   0D69 EF                 1736 	mov	a,r7
   0D6A F0                 1737 	movx	@dptr,a
                    0742   1738 	C$aes.c$399$1$1 ==.
                           1739 ;	apps/dexdrip/aes.c:399: XDATA uint8_t remainders = length % KEYLEN; /* Remaining bytes in the last non-full block */
   0D6B 90 F1 BA           1740 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_3
   0D6E E0                 1741 	movx	a,@dptr
   0D6F F5 39              1742 	mov	_AES128_CBC_encrypt_buffer_sloc0_1_0,a
   0D71 A3                 1743 	inc	dptr
   0D72 E0                 1744 	movx	a,@dptr
   0D73 F5 3A              1745 	mov	(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 1),a
   0D75 A3                 1746 	inc	dptr
   0D76 E0                 1747 	movx	a,@dptr
   0D77 F5 3B              1748 	mov	(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 2),a
   0D79 A3                 1749 	inc	dptr
   0D7A E0                 1750 	movx	a,@dptr
   0D7B F5 3C              1751 	mov	(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 3),a
   0D7D 74 0F              1752 	mov	a,#0x0F
   0D7F 55 39              1753 	anl	a,_AES128_CBC_encrypt_buffer_sloc0_1_0
   0D81 FA                 1754 	mov	r2,a
                    0759   1755 	C$aes.c$404$1$1 ==.
                           1756 ;	apps/dexdrip/aes.c:404: BlockCopy(output, input);
   0D82 90 F1 C2           1757 	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
   0D85 E0                 1758 	movx	a,@dptr
   0D86 FE                 1759 	mov	r6,a
   0D87 A3                 1760 	inc	dptr
   0D88 E0                 1761 	movx	a,@dptr
   0D89 FF                 1762 	mov	r7,a
   0D8A 8E 03              1763 	mov	ar3,r6
   0D8C 8F 04              1764 	mov	ar4,r7
   0D8E 7D 00              1765 	mov	r5,#0x00
   0D90 90 F1 B8           1766 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_2
   0D93 E0                 1767 	movx	a,@dptr
   0D94 F5 3D              1768 	mov	_AES128_CBC_encrypt_buffer_sloc1_1_0,a
   0D96 A3                 1769 	inc	dptr
   0D97 E0                 1770 	movx	a,@dptr
   0D98 F5 3E              1771 	mov	(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1),a
   0D9A 78 06              1772 	mov	r0,#_BlockCopy_PARM_2
   0D9C E5 3D              1773 	mov	a,_AES128_CBC_encrypt_buffer_sloc1_1_0
   0D9E F2                 1774 	movx	@r0,a
   0D9F 08                 1775 	inc	r0
   0DA0 E5 3E              1776 	mov	a,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
   0DA2 F2                 1777 	movx	@r0,a
   0DA3 08                 1778 	inc	r0
   0DA4 E4                 1779 	clr	a
   0DA5 F2                 1780 	movx	@r0,a
   0DA6 8B 82              1781 	mov	dpl,r3
   0DA8 8C 83              1782 	mov	dph,r4
   0DAA 8D F0              1783 	mov	b,r5
   0DAC C0 07              1784 	push	ar7
   0DAE C0 06              1785 	push	ar6
   0DB0 C0 02              1786 	push	ar2
   0DB2 12 0C DB           1787 	lcall	_BlockCopy
   0DB5 D0 02              1788 	pop	ar2
   0DB7 D0 06              1789 	pop	ar6
   0DB9 D0 07              1790 	pop	ar7
                    0792   1791 	C$aes.c$405$1$1 ==.
                           1792 ;	apps/dexdrip/aes.c:405: state = (state_t*)output;
   0DBB 78 00              1793 	mov	r0,#_state
   0DBD EE                 1794 	mov	a,r6
   0DBE F2                 1795 	movx	@r0,a
   0DBF 08                 1796 	inc	r0
   0DC0 EF                 1797 	mov	a,r7
   0DC1 F2                 1798 	movx	@r0,a
                    0799   1799 	C$aes.c$408$1$1 ==.
                           1800 ;	apps/dexdrip/aes.c:408: if(0 != key)
   0DC2 90 F1 BE           1801 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_4
   0DC5 E0                 1802 	movx	a,@dptr
   0DC6 FE                 1803 	mov	r6,a
   0DC7 A3                 1804 	inc	dptr
   0DC8 E0                 1805 	movx	a,@dptr
   0DC9 FF                 1806 	mov	r7,a
   0DCA 4E                 1807 	orl	a,r6
   0DCB 60 0E              1808 	jz	00102$
                    07A4   1809 	C$aes.c$410$2$2 ==.
                           1810 ;	apps/dexdrip/aes.c:410: Key = key;
   0DCD 78 02              1811 	mov	r0,#_Key
   0DCF EE                 1812 	mov	a,r6
   0DD0 F2                 1813 	movx	@r0,a
   0DD1 08                 1814 	inc	r0
   0DD2 EF                 1815 	mov	a,r7
   0DD3 F2                 1816 	movx	@r0,a
                    07AB   1817 	C$aes.c$411$2$2 ==.
                           1818 ;	apps/dexdrip/aes.c:411: KeyExpansion();
   0DD4 C0 02              1819 	push	ar2
   0DD6 12 06 36           1820 	lcall	_KeyExpansion
   0DD9 D0 02              1821 	pop	ar2
   0DDB                    1822 00102$:
                    07B2   1823 	C$aes.c$414$1$1 ==.
                           1824 ;	apps/dexdrip/aes.c:414: if(iv != 0)
   0DDB 90 F1 C0           1825 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_5
   0DDE E0                 1826 	movx	a,@dptr
   0DDF FE                 1827 	mov	r6,a
   0DE0 A3                 1828 	inc	dptr
   0DE1 E0                 1829 	movx	a,@dptr
   0DE2 FF                 1830 	mov	r7,a
   0DE3 4E                 1831 	orl	a,r6
   0DE4 60 07              1832 	jz	00116$
                    07BD   1833 	C$aes.c$416$2$3 ==.
                           1834 ;	apps/dexdrip/aes.c:416: Iv = (uint8_t*)iv;
   0DE6 78 04              1835 	mov	r0,#_Iv
   0DE8 EE                 1836 	mov	a,r6
   0DE9 F2                 1837 	movx	@r0,a
   0DEA 08                 1838 	inc	r0
   0DEB EF                 1839 	mov	a,r7
   0DEC F2                 1840 	movx	@r0,a
                    07C4   1841 	C$aes.c$419$2$1 ==.
                           1842 ;	apps/dexdrip/aes.c:419: for(i = 0; i < length; i += KEYLEN)
   0DED                    1843 00116$:
   0DED 90 F1 C2           1844 	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
   0DF0 E0                 1845 	movx	a,@dptr
   0DF1 FC                 1846 	mov	r4,a
   0DF2 A3                 1847 	inc	dptr
   0DF3 E0                 1848 	movx	a,@dptr
   0DF4 FD                 1849 	mov	r5,a
   0DF5 E4                 1850 	clr	a
   0DF6 F5 3F              1851 	mov	_AES128_CBC_encrypt_buffer_sloc2_1_0,a
   0DF8 F5 40              1852 	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1),a
   0DFA F5 41              1853 	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2),a
   0DFC F5 42              1854 	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3),a
   0DFE                    1855 00107$:
   0DFE C3                 1856 	clr	c
   0DFF E5 3F              1857 	mov	a,_AES128_CBC_encrypt_buffer_sloc2_1_0
   0E01 95 39              1858 	subb	a,_AES128_CBC_encrypt_buffer_sloc0_1_0
   0E03 E5 40              1859 	mov	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1)
   0E05 95 3A              1860 	subb	a,(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 1)
   0E07 E5 41              1861 	mov	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2)
   0E09 95 3B              1862 	subb	a,(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 2)
   0E0B E5 42              1863 	mov	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3)
   0E0D 95 3C              1864 	subb	a,(_AES128_CBC_encrypt_buffer_sloc0_1_0 + 3)
   0E0F 40 03              1865 	jc	00121$
   0E11 02 0E B1           1866 	ljmp	00118$
   0E14                    1867 00121$:
                    07EB   1868 	C$aes.c$421$2$1 ==.
                           1869 ;	apps/dexdrip/aes.c:421: XorWithIv(input);
   0E14 C0 02              1870 	push	ar2
   0E16 85 3D 82           1871 	mov	dpl,_AES128_CBC_encrypt_buffer_sloc1_1_0
   0E19 85 3E 83           1872 	mov	dph,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
   0E1C C0 05              1873 	push	ar5
   0E1E C0 04              1874 	push	ar4
   0E20 C0 02              1875 	push	ar2
   0E22 12 0D 28           1876 	lcall	_XorWithIv
   0E25 D0 02              1877 	pop	ar2
   0E27 D0 04              1878 	pop	ar4
   0E29 D0 05              1879 	pop	ar5
                    0802   1880 	C$aes.c$422$2$4 ==.
                           1881 ;	apps/dexdrip/aes.c:422: BlockCopy(output, input);
   0E2B 8C 02              1882 	mov	ar2,r4
   0E2D 8D 03              1883 	mov	ar3,r5
   0E2F 8A 43              1884 	mov	_AES128_CBC_encrypt_buffer_sloc3_1_0,r2
   0E31 8B 44              1885 	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1),r3
   0E33 75 45 00           1886 	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2),#0x00
   0E36 AE 3D              1887 	mov	r6,_AES128_CBC_encrypt_buffer_sloc1_1_0
   0E38 AF 3E              1888 	mov	r7,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
   0E3A 78 06              1889 	mov	r0,#_BlockCopy_PARM_2
   0E3C EE                 1890 	mov	a,r6
   0E3D F2                 1891 	movx	@r0,a
   0E3E 08                 1892 	inc	r0
   0E3F EF                 1893 	mov	a,r7
   0E40 F2                 1894 	movx	@r0,a
   0E41 08                 1895 	inc	r0
   0E42 E4                 1896 	clr	a
   0E43 F2                 1897 	movx	@r0,a
   0E44 85 43 82           1898 	mov	dpl,_AES128_CBC_encrypt_buffer_sloc3_1_0
   0E47 85 44 83           1899 	mov	dph,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1)
   0E4A 85 45 F0           1900 	mov	b,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2)
   0E4D C0 05              1901 	push	ar5
   0E4F C0 04              1902 	push	ar4
   0E51 C0 02              1903 	push	ar2
   0E53 12 0C DB           1904 	lcall	_BlockCopy
   0E56 D0 02              1905 	pop	ar2
   0E58 D0 04              1906 	pop	ar4
   0E5A D0 05              1907 	pop	ar5
                    0833   1908 	C$aes.c$423$2$4 ==.
                           1909 ;	apps/dexdrip/aes.c:423: state = (state_t*)output;
   0E5C 8C 06              1910 	mov	ar6,r4
   0E5E 8D 07              1911 	mov	ar7,r5
   0E60 78 00              1912 	mov	r0,#_state
   0E62 EE                 1913 	mov	a,r6
   0E63 F2                 1914 	movx	@r0,a
   0E64 08                 1915 	inc	r0
   0E65 EF                 1916 	mov	a,r7
   0E66 F2                 1917 	movx	@r0,a
                    083E   1918 	C$aes.c$424$2$4 ==.
                           1919 ;	apps/dexdrip/aes.c:424: Cipher();
   0E67 C0 05              1920 	push	ar5
   0E69 C0 04              1921 	push	ar4
   0E6B C0 02              1922 	push	ar2
   0E6D 12 0B 86           1923 	lcall	_Cipher
   0E70 D0 02              1924 	pop	ar2
   0E72 D0 04              1925 	pop	ar4
   0E74 D0 05              1926 	pop	ar5
                    084D   1927 	C$aes.c$425$2$4 ==.
                           1928 ;	apps/dexdrip/aes.c:425: Iv = output;
   0E76 78 04              1929 	mov	r0,#_Iv
   0E78 EC                 1930 	mov	a,r4
   0E79 F2                 1931 	movx	@r0,a
   0E7A 08                 1932 	inc	r0
   0E7B ED                 1933 	mov	a,r5
   0E7C F2                 1934 	movx	@r0,a
                    0854   1935 	C$aes.c$426$2$4 ==.
                           1936 ;	apps/dexdrip/aes.c:426: input += KEYLEN;
   0E7D 74 10              1937 	mov	a,#0x10
   0E7F 25 3D              1938 	add	a,_AES128_CBC_encrypt_buffer_sloc1_1_0
   0E81 F5 3D              1939 	mov	_AES128_CBC_encrypt_buffer_sloc1_1_0,a
   0E83 E4                 1940 	clr	a
   0E84 35 3E              1941 	addc	a,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
   0E86 F5 3E              1942 	mov	(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1),a
                    085F   1943 	C$aes.c$427$2$4 ==.
                           1944 ;	apps/dexdrip/aes.c:427: output += KEYLEN;
   0E88 74 10              1945 	mov	a,#0x10
   0E8A 2C                 1946 	add	a,r4
   0E8B FC                 1947 	mov	r4,a
   0E8C E4                 1948 	clr	a
   0E8D 3D                 1949 	addc	a,r5
   0E8E FD                 1950 	mov	r5,a
   0E8F 90 F1 C2           1951 	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
   0E92 EC                 1952 	mov	a,r4
   0E93 F0                 1953 	movx	@dptr,a
   0E94 A3                 1954 	inc	dptr
   0E95 ED                 1955 	mov	a,r5
   0E96 F0                 1956 	movx	@dptr,a
                    086E   1957 	C$aes.c$419$1$1 ==.
                           1958 ;	apps/dexdrip/aes.c:419: for(i = 0; i < length; i += KEYLEN)
   0E97 74 10              1959 	mov	a,#0x10
   0E99 25 3F              1960 	add	a,_AES128_CBC_encrypt_buffer_sloc2_1_0
   0E9B F5 3F              1961 	mov	_AES128_CBC_encrypt_buffer_sloc2_1_0,a
   0E9D E4                 1962 	clr	a
   0E9E 35 40              1963 	addc	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1)
   0EA0 F5 40              1964 	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 1),a
   0EA2 E4                 1965 	clr	a
   0EA3 35 41              1966 	addc	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2)
   0EA5 F5 41              1967 	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 2),a
   0EA7 E4                 1968 	clr	a
   0EA8 35 42              1969 	addc	a,(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3)
   0EAA F5 42              1970 	mov	(_AES128_CBC_encrypt_buffer_sloc2_1_0 + 3),a
   0EAC D0 02              1971 	pop	ar2
   0EAE 02 0D FE           1972 	ljmp	00107$
   0EB1                    1973 00118$:
   0EB1 90 F1 C2           1974 	mov	dptr,#_AES128_CBC_encrypt_buffer_output_1_1
   0EB4 EC                 1975 	mov	a,r4
   0EB5 F0                 1976 	movx	@dptr,a
   0EB6 A3                 1977 	inc	dptr
   0EB7 ED                 1978 	mov	a,r5
   0EB8 F0                 1979 	movx	@dptr,a
                    0890   1980 	C$aes.c$430$1$1 ==.
                           1981 ;	apps/dexdrip/aes.c:430: if(remainders)
   0EB9 EA                 1982 	mov	a,r2
   0EBA 60 70              1983 	jz	00111$
                    0893   1984 	C$aes.c$432$2$5 ==.
                           1985 ;	apps/dexdrip/aes.c:432: BlockCopy(output, input);
   0EBC 8C 06              1986 	mov	ar6,r4
   0EBE 8D 07              1987 	mov	ar7,r5
   0EC0 8E 43              1988 	mov	_AES128_CBC_encrypt_buffer_sloc3_1_0,r6
   0EC2 8F 44              1989 	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1),r7
   0EC4 75 45 00           1990 	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2),#0x00
   0EC7 AE 3D              1991 	mov	r6,_AES128_CBC_encrypt_buffer_sloc1_1_0
   0EC9 AF 3E              1992 	mov	r7,(_AES128_CBC_encrypt_buffer_sloc1_1_0 + 1)
   0ECB 78 06              1993 	mov	r0,#_BlockCopy_PARM_2
   0ECD EE                 1994 	mov	a,r6
   0ECE F2                 1995 	movx	@r0,a
   0ECF 08                 1996 	inc	r0
   0ED0 EF                 1997 	mov	a,r7
   0ED1 F2                 1998 	movx	@r0,a
   0ED2 08                 1999 	inc	r0
   0ED3 E4                 2000 	clr	a
   0ED4 F2                 2001 	movx	@r0,a
   0ED5 85 43 82           2002 	mov	dpl,_AES128_CBC_encrypt_buffer_sloc3_1_0
   0ED8 85 44 83           2003 	mov	dph,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1)
   0EDB 85 45 F0           2004 	mov	b,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2)
   0EDE C0 05              2005 	push	ar5
   0EE0 C0 04              2006 	push	ar4
   0EE2 C0 02              2007 	push	ar2
   0EE4 12 0C DB           2008 	lcall	_BlockCopy
   0EE7 D0 02              2009 	pop	ar2
   0EE9 D0 04              2010 	pop	ar4
   0EEB D0 05              2011 	pop	ar5
                    08C4   2012 	C$aes.c$433$2$5 ==.
                           2013 ;	apps/dexdrip/aes.c:433: memset(output + remainders, 0, KEYLEN - remainders); /* add 0-padding */
   0EED EA                 2014 	mov	a,r2
   0EEE 2C                 2015 	add	a,r4
   0EEF FE                 2016 	mov	r6,a
   0EF0 E4                 2017 	clr	a
   0EF1 3D                 2018 	addc	a,r5
   0EF2 FF                 2019 	mov	r7,a
   0EF3 8E 43              2020 	mov	_AES128_CBC_encrypt_buffer_sloc3_1_0,r6
   0EF5 8F 44              2021 	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1),r7
   0EF7 E4                 2022 	clr	a
   0EF8 F5 45              2023 	mov	(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2),a
   0EFA FF                 2024 	mov	r7,a
   0EFB 74 10              2025 	mov	a,#0x10
   0EFD C3                 2026 	clr	c
   0EFE 9A                 2027 	subb	a,r2
   0EFF FA                 2028 	mov	r2,a
   0F00 E4                 2029 	clr	a
   0F01 9F                 2030 	subb	a,r7
   0F02 FF                 2031 	mov	r7,a
   0F03 78 89              2032 	mov	r0,#_memset_PARM_3
   0F05 EA                 2033 	mov	a,r2
   0F06 F2                 2034 	movx	@r0,a
   0F07 08                 2035 	inc	r0
   0F08 EF                 2036 	mov	a,r7
   0F09 F2                 2037 	movx	@r0,a
   0F0A 78 88              2038 	mov	r0,#_memset_PARM_2
   0F0C E4                 2039 	clr	a
   0F0D F2                 2040 	movx	@r0,a
   0F0E 85 43 82           2041 	mov	dpl,_AES128_CBC_encrypt_buffer_sloc3_1_0
   0F11 85 44 83           2042 	mov	dph,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 1)
   0F14 85 45 F0           2043 	mov	b,(_AES128_CBC_encrypt_buffer_sloc3_1_0 + 2)
   0F17 C0 05              2044 	push	ar5
   0F19 C0 04              2045 	push	ar4
   0F1B 12 3E 08           2046 	lcall	_memset
   0F1E D0 04              2047 	pop	ar4
   0F20 D0 05              2048 	pop	ar5
                    08F9   2049 	C$aes.c$434$2$5 ==.
                           2050 ;	apps/dexdrip/aes.c:434: state = (state_t*)output;
   0F22 78 00              2051 	mov	r0,#_state
   0F24 EC                 2052 	mov	a,r4
   0F25 F2                 2053 	movx	@r0,a
   0F26 08                 2054 	inc	r0
   0F27 ED                 2055 	mov	a,r5
   0F28 F2                 2056 	movx	@r0,a
                    0900   2057 	C$aes.c$435$2$5 ==.
                           2058 ;	apps/dexdrip/aes.c:435: Cipher();
   0F29 12 0B 86           2059 	lcall	_Cipher
   0F2C                    2060 00111$:
                    0903   2061 	C$aes.c$437$2$1 ==.
                    0903   2062 	XG$AES128_CBC_encrypt_buffer$0$0 ==.
   0F2C 22                 2063 	ret
                           2064 	.area CSEG    (CODE)
                           2065 	.area CONST   (CODE)
                    0000   2066 Faes$sbox$0$0 == .
   5C7F                    2067 _sbox:
   5C7F 63                 2068 	.db #0x63	; 99	'c'
   5C80 7C                 2069 	.db #0x7C	; 124
   5C81 77                 2070 	.db #0x77	; 119	'w'
   5C82 7B                 2071 	.db #0x7B	; 123
   5C83 F2                 2072 	.db #0xF2	; 242
   5C84 6B                 2073 	.db #0x6B	; 107	'k'
   5C85 6F                 2074 	.db #0x6F	; 111	'o'
   5C86 C5                 2075 	.db #0xC5	; 197
   5C87 30                 2076 	.db #0x30	; 48	'0'
   5C88 01                 2077 	.db #0x01	; 1
   5C89 67                 2078 	.db #0x67	; 103	'g'
   5C8A 2B                 2079 	.db #0x2B	; 43
   5C8B FE                 2080 	.db #0xFE	; 254
   5C8C D7                 2081 	.db #0xD7	; 215
   5C8D AB                 2082 	.db #0xAB	; 171
   5C8E 76                 2083 	.db #0x76	; 118	'v'
   5C8F CA                 2084 	.db #0xCA	; 202
   5C90 82                 2085 	.db #0x82	; 130
   5C91 C9                 2086 	.db #0xC9	; 201
   5C92 7D                 2087 	.db #0x7D	; 125
   5C93 FA                 2088 	.db #0xFA	; 250
   5C94 59                 2089 	.db #0x59	; 89	'Y'
   5C95 47                 2090 	.db #0x47	; 71	'G'
   5C96 F0                 2091 	.db #0xF0	; 240
   5C97 AD                 2092 	.db #0xAD	; 173
   5C98 D4                 2093 	.db #0xD4	; 212
   5C99 A2                 2094 	.db #0xA2	; 162
   5C9A AF                 2095 	.db #0xAF	; 175
   5C9B 9C                 2096 	.db #0x9C	; 156
   5C9C A4                 2097 	.db #0xA4	; 164
   5C9D 72                 2098 	.db #0x72	; 114	'r'
   5C9E C0                 2099 	.db #0xC0	; 192
   5C9F B7                 2100 	.db #0xB7	; 183
   5CA0 FD                 2101 	.db #0xFD	; 253
   5CA1 93                 2102 	.db #0x93	; 147
   5CA2 26                 2103 	.db #0x26	; 38
   5CA3 36                 2104 	.db #0x36	; 54	'6'
   5CA4 3F                 2105 	.db #0x3F	; 63
   5CA5 F7                 2106 	.db #0xF7	; 247
   5CA6 CC                 2107 	.db #0xCC	; 204
   5CA7 34                 2108 	.db #0x34	; 52	'4'
   5CA8 A5                 2109 	.db #0xA5	; 165
   5CA9 E5                 2110 	.db #0xE5	; 229
   5CAA F1                 2111 	.db #0xF1	; 241
   5CAB 71                 2112 	.db #0x71	; 113	'q'
   5CAC D8                 2113 	.db #0xD8	; 216
   5CAD 31                 2114 	.db #0x31	; 49	'1'
   5CAE 15                 2115 	.db #0x15	; 21
   5CAF 04                 2116 	.db #0x04	; 4
   5CB0 C7                 2117 	.db #0xC7	; 199
   5CB1 23                 2118 	.db #0x23	; 35
   5CB2 C3                 2119 	.db #0xC3	; 195
   5CB3 18                 2120 	.db #0x18	; 24
   5CB4 96                 2121 	.db #0x96	; 150
   5CB5 05                 2122 	.db #0x05	; 5
   5CB6 9A                 2123 	.db #0x9A	; 154
   5CB7 07                 2124 	.db #0x07	; 7
   5CB8 12                 2125 	.db #0x12	; 18
   5CB9 80                 2126 	.db #0x80	; 128
   5CBA E2                 2127 	.db #0xE2	; 226
   5CBB EB                 2128 	.db #0xEB	; 235
   5CBC 27                 2129 	.db #0x27	; 39
   5CBD B2                 2130 	.db #0xB2	; 178
   5CBE 75                 2131 	.db #0x75	; 117	'u'
   5CBF 09                 2132 	.db #0x09	; 9
   5CC0 83                 2133 	.db #0x83	; 131
   5CC1 2C                 2134 	.db #0x2C	; 44
   5CC2 1A                 2135 	.db #0x1A	; 26
   5CC3 1B                 2136 	.db #0x1B	; 27
   5CC4 6E                 2137 	.db #0x6E	; 110	'n'
   5CC5 5A                 2138 	.db #0x5A	; 90	'Z'
   5CC6 A0                 2139 	.db #0xA0	; 160
   5CC7 52                 2140 	.db #0x52	; 82	'R'
   5CC8 3B                 2141 	.db #0x3B	; 59
   5CC9 D6                 2142 	.db #0xD6	; 214
   5CCA B3                 2143 	.db #0xB3	; 179
   5CCB 29                 2144 	.db #0x29	; 41
   5CCC E3                 2145 	.db #0xE3	; 227
   5CCD 2F                 2146 	.db #0x2F	; 47
   5CCE 84                 2147 	.db #0x84	; 132
   5CCF 53                 2148 	.db #0x53	; 83	'S'
   5CD0 D1                 2149 	.db #0xD1	; 209
   5CD1 00                 2150 	.db #0x00	; 0
   5CD2 ED                 2151 	.db #0xED	; 237
   5CD3 20                 2152 	.db #0x20	; 32
   5CD4 FC                 2153 	.db #0xFC	; 252
   5CD5 B1                 2154 	.db #0xB1	; 177
   5CD6 5B                 2155 	.db #0x5B	; 91
   5CD7 6A                 2156 	.db #0x6A	; 106	'j'
   5CD8 CB                 2157 	.db #0xCB	; 203
   5CD9 BE                 2158 	.db #0xBE	; 190
   5CDA 39                 2159 	.db #0x39	; 57	'9'
   5CDB 4A                 2160 	.db #0x4A	; 74	'J'
   5CDC 4C                 2161 	.db #0x4C	; 76	'L'
   5CDD 58                 2162 	.db #0x58	; 88	'X'
   5CDE CF                 2163 	.db #0xCF	; 207
   5CDF D0                 2164 	.db #0xD0	; 208
   5CE0 EF                 2165 	.db #0xEF	; 239
   5CE1 AA                 2166 	.db #0xAA	; 170
   5CE2 FB                 2167 	.db #0xFB	; 251
   5CE3 43                 2168 	.db #0x43	; 67	'C'
   5CE4 4D                 2169 	.db #0x4D	; 77	'M'
   5CE5 33                 2170 	.db #0x33	; 51	'3'
   5CE6 85                 2171 	.db #0x85	; 133
   5CE7 45                 2172 	.db #0x45	; 69	'E'
   5CE8 F9                 2173 	.db #0xF9	; 249
   5CE9 02                 2174 	.db #0x02	; 2
   5CEA 7F                 2175 	.db #0x7F	; 127
   5CEB 50                 2176 	.db #0x50	; 80	'P'
   5CEC 3C                 2177 	.db #0x3C	; 60
   5CED 9F                 2178 	.db #0x9F	; 159
   5CEE A8                 2179 	.db #0xA8	; 168
   5CEF 51                 2180 	.db #0x51	; 81	'Q'
   5CF0 A3                 2181 	.db #0xA3	; 163
   5CF1 40                 2182 	.db #0x40	; 64
   5CF2 8F                 2183 	.db #0x8F	; 143
   5CF3 92                 2184 	.db #0x92	; 146
   5CF4 9D                 2185 	.db #0x9D	; 157
   5CF5 38                 2186 	.db #0x38	; 56	'8'
   5CF6 F5                 2187 	.db #0xF5	; 245
   5CF7 BC                 2188 	.db #0xBC	; 188
   5CF8 B6                 2189 	.db #0xB6	; 182
   5CF9 DA                 2190 	.db #0xDA	; 218
   5CFA 21                 2191 	.db #0x21	; 33
   5CFB 10                 2192 	.db #0x10	; 16
   5CFC FF                 2193 	.db #0xFF	; 255
   5CFD F3                 2194 	.db #0xF3	; 243
   5CFE D2                 2195 	.db #0xD2	; 210
   5CFF CD                 2196 	.db #0xCD	; 205
   5D00 0C                 2197 	.db #0x0C	; 12
   5D01 13                 2198 	.db #0x13	; 19
   5D02 EC                 2199 	.db #0xEC	; 236
   5D03 5F                 2200 	.db #0x5F	; 95
   5D04 97                 2201 	.db #0x97	; 151
   5D05 44                 2202 	.db #0x44	; 68	'D'
   5D06 17                 2203 	.db #0x17	; 23
   5D07 C4                 2204 	.db #0xC4	; 196
   5D08 A7                 2205 	.db #0xA7	; 167
   5D09 7E                 2206 	.db #0x7E	; 126
   5D0A 3D                 2207 	.db #0x3D	; 61
   5D0B 64                 2208 	.db #0x64	; 100	'd'
   5D0C 5D                 2209 	.db #0x5D	; 93
   5D0D 19                 2210 	.db #0x19	; 25
   5D0E 73                 2211 	.db #0x73	; 115	's'
   5D0F 60                 2212 	.db #0x60	; 96
   5D10 81                 2213 	.db #0x81	; 129
   5D11 4F                 2214 	.db #0x4F	; 79	'O'
   5D12 DC                 2215 	.db #0xDC	; 220
   5D13 22                 2216 	.db #0x22	; 34
   5D14 2A                 2217 	.db #0x2A	; 42
   5D15 90                 2218 	.db #0x90	; 144
   5D16 88                 2219 	.db #0x88	; 136
   5D17 46                 2220 	.db #0x46	; 70	'F'
   5D18 EE                 2221 	.db #0xEE	; 238
   5D19 B8                 2222 	.db #0xB8	; 184
   5D1A 14                 2223 	.db #0x14	; 20
   5D1B DE                 2224 	.db #0xDE	; 222
   5D1C 5E                 2225 	.db #0x5E	; 94
   5D1D 0B                 2226 	.db #0x0B	; 11
   5D1E DB                 2227 	.db #0xDB	; 219
   5D1F E0                 2228 	.db #0xE0	; 224
   5D20 32                 2229 	.db #0x32	; 50	'2'
   5D21 3A                 2230 	.db #0x3A	; 58
   5D22 0A                 2231 	.db #0x0A	; 10
   5D23 49                 2232 	.db #0x49	; 73	'I'
   5D24 06                 2233 	.db #0x06	; 6
   5D25 24                 2234 	.db #0x24	; 36
   5D26 5C                 2235 	.db #0x5C	; 92
   5D27 C2                 2236 	.db #0xC2	; 194
   5D28 D3                 2237 	.db #0xD3	; 211
   5D29 AC                 2238 	.db #0xAC	; 172
   5D2A 62                 2239 	.db #0x62	; 98	'b'
   5D2B 91                 2240 	.db #0x91	; 145
   5D2C 95                 2241 	.db #0x95	; 149
   5D2D E4                 2242 	.db #0xE4	; 228
   5D2E 79                 2243 	.db #0x79	; 121	'y'
   5D2F E7                 2244 	.db #0xE7	; 231
   5D30 C8                 2245 	.db #0xC8	; 200
   5D31 37                 2246 	.db #0x37	; 55	'7'
   5D32 6D                 2247 	.db #0x6D	; 109	'm'
   5D33 8D                 2248 	.db #0x8D	; 141
   5D34 D5                 2249 	.db #0xD5	; 213
   5D35 4E                 2250 	.db #0x4E	; 78	'N'
   5D36 A9                 2251 	.db #0xA9	; 169
   5D37 6C                 2252 	.db #0x6C	; 108	'l'
   5D38 56                 2253 	.db #0x56	; 86	'V'
   5D39 F4                 2254 	.db #0xF4	; 244
   5D3A EA                 2255 	.db #0xEA	; 234
   5D3B 65                 2256 	.db #0x65	; 101	'e'
   5D3C 7A                 2257 	.db #0x7A	; 122	'z'
   5D3D AE                 2258 	.db #0xAE	; 174
   5D3E 08                 2259 	.db #0x08	; 8
   5D3F BA                 2260 	.db #0xBA	; 186
   5D40 78                 2261 	.db #0x78	; 120	'x'
   5D41 25                 2262 	.db #0x25	; 37
   5D42 2E                 2263 	.db #0x2E	; 46
   5D43 1C                 2264 	.db #0x1C	; 28
   5D44 A6                 2265 	.db #0xA6	; 166
   5D45 B4                 2266 	.db #0xB4	; 180
   5D46 C6                 2267 	.db #0xC6	; 198
   5D47 E8                 2268 	.db #0xE8	; 232
   5D48 DD                 2269 	.db #0xDD	; 221
   5D49 74                 2270 	.db #0x74	; 116	't'
   5D4A 1F                 2271 	.db #0x1F	; 31
   5D4B 4B                 2272 	.db #0x4B	; 75	'K'
   5D4C BD                 2273 	.db #0xBD	; 189
   5D4D 8B                 2274 	.db #0x8B	; 139
   5D4E 8A                 2275 	.db #0x8A	; 138
   5D4F 70                 2276 	.db #0x70	; 112	'p'
   5D50 3E                 2277 	.db #0x3E	; 62
   5D51 B5                 2278 	.db #0xB5	; 181
   5D52 66                 2279 	.db #0x66	; 102	'f'
   5D53 48                 2280 	.db #0x48	; 72	'H'
   5D54 03                 2281 	.db #0x03	; 3
   5D55 F6                 2282 	.db #0xF6	; 246
   5D56 0E                 2283 	.db #0x0E	; 14
   5D57 61                 2284 	.db #0x61	; 97	'a'
   5D58 35                 2285 	.db #0x35	; 53	'5'
   5D59 57                 2286 	.db #0x57	; 87	'W'
   5D5A B9                 2287 	.db #0xB9	; 185
   5D5B 86                 2288 	.db #0x86	; 134
   5D5C C1                 2289 	.db #0xC1	; 193
   5D5D 1D                 2290 	.db #0x1D	; 29
   5D5E 9E                 2291 	.db #0x9E	; 158
   5D5F E1                 2292 	.db #0xE1	; 225
   5D60 F8                 2293 	.db #0xF8	; 248
   5D61 98                 2294 	.db #0x98	; 152
   5D62 11                 2295 	.db #0x11	; 17
   5D63 69                 2296 	.db #0x69	; 105	'i'
   5D64 D9                 2297 	.db #0xD9	; 217
   5D65 8E                 2298 	.db #0x8E	; 142
   5D66 94                 2299 	.db #0x94	; 148
   5D67 9B                 2300 	.db #0x9B	; 155
   5D68 1E                 2301 	.db #0x1E	; 30
   5D69 87                 2302 	.db #0x87	; 135
   5D6A E9                 2303 	.db #0xE9	; 233
   5D6B CE                 2304 	.db #0xCE	; 206
   5D6C 55                 2305 	.db #0x55	; 85	'U'
   5D6D 28                 2306 	.db #0x28	; 40
   5D6E DF                 2307 	.db #0xDF	; 223
   5D6F 8C                 2308 	.db #0x8C	; 140
   5D70 A1                 2309 	.db #0xA1	; 161
   5D71 89                 2310 	.db #0x89	; 137
   5D72 0D                 2311 	.db #0x0D	; 13
   5D73 BF                 2312 	.db #0xBF	; 191
   5D74 E6                 2313 	.db #0xE6	; 230
   5D75 42                 2314 	.db #0x42	; 66	'B'
   5D76 68                 2315 	.db #0x68	; 104	'h'
   5D77 41                 2316 	.db #0x41	; 65	'A'
   5D78 99                 2317 	.db #0x99	; 153
   5D79 2D                 2318 	.db #0x2D	; 45
   5D7A 0F                 2319 	.db #0x0F	; 15
   5D7B B0                 2320 	.db #0xB0	; 176
   5D7C 54                 2321 	.db #0x54	; 84	'T'
   5D7D BB                 2322 	.db #0xBB	; 187
   5D7E 16                 2323 	.db #0x16	; 22
                    0100   2324 Faes$Rcon$0$0 == .
   5D7F                    2325 _Rcon:
   5D7F 8D                 2326 	.db #0x8D	; 141
   5D80 01                 2327 	.db #0x01	; 1
   5D81 02                 2328 	.db #0x02	; 2
   5D82 04                 2329 	.db #0x04	; 4
   5D83 08                 2330 	.db #0x08	; 8
   5D84 10                 2331 	.db #0x10	; 16
   5D85 20                 2332 	.db #0x20	; 32
   5D86 40                 2333 	.db #0x40	; 64
   5D87 80                 2334 	.db #0x80	; 128
   5D88 1B                 2335 	.db #0x1B	; 27
   5D89 36                 2336 	.db #0x36	; 54	'6'
   5D8A 6C                 2337 	.db #0x6C	; 108	'l'
   5D8B D8                 2338 	.db #0xD8	; 216
   5D8C AB                 2339 	.db #0xAB	; 171
   5D8D 4D                 2340 	.db #0x4D	; 77	'M'
   5D8E 9A                 2341 	.db #0x9A	; 154
   5D8F 2F                 2342 	.db #0x2F	; 47
   5D90 5E                 2343 	.db #0x5E	; 94
   5D91 BC                 2344 	.db #0xBC	; 188
   5D92 63                 2345 	.db #0x63	; 99	'c'
   5D93 C6                 2346 	.db #0xC6	; 198
   5D94 97                 2347 	.db #0x97	; 151
   5D95 35                 2348 	.db #0x35	; 53	'5'
   5D96 6A                 2349 	.db #0x6A	; 106	'j'
   5D97 D4                 2350 	.db #0xD4	; 212
   5D98 B3                 2351 	.db #0xB3	; 179
   5D99 7D                 2352 	.db #0x7D	; 125
   5D9A FA                 2353 	.db #0xFA	; 250
   5D9B EF                 2354 	.db #0xEF	; 239
   5D9C C5                 2355 	.db #0xC5	; 197
   5D9D 91                 2356 	.db #0x91	; 145
   5D9E 39                 2357 	.db #0x39	; 57	'9'
   5D9F 72                 2358 	.db #0x72	; 114	'r'
   5DA0 E4                 2359 	.db #0xE4	; 228
   5DA1 D3                 2360 	.db #0xD3	; 211
   5DA2 BD                 2361 	.db #0xBD	; 189
   5DA3 61                 2362 	.db #0x61	; 97	'a'
   5DA4 C2                 2363 	.db #0xC2	; 194
   5DA5 9F                 2364 	.db #0x9F	; 159
   5DA6 25                 2365 	.db #0x25	; 37
   5DA7 4A                 2366 	.db #0x4A	; 74	'J'
   5DA8 94                 2367 	.db #0x94	; 148
   5DA9 33                 2368 	.db #0x33	; 51	'3'
   5DAA 66                 2369 	.db #0x66	; 102	'f'
   5DAB CC                 2370 	.db #0xCC	; 204
   5DAC 83                 2371 	.db #0x83	; 131
   5DAD 1D                 2372 	.db #0x1D	; 29
   5DAE 3A                 2373 	.db #0x3A	; 58
   5DAF 74                 2374 	.db #0x74	; 116	't'
   5DB0 E8                 2375 	.db #0xE8	; 232
   5DB1 CB                 2376 	.db #0xCB	; 203
   5DB2 8D                 2377 	.db #0x8D	; 141
   5DB3 01                 2378 	.db #0x01	; 1
   5DB4 02                 2379 	.db #0x02	; 2
   5DB5 04                 2380 	.db #0x04	; 4
   5DB6 08                 2381 	.db #0x08	; 8
   5DB7 10                 2382 	.db #0x10	; 16
   5DB8 20                 2383 	.db #0x20	; 32
   5DB9 40                 2384 	.db #0x40	; 64
   5DBA 80                 2385 	.db #0x80	; 128
   5DBB 1B                 2386 	.db #0x1B	; 27
   5DBC 36                 2387 	.db #0x36	; 54	'6'
   5DBD 6C                 2388 	.db #0x6C	; 108	'l'
   5DBE D8                 2389 	.db #0xD8	; 216
   5DBF AB                 2390 	.db #0xAB	; 171
   5DC0 4D                 2391 	.db #0x4D	; 77	'M'
   5DC1 9A                 2392 	.db #0x9A	; 154
   5DC2 2F                 2393 	.db #0x2F	; 47
   5DC3 5E                 2394 	.db #0x5E	; 94
   5DC4 BC                 2395 	.db #0xBC	; 188
   5DC5 63                 2396 	.db #0x63	; 99	'c'
   5DC6 C6                 2397 	.db #0xC6	; 198
   5DC7 97                 2398 	.db #0x97	; 151
   5DC8 35                 2399 	.db #0x35	; 53	'5'
   5DC9 6A                 2400 	.db #0x6A	; 106	'j'
   5DCA D4                 2401 	.db #0xD4	; 212
   5DCB B3                 2402 	.db #0xB3	; 179
   5DCC 7D                 2403 	.db #0x7D	; 125
   5DCD FA                 2404 	.db #0xFA	; 250
   5DCE EF                 2405 	.db #0xEF	; 239
   5DCF C5                 2406 	.db #0xC5	; 197
   5DD0 91                 2407 	.db #0x91	; 145
   5DD1 39                 2408 	.db #0x39	; 57	'9'
   5DD2 72                 2409 	.db #0x72	; 114	'r'
   5DD3 E4                 2410 	.db #0xE4	; 228
   5DD4 D3                 2411 	.db #0xD3	; 211
   5DD5 BD                 2412 	.db #0xBD	; 189
   5DD6 61                 2413 	.db #0x61	; 97	'a'
   5DD7 C2                 2414 	.db #0xC2	; 194
   5DD8 9F                 2415 	.db #0x9F	; 159
   5DD9 25                 2416 	.db #0x25	; 37
   5DDA 4A                 2417 	.db #0x4A	; 74	'J'
   5DDB 94                 2418 	.db #0x94	; 148
   5DDC 33                 2419 	.db #0x33	; 51	'3'
   5DDD 66                 2420 	.db #0x66	; 102	'f'
   5DDE CC                 2421 	.db #0xCC	; 204
   5DDF 83                 2422 	.db #0x83	; 131
   5DE0 1D                 2423 	.db #0x1D	; 29
   5DE1 3A                 2424 	.db #0x3A	; 58
   5DE2 74                 2425 	.db #0x74	; 116	't'
   5DE3 E8                 2426 	.db #0xE8	; 232
   5DE4 CB                 2427 	.db #0xCB	; 203
   5DE5 8D                 2428 	.db #0x8D	; 141
   5DE6 01                 2429 	.db #0x01	; 1
   5DE7 02                 2430 	.db #0x02	; 2
   5DE8 04                 2431 	.db #0x04	; 4
   5DE9 08                 2432 	.db #0x08	; 8
   5DEA 10                 2433 	.db #0x10	; 16
   5DEB 20                 2434 	.db #0x20	; 32
   5DEC 40                 2435 	.db #0x40	; 64
   5DED 80                 2436 	.db #0x80	; 128
   5DEE 1B                 2437 	.db #0x1B	; 27
   5DEF 36                 2438 	.db #0x36	; 54	'6'
   5DF0 6C                 2439 	.db #0x6C	; 108	'l'
   5DF1 D8                 2440 	.db #0xD8	; 216
   5DF2 AB                 2441 	.db #0xAB	; 171
   5DF3 4D                 2442 	.db #0x4D	; 77	'M'
   5DF4 9A                 2443 	.db #0x9A	; 154
   5DF5 2F                 2444 	.db #0x2F	; 47
   5DF6 5E                 2445 	.db #0x5E	; 94
   5DF7 BC                 2446 	.db #0xBC	; 188
   5DF8 63                 2447 	.db #0x63	; 99	'c'
   5DF9 C6                 2448 	.db #0xC6	; 198
   5DFA 97                 2449 	.db #0x97	; 151
   5DFB 35                 2450 	.db #0x35	; 53	'5'
   5DFC 6A                 2451 	.db #0x6A	; 106	'j'
   5DFD D4                 2452 	.db #0xD4	; 212
   5DFE B3                 2453 	.db #0xB3	; 179
   5DFF 7D                 2454 	.db #0x7D	; 125
   5E00 FA                 2455 	.db #0xFA	; 250
   5E01 EF                 2456 	.db #0xEF	; 239
   5E02 C5                 2457 	.db #0xC5	; 197
   5E03 91                 2458 	.db #0x91	; 145
   5E04 39                 2459 	.db #0x39	; 57	'9'
   5E05 72                 2460 	.db #0x72	; 114	'r'
   5E06 E4                 2461 	.db #0xE4	; 228
   5E07 D3                 2462 	.db #0xD3	; 211
   5E08 BD                 2463 	.db #0xBD	; 189
   5E09 61                 2464 	.db #0x61	; 97	'a'
   5E0A C2                 2465 	.db #0xC2	; 194
   5E0B 9F                 2466 	.db #0x9F	; 159
   5E0C 25                 2467 	.db #0x25	; 37
   5E0D 4A                 2468 	.db #0x4A	; 74	'J'
   5E0E 94                 2469 	.db #0x94	; 148
   5E0F 33                 2470 	.db #0x33	; 51	'3'
   5E10 66                 2471 	.db #0x66	; 102	'f'
   5E11 CC                 2472 	.db #0xCC	; 204
   5E12 83                 2473 	.db #0x83	; 131
   5E13 1D                 2474 	.db #0x1D	; 29
   5E14 3A                 2475 	.db #0x3A	; 58
   5E15 74                 2476 	.db #0x74	; 116	't'
   5E16 E8                 2477 	.db #0xE8	; 232
   5E17 CB                 2478 	.db #0xCB	; 203
   5E18 8D                 2479 	.db #0x8D	; 141
   5E19 01                 2480 	.db #0x01	; 1
   5E1A 02                 2481 	.db #0x02	; 2
   5E1B 04                 2482 	.db #0x04	; 4
   5E1C 08                 2483 	.db #0x08	; 8
   5E1D 10                 2484 	.db #0x10	; 16
   5E1E 20                 2485 	.db #0x20	; 32
   5E1F 40                 2486 	.db #0x40	; 64
   5E20 80                 2487 	.db #0x80	; 128
   5E21 1B                 2488 	.db #0x1B	; 27
   5E22 36                 2489 	.db #0x36	; 54	'6'
   5E23 6C                 2490 	.db #0x6C	; 108	'l'
   5E24 D8                 2491 	.db #0xD8	; 216
   5E25 AB                 2492 	.db #0xAB	; 171
   5E26 4D                 2493 	.db #0x4D	; 77	'M'
   5E27 9A                 2494 	.db #0x9A	; 154
   5E28 2F                 2495 	.db #0x2F	; 47
   5E29 5E                 2496 	.db #0x5E	; 94
   5E2A BC                 2497 	.db #0xBC	; 188
   5E2B 63                 2498 	.db #0x63	; 99	'c'
   5E2C C6                 2499 	.db #0xC6	; 198
   5E2D 97                 2500 	.db #0x97	; 151
   5E2E 35                 2501 	.db #0x35	; 53	'5'
   5E2F 6A                 2502 	.db #0x6A	; 106	'j'
   5E30 D4                 2503 	.db #0xD4	; 212
   5E31 B3                 2504 	.db #0xB3	; 179
   5E32 7D                 2505 	.db #0x7D	; 125
   5E33 FA                 2506 	.db #0xFA	; 250
   5E34 EF                 2507 	.db #0xEF	; 239
   5E35 C5                 2508 	.db #0xC5	; 197
   5E36 91                 2509 	.db #0x91	; 145
   5E37 39                 2510 	.db #0x39	; 57	'9'
   5E38 72                 2511 	.db #0x72	; 114	'r'
   5E39 E4                 2512 	.db #0xE4	; 228
   5E3A D3                 2513 	.db #0xD3	; 211
   5E3B BD                 2514 	.db #0xBD	; 189
   5E3C 61                 2515 	.db #0x61	; 97	'a'
   5E3D C2                 2516 	.db #0xC2	; 194
   5E3E 9F                 2517 	.db #0x9F	; 159
   5E3F 25                 2518 	.db #0x25	; 37
   5E40 4A                 2519 	.db #0x4A	; 74	'J'
   5E41 94                 2520 	.db #0x94	; 148
   5E42 33                 2521 	.db #0x33	; 51	'3'
   5E43 66                 2522 	.db #0x66	; 102	'f'
   5E44 CC                 2523 	.db #0xCC	; 204
   5E45 83                 2524 	.db #0x83	; 131
   5E46 1D                 2525 	.db #0x1D	; 29
   5E47 3A                 2526 	.db #0x3A	; 58
   5E48 74                 2527 	.db #0x74	; 116	't'
   5E49 E8                 2528 	.db #0xE8	; 232
   5E4A CB                 2529 	.db #0xCB	; 203
   5E4B 8D                 2530 	.db #0x8D	; 141
   5E4C 01                 2531 	.db #0x01	; 1
   5E4D 02                 2532 	.db #0x02	; 2
   5E4E 04                 2533 	.db #0x04	; 4
   5E4F 08                 2534 	.db #0x08	; 8
   5E50 10                 2535 	.db #0x10	; 16
   5E51 20                 2536 	.db #0x20	; 32
   5E52 40                 2537 	.db #0x40	; 64
   5E53 80                 2538 	.db #0x80	; 128
   5E54 1B                 2539 	.db #0x1B	; 27
   5E55 36                 2540 	.db #0x36	; 54	'6'
   5E56 6C                 2541 	.db #0x6C	; 108	'l'
   5E57 D8                 2542 	.db #0xD8	; 216
   5E58 AB                 2543 	.db #0xAB	; 171
   5E59 4D                 2544 	.db #0x4D	; 77	'M'
   5E5A 9A                 2545 	.db #0x9A	; 154
   5E5B 2F                 2546 	.db #0x2F	; 47
   5E5C 5E                 2547 	.db #0x5E	; 94
   5E5D BC                 2548 	.db #0xBC	; 188
   5E5E 63                 2549 	.db #0x63	; 99	'c'
   5E5F C6                 2550 	.db #0xC6	; 198
   5E60 97                 2551 	.db #0x97	; 151
   5E61 35                 2552 	.db #0x35	; 53	'5'
   5E62 6A                 2553 	.db #0x6A	; 106	'j'
   5E63 D4                 2554 	.db #0xD4	; 212
   5E64 B3                 2555 	.db #0xB3	; 179
   5E65 7D                 2556 	.db #0x7D	; 125
   5E66 FA                 2557 	.db #0xFA	; 250
   5E67 EF                 2558 	.db #0xEF	; 239
   5E68 C5                 2559 	.db #0xC5	; 197
   5E69 91                 2560 	.db #0x91	; 145
   5E6A 39                 2561 	.db #0x39	; 57	'9'
   5E6B 72                 2562 	.db #0x72	; 114	'r'
   5E6C E4                 2563 	.db #0xE4	; 228
   5E6D D3                 2564 	.db #0xD3	; 211
   5E6E BD                 2565 	.db #0xBD	; 189
   5E6F 61                 2566 	.db #0x61	; 97	'a'
   5E70 C2                 2567 	.db #0xC2	; 194
   5E71 9F                 2568 	.db #0x9F	; 159
   5E72 25                 2569 	.db #0x25	; 37
   5E73 4A                 2570 	.db #0x4A	; 74	'J'
   5E74 94                 2571 	.db #0x94	; 148
   5E75 33                 2572 	.db #0x33	; 51	'3'
   5E76 66                 2573 	.db #0x66	; 102	'f'
   5E77 CC                 2574 	.db #0xCC	; 204
   5E78 83                 2575 	.db #0x83	; 131
   5E79 1D                 2576 	.db #0x1D	; 29
   5E7A 3A                 2577 	.db #0x3A	; 58
   5E7B 74                 2578 	.db #0x74	; 116	't'
   5E7C E8                 2579 	.db #0xE8	; 232
   5E7D CB                 2580 	.db #0xCB	; 203
                           2581 	.area XINIT   (CODE)
                           2582 	.area CABS    (ABS,CODE)
