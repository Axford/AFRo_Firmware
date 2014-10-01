   1               		.file	"dda.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.dda_init,"ax",@progbits
  19               	.global	dda_init
  21               	dda_init:
  22               	.LFB17:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 8091 0000 		lds r24,startpoint+16
  28 0004 9091 0000 		lds r25,(startpoint+16)+1
  29 0008 A091 0000 		lds r26,(startpoint+16)+2
  30 000c B091 0000 		lds r27,(startpoint+16)+3
  31 0010 0097      		sbiw r24,0
  32 0012 A105      		cpc r26,__zero_reg__
  33 0014 B105      		cpc r27,__zero_reg__
  34 0016 01F4      		brne .L3
  35               	.LSM2:
  36 0018 8AE0      		ldi r24,lo8(10)
  37 001a 90E0      		ldi r25,hi8(10)
  38 001c A0E0      		ldi r26,hlo8(10)
  39 001e B0E0      		ldi r27,hhi8(10)
  40 0020 8093 0000 		sts next_target+21,r24
  41 0024 9093 0000 		sts (next_target+21)+1,r25
  42 0028 A093 0000 		sts (next_target+21)+2,r26
  43 002c B093 0000 		sts (next_target+21)+3,r27
  44 0030 8093 0000 		sts startpoint+16,r24
  45 0034 9093 0000 		sts (startpoint+16)+1,r25
  46 0038 A093 0000 		sts (startpoint+16)+2,r26
  47 003c B093 0000 		sts (startpoint+16)+3,r27
  48               	.L3:
  49 0040 0895      		ret
  50               	.LFE17:
  52               		.section	.text.update_current_position,"ax",@progbits
  53               	.global	update_current_position
  55               	update_current_position:
  56               	.LFB23:
  57               	.LSM3:
  58 0000 2F92      		push r2
  59 0002 3F92      		push r3
  60 0004 5F92      		push r5
  61 0006 6F92      		push r6
  62 0008 7F92      		push r7
  63 000a 8F92      		push r8
  64 000c 9F92      		push r9
  65 000e AF92      		push r10
  66 0010 BF92      		push r11
  67 0012 CF92      		push r12
  68 0014 DF92      		push r13
  69 0016 0F93      		push r16
  70 0018 DF93      		push r29
  71 001a CF93      		push r28
  72 001c CDB7      		in r28,__SP_L__
  73 001e DEB7      		in r29,__SP_H__
  74 0020 2897      		sbiw r28,8
  75 0022 0FB6      		in __tmp_reg__,__SREG__
  76 0024 F894      		cli
  77 0026 DEBF      		out __SP_H__,r29
  78 0028 0FBE      		out __SREG__,__tmp_reg__
  79 002a CDBF      		out __SP_L__,r28
  80               	/* prologue: function */
  81               	/* frame size = 8 */
  82               	.LSM4:
  83 002c 0091 0000 		lds r16,mb_tail
  84               	.LSM5:
  85 0030 0E94 0000 		call queue_empty
  86 0034 8823      		tst r24
  87 0036 01F4      		brne .+2
  88 0038 00C0      		rjmp .L5
  89               	.LSM6:
  90 003a 8091 0000 		lds r24,startpoint
  91 003e 9091 0000 		lds r25,(startpoint)+1
  92 0042 A091 0000 		lds r26,(startpoint)+2
  93 0046 B091 0000 		lds r27,(startpoint)+3
  94 004a 8093 0000 		sts current_position,r24
  95 004e 9093 0000 		sts (current_position)+1,r25
  96 0052 A093 0000 		sts (current_position)+2,r26
  97 0056 B093 0000 		sts (current_position)+3,r27
  98 005a 8091 0000 		lds r24,startpoint+4
  99 005e 9091 0000 		lds r25,(startpoint+4)+1
 100 0062 A091 0000 		lds r26,(startpoint+4)+2
 101 0066 B091 0000 		lds r27,(startpoint+4)+3
 102 006a 8093 0000 		sts current_position+4,r24
 103 006e 9093 0000 		sts (current_position+4)+1,r25
 104 0072 A093 0000 		sts (current_position+4)+2,r26
 105 0076 B093 0000 		sts (current_position+4)+3,r27
 106 007a 8091 0000 		lds r24,startpoint+8
 107 007e 9091 0000 		lds r25,(startpoint+8)+1
 108 0082 A091 0000 		lds r26,(startpoint+8)+2
 109 0086 B091 0000 		lds r27,(startpoint+8)+3
 110 008a 8093 0000 		sts current_position+8,r24
 111 008e 9093 0000 		sts (current_position+8)+1,r25
 112 0092 A093 0000 		sts (current_position+8)+2,r26
 113 0096 B093 0000 		sts (current_position+8)+3,r27
 114 009a 8091 0000 		lds r24,startpoint+12
 115 009e 9091 0000 		lds r25,(startpoint+12)+1
 116 00a2 A091 0000 		lds r26,(startpoint+12)+2
 117 00a6 B091 0000 		lds r27,(startpoint+12)+3
 118 00aa 8093 0000 		sts current_position+12,r24
 119 00ae 9093 0000 		sts (current_position+12)+1,r25
 120 00b2 A093 0000 		sts (current_position+12)+2,r26
 121 00b6 B093 0000 		sts (current_position+12)+3,r27
 122 00ba 00C0      		rjmp .L14
 123               	.L5:
 124               	.LSM7:
 125 00bc 8BE6      		ldi r24,lo8(107)
 126 00be 089F      		mul r16,r24
 127 00c0 1001      		movw r2,r0
 128 00c2 1124      		clr r1
 129               	.LVL0:
 130 00c4 80E0      		ldi r24,lo8(movebuffer)
 131 00c6 90E0      		ldi r25,hi8(movebuffer)
 132 00c8 280E      		add r2,r24
 133 00ca 391E      		adc r3,r25
 134               	.LSM8:
 135 00cc D101      		movw r26,r2
 136 00ce 5596      		adiw r26,21
 137 00d0 8C91      		ld r24,X
 138 00d2 81FF      		sbrs r24,1
 139 00d4 00C0      		rjmp .L14
 140 00d6 00E0      		ldi r16,lo8(0)
 141               	.LVL1:
 142 00d8 6624      		clr r6
 143 00da 7724      		clr r7
 144               	.LVL2:
 145               	.L13:
 146               	.LSM9:
 147 00dc C02E      		mov r12,r16
 148 00de DD24      		clr r13
 149 00e0 F601      		movw r30,r12
 150 00e2 EE0F      		lsl r30
 151 00e4 FF1F      		rol r31
 152 00e6 EE0F      		lsl r30
 153 00e8 FF1F      		rol r31
 154 00ea E20D      		add r30,r2
 155 00ec F31D      		adc r31,r3
 156 00ee 8080      		ld r8,Z
 157 00f0 9180      		ldd r9,Z+1
 158 00f2 A280      		ldd r10,Z+2
 159 00f4 B380      		ldd r11,Z+3
 160               	.LBB46:
 161               	.LBB47:
 162               	.LSM10:
 163 00f6 0023      		tst r16
 164 00f8 01F4      		brne .L7
 165 00fa F101      		movw r30,r2
 166 00fc 8589      		ldd r24,Z+21
 167 00fe 84FD      		sbrc r24,4
 168 0100 00C0      		rjmp .L8
 169 0102 00C0      		rjmp .L9
 170               	.L7:
 171 0104 0130      		cpi r16,lo8(1)
 172 0106 01F4      		brne .L10
 173 0108 D101      		movw r26,r2
 174 010a 5596      		adiw r26,21
 175 010c 8C91      		ld r24,X
 176 010e 85FD      		sbrc r24,5
 177 0110 00C0      		rjmp .L8
 178 0112 00C0      		rjmp .L9
 179               	.L10:
 180 0114 0230      		cpi r16,lo8(2)
 181 0116 01F4      		brne .L11
 182 0118 F101      		movw r30,r2
 183 011a 8589      		ldd r24,Z+21
 184 011c 86FD      		sbrc r24,6
 185 011e 00C0      		rjmp .L8
 186 0120 00C0      		rjmp .L9
 187               	.L11:
 188 0122 0330      		cpi r16,lo8(3)
 189 0124 01F4      		brne .L9
 190 0126 D101      		movw r26,r2
 191 0128 5596      		adiw r26,21
 192 012a 8C91      		ld r24,X
 193 012c 87FF      		sbrs r24,7
 194 012e 00C0      		rjmp .L9
 195               	.L8:
 196 0130 5524      		clr r5
 197 0132 5394      		inc r5
 198 0134 00C0      		rjmp .L12
 199               	.L9:
 200 0136 5524      		clr r5
 201 0138 5A94      		dec r5
 202               	.L12:
 203               	.LBE47:
 204               	.LBE46:
 205               	.LBB48:
 206               	.LSM11:
 207 013a 202F      		mov r18,r16
 208               	.LVL3:
 209 013c 30E0      		ldi r19,lo8(0)
 210 013e 220F      		lsl r18
 211 0140 331F      		rol r19
 212 0142 220F      		lsl r18
 213 0144 331F      		rol r19
 214               	.LVL4:
 215 0146 2050      		subi r18,lo8(-(steps_per_mm_P.2362))
 216 0148 3040      		sbci r19,hi8(-(steps_per_mm_P.2362))
 217 014a F901      		movw r30,r18
 218               	/* #APP */
 219               	 ;  930 "dda.c" 1
 220 014c 8591      		lpm r24, Z+
 221 014e 9591      		lpm r25, Z+
 222 0150 A591      		lpm r26, Z+
 223 0152 B491      		lpm r27, Z
 224               		
 225               	 ;  0 "" 2
 226               	/* #NOAPP */
 227 0154 8D83      		std Y+5,r24
 228 0156 9E83      		std Y+6,r25
 229 0158 AF83      		std Y+7,r26
 230 015a B887      		std Y+8,r27
 231               	.LVL5:
 232               	.LBE48:
 233               	.LSM12:
 234 015c CC0C      		lsl r12
 235 015e DD1C      		rol r13
 236 0160 CC0C      		lsl r12
 237 0162 DD1C      		rol r13
 238 0164 F601      		movw r30,r12
 239 0166 E050      		subi r30,lo8(-(move_state+16))
 240 0168 F040      		sbci r31,hi8(-(move_state+16))
 241 016a 6081      		ld r22,Z
 242 016c 7181      		ldd r23,Z+1
 243 016e 8281      		ldd r24,Z+2
 244 0170 9381      		ldd r25,Z+3
 245 0172 28EE      		ldi r18,lo8(1000)
 246 0174 33E0      		ldi r19,hi8(1000)
 247 0176 40E0      		ldi r20,hlo8(1000)
 248 0178 50E0      		ldi r21,hhi8(1000)
 249               	.LVL6:
 250 017a 0E94 0000 		call __mulsi3
 251 017e 2D81      		ldd r18,Y+5
 252 0180 3E81      		ldd r19,Y+6
 253 0182 4F81      		ldd r20,Y+7
 254 0184 5885      		ldd r21,Y+8
 255 0186 0E94 0000 		call __udivmodsi4
 256 018a CA01      		movw r24,r20
 257 018c B901      		movw r22,r18
 258 018e 252D      		mov r18,r5
 259 0190 3327      		clr r19
 260 0192 27FD      		sbrc r18,7
 261 0194 3095      		com r19
 262 0196 432F      		mov r20,r19
 263 0198 532F      		mov r21,r19
 264 019a 0E94 0000 		call __mulsi3
 265 019e 861A      		sub r8,r22
 266 01a0 970A      		sbc r9,r23
 267 01a2 A80A      		sbc r10,r24
 268 01a4 B90A      		sbc r11,r25
 269 01a6 80E0      		ldi r24,lo8(current_position)
 270 01a8 90E0      		ldi r25,hi8(current_position)
 271 01aa C80E      		add r12,r24
 272 01ac D91E      		adc r13,r25
 273 01ae D601      		movw r26,r12
 274 01b0 8D92      		st X+,r8
 275 01b2 9D92      		st X+,r9
 276 01b4 AD92      		st X+,r10
 277 01b6 BC92      		st X,r11
 278 01b8 1397      		sbiw r26,3
 279               	.LSM13:
 280 01ba 0F5F      		subi r16,lo8(-(1))
 281 01bc 0894      		sec
 282 01be 611C      		adc r6,__zero_reg__
 283 01c0 711C      		adc r7,__zero_reg__
 284 01c2 B4E0      		ldi r27,lo8(4)
 285 01c4 6B16      		cp r6,r27
 286 01c6 7104      		cpc r7,__zero_reg__
 287 01c8 01F0      		breq .+2
 288 01ca 00C0      		rjmp .L13
 289               	.LSM14:
 290 01cc F101      		movw r30,r2
 291 01ce 8489      		ldd r24,Z+20
 292 01d0 80FF      		sbrs r24,0
 293 01d2 00C0      		rjmp .L14
 294               	.LBB49:
 295               	.LSM15:
 296 01d4 20E0      		ldi r18,lo8(steps_per_mm_P.2362+12)
 297 01d6 30E0      		ldi r19,hi8(steps_per_mm_P.2362+12)
 298               	.LVL7:
 299 01d8 F901      		movw r30,r18
 300               	/* #APP */
 301               	 ;  935 "dda.c" 1
 302 01da 8591      		lpm r24, Z+
 303 01dc 9591      		lpm r25, Z+
 304 01de A591      		lpm r26, Z+
 305 01e0 B491      		lpm r27, Z
 306               		
 307               	 ;  0 "" 2
 308               	/* #NOAPP */
 309 01e2 8983      		std Y+1,r24
 310 01e4 9A83      		std Y+2,r25
 311 01e6 AB83      		std Y+3,r26
 312 01e8 BC83      		std Y+4,r27
 313               	.LVL8:
 314               	.LBE49:
 315               	.LSM16:
 316 01ea 6091 0000 		lds r22,move_state+28
 317 01ee 7091 0000 		lds r23,(move_state+28)+1
 318 01f2 8091 0000 		lds r24,(move_state+28)+2
 319 01f6 9091 0000 		lds r25,(move_state+28)+3
 320 01fa 28EE      		ldi r18,lo8(1000)
 321 01fc 33E0      		ldi r19,hi8(1000)
 322 01fe 40E0      		ldi r20,hlo8(1000)
 323 0200 50E0      		ldi r21,hhi8(1000)
 324               	.LVL9:
 325 0202 0E94 0000 		call __mulsi3
 326 0206 2981      		ldd r18,Y+1
 327 0208 3A81      		ldd r19,Y+2
 328 020a 4B81      		ldd r20,Y+3
 329 020c 5C81      		ldd r21,Y+4
 330 020e 0E94 0000 		call __udivmodsi4
 331 0212 2093 0000 		sts current_position+12,r18
 332 0216 3093 0000 		sts (current_position+12)+1,r19
 333 021a 4093 0000 		sts (current_position+12)+2,r20
 334 021e 5093 0000 		sts (current_position+12)+3,r21
 335               	.L14:
 336               	/* epilogue start */
 337               	.LSM17:
 338 0222 2896      		adiw r28,8
 339 0224 0FB6      		in __tmp_reg__,__SREG__
 340 0226 F894      		cli
 341 0228 DEBF      		out __SP_H__,r29
 342 022a 0FBE      		out __SREG__,__tmp_reg__
 343 022c CDBF      		out __SP_L__,r28
 344 022e CF91      		pop r28
 345 0230 DF91      		pop r29
 346 0232 0F91      		pop r16
 347               	.LVL10:
 348 0234 DF90      		pop r13
 349 0236 CF90      		pop r12
 350 0238 BF90      		pop r11
 351 023a AF90      		pop r10
 352 023c 9F90      		pop r9
 353 023e 8F90      		pop r8
 354 0240 7F90      		pop r7
 355 0242 6F90      		pop r6
 356 0244 5F90      		pop r5
 357 0246 3F90      		pop r3
 358 0248 2F90      		pop r2
 359               	.LVL11:
 360 024a 0895      		ret
 361               	.LFE23:
 363               		.section	.text.dda_clock,"ax",@progbits
 364               	.global	dda_clock
 366               	dda_clock:
 367               	.LFB22:
 368               	.LSM18:
 369 0000 EF92      		push r14
 370 0002 FF92      		push r15
 371 0004 0F93      		push r16
 372 0006 1F93      		push r17
 373 0008 CF93      		push r28
 374 000a DF93      		push r29
 375               	/* prologue: function */
 376               	/* frame size = 0 */
 377               	.LSM19:
 378 000c 0E94 0000 		call queue_current_movement
 379 0010 EC01      		movw r28,r24
 380               	.LVL12:
 381               	.LSM20:
 382 0012 8091 0000 		lds r24,last_dda.2295
 383 0016 9091 0000 		lds r25,(last_dda.2295)+1
 384 001a C817      		cp r28,r24
 385 001c D907      		cpc r29,r25
 386 001e 01F0      		breq .L16
 387               	.LSM21:
 388 0020 1092 0000 		sts move_state+42,__zero_reg__
 389 0024 1092 0000 		sts move_state+41,__zero_reg__
 390 0028 1092 0000 		sts move_state+40,__zero_reg__
 391 002c 1092 0000 		sts move_state+39,__zero_reg__
 392 0030 1092 0000 		sts move_state+38,__zero_reg__
 393 0034 1092 0000 		sts move_state+37,__zero_reg__
 394               	.LSM22:
 395 0038 D093 0000 		sts (last_dda.2295)+1,r29
 396 003c C093 0000 		sts last_dda.2295,r28
 397               	.L16:
 398               	.LSM23:
 399 0040 2097      		sbiw r28,0
 400 0042 01F4      		brne .+2
 401 0044 00C0      		rjmp .L32
 402               	.LSM24:
 403 0046 8091 0000 		lds r24,busy.2293
 404 004a 8823      		tst r24
 405 004c 01F0      		breq .+2
 406 004e 00C0      		rjmp .L32
 407               	.LSM25:
 408 0050 81E0      		ldi r24,lo8(1)
 409 0052 8093 0000 		sts busy.2293,r24
 410               	.LSM26:
 411               	/* #APP */
 412               	 ;  749 "dda.c" 1
 413 0056 7894      		sei
 414               	 ;  0 "" 2
 415               	.LSM27:
 416               	/* #NOAPP */
 417 0058 C759      		subi r28,lo8(-(105))
 418 005a DF4F      		sbci r29,hi8(-(105))
 419 005c 9881      		ld r25,Y
 420 005e C956      		subi r28,lo8(-(-105))
 421 0060 D040      		sbci r29,hi8(-(-105))
 422 0062 9923      		tst r25
 423 0064 01F4      		brne .+2
 424 0066 00C0      		rjmp .L18
 425 0068 8091 0000 		lds r24,move_state+36
 426 006c 8823      		tst r24
 427 006e 01F0      		breq .+2
 428 0070 00C0      		rjmp .L18
 429               	.LSM28:
 430 0072 92FF      		sbrs r25,2
 431 0074 00C0      		rjmp .L18
 432               	.LSM29:
 433 0076 8CB1      		in r24,44-32
 434 0078 90E0      		ldi r25,lo8(0)
 435 007a 35E0      		ldi r19,5
 436 007c 9695      	1:	lsr r25
 437 007e 8795      		ror r24
 438 0080 3A95      		dec r19
 439 0082 01F4      		brne 1b
 440 0084 8095      		com r24
 441 0086 9095      		com r25
 442 0088 8170      		andi r24,lo8(1)
 443 008a 9070      		andi r25,hi8(1)
 444 008c C659      		subi r28,lo8(-(106))
 445 008e DF4F      		sbci r29,hi8(-(106))
 446 0090 2881      		ld r18,Y
 447 0092 CA56      		subi r28,lo8(-(-106))
 448 0094 D040      		sbci r29,hi8(-(-106))
 449 0096 30E0      		ldi r19,lo8(0)
 450 0098 8217      		cp r24,r18
 451 009a 9307      		cpc r25,r19
 452 009c 01F4      		brne .L19
 453               	.LSM30:
 454 009e 8091 0000 		lds r24,move_state+39
 455 00a2 8F5F      		subi r24,lo8(-(1))
 456 00a4 8093 0000 		sts move_state+39,r24
 457 00a8 00C0      		rjmp .L20
 458               	.L19:
 459               	.LSM31:
 460 00aa 1092 0000 		sts move_state+39,__zero_reg__
 461               	.L20:
 462               	.LSM32:
 463 00ae 8091 0000 		lds r24,move_state+39
 464 00b2 8430      		cpi r24,lo8(4)
 465 00b4 00F4      		brsh .L33
 466 00b6 8091 0000 		lds r24,move_state+42
 467 00ba 8430      		cpi r24,lo8(4)
 468 00bc 00F4      		brsh .+2
 469 00be 00C0      		rjmp .L18
 470               	.L33:
 471               	.LBB57:
 472               	.LSM33:
 473 00c0 6FB7      		in r22,__SREG__
 474               	.LVL13:
 475               	/* #APP */
 476               	 ;  818 "dda.c" 1
 477 00c2 F894      		cli
 478               	 ;  0 "" 2
 479               	.LSM34:
 480               	/* #NOAPP */
 481 00c4 81E0      		ldi r24,lo8(1)
 482 00c6 8093 0000 		sts move_state+36,r24
 483               	.LSM35:
 484 00ca E090 0000 		lds r14,move_state+32
 485 00ce F090 0000 		lds r15,(move_state+32)+1
 486 00d2 0091 0000 		lds r16,(move_state+32)+2
 487 00d6 1091 0000 		lds r17,(move_state+32)+3
 488 00da 8BAD      		ldd r24,Y+59
 489 00dc 9CAD      		ldd r25,Y+60
 490 00de ADAD      		ldd r26,Y+61
 491 00e0 BEAD      		ldd r27,Y+62
 492 00e2 E816      		cp r14,r24
 493 00e4 F906      		cpc r15,r25
 494 00e6 0A07      		cpc r16,r26
 495 00e8 1B07      		cpc r17,r27
 496 00ea 00F4      		brsh .L24
 497               	.LSM36:
 498 00ec D801      		movw r26,r16
 499 00ee C701      		movw r24,r14
 500 00f0 880F      		lsl r24
 501 00f2 991F      		rol r25
 502 00f4 AA1F      		rol r26
 503 00f6 BB1F      		rol r27
 504 00f8 00C0      		rjmp .L34
 505               	.L24:
 506               	.LSM37:
 507 00fa 8FA1      		ldd r24,Y+39
 508 00fc 98A5      		ldd r25,Y+40
 509 00fe A9A5      		ldd r26,Y+41
 510 0100 BAA5      		ldd r27,Y+42
 511 0102 8E0D      		add r24,r14
 512 0104 9F1D      		adc r25,r15
 513 0106 A01F      		adc r26,r16
 514 0108 B11F      		adc r27,r17
 515 010a EF96      		adiw r28,63
 516 010c 2881      		ld r18,Y
 517 010e 3981      		ldd r19,Y+1
 518 0110 4A81      		ldd r20,Y+2
 519 0112 5B81      		ldd r21,Y+3
 520 0114 EF97      		sbiw r28,63
 521 0116 821B      		sub r24,r18
 522 0118 930B      		sbc r25,r19
 523 011a A40B      		sbc r26,r20
 524 011c B50B      		sbc r27,r21
 525               	.L34:
 526 011e 8FA3      		std Y+39,r24
 527 0120 98A7      		std Y+40,r25
 528 0122 A9A7      		std Y+41,r26
 529 0124 BAA7      		std Y+42,r27
 530               	.LSM38:
 531 0126 EF96      		adiw r28,63
 532 0128 E882      		st Y,r14
 533 012a F982      		std Y+1,r15
 534 012c 0A83      		std Y+2,r16
 535 012e 1B83      		std Y+3,r17
 536 0130 EF97      		sbiw r28,63
 537               	.LSM39:
 538 0132 6FBF      		out __SREG__,r22
 539               	.LBE57:
 540               	.LSM40:
 541 0134 1BAE      		std Y+59,__zero_reg__
 542 0136 1CAE      		std Y+60,__zero_reg__
 543 0138 1DAE      		std Y+61,__zero_reg__
 544 013a 1EAE      		std Y+62,__zero_reg__
 545               	.LBB58:
 546               	.LBB59:
 547               	.LSM41:
 548 013c 7598      		cbi 46-32,5
 549               	.L18:
 550               	.LBE59:
 551               	.LBE58:
 552               	.LBB60:
 553               	.LSM42:
 554 013e 8FB7      		in r24,__SREG__
 555               	.LVL14:
 556               	/* #APP */
 557               	 ;  842 "dda.c" 1
 558 0140 F894      		cli
 559               	 ;  0 "" 2
 560               	.LSM43:
 561               	/* #NOAPP */
 562 0142 E090 0000 		lds r14,move_state+32
 563 0146 F090 0000 		lds r15,(move_state+32)+1
 564 014a 0091 0000 		lds r16,(move_state+32)+2
 565 014e 1091 0000 		lds r17,(move_state+32)+3
 566               	.LVL15:
 567               	.LSM44:
 568 0152 8FBF      		out __SREG__,r24
 569               	.LBE60:
 570               	.LSM45:
 571 0154 8BAD      		ldd r24,Y+59
 572 0156 9CAD      		ldd r25,Y+60
 573 0158 ADAD      		ldd r26,Y+61
 574 015a BEAD      		ldd r27,Y+62
 575               	.LVL16:
 576 015c E816      		cp r14,r24
 577 015e F906      		cpc r15,r25
 578 0160 0A07      		cpc r16,r26
 579 0162 1B07      		cpc r17,r27
 580 0164 00F4      		brsh .L26
 581               	.LSM46:
 582 0166 C15B      		subi r28,lo8(-(79))
 583 0168 DF4F      		sbci r29,hi8(-(79))
 584 016a 8881      		ld r24,Y
 585 016c 9981      		ldd r25,Y+1
 586 016e AA81      		ldd r26,Y+2
 587 0170 BB81      		ldd r27,Y+3
 588 0172 CF54      		subi r28,lo8(-(-79))
 589 0174 D040      		sbci r29,hi8(-(-79))
 590 0176 8E0D      		add r24,r14
 591 0178 9F1D      		adc r25,r15
 592 017a A01F      		adc r26,r16
 593 017c B11F      		adc r27,r17
 594 017e 00C0      		rjmp .L35
 595               	.L26:
 596               	.LSM47:
 597 0180 EF96      		adiw r28,63
 598 0182 8881      		ld r24,Y
 599 0184 9981      		ldd r25,Y+1
 600 0186 AA81      		ldd r26,Y+2
 601 0188 BB81      		ldd r27,Y+3
 602 018a EF97      		sbiw r28,63
 603 018c E816      		cp r14,r24
 604 018e F906      		cpc r15,r25
 605 0190 0A07      		cpc r16,r26
 606 0192 1B07      		cpc r17,r27
 607 0194 00F4      		brsh .+2
 608 0196 00C0      		rjmp .L28
 609               	.LSM48:
 610 0198 CD5A      		subi r28,lo8(-(83))
 611 019a DF4F      		sbci r29,hi8(-(83))
 612 019c 8881      		ld r24,Y
 613 019e 9981      		ldd r25,Y+1
 614 01a0 AA81      		ldd r26,Y+2
 615 01a2 BB81      		ldd r27,Y+3
 616 01a4 C355      		subi r28,lo8(-(-83))
 617 01a6 D040      		sbci r29,hi8(-(-83))
 618 01a8 2FA1      		ldd r18,Y+39
 619 01aa 38A5      		ldd r19,Y+40
 620 01ac 49A5      		ldd r20,Y+41
 621 01ae 5AA5      		ldd r21,Y+42
 622 01b0 820F      		add r24,r18
 623 01b2 931F      		adc r25,r19
 624 01b4 A41F      		adc r26,r20
 625 01b6 B51F      		adc r27,r21
 626 01b8 8E19      		sub r24,r14
 627 01ba 9F09      		sbc r25,r15
 628 01bc A00B      		sbc r26,r16
 629 01be B10B      		sbc r27,r17
 630               	.L35:
 631 01c0 8FAB      		std Y+55,r24
 632 01c2 98AF      		std Y+56,r25
 633 01c4 A9AF      		std Y+57,r26
 634 01c6 BAAF      		std Y+58,r27
 635               	.LSM49:
 636 01c8 2FA9      		ldd r18,Y+55
 637 01ca 38AD      		ldd r19,Y+56
 638 01cc 49AD      		ldd r20,Y+57
 639 01ce 5AAD      		ldd r21,Y+58
 640 01d0 FE01      		movw r30,r28
 641 01d2 E859      		subi r30,lo8(-(104))
 642 01d4 FF4F      		sbci r31,hi8(-(104))
 643 01d6 2115      		cp r18,__zero_reg__
 644 01d8 3105      		cpc r19,__zero_reg__
 645 01da 4105      		cpc r20,__zero_reg__
 646 01dc 5105      		cpc r21,__zero_reg__
 647 01de 01F4      		brne .L29
 648               	.LBB61:
 649               	.LSM50:
 650 01e0 8081      		ld r24,Z
 651 01e2 E82F      		mov r30,r24
 652               	.LVL17:
 653 01e4 F0E0      		ldi r31,lo8(0)
 654               	.LVL18:
 655 01e6 EE0F      		lsl r30
 656 01e8 FF1F      		rol r31
 657 01ea EE0F      		lsl r30
 658 01ec FF1F      		rol r31
 659               	.LVL19:
 660 01ee E050      		subi r30,lo8(-(c0_P))
 661 01f0 F040      		sbci r31,hi8(-(c0_P))
 662               	/* #APP */
 663               	 ;  867 "dda.c" 1
 664 01f2 6591      		lpm r22, Z+
 665 01f4 7591      		lpm r23, Z+
 666 01f6 8591      		lpm r24, Z+
 667 01f8 9491      		lpm r25, Z
 668               		
 669               	 ;  0 "" 2
 670               	.LVL20:
 671               	/* #NOAPP */
 672 01fa 00C0      		rjmp .L30
 673               	.LVL21:
 674               	.L29:
 675               	.LBE61:
 676               	.LBB62:
 677               	.LSM51:
 678 01fc 8081      		ld r24,Z
 679 01fe E82F      		mov r30,r24
 680               	.LVL22:
 681 0200 F0E0      		ldi r31,lo8(0)
 682               	.LVL23:
 683 0202 EE0F      		lsl r30
 684 0204 FF1F      		rol r31
 685 0206 EE0F      		lsl r30
 686 0208 FF1F      		rol r31
 687               	.LVL24:
 688 020a E050      		subi r30,lo8(-(c0_P))
 689 020c F040      		sbci r31,hi8(-(c0_P))
 690               	/* #APP */
 691               	 ;  872 "dda.c" 1
 692 020e E590      		lpm r14, Z+
 693 0210 F590      		lpm r15, Z+
 694 0212 0591      		lpm r16, Z+
 695 0214 1491      		lpm r17, Z
 696               		
 697               	 ;  0 "" 2
 698               	.LVL25:
 699               	/* #NOAPP */
 700               	.LBE62:
 701 0216 C901      		movw r24,r18
 702 0218 0E94 0000 		call int_inv_sqrt
 703               	.LVL26:
 704 021c A0E0      		ldi r26,lo8(0)
 705 021e B0E0      		ldi r27,hi8(0)
 706 0220 BC01      		movw r22,r24
 707 0222 CD01      		movw r24,r26
 708 0224 A801      		movw r20,r16
 709 0226 9701      		movw r18,r14
 710 0228 0E94 0000 		call __mulsi3
 711 022c EDE0      		ldi r30,13
 712 022e 9695      	1:	lsr r25
 713 0230 8795      		ror r24
 714 0232 7795      		ror r23
 715 0234 6795      		ror r22
 716 0236 EA95      		dec r30
 717 0238 01F4      		brne 1b
 718               	.LVL27:
 719               	.L30:
 720 023a CD5B      		subi r28,lo8(-(67))
 721 023c DF4F      		sbci r29,hi8(-(67))
 722 023e E880      		ld r14,Y
 723 0240 F980      		ldd r15,Y+1
 724 0242 0A81      		ldd r16,Y+2
 725 0244 1B81      		ldd r17,Y+3
 726               	.LVL28:
 727 0246 C354      		subi r28,lo8(-(-67))
 728 0248 D040      		sbci r29,hi8(-(-67))
 729 024a 9B01      		movw r18,r22
 730 024c AC01      		movw r20,r24
 731 024e 6E15      		cp r22,r14
 732 0250 7F05      		cpc r23,r15
 733 0252 8007      		cpc r24,r16
 734 0254 9107      		cpc r25,r17
 735 0256 00F4      		brsh .L31
 736 0258 A801      		movw r20,r16
 737 025a 9701      		movw r18,r14
 738               	.LVL29:
 739               	.L31:
 740               	.LBB63:
 741               	.LSM52:
 742 025c 8FB7      		in r24,__SREG__
 743               	.LVL30:
 744               	/* #APP */
 745               	 ;  893 "dda.c" 1
 746 025e F894      		cli
 747               	 ;  0 "" 2
 748               	.LSM53:
 749               	/* #NOAPP */
 750 0260 2BAB      		std Y+51,r18
 751 0262 3CAB      		std Y+52,r19
 752 0264 4DAB      		std Y+53,r20
 753 0266 5EAB      		std Y+54,r21
 754               	.LSM54:
 755 0268 8FBF      		out __SREG__,r24
 756               	.LVL31:
 757               	.L28:
 758               	.LBE63:
 759               	.LSM55:
 760               	/* #APP */
 761               	 ;  899 "dda.c" 1
 762 026a F894      		cli
 763               	 ;  0 "" 2
 764               	.LSM56:
 765               	/* #NOAPP */
 766 026c 1092 0000 		sts busy.2293,__zero_reg__
 767               	.L32:
 768               	/* epilogue start */
 769               	.LSM57:
 770 0270 CDB7      		in r28,__SP_L__
 771 0272 DEB7      		in r29,__SP_H__
 772               	.LVL32:
 773 0274 E6E0      		ldi r30, lo8(6)
 774 0276 0C94 0000 		jmp __epilogue_restores__ + ((18 - 6) * 2)
 775               	.LVL33:
 776               	.LFE22:
 778               		.section	.text.dda_step,"ax",@progbits
 779               	.global	dda_step
 781               	dda_step:
 782               	.LFB21:
 783               	.LSM58:
 784               	.LVL34:
 785 0000 EF92      		push r14
 786 0002 FF92      		push r15
 787 0004 0F93      		push r16
 788 0006 1F93      		push r17
 789               	/* prologue: function */
 790               	/* frame size = 0 */
 791 0008 FC01      		movw r30,r24
 792               	.LSM59:
 793 000a E090 0000 		lds r14,move_state+16
 794 000e F090 0000 		lds r15,(move_state+16)+1
 795 0012 0091 0000 		lds r16,(move_state+16)+2
 796 0016 1091 0000 		lds r17,(move_state+16)+3
 797 001a E114      		cp r14,__zero_reg__
 798 001c F104      		cpc r15,__zero_reg__
 799 001e 0105      		cpc r16,__zero_reg__
 800 0020 1105      		cpc r17,__zero_reg__
 801 0022 01F0      		breq .L37
 802               	.LVL35:
 803               	.LSM60:
 804 0024 2091 0000 		lds r18,move_state
 805 0028 3091 0000 		lds r19,(move_state)+1
 806 002c 4091 0000 		lds r20,(move_state)+2
 807 0030 5091 0000 		lds r21,(move_state)+3
 808 0034 8789      		ldd r24,Z+23
 809 0036 908D      		ldd r25,Z+24
 810 0038 A18D      		ldd r26,Z+25
 811 003a B28D      		ldd r27,Z+26
 812 003c 281B      		sub r18,r24
 813 003e 390B      		sbc r19,r25
 814 0040 4A0B      		sbc r20,r26
 815 0042 5B0B      		sbc r21,r27
 816 0044 2093 0000 		sts move_state,r18
 817 0048 3093 0000 		sts (move_state)+1,r19
 818 004c 4093 0000 		sts (move_state)+2,r20
 819 0050 5093 0000 		sts (move_state)+3,r21
 820               	.LSM61:
 821 0054 57FF      		sbrs r21,7
 822 0056 00C0      		rjmp .L37
 823               	.LSM62:
 824 0058 889A      		sbi 49-32,0
 825               	.LSM63:
 826 005a 0894      		sec
 827 005c E108      		sbc r14,__zero_reg__
 828 005e F108      		sbc r15,__zero_reg__
 829 0060 0109      		sbc r16,__zero_reg__
 830 0062 1109      		sbc r17,__zero_reg__
 831 0064 E092 0000 		sts move_state+16,r14
 832 0068 F092 0000 		sts (move_state+16)+1,r15
 833 006c 0093 0000 		sts (move_state+16)+2,r16
 834 0070 1093 0000 		sts (move_state+16)+3,r17
 835               	.LSM64:
 836 0074 87A1      		ldd r24,Z+39
 837 0076 90A5      		ldd r25,Z+40
 838 0078 A1A5      		ldd r26,Z+41
 839 007a B2A5      		ldd r27,Z+42
 840 007c 280F      		add r18,r24
 841 007e 391F      		adc r19,r25
 842 0080 4A1F      		adc r20,r26
 843 0082 5B1F      		adc r21,r27
 844 0084 2093 0000 		sts move_state,r18
 845 0088 3093 0000 		sts (move_state)+1,r19
 846 008c 4093 0000 		sts (move_state)+2,r20
 847 0090 5093 0000 		sts (move_state)+3,r21
 848               	.LVL36:
 849               	.L37:
 850               	.LSM65:
 851 0094 E090 0000 		lds r14,move_state+20
 852 0098 F090 0000 		lds r15,(move_state+20)+1
 853 009c 0091 0000 		lds r16,(move_state+20)+2
 854 00a0 1091 0000 		lds r17,(move_state+20)+3
 855 00a4 E114      		cp r14,__zero_reg__
 856 00a6 F104      		cpc r15,__zero_reg__
 857 00a8 0105      		cpc r16,__zero_reg__
 858 00aa 1105      		cpc r17,__zero_reg__
 859 00ac 01F0      		breq .L38
 860               	.LSM66:
 861 00ae 2091 0000 		lds r18,move_state+4
 862 00b2 3091 0000 		lds r19,(move_state+4)+1
 863 00b6 4091 0000 		lds r20,(move_state+4)+2
 864 00ba 5091 0000 		lds r21,(move_state+4)+3
 865 00be 838D      		ldd r24,Z+27
 866 00c0 948D      		ldd r25,Z+28
 867 00c2 A58D      		ldd r26,Z+29
 868 00c4 B68D      		ldd r27,Z+30
 869 00c6 281B      		sub r18,r24
 870 00c8 390B      		sbc r19,r25
 871 00ca 4A0B      		sbc r20,r26
 872 00cc 5B0B      		sbc r21,r27
 873 00ce 2093 0000 		sts move_state+4,r18
 874 00d2 3093 0000 		sts (move_state+4)+1,r19
 875 00d6 4093 0000 		sts (move_state+4)+2,r20
 876 00da 5093 0000 		sts (move_state+4)+3,r21
 877               	.LSM67:
 878 00de 57FF      		sbrs r21,7
 879 00e0 00C0      		rjmp .L38
 880               	.LSM68:
 881 00e2 8E9A      		sbi 49-32,6
 882               	.LSM69:
 883 00e4 0894      		sec
 884 00e6 E108      		sbc r14,__zero_reg__
 885 00e8 F108      		sbc r15,__zero_reg__
 886 00ea 0109      		sbc r16,__zero_reg__
 887 00ec 1109      		sbc r17,__zero_reg__
 888 00ee E092 0000 		sts move_state+20,r14
 889 00f2 F092 0000 		sts (move_state+20)+1,r15
 890 00f6 0093 0000 		sts (move_state+20)+2,r16
 891 00fa 1093 0000 		sts (move_state+20)+3,r17
 892               	.LSM70:
 893 00fe 87A1      		ldd r24,Z+39
 894 0100 90A5      		ldd r25,Z+40
 895 0102 A1A5      		ldd r26,Z+41
 896 0104 B2A5      		ldd r27,Z+42
 897 0106 280F      		add r18,r24
 898 0108 391F      		adc r19,r25
 899 010a 4A1F      		adc r20,r26
 900 010c 5B1F      		adc r21,r27
 901 010e 2093 0000 		sts move_state+4,r18
 902 0112 3093 0000 		sts (move_state+4)+1,r19
 903 0116 4093 0000 		sts (move_state+4)+2,r20
 904 011a 5093 0000 		sts (move_state+4)+3,r21
 905               	.LVL37:
 906               	.L38:
 907               	.LSM71:
 908 011e E090 0000 		lds r14,move_state+24
 909 0122 F090 0000 		lds r15,(move_state+24)+1
 910 0126 0091 0000 		lds r16,(move_state+24)+2
 911 012a 1091 0000 		lds r17,(move_state+24)+3
 912 012e E114      		cp r14,__zero_reg__
 913 0130 F104      		cpc r15,__zero_reg__
 914 0132 0105      		cpc r16,__zero_reg__
 915 0134 1105      		cpc r17,__zero_reg__
 916 0136 01F0      		breq .L39
 917               	.LSM72:
 918 0138 2091 0000 		lds r18,move_state+8
 919 013c 3091 0000 		lds r19,(move_state+8)+1
 920 0140 4091 0000 		lds r20,(move_state+8)+2
 921 0144 5091 0000 		lds r21,(move_state+8)+3
 922 0148 878D      		ldd r24,Z+31
 923 014a 90A1      		ldd r25,Z+32
 924 014c A1A1      		ldd r26,Z+33
 925 014e B2A1      		ldd r27,Z+34
 926 0150 281B      		sub r18,r24
 927 0152 390B      		sbc r19,r25
 928 0154 4A0B      		sbc r20,r26
 929 0156 5B0B      		sbc r21,r27
 930 0158 2093 0000 		sts move_state+8,r18
 931 015c 3093 0000 		sts (move_state+8)+1,r19
 932 0160 4093 0000 		sts (move_state+8)+2,r20
 933 0164 5093 0000 		sts (move_state+8)+3,r21
 934               	.LSM73:
 935 0168 57FF      		sbrs r21,7
 936 016a 00C0      		rjmp .L39
 937               	.LSM74:
 938 016c 419A      		sbi 40-32,1
 939               	.LSM75:
 940 016e 0894      		sec
 941 0170 E108      		sbc r14,__zero_reg__
 942 0172 F108      		sbc r15,__zero_reg__
 943 0174 0109      		sbc r16,__zero_reg__
 944 0176 1109      		sbc r17,__zero_reg__
 945 0178 E092 0000 		sts move_state+24,r14
 946 017c F092 0000 		sts (move_state+24)+1,r15
 947 0180 0093 0000 		sts (move_state+24)+2,r16
 948 0184 1093 0000 		sts (move_state+24)+3,r17
 949               	.LSM76:
 950 0188 87A1      		ldd r24,Z+39
 951 018a 90A5      		ldd r25,Z+40
 952 018c A1A5      		ldd r26,Z+41
 953 018e B2A5      		ldd r27,Z+42
 954 0190 280F      		add r18,r24
 955 0192 391F      		adc r19,r25
 956 0194 4A1F      		adc r20,r26
 957 0196 5B1F      		adc r21,r27
 958 0198 2093 0000 		sts move_state+8,r18
 959 019c 3093 0000 		sts (move_state+8)+1,r19
 960 01a0 4093 0000 		sts (move_state+8)+2,r20
 961 01a4 5093 0000 		sts (move_state+8)+3,r21
 962               	.LVL38:
 963               	.L39:
 964               	.LSM77:
 965 01a8 E090 0000 		lds r14,move_state+28
 966 01ac F090 0000 		lds r15,(move_state+28)+1
 967 01b0 0091 0000 		lds r16,(move_state+28)+2
 968 01b4 1091 0000 		lds r17,(move_state+28)+3
 969 01b8 E114      		cp r14,__zero_reg__
 970 01ba F104      		cpc r15,__zero_reg__
 971 01bc 0105      		cpc r16,__zero_reg__
 972 01be 1105      		cpc r17,__zero_reg__
 973 01c0 01F0      		breq .L40
 974               	.LSM78:
 975 01c2 2091 0000 		lds r18,move_state+12
 976 01c6 3091 0000 		lds r19,(move_state+12)+1
 977 01ca 4091 0000 		lds r20,(move_state+12)+2
 978 01ce 5091 0000 		lds r21,(move_state+12)+3
 979 01d2 83A1      		ldd r24,Z+35
 980 01d4 94A1      		ldd r25,Z+36
 981 01d6 A5A1      		ldd r26,Z+37
 982 01d8 B6A1      		ldd r27,Z+38
 983 01da 281B      		sub r18,r24
 984 01dc 390B      		sbc r19,r25
 985 01de 4A0B      		sbc r20,r26
 986 01e0 5B0B      		sbc r21,r27
 987 01e2 2093 0000 		sts move_state+12,r18
 988 01e6 3093 0000 		sts (move_state+12)+1,r19
 989 01ea 4093 0000 		sts (move_state+12)+2,r20
 990 01ee 5093 0000 		sts (move_state+12)+3,r21
 991               	.LSM79:
 992 01f2 57FF      		sbrs r21,7
 993 01f4 00C0      		rjmp .L40
 994               	.LSM80:
 995 01f6 149A      		sbi 34-32,4
 996               	.LSM81:
 997 01f8 0894      		sec
 998 01fa E108      		sbc r14,__zero_reg__
 999 01fc F108      		sbc r15,__zero_reg__
 1000 01fe 0109      		sbc r16,__zero_reg__
 1001 0200 1109      		sbc r17,__zero_reg__
 1002 0202 E092 0000 		sts move_state+28,r14
 1003 0206 F092 0000 		sts (move_state+28)+1,r15
 1004 020a 0093 0000 		sts (move_state+28)+2,r16
 1005 020e 1093 0000 		sts (move_state+28)+3,r17
 1006               	.LSM82:
 1007 0212 87A1      		ldd r24,Z+39
 1008 0214 90A5      		ldd r25,Z+40
 1009 0216 A1A5      		ldd r26,Z+41
 1010 0218 B2A5      		ldd r27,Z+42
 1011 021a 280F      		add r18,r24
 1012 021c 391F      		adc r19,r25
 1013 021e 4A1F      		adc r20,r26
 1014 0220 5B1F      		adc r21,r27
 1015 0222 2093 0000 		sts move_state+12,r18
 1016 0226 3093 0000 		sts (move_state+12)+1,r19
 1017 022a 4093 0000 		sts (move_state+12)+2,r20
 1018 022e 5093 0000 		sts (move_state+12)+3,r21
 1019               	.LVL39:
 1020               	.L40:
 1021               	.LSM83:
 1022 0232 8091 0000 		lds r24,move_state+32
 1023 0236 9091 0000 		lds r25,(move_state+32)+1
 1024 023a A091 0000 		lds r26,(move_state+32)+2
 1025 023e B091 0000 		lds r27,(move_state+32)+3
 1026 0242 0196      		adiw r24,1
 1027 0244 A11D      		adc r26,__zero_reg__
 1028 0246 B11D      		adc r27,__zero_reg__
 1029 0248 8093 0000 		sts move_state+32,r24
 1030 024c 9093 0000 		sts (move_state+32)+1,r25
 1031 0250 A093 0000 		sts (move_state+32)+2,r26
 1032 0254 B093 0000 		sts (move_state+32)+3,r27
 1033               	.LSM84:
 1034 0258 8091 0000 		lds r24,move_state+16
 1035 025c 9091 0000 		lds r25,(move_state+16)+1
 1036 0260 A091 0000 		lds r26,(move_state+16)+2
 1037 0264 B091 0000 		lds r27,(move_state+16)+3
 1038 0268 0097      		sbiw r24,0
 1039 026a A105      		cpc r26,__zero_reg__
 1040 026c B105      		cpc r27,__zero_reg__
 1041 026e 01F4      		brne .L41
 1042 0270 8091 0000 		lds r24,move_state+20
 1043 0274 9091 0000 		lds r25,(move_state+20)+1
 1044 0278 A091 0000 		lds r26,(move_state+20)+2
 1045 027c B091 0000 		lds r27,(move_state+20)+3
 1046 0280 0097      		sbiw r24,0
 1047 0282 A105      		cpc r26,__zero_reg__
 1048 0284 B105      		cpc r27,__zero_reg__
 1049 0286 01F4      		brne .L41
 1050 0288 8091 0000 		lds r24,move_state+24
 1051 028c 9091 0000 		lds r25,(move_state+24)+1
 1052 0290 A091 0000 		lds r26,(move_state+24)+2
 1053 0294 B091 0000 		lds r27,(move_state+24)+3
 1054 0298 0097      		sbiw r24,0
 1055 029a A105      		cpc r26,__zero_reg__
 1056 029c B105      		cpc r27,__zero_reg__
 1057 029e 01F4      		brne .L41
 1058 02a0 8091 0000 		lds r24,move_state+28
 1059 02a4 9091 0000 		lds r25,(move_state+28)+1
 1060 02a8 A091 0000 		lds r26,(move_state+28)+2
 1061 02ac B091 0000 		lds r27,(move_state+28)+3
 1062 02b0 0097      		sbiw r24,0
 1063 02b2 A105      		cpc r26,__zero_reg__
 1064 02b4 B105      		cpc r27,__zero_reg__
 1065 02b6 01F0      		breq .L42
 1066               	.L41:
 1067 02b8 8091 0000 		lds r24,move_state+36
 1068 02bc 8823      		tst r24
 1069 02be 01F0      		breq .L43
 1070 02c0 87A9      		ldd r24,Z+55
 1071 02c2 90AD      		ldd r25,Z+56
 1072 02c4 A1AD      		ldd r26,Z+57
 1073 02c6 B2AD      		ldd r27,Z+58
 1074 02c8 1816      		cp __zero_reg__,r24
 1075 02ca 1906      		cpc __zero_reg__,r25
 1076 02cc 1A06      		cpc __zero_reg__,r26
 1077 02ce 1B06      		cpc __zero_reg__,r27
 1078 02d0 04F0      		brlt .L43
 1079               	.L42:
 1080               	.LSM85:
 1081 02d2 8589      		ldd r24,Z+21
 1082 02d4 8D7F      		andi r24,lo8(-3)
 1083               	.LSM86:
 1084 02d6 8460      		ori r24,lo8(4)
 1085 02d8 858B      		std Z+21,r24
 1086               	.LSM87:
 1087 02da E959      		subi r30,lo8(-(103))
 1088 02dc FF4F      		sbci r31,hi8(-(103))
 1089               	.LVL40:
 1090 02de 8081      		ld r24,Z
 1091 02e0 8150      		subi r24,lo8(-(-1))
 1092 02e2 8083      		st Z,r24
 1093               	.LSM88:
 1094 02e4 479A      		sbi 40-32,7
 1095 02e6 00C0      		rjmp .L44
 1096               	.LVL41:
 1097               	.L43:
 1098               	.LSM89:
 1099 02e8 1092 0000 		sts psu_timeout,__zero_reg__
 1100               	.LSM90:
 1101 02ec 63A9      		ldd r22,Z+51
 1102 02ee 74A9      		ldd r23,Z+52
 1103 02f0 85A9      		ldd r24,Z+53
 1104 02f2 96A9      		ldd r25,Z+54
 1105 02f4 0E94 0000 		call setTimer
 1106               	.LVL42:
 1107               	.L44:
 1108               	.LSM91:
 1109 02f8 8898      		cbi 49-32,0
 1110 02fa 8E98      		cbi 49-32,6
 1111 02fc 4198      		cbi 40-32,1
 1112 02fe 1498      		cbi 34-32,4
 1113               	/* epilogue start */
 1114               	.LSM92:
 1115 0300 1F91      		pop r17
 1116 0302 0F91      		pop r16
 1117 0304 FF90      		pop r15
 1118 0306 EF90      		pop r14
 1119 0308 0895      		ret
 1120               	.LFE21:
 1122               		.section	.text.dda_start,"ax",@progbits
 1123               	.global	dda_start
 1125               	dda_start:
 1126               	.LFB20:
 1127               	.LSM93:
 1128               	.LVL43:
 1129 0000 CF93      		push r28
 1130 0002 DF93      		push r29
 1131               	/* prologue: function */
 1132               	/* frame size = 0 */
 1133 0004 EC01      		movw r28,r24
 1134               	.LSM94:
 1135 0006 8091 0000 		lds r24,debug_flags
 1136               	.LVL44:
 1137 000a 85FF      		sbrs r24,5
 1138 000c 00C0      		rjmp .L47
 1139               	.LSM95:
 1140 000e 8DB7      		in r24,__SP_L__
 1141 0010 9EB7      		in r25,__SP_H__
 1142 0012 4297      		sbiw r24,18
 1143 0014 0FB6      		in __tmp_reg__,__SREG__
 1144 0016 F894      		cli
 1145 0018 9EBF      		out __SP_H__,r25
 1146 001a 0FBE      		out __SREG__,__tmp_reg__
 1147 001c 8DBF      		out __SP_L__,r24
 1148 001e EDB7      		in r30,__SP_L__
 1149 0020 FEB7      		in r31,__SP_H__
 1150 0022 3196      		adiw r30,1
 1151 0024 80E0      		ldi r24,lo8(__c.2153)
 1152 0026 90E0      		ldi r25,hi8(__c.2153)
 1153 0028 ADB7      		in r26,__SP_L__
 1154 002a BEB7      		in r27,__SP_H__
 1155 002c 1296      		adiw r26,1+1
 1156 002e 9C93      		st X,r25
 1157 0030 8E93      		st -X,r24
 1158 0032 1197      		sbiw r26,1
 1159 0034 8881      		ld r24,Y
 1160 0036 9981      		ldd r25,Y+1
 1161 0038 AA81      		ldd r26,Y+2
 1162 003a BB81      		ldd r27,Y+3
 1163 003c 8283      		std Z+2,r24
 1164 003e 9383      		std Z+3,r25
 1165 0040 A483      		std Z+4,r26
 1166 0042 B583      		std Z+5,r27
 1167 0044 8C81      		ldd r24,Y+4
 1168 0046 9D81      		ldd r25,Y+5
 1169 0048 AE81      		ldd r26,Y+6
 1170 004a BF81      		ldd r27,Y+7
 1171 004c 8683      		std Z+6,r24
 1172 004e 9783      		std Z+7,r25
 1173 0050 A087      		std Z+8,r26
 1174 0052 B187      		std Z+9,r27
 1175 0054 8885      		ldd r24,Y+8
 1176 0056 9985      		ldd r25,Y+9
 1177 0058 AA85      		ldd r26,Y+10
 1178 005a BB85      		ldd r27,Y+11
 1179 005c 8287      		std Z+10,r24
 1180 005e 9387      		std Z+11,r25
 1181 0060 A487      		std Z+12,r26
 1182 0062 B587      		std Z+13,r27
 1183 0064 8889      		ldd r24,Y+16
 1184 0066 9989      		ldd r25,Y+17
 1185 0068 AA89      		ldd r26,Y+18
 1186 006a BB89      		ldd r27,Y+19
 1187 006c 8687      		std Z+14,r24
 1188 006e 9787      		std Z+15,r25
 1189 0070 A08B      		std Z+16,r26
 1190 0072 B18B      		std Z+17,r27
 1191 0074 0E94 0000 		call sersendf_P
 1192 0078 8DB7      		in r24,__SP_L__
 1193 007a 9EB7      		in r25,__SP_H__
 1194 007c 4296      		adiw r24,18
 1195 007e 0FB6      		in __tmp_reg__,__SREG__
 1196 0080 F894      		cli
 1197 0082 9EBF      		out __SP_H__,r25
 1198 0084 0FBE      		out __SREG__,__tmp_reg__
 1199 0086 8DBF      		out __SP_L__,r24
 1200               	.L47:
 1201               	.LSM96:
 1202 0088 8D89      		ldd r24,Y+21
 1203 008a 80FD      		sbrc r24,0
 1204 008c 00C0      		rjmp .L48
 1205               	.LSM97:
 1206 008e 1092 0000 		sts psu_timeout,__zero_reg__
 1207               	.LSM98:
 1208 0092 8F8D      		ldd r24,Y+31
 1209 0094 98A1      		ldd r25,Y+32
 1210 0096 A9A1      		ldd r26,Y+33
 1211 0098 BAA1      		ldd r27,Y+34
 1212 009a 0097      		sbiw r24,0
 1213 009c A105      		cpc r26,__zero_reg__
 1214 009e B105      		cpc r27,__zero_reg__
 1215 00a0 01F0      		breq .L49
 1216               	.LSM99:
 1217 00a2 4798      		cbi 40-32,7
 1218               	.L49:
 1219               	.LSM100:
 1220 00a4 C759      		subi r28,lo8(-(105))
 1221 00a6 DF4F      		sbci r29,hi8(-(105))
 1222 00a8 8881      		ld r24,Y
 1223 00aa C956      		subi r28,lo8(-(-105))
 1224 00ac D040      		sbci r29,hi8(-(-105))
 1225 00ae 8111      		cpse r24,__zero_reg__
 1226               	.LBB67:
 1227               	.LBB68:
 1228               	.LSM101:
 1229 00b0 759A      		sbi 46-32,5
 1230               	.L50:
 1231               	.LBE68:
 1232               	.LBE67:
 1233               	.LSM102:
 1234 00b2 8D89      		ldd r24,Y+21
 1235 00b4 84FF      		sbrs r24,4
 1236 00b6 00C0      		rjmp .L51
 1237 00b8 899A      		sbi 49-32,1
 1238 00ba 00C0      		rjmp .L52
 1239               	.L51:
 1240 00bc 8998      		cbi 49-32,1
 1241               	.L52:
 1242               	.LSM103:
 1243 00be 8D89      		ldd r24,Y+21
 1244 00c0 85FD      		sbrc r24,5
 1245 00c2 00C0      		rjmp .L53
 1246 00c4 8F9A      		sbi 49-32,7
 1247 00c6 00C0      		rjmp .L54
 1248               	.L53:
 1249 00c8 8F98      		cbi 49-32,7
 1250               	.L54:
 1251               	.LSM104:
 1252 00ca 8D89      		ldd r24,Y+21
 1253 00cc 86FD      		sbrc r24,6
 1254 00ce 00C0      		rjmp .L55
 1255 00d0 439A      		sbi 40-32,3
 1256 00d2 00C0      		rjmp .L56
 1257               	.L55:
 1258 00d4 4398      		cbi 40-32,3
 1259               	.L56:
 1260               	.LSM105:
 1261 00d6 8D89      		ldd r24,Y+21
 1262 00d8 87FF      		sbrs r24,7
 1263 00da 00C0      		rjmp .L57
 1264 00dc 169A      		sbi 34-32,6
 1265 00de 00C0      		rjmp .L58
 1266               	.L57:
 1267 00e0 1698      		cbi 34-32,6
 1268               	.L58:
 1269               	.LSM106:
 1270 00e2 8FA1      		ldd r24,Y+39
 1271 00e4 98A5      		ldd r25,Y+40
 1272 00e6 A9A5      		ldd r26,Y+41
 1273 00e8 BAA5      		ldd r27,Y+42
 1274 00ea B695      		lsr r27
 1275 00ec A795      		ror r26
 1276 00ee 9795      		ror r25
 1277 00f0 8795      		ror r24
 1278 00f2 B095      		com r27
 1279 00f4 A095      		com r26
 1280 00f6 9095      		com r25
 1281 00f8 8195      		neg r24
 1282 00fa 9F4F      		sbci r25,lo8(-1)
 1283 00fc AF4F      		sbci r26,lo8(-1)
 1284 00fe BF4F      		sbci r27,lo8(-1)
 1285 0100 8093 0000 		sts move_state+12,r24
 1286 0104 9093 0000 		sts (move_state+12)+1,r25
 1287 0108 A093 0000 		sts (move_state+12)+2,r26
 1288 010c B093 0000 		sts (move_state+12)+3,r27
 1289 0110 8093 0000 		sts move_state+8,r24
 1290 0114 9093 0000 		sts (move_state+8)+1,r25
 1291 0118 A093 0000 		sts (move_state+8)+2,r26
 1292 011c B093 0000 		sts (move_state+8)+3,r27
 1293 0120 8093 0000 		sts move_state+4,r24
 1294 0124 9093 0000 		sts (move_state+4)+1,r25
 1295 0128 A093 0000 		sts (move_state+4)+2,r26
 1296 012c B093 0000 		sts (move_state+4)+3,r27
 1297 0130 8093 0000 		sts move_state,r24
 1298 0134 9093 0000 		sts (move_state)+1,r25
 1299 0138 A093 0000 		sts (move_state)+2,r26
 1300 013c B093 0000 		sts (move_state)+3,r27
 1301               	.LSM107:
 1302 0140 A0E0      		ldi r26,lo8(move_state+16)
 1303 0142 B0E0      		ldi r27,hi8(move_state+16)
 1304 0144 FE01      		movw r30,r28
 1305 0146 7796      		adiw r30,23
 1306 0148 80E1      		ldi r24,lo8(16)
 1307               	.L59:
 1308 014a 0190      		ld r0,Z+
 1309 014c 0D92      		st X+,r0
 1310 014e 8150      		subi r24,lo8(-(-1))
 1311 0150 01F4      		brne .L59
 1312               	.LSM108:
 1313 0152 1092 0000 		sts move_state+36,__zero_reg__
 1314               	.LSM109:
 1315 0156 1092 0000 		sts move_state+32,__zero_reg__
 1316 015a 1092 0000 		sts (move_state+32)+1,__zero_reg__
 1317 015e 1092 0000 		sts (move_state+32)+2,__zero_reg__
 1318 0162 1092 0000 		sts (move_state+32)+3,__zero_reg__
 1319               	.LSM110:
 1320 0166 8D89      		ldd r24,Y+21
 1321 0168 8260      		ori r24,lo8(2)
 1322 016a 8D8B      		std Y+21,r24
 1323               	.LSM111:
 1324 016c 6BA9      		ldd r22,Y+51
 1325 016e 7CA9      		ldd r23,Y+52
 1326 0170 8DA9      		ldd r24,Y+53
 1327 0172 9EA9      		ldd r25,Y+54
 1328 0174 0E94 0000 		call setTimer
 1329               	.L48:
 1330               	.LSM112:
 1331 0178 8889      		ldd r24,Y+16
 1332 017a 9989      		ldd r25,Y+17
 1333 017c AA89      		ldd r26,Y+18
 1334 017e BB89      		ldd r27,Y+19
 1335 0180 8093 0000 		sts current_position+16,r24
 1336 0184 9093 0000 		sts (current_position+16)+1,r25
 1337 0188 A093 0000 		sts (current_position+16)+2,r26
 1338 018c B093 0000 		sts (current_position+16)+3,r27
 1339               	/* epilogue start */
 1340               	.LSM113:
 1341 0190 DF91      		pop r29
 1342 0192 CF91      		pop r28
 1343               	.LVL45:
 1344 0194 0895      		ret
 1345               	.LFE20:
 1347               		.section	.text.dda_new_startpoint,"ax",@progbits
 1348               	.global	dda_new_startpoint
 1350               	dda_new_startpoint:
 1351               	.LFB18:
 1352               	.LSM114:
 1353 0000 A0E0      		ldi r26,lo8(0)
 1354 0002 B0E0      		ldi r27,hi8(0)
 1355 0004 E0E0      		ldi r30,lo8(gs(1f))
 1356 0006 F0E0      		ldi r31,hi8(gs(1f))
 1357 0008 0C94 0000 		jmp __prologue_saves__+((18 - 13) * 2)
 1358               	1:
 1359               	/* prologue: function */
 1360               	/* frame size = 0 */
 1361               	.LSM115:
 1362 000c 7724      		clr r7
 1363               	.LVL46:
 1364 000e C0E0      		ldi r28,lo8(0)
 1365 0010 D0E0      		ldi r29,hi8(0)
 1366               	.L62:
 1367               	.LSM116:
 1368 0012 872C      		mov r8,r7
 1369 0014 9924      		clr r9
 1370               	.LBB73:
 1371               	.LBB74:
 1372               	.LBB75:
 1373               	.LSM117:
 1374 0016 880C      		lsl r8
 1375 0018 991C      		rol r9
 1376 001a 880C      		lsl r8
 1377 001c 991C      		rol r9
 1378 001e F401      		movw r30,r8
 1379               	.LVL47:
 1380 0020 E050      		subi r30,lo8(-(axis_qn_P))
 1381 0022 F040      		sbci r31,hi8(-(axis_qn_P))
 1382               	/* #APP */
 1383               	 ;  33 "dda_maths.h" 1
 1384 0024 2591      		lpm r18, Z+
 1385 0026 3591      		lpm r19, Z+
 1386 0028 4591      		lpm r20, Z+
 1387 002a 5491      		lpm r21, Z
 1388               		
 1389               	 ;  0 "" 2
 1390               	.LVL48:
 1391               	/* #NOAPP */
 1392               	.LBE75:
 1393               	.LBB76:
 1394               	.LSM118:
 1395 002c F401      		movw r30,r8
 1396               	.LVL49:
 1397 002e E050      		subi r30,lo8(-(axis_qr_P))
 1398 0030 F040      		sbci r31,hi8(-(axis_qr_P))
 1399               	/* #APP */
 1400               	 ;  34 "dda_maths.h" 1
 1401 0032 E590      		lpm r14, Z+
 1402 0034 F590      		lpm r15, Z+
 1403 0036 0591      		lpm r16, Z+
 1404 0038 1491      		lpm r17, Z
 1405               		
 1406               	 ;  0 "" 2
 1407               	.LVL50:
 1408               	/* #NOAPP */
 1409               	.LBE76:
 1410               	.LBE74:
 1411               	.LSM119:
 1412 003a F401      		movw r30,r8
 1413               	.LVL51:
 1414 003c E050      		subi r30,lo8(-(startpoint))
 1415 003e F040      		sbci r31,hi8(-(startpoint))
 1416 0040 6081      		ld r22,Z
 1417 0042 7181      		ldd r23,Z+1
 1418 0044 8281      		ldd r24,Z+2
 1419 0046 9381      		ldd r25,Z+3
 1420 0048 E0E4      		ldi r30,lo8(1000000)
 1421 004a AE2E      		mov r10,r30
 1422 004c E2E4      		ldi r30,hi8(1000000)
 1423 004e BE2E      		mov r11,r30
 1424 0050 EFE0      		ldi r30,hlo8(1000000)
 1425 0052 CE2E      		mov r12,r30
 1426 0054 D12C      		mov r13,__zero_reg__
 1427 0056 0E94 0000 		call muldivQR
 1428               	.LVL52:
 1429               	.LBE73:
 1430               	.LSM120:
 1431 005a 20E0      		ldi r18,lo8(startpoint_steps)
 1432 005c 30E0      		ldi r19,hi8(startpoint_steps)
 1433 005e 820E      		add r8,r18
 1434 0060 931E      		adc r9,r19
 1435 0062 F401      		movw r30,r8
 1436 0064 6083      		st Z,r22
 1437 0066 7183      		std Z+1,r23
 1438 0068 8283      		std Z+2,r24
 1439 006a 9383      		std Z+3,r25
 1440               	.LSM121:
 1441 006c 7394      		inc r7
 1442 006e 2196      		adiw r28,1
 1443 0070 C430      		cpi r28,4
 1444 0072 D105      		cpc r29,__zero_reg__
 1445 0074 01F4      		brne .L62
 1446               	/* epilogue start */
 1447               	.LSM122:
 1448 0076 CDB7      		in r28,__SP_L__
 1449 0078 DEB7      		in r29,__SP_H__
 1450 007a EDE0      		ldi r30, lo8(13)
 1451 007c 0C94 0000 		jmp __epilogue_restores__ + ((18 - 13) * 2)
 1452               	.LFE18:
 1454               		.section	.text.dda_create,"ax",@progbits
 1455               	.global	dda_create
 1457               	dda_create:
 1458               	.LFB19:
 1459               	.LSM123:
 1460               	.LVL53:
 1461 0000 ACE1      		ldi r26,lo8(28)
 1462 0002 B0E0      		ldi r27,hi8(28)
 1463 0004 E0E0      		ldi r30,lo8(gs(1f))
 1464 0006 F0E0      		ldi r31,hi8(gs(1f))
 1465 0008 0C94 0000 		jmp __prologue_saves__+((18 - 18) * 2)
 1466               	1:
 1467               	/* prologue: function */
 1468               	/* frame size = 28 */
 1469 000c 2C01      		movw r4,r24
 1470 000e 1B01      		movw r2,r22
 1471               	.LSM124:
 1472 0010 E091 0000 		lds r30,prev_dda.1992
 1473 0014 F091 0000 		lds r31,(prev_dda.1992)+1
 1474 0018 3097      		sbiw r30,0
 1475 001a 01F0      		breq .L65
 1476               	.LVL54:
 1477 001c 8589      		ldd r24,Z+21
 1478 001e 82FD      		sbrc r24,2
 1479 0020 00C0      		rjmp .L66
 1480               	.LVL55:
 1481               	.L65:
 1482 0022 D201      		movw r26,r4
 1483 0024 5596      		adiw r26,21
 1484 0026 8C91      		ld r24,X
 1485 0028 83FF      		sbrs r24,3
 1486 002a 00C0      		rjmp .L67
 1487               	.L66:
 1488               	.LSM125:
 1489 002c 1092 0000 		sts (prev_dda.1992)+1,__zero_reg__
 1490 0030 1092 0000 		sts prev_dda.1992,__zero_reg__
 1491               	.L67:
 1492               	.LSM126:
 1493 0034 F201      		movw r30,r4
 1494 0036 8589      		ldd r24,Z+21
 1495 0038 83FD      		sbrc r24,3
 1496 003a 00C0      		rjmp .L107
 1497               	.LSM127:
 1498 003c 8091 0000 		lds r24,debug_flags
 1499 0040 85FF      		sbrs r24,5
 1500 0042 00C0      		rjmp .L69
 1501               	.LSM128:
 1502 0044 0DB7      		in r16,__SP_L__
 1503 0046 1EB7      		in r17,__SP_H__
 1504 0048 0251      		subi r16,lo8(-(-18))
 1505 004a 1040      		sbci r17,hi8(-(-18))
 1506 004c 0FB6      		in __tmp_reg__,__SREG__
 1507 004e F894      		cli
 1508 0050 1EBF      		out __SP_H__,r17
 1509 0052 0FBE      		out __SREG__,__tmp_reg__
 1510 0054 0DBF      		out __SP_L__,r16
 1511 0056 EDB7      		in r30,__SP_L__
 1512 0058 FEB7      		in r31,__SP_H__
 1513 005a 3196      		adiw r30,1
 1514 005c 80E0      		ldi r24,lo8(__c.1993)
 1515 005e 90E0      		ldi r25,hi8(__c.1993)
 1516 0060 ADB7      		in r26,__SP_L__
 1517 0062 BEB7      		in r27,__SP_H__
 1518 0064 1296      		adiw r26,1+1
 1519 0066 9C93      		st X,r25
 1520 0068 8E93      		st -X,r24
 1521 006a 1197      		sbiw r26,1
 1522 006c D201      		movw r26,r4
 1523 006e 2D91      		ld r18,X+
 1524 0070 3D91      		ld r19,X+
 1525 0072 4D91      		ld r20,X+
 1526 0074 5C91      		ld r21,X
 1527 0076 1397      		sbiw r26,3
 1528 0078 2283      		std Z+2,r18
 1529 007a 3383      		std Z+3,r19
 1530 007c 4483      		std Z+4,r20
 1531 007e 5583      		std Z+5,r21
 1532 0080 1496      		adiw r26,4
 1533 0082 2D91      		ld r18,X+
 1534 0084 3D91      		ld r19,X+
 1535 0086 4D91      		ld r20,X+
 1536 0088 5C91      		ld r21,X
 1537 008a 1797      		sbiw r26,4+3
 1538 008c 2683      		std Z+6,r18
 1539 008e 3783      		std Z+7,r19
 1540 0090 4087      		std Z+8,r20
 1541 0092 5187      		std Z+9,r21
 1542 0094 1896      		adiw r26,8
 1543 0096 2D91      		ld r18,X+
 1544 0098 3D91      		ld r19,X+
 1545 009a 4D91      		ld r20,X+
 1546 009c 5C91      		ld r21,X
 1547 009e 1B97      		sbiw r26,8+3
 1548 00a0 2287      		std Z+10,r18
 1549 00a2 3387      		std Z+11,r19
 1550 00a4 4487      		std Z+12,r20
 1551 00a6 5587      		std Z+13,r21
 1552 00a8 5096      		adiw r26,16
 1553 00aa 2D91      		ld r18,X+
 1554 00ac 3D91      		ld r19,X+
 1555 00ae 4D91      		ld r20,X+
 1556 00b0 5C91      		ld r21,X
 1557 00b2 5397      		sbiw r26,16+3
 1558 00b4 2687      		std Z+14,r18
 1559 00b6 3787      		std Z+15,r19
 1560 00b8 408B      		std Z+16,r20
 1561 00ba 518B      		std Z+17,r21
 1562 00bc 0E94 0000 		call sersendf_P
 1563 00c0 EDB7      		in r30,__SP_L__
 1564 00c2 FEB7      		in r31,__SP_H__
 1565 00c4 7296      		adiw r30,18
 1566 00c6 0FB6      		in __tmp_reg__,__SREG__
 1567 00c8 F894      		cli
 1568 00ca FEBF      		out __SP_H__,r31
 1569 00cc 0FBE      		out __SREG__,__tmp_reg__
 1570 00ce EDBF      		out __SP_L__,r30
 1571               	.LVL56:
 1572               	.L69:
 1573               	.LSM129:
 1574 00d0 D201      		movw r26,r4
 1575 00d2 F101      		movw r30,r2
 1576 00d4 85E1      		ldi r24,lo8(21)
 1577               	.LVL57:
 1578               	.L70:
 1579 00d6 0190      		ld r0,Z+
 1580 00d8 0D92      		st X+,r0
 1581 00da 8150      		subi r24,lo8(-(-1))
 1582 00dc 01F4      		brne .L70
 1583               	.LSM130:
 1584 00de BBE4      		ldi r27,lo8(75)
 1585 00e0 EB2E      		mov r14,r27
 1586 00e2 F12C      		mov r15,__zero_reg__
 1587 00e4 4E0C      		add r4,r14
 1588 00e6 5F1C      		adc r5,r15
 1589               	.LVL58:
 1590 00e8 D201      		movw r26,r4
 1591 00ea 1D92      		st X+,__zero_reg__
 1592 00ec 1D92      		st X+,__zero_reg__
 1593 00ee 1D92      		st X+,__zero_reg__
 1594 00f0 1D92      		st X+,__zero_reg__
 1595               	.LSM131:
 1596 00f2 FD01      		movw r30,r26
 1597               	.LVL59:
 1598 00f4 1192      		st Z+,__zero_reg__
 1599 00f6 1192      		st Z+,__zero_reg__
 1600 00f8 1192      		st Z+,__zero_reg__
 1601 00fa 1192      		st Z+,__zero_reg__
 1602 00fc 2F01      		movw r4,r30
 1603               	.LSM132:
 1604 00fe 1082      		st Z,__zero_reg__
 1605 0100 1182      		std Z+1,__zero_reg__
 1606 0102 1282      		std Z+2,__zero_reg__
 1607 0104 1382      		std Z+3,__zero_reg__
 1608               	.LSM133:
 1609 0106 8091 0000 		lds r24,idcnt.1991
 1610 010a E4E1      		ldi r30,lo8(20)
 1611 010c F0E0      		ldi r31,hi8(20)
 1612 010e 4E0E      		add r4,r30
 1613 0110 5F1E      		adc r5,r31
 1614 0112 D201      		movw r26,r4
 1615 0114 8C93      		st X,r24
 1616 0116 E9E9      		ldi r30,lo8(-103)
 1617 0118 FFEF      		ldi r31,hi8(-103)
 1618 011a 4E0E      		add r4,r30
 1619 011c 5F1E      		adc r5,r31
 1620 011e 8F5F      		subi r24,lo8(-(1))
 1621 0120 8093 0000 		sts idcnt.1991,r24
 1622 0124 6624      		clr r6
 1623               	.LVL60:
 1624 0126 00C0      		rjmp .L71
 1625               	.L81:
 1626               	.LSM134:
 1627 0128 F401      		movw r30,r8
 1628 012a EE0F      		lsl r30
 1629 012c FF1F      		rol r31
 1630 012e EE0F      		lsl r30
 1631 0130 FF1F      		rol r31
 1632 0132 D101      		movw r26,r2
 1633 0134 AE0F      		add r26,r30
 1634 0136 BF1F      		adc r27,r31
 1635 0138 AD90      		ld r10,X+
 1636 013a BD90      		ld r11,X+
 1637 013c CD90      		ld r12,X+
 1638 013e DC90      		ld r13,X
 1639 0140 8E01      		movw r16,r28
 1640 0142 0F5F      		subi r16,lo8(-(1))
 1641 0144 1F4F      		sbci r17,hi8(-(1))
 1642 0146 0E0F      		add r16,r30
 1643 0148 1F1F      		adc r17,r31
 1644 014a E050      		subi r30,lo8(-(startpoint))
 1645 014c F040      		sbci r31,hi8(-(startpoint))
 1646 014e 8081      		ld r24,Z
 1647 0150 9181      		ldd r25,Z+1
 1648 0152 A281      		ldd r26,Z+2
 1649 0154 B381      		ldd r27,Z+3
 1650 0156 A601      		movw r20,r12
 1651 0158 9501      		movw r18,r10
 1652 015a 281B      		sub r18,r24
 1653 015c 390B      		sbc r19,r25
 1654 015e 4A0B      		sbc r20,r26
 1655 0160 5B0B      		sbc r21,r27
 1656 0162 D801      		movw r26,r16
 1657 0164 2D93      		st X+,r18
 1658 0166 3D93      		st X+,r19
 1659 0168 4D93      		st X+,r20
 1660 016a 5C93      		st X,r21
 1661 016c 1397      		sbiw r26,3
 1662 016e 57FF      		sbrs r21,7
 1663 0170 00C0      		rjmp .L72
 1664 0172 8827      		clr r24
 1665 0174 9927      		clr r25
 1666 0176 DC01      		movw r26,r24
 1667 0178 821B      		sub r24,r18
 1668 017a 930B      		sbc r25,r19
 1669 017c A40B      		sbc r26,r20
 1670 017e B50B      		sbc r27,r21
 1671 0180 F801      		movw r30,r16
 1672 0182 8083      		st Z,r24
 1673 0184 9183      		std Z+1,r25
 1674 0186 A283      		std Z+2,r26
 1675 0188 B383      		std Z+3,r27
 1676               	.L72:
 1677               	.LBB99:
 1678               	.LBB100:
 1679               	.LBB101:
 1680               	.LSM135:
 1681 018a 862D      		mov r24,r6
 1682 018c 90E0      		ldi r25,lo8(0)
 1683 018e 880F      		lsl r24
 1684 0190 991F      		rol r25
 1685 0192 880F      		lsl r24
 1686 0194 991F      		rol r25
 1687 0196 FC01      		movw r30,r24
 1688               	.LVL61:
 1689 0198 E050      		subi r30,lo8(-(axis_qn_P))
 1690 019a F040      		sbci r31,hi8(-(axis_qn_P))
 1691               	/* #APP */
 1692               	 ;  33 "dda_maths.h" 1
 1693 019c 2591      		lpm r18, Z+
 1694 019e 3591      		lpm r19, Z+
 1695 01a0 4591      		lpm r20, Z+
 1696 01a2 5491      		lpm r21, Z
 1697               		
 1698               	 ;  0 "" 2
 1699               	.LVL62:
 1700               	/* #NOAPP */
 1701               	.LBE101:
 1702               	.LBB102:
 1703               	.LSM136:
 1704 01a4 FC01      		movw r30,r24
 1705               	.LVL63:
 1706 01a6 E050      		subi r30,lo8(-(axis_qr_P))
 1707 01a8 F040      		sbci r31,hi8(-(axis_qr_P))
 1708               	/* #APP */
 1709               	 ;  34 "dda_maths.h" 1
 1710 01aa E590      		lpm r14, Z+
 1711 01ac F590      		lpm r15, Z+
 1712 01ae 0591      		lpm r16, Z+
 1713 01b0 1491      		lpm r17, Z
 1714               		
 1715               	 ;  0 "" 2
 1716               	.LVL64:
 1717               	/* #NOAPP */
 1718               	.LBE102:
 1719               	.LBE100:
 1720               	.LSM137:
 1721 01b2 C601      		movw r24,r12
 1722 01b4 B501      		movw r22,r10
 1723 01b6 E0E4      		ldi r30,lo8(1000000)
 1724 01b8 AE2E      		mov r10,r30
 1725 01ba E2E4      		ldi r30,hi8(1000000)
 1726 01bc BE2E      		mov r11,r30
 1727 01be EFE0      		ldi r30,hlo8(1000000)
 1728 01c0 CE2E      		mov r12,r30
 1729 01c2 D12C      		mov r13,__zero_reg__
 1730               	.LVL65:
 1731 01c4 0E94 0000 		call muldivQR
 1732               	.LVL66:
 1733 01c8 9B01      		movw r18,r22
 1734 01ca AC01      		movw r20,r24
 1735               	.LBE99:
 1736               	.LSM138:
 1737 01cc F401      		movw r30,r8
 1738 01ce EE0F      		lsl r30
 1739 01d0 FF1F      		rol r31
 1740 01d2 EE0F      		lsl r30
 1741 01d4 FF1F      		rol r31
 1742 01d6 B201      		movw r22,r4
 1743 01d8 6E0F      		add r22,r30
 1744 01da 7F1F      		adc r23,r31
 1745 01dc E050      		subi r30,lo8(-(startpoint_steps))
 1746 01de F040      		sbci r31,hi8(-(startpoint_steps))
 1747 01e0 8081      		ld r24,Z
 1748 01e2 9181      		ldd r25,Z+1
 1749 01e4 A281      		ldd r26,Z+2
 1750 01e6 B381      		ldd r27,Z+3
 1751 01e8 7901      		movw r14,r18
 1752 01ea 8A01      		movw r16,r20
 1753               	.LVL67:
 1754 01ec E81A      		sub r14,r24
 1755 01ee F90A      		sbc r15,r25
 1756 01f0 0A0B      		sbc r16,r26
 1757 01f2 1B0B      		sbc r17,r27
 1758 01f4 D801      		movw r26,r16
 1759 01f6 C701      		movw r24,r14
 1760 01f8 17FF      		sbrs r17,7
 1761 01fa 00C0      		rjmp .L73
 1762 01fc B095      		com r27
 1763 01fe A095      		com r26
 1764 0200 9095      		com r25
 1765 0202 8195      		neg r24
 1766 0204 9F4F      		sbci r25,lo8(-1)
 1767 0206 AF4F      		sbci r26,lo8(-1)
 1768 0208 BF4F      		sbci r27,lo8(-1)
 1769               	.L73:
 1770 020a FB01      		movw r30,r22
 1771 020c 878B      		std Z+23,r24
 1772 020e 908F      		std Z+24,r25
 1773 0210 A18F      		std Z+25,r26
 1774 0212 B28F      		std Z+26,r27
 1775               	.LSM139:
 1776 0214 D401      		movw r26,r8
 1777 0216 AA0F      		lsl r26
 1778 0218 BB1F      		rol r27
 1779 021a AA0F      		lsl r26
 1780 021c BB1F      		rol r27
 1781 021e FD01      		movw r30,r26
 1782 0220 E050      		subi r30,lo8(-(startpoint_steps))
 1783 0222 F040      		sbci r31,hi8(-(startpoint_steps))
 1784 0224 2083      		st Z,r18
 1785 0226 3183      		std Z+1,r19
 1786 0228 4283      		std Z+2,r20
 1787 022a 5383      		std Z+3,r21
 1788               	.LSM140:
 1789 022c 60E0      		ldi r22,lo8(0)
 1790 022e 70E0      		ldi r23,hi8(0)
 1791 0230 F101      		movw r30,r2
 1792 0232 EA0F      		add r30,r26
 1793 0234 FB1F      		adc r31,r27
 1794 0236 A050      		subi r26,lo8(-(startpoint))
 1795 0238 B040      		sbci r27,hi8(-(startpoint))
 1796 023a 2081      		ld r18,Z
 1797 023c 3181      		ldd r19,Z+1
 1798 023e 4281      		ldd r20,Z+2
 1799 0240 5381      		ldd r21,Z+3
 1800 0242 8D91      		ld r24,X+
 1801 0244 9D91      		ld r25,X+
 1802 0246 0D90      		ld __tmp_reg__,X+
 1803 0248 BC91      		ld r27,X
 1804 024a A02D      		mov r26,__tmp_reg__
 1805 024c 2817      		cp r18,r24
 1806 024e 3907      		cpc r19,r25
 1807 0250 4A07      		cpc r20,r26
 1808 0252 5B07      		cpc r21,r27
 1809 0254 04F0      		brlt .L74
 1810 0256 61E0      		ldi r22,lo8(1)
 1811 0258 70E0      		ldi r23,hi8(1)
 1812               	.L74:
 1813               	.LBB103:
 1814               	.LBB104:
 1815               	.LSM141:
 1816 025a 6620      		tst r6
 1817 025c 01F4      		brne .L75
 1818               	.LSM142:
 1819 025e 962F      		mov r25,r22
 1820 0260 9170      		andi r25,lo8(1)
 1821 0262 9295      		swap r25
 1822 0264 907F      		andi r25,lo8(-16)
 1823 0266 D201      		movw r26,r4
 1824 0268 5596      		adiw r26,21
 1825 026a 8C91      		ld r24,X
 1826 026c 5597      		sbiw r26,21
 1827 026e 8F7E      		andi r24,lo8(-17)
 1828 0270 00C0      		rjmp .L108
 1829               	.L75:
 1830               	.LSM143:
 1831 0272 B1E0      		ldi r27,lo8(1)
 1832 0274 6B16      		cp r6,r27
 1833 0276 01F4      		brne .L77
 1834               	.LSM144:
 1835 0278 962F      		mov r25,r22
 1836 027a 9170      		andi r25,lo8(1)
 1837 027c 9295      		swap r25
 1838 027e 990F      		lsl r25
 1839 0280 907E      		andi r25,lo8(-32)
 1840 0282 F201      		movw r30,r4
 1841 0284 8589      		ldd r24,Z+21
 1842 0286 8F7D      		andi r24,lo8(-33)
 1843 0288 00C0      		rjmp .L109
 1844               	.L77:
 1845               	.LSM145:
 1846 028a F2E0      		ldi r31,lo8(2)
 1847 028c 6F16      		cp r6,r31
 1848 028e 01F4      		brne .L78
 1849               	.LSM146:
 1850 0290 962F      		mov r25,r22
 1851 0292 9170      		andi r25,lo8(1)
 1852 0294 9295      		swap r25
 1853 0296 990F      		lsl r25
 1854 0298 990F      		lsl r25
 1855 029a 907C      		andi r25,lo8(-64)
 1856 029c D201      		movw r26,r4
 1857 029e 5596      		adiw r26,21
 1858 02a0 8C91      		ld r24,X
 1859 02a2 5597      		sbiw r26,21
 1860 02a4 8F7B      		andi r24,lo8(-65)
 1861               	.L108:
 1862 02a6 892B      		or r24,r25
 1863 02a8 5596      		adiw r26,21
 1864 02aa 8C93      		st X,r24
 1865 02ac 00C0      		rjmp .L76
 1866               	.L78:
 1867               	.LSM147:
 1868 02ae B3E0      		ldi r27,lo8(3)
 1869 02b0 6B16      		cp r6,r27
 1870 02b2 01F4      		brne .L76
 1871               	.LSM148:
 1872 02b4 962F      		mov r25,r22
 1873 02b6 9795      		ror r25
 1874 02b8 9927      		clr r25
 1875 02ba 9795      		ror r25
 1876 02bc F201      		movw r30,r4
 1877 02be 8589      		ldd r24,Z+21
 1878 02c0 8F77      		andi r24,lo8(127)
 1879               	.L109:
 1880 02c2 892B      		or r24,r25
 1881 02c4 858B      		std Z+21,r24
 1882               	.L76:
 1883               	.LBE104:
 1884               	.LBE103:
 1885               	.LSM149:
 1886 02c6 F401      		movw r30,r8
 1887 02c8 EE0F      		lsl r30
 1888 02ca FF1F      		rol r31
 1889 02cc EE0F      		lsl r30
 1890 02ce FF1F      		rol r31
 1891 02d0 B201      		movw r22,r4
 1892 02d2 6E0F      		add r22,r30
 1893 02d4 7F1F      		adc r23,r31
 1894 02d6 695A      		subi r22,lo8(-(87))
 1895 02d8 7F4F      		sbci r23,hi8(-(87))
 1896 02da D101      		movw r26,r2
 1897 02dc AE0F      		add r26,r30
 1898 02de BF1F      		adc r27,r31
 1899 02e0 E050      		subi r30,lo8(-(startpoint))
 1900 02e2 F040      		sbci r31,hi8(-(startpoint))
 1901 02e4 8D91      		ld r24,X+
 1902 02e6 9D91      		ld r25,X+
 1903 02e8 0D90      		ld __tmp_reg__,X+
 1904 02ea BC91      		ld r27,X
 1905 02ec A02D      		mov r26,__tmp_reg__
 1906 02ee 2081      		ld r18,Z
 1907 02f0 3181      		ldd r19,Z+1
 1908 02f2 4281      		ldd r20,Z+2
 1909 02f4 5381      		ldd r21,Z+3
 1910 02f6 821B      		sub r24,r18
 1911 02f8 930B      		sbc r25,r19
 1912 02fa A40B      		sbc r26,r20
 1913 02fc B50B      		sbc r27,r21
 1914 02fe FB01      		movw r30,r22
 1915 0300 8083      		st Z,r24
 1916 0302 9183      		std Z+1,r25
 1917 0304 A283      		std Z+2,r26
 1918 0306 B383      		std Z+3,r27
 1919               	.LSM150:
 1920 0308 6394      		inc r6
 1921               	.LVL68:
 1922               	.L71:
 1923 030a 862C      		mov r8,r6
 1924 030c 9924      		clr r9
 1925 030e D101      		movw r26,r2
 1926 0310 5496      		adiw r26,20
 1927 0312 8C91      		ld r24,X
 1928 0314 282F      		mov r18,r24
 1929 0316 2170      		andi r18,lo8(1)
 1930 0318 80FD      		sbrc r24,0
 1931 031a 00C0      		rjmp .L79
 1932 031c 84E0      		ldi r24,lo8(4)
 1933 031e 90E0      		ldi r25,hi8(4)
 1934 0320 00C0      		rjmp .L80
 1935               	.L79:
 1936 0322 83E0      		ldi r24,lo8(3)
 1937 0324 90E0      		ldi r25,hi8(3)
 1938               	.L80:
 1939 0326 8816      		cp r8,r24
 1940 0328 9906      		cpc r9,r25
 1941 032a 04F4      		brge .+2
 1942 032c 00C0      		rjmp .L81
 1943               	.LSM151:
 1944 032e 2223      		tst r18
 1945 0330 01F4      		brne .+2
 1946 0332 00C0      		rjmp .L82
 1947               	.LSM152:
 1948 0334 F101      		movw r30,r2
 1949 0336 A484      		ldd r10,Z+12
 1950 0338 B584      		ldd r11,Z+13
 1951 033a C684      		ldd r12,Z+14
 1952 033c D784      		ldd r13,Z+15
 1953 033e AD86      		std Y+13,r10
 1954 0340 BE86      		std Y+14,r11
 1955 0342 CF86      		std Y+15,r12
 1956 0344 D88A      		std Y+16,r13
 1957 0346 D7FE      		sbrs r13,7
 1958 0348 00C0      		rjmp .L83
 1959 034a 8827      		clr r24
 1960 034c 9927      		clr r25
 1961 034e DC01      		movw r26,r24
 1962 0350 8A19      		sub r24,r10
 1963 0352 9B09      		sbc r25,r11
 1964 0354 AC09      		sbc r26,r12
 1965 0356 BD09      		sbc r27,r13
 1966 0358 8D87      		std Y+13,r24
 1967 035a 9E87      		std Y+14,r25
 1968 035c AF87      		std Y+15,r26
 1969 035e B88B      		std Y+16,r27
 1970               	.L83:
 1971               	.LBB105:
 1972               	.LBB106:
 1973               	.LBB107:
 1974               	.LSM153:
 1975 0360 E0E0      		ldi r30,lo8(axis_qn_P+12)
 1976 0362 F0E0      		ldi r31,hi8(axis_qn_P+12)
 1977               	.LVL69:
 1978               	/* #APP */
 1979               	 ;  33 "dda_maths.h" 1
 1980 0364 2591      		lpm r18, Z+
 1981 0366 3591      		lpm r19, Z+
 1982 0368 4591      		lpm r20, Z+
 1983 036a 5491      		lpm r21, Z
 1984               		
 1985               	 ;  0 "" 2
 1986               	.LVL70:
 1987               	/* #NOAPP */
 1988               	.LBE107:
 1989               	.LBB108:
 1990               	.LSM154:
 1991 036c E0E0      		ldi r30,lo8(axis_qr_P+12)
 1992 036e F0E0      		ldi r31,hi8(axis_qr_P+12)
 1993               	.LVL71:
 1994               	/* #APP */
 1995               	 ;  34 "dda_maths.h" 1
 1996 0370 E590      		lpm r14, Z+
 1997 0372 F590      		lpm r15, Z+
 1998 0374 0591      		lpm r16, Z+
 1999 0376 1491      		lpm r17, Z
 2000               		
 2001               	 ;  0 "" 2
 2002               	.LVL72:
 2003               	/* #NOAPP */
 2004               	.LBE108:
 2005               	.LBE106:
 2006               	.LSM155:
 2007 0378 C601      		movw r24,r12
 2008 037a B501      		movw r22,r10
 2009 037c E0E4      		ldi r30,lo8(1000000)
 2010 037e AE2E      		mov r10,r30
 2011 0380 E2E4      		ldi r30,hi8(1000000)
 2012 0382 BE2E      		mov r11,r30
 2013 0384 EFE0      		ldi r30,hlo8(1000000)
 2014 0386 CE2E      		mov r12,r30
 2015 0388 D12C      		mov r13,__zero_reg__
 2016               	.LVL73:
 2017 038a 0E94 0000 		call muldivQR
 2018               	.LVL74:
 2019 038e 9B01      		movw r18,r22
 2020 0390 AC01      		movw r20,r24
 2021               	.LBE105:
 2022               	.LSM156:
 2023 0392 D201      		movw r26,r4
 2024 0394 9396      		adiw r26,35
 2025 0396 6D93      		st X+,r22
 2026 0398 7D93      		st X+,r23
 2027 039a 8D93      		st X+,r24
 2028 039c 9C93      		st X,r25
 2029 039e 9697      		sbiw r26,35+3
 2030 03a0 97FF      		sbrs r25,7
 2031 03a2 00C0      		rjmp .L84
 2032 03a4 8827      		clr r24
 2033 03a6 9927      		clr r25
 2034 03a8 DC01      		movw r26,r24
 2035 03aa 821B      		sub r24,r18
 2036 03ac 930B      		sbc r25,r19
 2037 03ae A40B      		sbc r26,r20
 2038 03b0 B50B      		sbc r27,r21
 2039 03b2 F201      		movw r30,r4
 2040 03b4 83A3      		std Z+35,r24
 2041 03b6 94A3      		std Z+36,r25
 2042 03b8 A5A3      		std Z+37,r26
 2043 03ba B6A3      		std Z+38,r27
 2044               	.L84:
 2045               	.LSM157:
 2046 03bc 23E6      		ldi r18,lo8(99)
 2047 03be E22E      		mov r14,r18
 2048 03c0 F12C      		mov r15,__zero_reg__
 2049               	.LVL75:
 2050 03c2 4E0C      		add r4,r14
 2051 03c4 5F1C      		adc r5,r15
 2052 03c6 F101      		movw r30,r2
 2053 03c8 8485      		ldd r24,Z+12
 2054 03ca 9585      		ldd r25,Z+13
 2055 03cc A685      		ldd r26,Z+14
 2056 03ce B785      		ldd r27,Z+15
 2057 03d0 F201      		movw r30,r4
 2058 03d2 8083      		st Z,r24
 2059 03d4 9183      		std Z+1,r25
 2060 03d6 A283      		std Z+2,r26
 2061 03d8 B383      		std Z+3,r27
 2062 03da 9DE9      		ldi r25,lo8(-99)
 2063 03dc E92E      		mov r14,r25
 2064 03de 9FEF      		ldi r25,hi8(-99)
 2065 03e0 F92E      		mov r15,r25
 2066 03e2 4E0C      		add r4,r14
 2067 03e4 5F1C      		adc r5,r15
 2068               	.LSM158:
 2069 03e6 20E0      		ldi r18,lo8(0)
 2070 03e8 F101      		movw r30,r2
 2071 03ea 8485      		ldd r24,Z+12
 2072 03ec 9585      		ldd r25,Z+13
 2073 03ee A685      		ldd r26,Z+14
 2074 03f0 B785      		ldd r27,Z+15
 2075 03f2 B7FF      		sbrs r27,7
 2076 03f4 21E0      		ldi r18,lo8(1)
 2077               	.L85:
 2078 03f6 2795      		ror r18
 2079 03f8 2227      		clr r18
 2080 03fa 2795      		ror r18
 2081 03fc D201      		movw r26,r4
 2082 03fe 5596      		adiw r26,21
 2083 0400 8C91      		ld r24,X
 2084 0402 5597      		sbiw r26,21
 2085 0404 8F77      		andi r24,lo8(127)
 2086 0406 822B      		or r24,r18
 2087 0408 5596      		adiw r26,21
 2088 040a 8C93      		st X,r24
 2089               	.LVL76:
 2090               	.L82:
 2091               	.LSM159:
 2092 040c 8091 0000 		lds r24,debug_flags
 2093 0410 85FF      		sbrs r24,5
 2094 0412 00C0      		rjmp .L86
 2095               	.LSM160:
 2096 0414 EDB7      		in r30,__SP_L__
 2097 0416 FEB7      		in r31,__SP_H__
 2098 0418 7297      		sbiw r30,18
 2099 041a 0FB6      		in __tmp_reg__,__SREG__
 2100 041c F894      		cli
 2101 041e FEBF      		out __SP_H__,r31
 2102 0420 0FBE      		out __SREG__,__tmp_reg__
 2103 0422 EDBF      		out __SP_L__,r30
 2104 0424 3196      		adiw r30,1
 2105 0426 80E0      		ldi r24,lo8(__c.1998)
 2106 0428 90E0      		ldi r25,hi8(__c.1998)
 2107 042a ADB7      		in r26,__SP_L__
 2108 042c BEB7      		in r27,__SP_H__
 2109 042e 1296      		adiw r26,1+1
 2110 0430 9C93      		st X,r25
 2111 0432 8E93      		st -X,r24
 2112 0434 1197      		sbiw r26,1
 2113 0436 D101      		movw r26,r2
 2114 0438 ED90      		ld r14,X+
 2115 043a FD90      		ld r15,X+
 2116 043c 0D91      		ld r16,X+
 2117 043e 1C91      		ld r17,X
 2118 0440 1397      		sbiw r26,3
 2119 0442 2091 0000 		lds r18,startpoint
 2120 0446 3091 0000 		lds r19,(startpoint)+1
 2121 044a 4091 0000 		lds r20,(startpoint)+2
 2122 044e 5091 0000 		lds r21,(startpoint)+3
 2123 0452 E21A      		sub r14,r18
 2124 0454 F30A      		sbc r15,r19
 2125 0456 040B      		sbc r16,r20
 2126 0458 150B      		sbc r17,r21
 2127 045a E282      		std Z+2,r14
 2128 045c F382      		std Z+3,r15
 2129 045e 0483      		std Z+4,r16
 2130 0460 1583      		std Z+5,r17
 2131 0462 1496      		adiw r26,4
 2132 0464 ED90      		ld r14,X+
 2133 0466 FD90      		ld r15,X+
 2134 0468 0D91      		ld r16,X+
 2135 046a 1C91      		ld r17,X
 2136 046c 1797      		sbiw r26,4+3
 2137 046e 2091 0000 		lds r18,startpoint+4
 2138 0472 3091 0000 		lds r19,(startpoint+4)+1
 2139 0476 4091 0000 		lds r20,(startpoint+4)+2
 2140 047a 5091 0000 		lds r21,(startpoint+4)+3
 2141 047e E21A      		sub r14,r18
 2142 0480 F30A      		sbc r15,r19
 2143 0482 040B      		sbc r16,r20
 2144 0484 150B      		sbc r17,r21
 2145 0486 E682      		std Z+6,r14
 2146 0488 F782      		std Z+7,r15
 2147 048a 0087      		std Z+8,r16
 2148 048c 1187      		std Z+9,r17
 2149 048e 1896      		adiw r26,8
 2150 0490 ED90      		ld r14,X+
 2151 0492 FD90      		ld r15,X+
 2152 0494 0D91      		ld r16,X+
 2153 0496 1C91      		ld r17,X
 2154 0498 1B97      		sbiw r26,8+3
 2155 049a 2091 0000 		lds r18,startpoint+8
 2156 049e 3091 0000 		lds r19,(startpoint+8)+1
 2157 04a2 4091 0000 		lds r20,(startpoint+8)+2
 2158 04a6 5091 0000 		lds r21,(startpoint+8)+3
 2159 04aa E21A      		sub r14,r18
 2160 04ac F30A      		sbc r15,r19
 2161 04ae 040B      		sbc r16,r20
 2162 04b0 150B      		sbc r17,r21
 2163 04b2 E286      		std Z+10,r14
 2164 04b4 F386      		std Z+11,r15
 2165 04b6 0487      		std Z+12,r16
 2166 04b8 1587      		std Z+13,r17
 2167 04ba 1C96      		adiw r26,12
 2168 04bc ED90      		ld r14,X+
 2169 04be FD90      		ld r15,X+
 2170 04c0 0D91      		ld r16,X+
 2171 04c2 1C91      		ld r17,X
 2172 04c4 1F97      		sbiw r26,12+3
 2173 04c6 2091 0000 		lds r18,startpoint+12
 2174 04ca 3091 0000 		lds r19,(startpoint+12)+1
 2175 04ce 4091 0000 		lds r20,(startpoint+12)+2
 2176 04d2 5091 0000 		lds r21,(startpoint+12)+3
 2177 04d6 E21A      		sub r14,r18
 2178 04d8 F30A      		sbc r15,r19
 2179 04da 040B      		sbc r16,r20
 2180 04dc 150B      		sbc r17,r21
 2181 04de E686      		std Z+14,r14
 2182 04e0 F786      		std Z+15,r15
 2183 04e2 008B      		std Z+16,r16
 2184 04e4 118B      		std Z+17,r17
 2185 04e6 0E94 0000 		call sersendf_P
 2186 04ea EDB7      		in r30,__SP_L__
 2187 04ec FEB7      		in r31,__SP_H__
 2188 04ee 7296      		adiw r30,18
 2189 04f0 0FB6      		in __tmp_reg__,__SREG__
 2190 04f2 F894      		cli
 2191 04f4 FEBF      		out __SP_H__,r31
 2192 04f6 0FBE      		out __SREG__,__tmp_reg__
 2193 04f8 EDBF      		out __SP_L__,r30
 2194               	.LVL77:
 2195               	.L86:
 2196 04fa 10E0      		ldi r17,lo8(0)
 2197               	.LVL78:
 2198 04fc 60E0      		ldi r22,lo8(0)
 2199 04fe 70E0      		ldi r23,hi8(0)
 2200               	.LVL79:
 2201               	.L89:
 2202               	.LSM161:
 2203 0500 1123      		tst r17
 2204 0502 01F0      		breq .L87
 2205 0504 E12F      		mov r30,r17
 2206 0506 F0E0      		ldi r31,lo8(0)
 2207 0508 EE0F      		lsl r30
 2208 050a FF1F      		rol r31
 2209 050c EE0F      		lsl r30
 2210 050e FF1F      		rol r31
 2211               	.LVL80:
 2212 0510 E40D      		add r30,r4
 2213 0512 F51D      		adc r31,r5
 2214               	.LVL81:
 2215 0514 2789      		ldd r18,Z+23
 2216 0516 308D      		ldd r19,Z+24
 2217 0518 418D      		ldd r20,Z+25
 2218 051a 528D      		ldd r21,Z+26
 2219 051c F201      		movw r30,r4
 2220               	.LVL82:
 2221 051e 87A1      		ldd r24,Z+39
 2222 0520 90A5      		ldd r25,Z+40
 2223 0522 A1A5      		ldd r26,Z+41
 2224 0524 B2A5      		ldd r27,Z+42
 2225 0526 8217      		cp r24,r18
 2226 0528 9307      		cpc r25,r19
 2227 052a A407      		cpc r26,r20
 2228 052c B507      		cpc r27,r21
 2229 052e 00F4      		brsh .L88
 2230               	.LVL83:
 2231               	.L87:
 2232               	.LSM162:
 2233 0530 B8E6      		ldi r27,lo8(104)
 2234 0532 EB2E      		mov r14,r27
 2235 0534 F12C      		mov r15,__zero_reg__
 2236 0536 4E0C      		add r4,r14
 2237 0538 5F1C      		adc r5,r15
 2238 053a D201      		movw r26,r4
 2239 053c 1C93      		st X,r17
 2240 053e E8E9      		ldi r30,lo8(-104)
 2241 0540 FFEF      		ldi r31,hi8(-104)
 2242 0542 4E0E      		add r4,r30
 2243 0544 5F1E      		adc r5,r31
 2244               	.LSM163:
 2245 0546 212F      		mov r18,r17
 2246 0548 30E0      		ldi r19,lo8(0)
 2247 054a 220F      		lsl r18
 2248 054c 331F      		rol r19
 2249 054e 220F      		lsl r18
 2250 0550 331F      		rol r19
 2251 0552 F201      		movw r30,r4
 2252 0554 E20F      		add r30,r18
 2253 0556 F31F      		adc r31,r19
 2254 0558 8789      		ldd r24,Z+23
 2255 055a 908D      		ldd r25,Z+24
 2256 055c A18D      		ldd r26,Z+25
 2257 055e B28D      		ldd r27,Z+26
 2258               	.LVL84:
 2259 0560 F201      		movw r30,r4
 2260 0562 87A3      		std Z+39,r24
 2261 0564 90A7      		std Z+40,r25
 2262 0566 A1A7      		std Z+41,r26
 2263 0568 B2A7      		std Z+42,r27
 2264               	.LSM164:
 2265 056a FE01      		movw r30,r28
 2266 056c E20F      		add r30,r18
 2267 056e F31F      		adc r31,r19
 2268 0570 8181      		ldd r24,Z+1
 2269 0572 9281      		ldd r25,Z+2
 2270 0574 A381      		ldd r26,Z+3
 2271 0576 B481      		ldd r27,Z+4
 2272 0578 F201      		movw r30,r4
 2273 057a 83A7      		std Z+43,r24
 2274 057c 94A7      		std Z+44,r25
 2275 057e A5A7      		std Z+45,r26
 2276 0580 B6A7      		std Z+46,r27
 2277               	.LBB109:
 2278               	.LSM165:
 2279 0582 F901      		movw r30,r18
 2280               	.LVL85:
 2281 0584 E050      		subi r30,lo8(-(steps_per_m_P))
 2282 0586 F040      		sbci r31,hi8(-(steps_per_m_P))
 2283               	/* #APP */
 2284               	 ;  236 "dda.c" 1
 2285 0588 8591      		lpm r24, Z+
 2286 058a 9591      		lpm r25, Z+
 2287 058c A591      		lpm r26, Z+
 2288 058e B491      		lpm r27, Z
 2289               		
 2290               	 ;  0 "" 2
 2291               	.LVL86:
 2292               	/* #NOAPP */
 2293               	.LBE109:
 2294 0590 F201      		movw r30,r4
 2295               	.LVL87:
 2296 0592 87A7      		std Z+47,r24
 2297 0594 90AB      		std Z+48,r25
 2298 0596 A1AB      		std Z+49,r26
 2299 0598 B2AB      		std Z+50,r27
 2300               	.L88:
 2301               	.LSM166:
 2302 059a 1F5F      		subi r17,lo8(-(1))
 2303 059c 6F5F      		subi r22,lo8(-(1))
 2304 059e 7F4F      		sbci r23,hi8(-(1))
 2305 05a0 6430      		cpi r22,4
 2306 05a2 7105      		cpc r23,__zero_reg__
 2307 05a4 01F0      		breq .+2
 2308 05a6 00C0      		rjmp .L89
 2309               	.LSM167:
 2310 05a8 8091 0000 		lds r24,debug_flags
 2311               	.LVL88:
 2312 05ac 85FF      		sbrs r24,5
 2313 05ae 00C0      		rjmp .L90
 2314               	.LSM168:
 2315 05b0 00D0      		rcall .
 2316 05b2 00D0      		rcall .
 2317 05b4 80E0      		ldi r24,lo8(__c.2006)
 2318 05b6 90E0      		ldi r25,hi8(__c.2006)
 2319 05b8 ADB7      		in r26,__SP_L__
 2320 05ba BEB7      		in r27,__SP_H__
 2321 05bc 1296      		adiw r26,1+1
 2322 05be 9C93      		st X,r25
 2323 05c0 8E93      		st -X,r24
 2324 05c2 1197      		sbiw r26,1
 2325 05c4 F201      		movw r30,r4
 2326 05c6 87A1      		ldd r24,Z+39
 2327 05c8 90A5      		ldd r25,Z+40
 2328 05ca A1A5      		ldd r26,Z+41
 2329 05cc B2A5      		ldd r27,Z+42
 2330 05ce EDB7      		in r30,__SP_L__
 2331 05d0 FEB7      		in r31,__SP_H__
 2332 05d2 8383      		std Z+3,r24
 2333 05d4 9483      		std Z+4,r25
 2334 05d6 A583      		std Z+5,r26
 2335 05d8 B683      		std Z+6,r27
 2336 05da 0E94 0000 		call sersendf_P
 2337               	.LVL89:
 2338 05de 0DB7      		in r16,__SP_L__
 2339 05e0 1EB7      		in r17,__SP_H__
 2340 05e2 0A5F      		subi r16,lo8(-(6))
 2341 05e4 1F4F      		sbci r17,hi8(-(6))
 2342 05e6 0FB6      		in __tmp_reg__,__SREG__
 2343 05e8 F894      		cli
 2344 05ea 1EBF      		out __SP_H__,r17
 2345 05ec 0FBE      		out __SREG__,__tmp_reg__
 2346 05ee 0DBF      		out __SP_L__,r16
 2347               	.LVL90:
 2348               	.L90:
 2349               	.LSM169:
 2350 05f0 F201      		movw r30,r4
 2351 05f2 87A1      		ldd r24,Z+39
 2352 05f4 90A5      		ldd r25,Z+40
 2353 05f6 A1A5      		ldd r26,Z+41
 2354 05f8 B2A5      		ldd r27,Z+42
 2355 05fa 0097      		sbiw r24,0
 2356 05fc A105      		cpc r26,__zero_reg__
 2357 05fe B105      		cpc r27,__zero_reg__
 2358 0600 01F4      		brne .L91
 2359               	.LSM170:
 2360 0602 8589      		ldd r24,Z+21
 2361 0604 8160      		ori r24,lo8(1)
 2362 0606 858B      		std Z+21,r24
 2363 0608 00C0      		rjmp .L92
 2364               	.L91:
 2365               	.LBB110:
 2366               	.LSM171:
 2367 060a 0E94 0000 		call power_on
 2368               	.LVL91:
 2369               	.LSM172:
 2370 060e 5F98      		cbi 43-32,7
 2371               	.LSM173:
 2372 0610 8A98      		cbi 49-32,2
 2373               	.LSM174:
 2374 0612 1298      		cbi 34-32,2
 2375               	.LSM175:
 2376 0614 E984      		ldd r14,Y+9
 2377 0616 FA84      		ldd r15,Y+10
 2378 0618 0B85      		ldd r16,Y+11
 2379 061a 1C85      		ldd r17,Y+12
 2380 061c E98E      		std Y+25,r14
 2381 061e FA8E      		std Y+26,r15
 2382 0620 0B8F      		std Y+27,r16
 2383 0622 1C8F      		std Y+28,r17
 2384               	.LVL92:
 2385 0624 E980      		ldd r14,Y+1
 2386 0626 FA80      		ldd r15,Y+2
 2387 0628 0B81      		ldd r16,Y+3
 2388 062a 1C81      		ldd r17,Y+4
 2389 062c 898D      		ldd r24,Y+25
 2390 062e 9A8D      		ldd r25,Y+26
 2391 0630 AB8D      		ldd r26,Y+27
 2392 0632 BC8D      		ldd r27,Y+28
 2393 0634 0097      		sbiw r24,0
 2394 0636 A105      		cpc r26,__zero_reg__
 2395 0638 B105      		cpc r27,__zero_reg__
 2396 063a 01F4      		brne .L93
 2397               	.LSM176:
 2398 063c 2D81      		ldd r18,Y+5
 2399 063e 3E81      		ldd r19,Y+6
 2400 0640 4F81      		ldd r20,Y+7
 2401 0642 5885      		ldd r21,Y+8
 2402 0644 C801      		movw r24,r16
 2403 0646 B701      		movw r22,r14
 2404 0648 0E94 0000 		call approx_distance
 2405 064c 00C0      		rjmp .L110
 2406               	.L93:
 2407               	.LSM177:
 2408 064e E114      		cp r14,__zero_reg__
 2409 0650 F104      		cpc r15,__zero_reg__
 2410 0652 0105      		cpc r16,__zero_reg__
 2411 0654 1105      		cpc r17,__zero_reg__
 2412 0656 01F4      		brne .L95
 2413 0658 8D81      		ldd r24,Y+5
 2414 065a 9E81      		ldd r25,Y+6
 2415 065c AF81      		ldd r26,Y+7
 2416 065e B885      		ldd r27,Y+8
 2417 0660 0097      		sbiw r24,0
 2418 0662 A105      		cpc r26,__zero_reg__
 2419 0664 B105      		cpc r27,__zero_reg__
 2420 0666 01F0      		breq .L94
 2421               	.L95:
 2422               	.LSM178:
 2423 0668 2D81      		ldd r18,Y+5
 2424 066a 3E81      		ldd r19,Y+6
 2425 066c 4F81      		ldd r20,Y+7
 2426 066e 5885      		ldd r21,Y+8
 2427 0670 C801      		movw r24,r16
 2428 0672 B701      		movw r22,r14
 2429 0674 E98C      		ldd r14,Y+25
 2430 0676 FA8C      		ldd r15,Y+26
 2431 0678 0B8D      		ldd r16,Y+27
 2432 067a 1C8D      		ldd r17,Y+28
 2433 067c 0E94 0000 		call approx_distance_3
 2434               	.L110:
 2435 0680 698F      		std Y+25,r22
 2436 0682 7A8F      		std Y+26,r23
 2437 0684 8B8F      		std Y+27,r24
 2438 0686 9C8F      		std Y+28,r25
 2439               	.LVL93:
 2440               	.L94:
 2441               	.LSM179:
 2442 0688 098D      		ldd r16,Y+25
 2443 068a 1A8D      		ldd r17,Y+26
 2444 068c 2B8D      		ldd r18,Y+27
 2445 068e 3C8D      		ldd r19,Y+28
 2446 0690 0230      		cpi r16,lo8(2)
 2447 0692 1105      		cpc r17,__zero_reg__
 2448 0694 2105      		cpc r18,__zero_reg__
 2449 0696 3105      		cpc r19,__zero_reg__
 2450 0698 00F4      		brsh .L96
 2451               	.LSM180:
 2452 069a 8D85      		ldd r24,Y+13
 2453 069c 9E85      		ldd r25,Y+14
 2454 069e AF85      		ldd r26,Y+15
 2455 06a0 B889      		ldd r27,Y+16
 2456 06a2 898F      		std Y+25,r24
 2457 06a4 9A8F      		std Y+26,r25
 2458 06a6 AB8F      		std Y+27,r26
 2459 06a8 BC8F      		std Y+28,r27
 2460               	.LVL94:
 2461               	.L96:
 2462               	.LSM181:
 2463 06aa 8091 0000 		lds r24,debug_flags
 2464 06ae 85FF      		sbrs r24,5
 2465 06b0 00C0      		rjmp .L97
 2466               	.LSM182:
 2467 06b2 00D0      		rcall .
 2468 06b4 00D0      		rcall .
 2469 06b6 80E0      		ldi r24,lo8(__c.2008)
 2470 06b8 90E0      		ldi r25,hi8(__c.2008)
 2471 06ba ADB7      		in r26,__SP_L__
 2472 06bc BEB7      		in r27,__SP_H__
 2473 06be 1296      		adiw r26,1+1
 2474 06c0 9C93      		st X,r25
 2475 06c2 8E93      		st -X,r24
 2476 06c4 1197      		sbiw r26,1
 2477 06c6 E98C      		ldd r14,Y+25
 2478 06c8 FA8C      		ldd r15,Y+26
 2479 06ca 0B8D      		ldd r16,Y+27
 2480 06cc 1C8D      		ldd r17,Y+28
 2481 06ce 1396      		adiw r26,3
 2482 06d0 ED92      		st X+,r14
 2483 06d2 FD92      		st X+,r15
 2484 06d4 0D93      		st X+,r16
 2485 06d6 1C93      		st X,r17
 2486 06d8 1697      		sbiw r26,3+3
 2487 06da 0E94 0000 		call sersendf_P
 2488 06de EDB7      		in r30,__SP_L__
 2489 06e0 FEB7      		in r31,__SP_H__
 2490 06e2 3696      		adiw r30,6
 2491 06e4 0FB6      		in __tmp_reg__,__SREG__
 2492 06e6 F894      		cli
 2493 06e8 FEBF      		out __SP_H__,r31
 2494 06ea 0FBE      		out __SREG__,__tmp_reg__
 2495 06ec EDBF      		out __SP_L__,r30
 2496               	.L97:
 2497               	.LSM183:
 2498 06ee D201      		movw r26,r4
 2499 06f0 9796      		adiw r26,39
 2500 06f2 ED90      		ld r14,X+
 2501 06f4 FD90      		ld r15,X+
 2502 06f6 0D91      		ld r16,X+
 2503 06f8 1C91      		ld r17,X
 2504 06fa 9A97      		sbiw r26,39+3
 2505 06fc E98A      		std Y+17,r14
 2506 06fe FA8A      		std Y+18,r15
 2507 0700 0B8B      		std Y+19,r16
 2508 0702 1C8B      		std Y+20,r17
 2509 0704 698D      		ldd r22,Y+25
 2510 0706 7A8D      		ldd r23,Y+26
 2511 0708 8B8D      		ldd r24,Y+27
 2512 070a 9C8D      		ldd r25,Y+28
 2513 070c 20E6      		ldi r18,lo8(2400)
 2514 070e 39E0      		ldi r19,hi8(2400)
 2515 0710 40E0      		ldi r20,hlo8(2400)
 2516 0712 50E0      		ldi r21,hhi8(2400)
 2517 0714 0E94 0000 		call __mulsi3
 2518 0718 A801      		movw r20,r16
 2519 071a 9701      		movw r18,r14
 2520 071c 0E94 0000 		call __udivmodsi4
 2521 0720 CA01      		movw r24,r20
 2522 0722 B901      		movw r22,r18
 2523 0724 20E9      		ldi r18,lo8(400)
 2524 0726 31E0      		ldi r19,hi8(400)
 2525 0728 40E0      		ldi r20,hlo8(400)
 2526 072a 50E0      		ldi r21,hhi8(400)
 2527 072c 0E94 0000 		call __mulsi3
 2528 0730 6D8B      		std Y+21,r22
 2529 0732 7E8B      		std Y+22,r23
 2530 0734 8F8B      		std Y+23,r24
 2531 0736 988F      		std Y+24,r25
 2532               	.LVL95:
 2533 0738 AA24      		clr r10
 2534 073a BB24      		clr r11
 2535 073c 6501      		movw r12,r10
 2536               	.LVL96:
 2537 073e 6624      		clr r6
 2538               	.LVL97:
 2539 0740 8824      		clr r8
 2540 0742 9924      		clr r9
 2541               	.LVL98:
 2542               	.L99:
 2543               	.LBB111:
 2544               	.LSM184:
 2545 0744 A62D      		mov r26,r6
 2546 0746 B0E0      		ldi r27,lo8(0)
 2547 0748 AA0F      		lsl r26
 2548 074a BB1F      		rol r27
 2549 074c AA0F      		lsl r26
 2550 074e BB1F      		rol r27
 2551 0750 CD01      		movw r24,r26
 2552 0752 8050      		subi r24,lo8(-(maximum_feedrate_P))
 2553 0754 9040      		sbci r25,hi8(-(maximum_feedrate_P))
 2554 0756 FC01      		movw r30,r24
 2555               	/* #APP */
 2556               	 ;  310 "dda.c" 1
 2557 0758 E590      		lpm r14, Z+
 2558 075a F590      		lpm r15, Z+
 2559 075c 0591      		lpm r16, Z+
 2560 075e 1491      		lpm r17, Z
 2561               		
 2562               	 ;  0 "" 2
 2563               	/* #NOAPP */
 2564 0760 AC0F      		add r26,r28
 2565 0762 BD1F      		adc r27,r29
 2566 0764 1196      		adiw r26,1
 2567 0766 6D91      		ld r22,X+
 2568 0768 7D91      		ld r23,X+
 2569 076a 8D91      		ld r24,X+
 2570 076c 9C91      		ld r25,X
 2571 076e 1497      		sbiw r26,1+3
 2572 0770 20E6      		ldi r18,lo8(2400)
 2573 0772 39E0      		ldi r19,hi8(2400)
 2574 0774 40E0      		ldi r20,hlo8(2400)
 2575 0776 50E0      		ldi r21,hhi8(2400)
 2576 0778 0E94 0000 		call __mulsi3
 2577 077c 2989      		ldd r18,Y+17
 2578 077e 3A89      		ldd r19,Y+18
 2579 0780 4B89      		ldd r20,Y+19
 2580 0782 5C89      		ldd r21,Y+20
 2581 0784 0E94 0000 		call __udivmodsi4
 2582 0788 CA01      		movw r24,r20
 2583 078a B901      		movw r22,r18
 2584 078c 20E9      		ldi r18,lo8(400)
 2585 078e 31E0      		ldi r19,hi8(400)
 2586 0790 40E0      		ldi r20,hlo8(400)
 2587 0792 50E0      		ldi r21,hhi8(400)
 2588 0794 0E94 0000 		call __mulsi3
 2589 0798 A801      		movw r20,r16
 2590 079a 9701      		movw r18,r14
 2591 079c 0E94 0000 		call __udivmodsi4
 2592 07a0 A216      		cp r10,r18
 2593 07a2 B306      		cpc r11,r19
 2594 07a4 C406      		cpc r12,r20
 2595 07a6 D506      		cpc r13,r21
 2596 07a8 00F4      		brsh .L98
 2597 07aa 5901      		movw r10,r18
 2598 07ac 6A01      		movw r12,r20
 2599               	.L98:
 2600               	.LBE111:
 2601               	.LSM185:
 2602 07ae 6394      		inc r6
 2603 07b0 0894      		sec
 2604 07b2 811C      		adc r8,__zero_reg__
 2605 07b4 911C      		adc r9,__zero_reg__
 2606 07b6 F4E0      		ldi r31,lo8(4)
 2607 07b8 8F16      		cp r8,r31
 2608 07ba 9104      		cpc r9,__zero_reg__
 2609 07bc 01F0      		breq .+2
 2610 07be 00C0      		rjmp .L99
 2611               	.LSM186:
 2612 07c0 D101      		movw r26,r2
 2613 07c2 5096      		adiw r26,16
 2614 07c4 2D91      		ld r18,X+
 2615 07c6 3D91      		ld r19,X+
 2616 07c8 4D91      		ld r20,X+
 2617 07ca 5C91      		ld r21,X
 2618 07cc 5397      		sbiw r26,16+3
 2619 07ce 6D89      		ldd r22,Y+21
 2620 07d0 7E89      		ldd r23,Y+22
 2621 07d2 8F89      		ldd r24,Y+23
 2622 07d4 988D      		ldd r25,Y+24
 2623 07d6 0E94 0000 		call __udivmodsi4
 2624 07da C901      		movw r24,r18
 2625               	.LVL99:
 2626 07dc DA01      		movw r26,r20
 2627 07de F201      		movw r30,r4
 2628 07e0 ED5B      		subi r30,lo8(-(67))
 2629 07e2 FF4F      		sbci r31,hi8(-(67))
 2630 07e4 8083      		st Z,r24
 2631 07e6 9183      		std Z+1,r25
 2632 07e8 A283      		std Z+2,r26
 2633 07ea B383      		std Z+3,r27
 2634               	.LSM187:
 2635 07ec 8A15      		cp r24,r10
 2636 07ee 9B05      		cpc r25,r11
 2637 07f0 AC05      		cpc r26,r12
 2638 07f2 BD05      		cpc r27,r13
 2639 07f4 00F4      		brsh .L100
 2640               	.LSM188:
 2641 07f6 A082      		st Z,r10
 2642 07f8 B182      		std Z+1,r11
 2643 07fa C282      		std Z+2,r12
 2644 07fc D382      		std Z+3,r13
 2645               	.LSM189:
 2646 07fe 6D89      		ldd r22,Y+21
 2647 0800 7E89      		ldd r23,Y+22
 2648 0802 8F89      		ldd r24,Y+23
 2649 0804 988D      		ldd r25,Y+24
 2650 0806 A601      		movw r20,r12
 2651 0808 9501      		movw r18,r10
 2652 080a 0E94 0000 		call __udivmodsi4
 2653 080e F201      		movw r30,r4
 2654 0810 208B      		std Z+16,r18
 2655 0812 318B      		std Z+17,r19
 2656 0814 428B      		std Z+18,r20
 2657 0816 538B      		std Z+19,r21
 2658               	.L100:
 2659               	.LSM190:
 2660 0818 F201      		movw r30,r4
 2661 081a 8089      		ldd r24,Z+16
 2662 081c 9189      		ldd r25,Z+17
 2663 081e A289      		ldd r26,Z+18
 2664 0820 B389      		ldd r27,Z+19
 2665 0822 8050      		subi r24,lo8(65536)
 2666 0824 9040      		sbci r25,hi8(65536)
 2667 0826 A140      		sbci r26,hlo8(65536)
 2668 0828 B040      		sbci r27,hhi8(65536)
 2669 082a 00F0      		brlo .L101
 2670               	.LSM191:
 2671 082c 8FEF      		ldi r24,lo8(65535)
 2672 082e 9FEF      		ldi r25,hi8(65535)
 2673 0830 A0E0      		ldi r26,hlo8(65535)
 2674 0832 B0E0      		ldi r27,hhi8(65535)
 2675 0834 F201      		movw r30,r4
 2676 0836 808B      		std Z+16,r24
 2677 0838 918B      		std Z+17,r25
 2678 083a A28B      		std Z+18,r26
 2679 083c B38B      		std Z+19,r27
 2680               	.L101:
 2681               	.LSM192:
 2682 083e D201      		movw r26,r4
 2683 0840 5096      		adiw r26,16
 2684 0842 ED90      		ld r14,X+
 2685 0844 FD90      		ld r15,X+
 2686 0846 0D91      		ld r16,X+
 2687 0848 1C91      		ld r17,X
 2688 084a 5397      		sbiw r26,16+3
 2689               	.LVL100:
 2690               	.LBB112:
 2691               	.LSM193:
 2692 084c 9B96      		adiw r26,43
 2693 084e 6D90      		ld r6,X+
 2694 0850 7D90      		ld r7,X+
 2695 0852 8D90      		ld r8,X+
 2696 0854 9C90      		ld r9,X
 2697 0856 9E97      		sbiw r26,43+3
 2698               	.LVL101:
 2699 0858 C801      		movw r24,r16
 2700 085a B701      		movw r22,r14
 2701 085c 298D      		ldd r18,Y+25
 2702 085e 3A8D      		ldd r19,Y+26
 2703 0860 4B8D      		ldd r20,Y+27
 2704 0862 5C8D      		ldd r21,Y+28
 2705 0864 0E94 0000 		call __udivmodsi4
 2706 0868 7B01      		movw r14,r22
 2707 086a 8C01      		movw r16,r24
 2708 086c C401      		movw r24,r8
 2709 086e B301      		movw r22,r6
 2710 0870 A98C      		ldd r10,Y+25
 2711 0872 BA8C      		ldd r11,Y+26
 2712 0874 CB8C      		ldd r12,Y+27
 2713 0876 DC8C      		ldd r13,Y+28
 2714               	.LVL102:
 2715 0878 0E94 0000 		call muldivQR
 2716               	.LBE112:
 2717               	.LSM194:
 2718 087c F201      		movw r30,r4
 2719 087e 27A5      		ldd r18,Z+47
 2720 0880 30A9      		ldd r19,Z+48
 2721 0882 41A9      		ldd r20,Z+49
 2722 0884 52A9      		ldd r21,Z+50
 2723 0886 0E94 0000 		call acc_ramp_len
 2724 088a D201      		movw r26,r4
 2725 088c DB96      		adiw r26,59
 2726 088e 6D93      		st X+,r22
 2727 0890 7D93      		st X+,r23
 2728 0892 8D93      		st X+,r24
 2729 0894 9C93      		st X,r25
 2730 0896 DE97      		sbiw r26,59+3
 2731               	.LSM195:
 2732 0898 9796      		adiw r26,39
 2733 089a 2D91      		ld r18,X+
 2734 089c 3D91      		ld r19,X+
 2735 089e 4D91      		ld r20,X+
 2736 08a0 5C91      		ld r21,X
 2737 08a2 9A97      		sbiw r26,39+3
 2738 08a4 5695      		lsr r21
 2739 08a6 4795      		ror r20
 2740 08a8 3795      		ror r19
 2741 08aa 2795      		ror r18
 2742 08ac 2617      		cp r18,r22
 2743 08ae 3707      		cpc r19,r23
 2744 08b0 4807      		cpc r20,r24
 2745 08b2 5907      		cpc r21,r25
 2746 08b4 00F4      		brsh .L102
 2747               	.LSM196:
 2748 08b6 F201      		movw r30,r4
 2749 08b8 23AF      		std Z+59,r18
 2750 08ba 34AF      		std Z+60,r19
 2751 08bc 45AF      		std Z+61,r20
 2752 08be 56AF      		std Z+62,r21
 2753               	.L102:
 2754               	.LSM197:
 2755 08c0 F201      		movw r30,r4
 2756 08c2 87A1      		ldd r24,Z+39
 2757 08c4 90A5      		ldd r25,Z+40
 2758 08c6 A1A5      		ldd r26,Z+41
 2759 08c8 B2A5      		ldd r27,Z+42
 2760 08ca 23AD      		ldd r18,Z+59
 2761 08cc 34AD      		ldd r19,Z+60
 2762 08ce 45AD      		ldd r20,Z+61
 2763 08d0 56AD      		ldd r21,Z+62
 2764 08d2 821B      		sub r24,r18
 2765 08d4 930B      		sbc r25,r19
 2766 08d6 A40B      		sbc r26,r20
 2767 08d8 B50B      		sbc r27,r21
 2768 08da 3FE3      		ldi r19,lo8(63)
 2769 08dc E32E      		mov r14,r19
 2770 08de F12C      		mov r15,__zero_reg__
 2771 08e0 4E0C      		add r4,r14
 2772 08e2 5F1C      		adc r5,r15
 2773 08e4 F201      		movw r30,r4
 2774 08e6 8083      		st Z,r24
 2775 08e8 9183      		std Z+1,r25
 2776 08ea A283      		std Z+2,r26
 2777 08ec B383      		std Z+3,r27
 2778               	.LSM198:
 2779 08ee 28E0      		ldi r18,lo8(8)
 2780 08f0 E22E      		mov r14,r18
 2781 08f2 F12C      		mov r15,__zero_reg__
 2782 08f4 4E0C      		add r4,r14
 2783 08f6 5F1C      		adc r5,r15
 2784 08f8 098D      		ldd r16,Y+25
 2785 08fa 1A8D      		ldd r17,Y+26
 2786 08fc 2B8D      		ldd r18,Y+27
 2787 08fe 3C8D      		ldd r19,Y+28
 2788 0900 D201      		movw r26,r4
 2789 0902 0D93      		st X+,r16
 2790 0904 1D93      		st X+,r17
 2791 0906 2D93      		st X+,r18
 2792 0908 3C93      		st X,r19
 2793 090a 1397      		sbiw r26,3
 2794 090c E9EB      		ldi r30,lo8(-71)
 2795 090e FFEF      		ldi r31,hi8(-71)
 2796 0910 4E0E      		add r4,r30
 2797 0912 5F1E      		adc r5,r31
 2798               	.LSM199:
 2799 0914 8091 0000 		lds r24,prev_dda.1992
 2800 0918 9091 0000 		lds r25,(prev_dda.1992)+1
 2801 091c B201      		movw r22,r4
 2802 091e 0E94 0000 		call dda_find_crossing_speed
 2803               	.LSM200:
 2804 0922 8091 0000 		lds r24,prev_dda.1992
 2805 0926 9091 0000 		lds r25,(prev_dda.1992)+1
 2806 092a B201      		movw r22,r4
 2807 092c 0E94 0000 		call dda_join_moves
 2808               	.LSM201:
 2809 0930 9FE4      		ldi r25,lo8(79)
 2810 0932 E92E      		mov r14,r25
 2811 0934 F12C      		mov r15,__zero_reg__
 2812 0936 4E0C      		add r4,r14
 2813 0938 5F1C      		adc r5,r15
 2814 093a D201      		movw r26,r4
 2815 093c 2D91      		ld r18,X+
 2816 093e 3D91      		ld r19,X+
 2817 0940 4D91      		ld r20,X+
 2818 0942 5C91      		ld r21,X
 2819 0944 E1EB      		ldi r30,lo8(-79)
 2820 0946 FFEF      		ldi r31,hi8(-79)
 2821 0948 4E0E      		add r4,r30
 2822 094a 5F1E      		adc r5,r31
 2823 094c D201      		movw r26,r4
 2824 094e D796      		adiw r26,55
 2825 0950 2D93      		st X+,r18
 2826 0952 3D93      		st X+,r19
 2827 0954 4D93      		st X+,r20
 2828 0956 5C93      		st X,r21
 2829 0958 DA97      		sbiw r26,55+3
 2830 095a F201      		movw r30,r4
 2831 095c E859      		subi r30,lo8(-(104))
 2832 095e FF4F      		sbci r31,hi8(-(104))
 2833               	.LSM202:
 2834 0960 2115      		cp r18,__zero_reg__
 2835 0962 3105      		cpc r19,__zero_reg__
 2836 0964 4105      		cpc r20,__zero_reg__
 2837 0966 5105      		cpc r21,__zero_reg__
 2838 0968 01F4      		brne .L103
 2839               	.LBB113:
 2840               	.LSM203:
 2841 096a 8081      		ld r24,Z
 2842 096c E82F      		mov r30,r24
 2843               	.LVL103:
 2844 096e F0E0      		ldi r31,lo8(0)
 2845               	.LVL104:
 2846 0970 EE0F      		lsl r30
 2847 0972 FF1F      		rol r31
 2848 0974 EE0F      		lsl r30
 2849 0976 FF1F      		rol r31
 2850               	.LVL105:
 2851 0978 E050      		subi r30,lo8(-(c0_P))
 2852 097a F040      		sbci r31,hi8(-(c0_P))
 2853               	/* #APP */
 2854               	 ;  398 "dda.c" 1
 2855 097c 8591      		lpm r24, Z+
 2856 097e 9591      		lpm r25, Z+
 2857 0980 A591      		lpm r26, Z+
 2858 0982 B491      		lpm r27, Z
 2859               		
 2860               	 ;  0 "" 2
 2861               	.LVL106:
 2862               	/* #NOAPP */
 2863               	.LBE113:
 2864 0984 F201      		movw r30,r4
 2865               	.LVL107:
 2866 0986 83AB      		std Z+51,r24
 2867 0988 94AB      		std Z+52,r25
 2868 098a A5AB      		std Z+53,r26
 2869 098c B6AB      		std Z+54,r27
 2870 098e 00C0      		rjmp .L104
 2871               	.LVL108:
 2872               	.L103:
 2873               	.LBB114:
 2874               	.LSM204:
 2875 0990 8081      		ld r24,Z
 2876 0992 E82F      		mov r30,r24
 2877               	.LVL109:
 2878 0994 F0E0      		ldi r31,lo8(0)
 2879               	.LVL110:
 2880 0996 EE0F      		lsl r30
 2881 0998 FF1F      		rol r31
 2882 099a EE0F      		lsl r30
 2883 099c FF1F      		rol r31
 2884               	.LVL111:
 2885 099e E050      		subi r30,lo8(-(c0_P))
 2886 09a0 F040      		sbci r31,hi8(-(c0_P))
 2887               	/* #APP */
 2888               	 ;  400 "dda.c" 1
 2889 09a2 E590      		lpm r14, Z+
 2890 09a4 F590      		lpm r15, Z+
 2891 09a6 0591      		lpm r16, Z+
 2892 09a8 1491      		lpm r17, Z
 2893               		
 2894               	 ;  0 "" 2
 2895               	.LVL112:
 2896               	/* #NOAPP */
 2897               	.LBE114:
 2898 09aa C901      		movw r24,r18
 2899 09ac 0E94 0000 		call int_inv_sqrt
 2900               	.LVL113:
 2901 09b0 A0E0      		ldi r26,lo8(0)
 2902 09b2 B0E0      		ldi r27,hi8(0)
 2903 09b4 BC01      		movw r22,r24
 2904 09b6 CD01      		movw r24,r26
 2905 09b8 A801      		movw r20,r16
 2906 09ba 9701      		movw r18,r14
 2907 09bc 0E94 0000 		call __mulsi3
 2908 09c0 ADE0      		ldi r26,13
 2909 09c2 9695      	1:	lsr r25
 2910 09c4 8795      		ror r24
 2911 09c6 7795      		ror r23
 2912 09c8 6795      		ror r22
 2913 09ca AA95      		dec r26
 2914 09cc 01F4      		brne 1b
 2915 09ce D201      		movw r26,r4
 2916 09d0 D396      		adiw r26,51
 2917 09d2 6D93      		st X+,r22
 2918 09d4 7D93      		st X+,r23
 2919 09d6 8D93      		st X+,r24
 2920 09d8 9C93      		st X,r25
 2921 09da D697      		sbiw r26,51+3
 2922               	.LVL114:
 2923               	.L104:
 2924               	.LSM205:
 2925 09dc E3E4      		ldi r30,lo8(67)
 2926 09de F0E0      		ldi r31,hi8(67)
 2927 09e0 4E0E      		add r4,r30
 2928 09e2 5F1E      		adc r5,r31
 2929 09e4 D201      		movw r26,r4
 2930 09e6 2D91      		ld r18,X+
 2931 09e8 3D91      		ld r19,X+
 2932 09ea 4D91      		ld r20,X+
 2933 09ec 5C91      		ld r21,X
 2934 09ee EDEB      		ldi r30,lo8(-67)
 2935 09f0 FFEF      		ldi r31,hi8(-67)
 2936 09f2 4E0E      		add r4,r30
 2937 09f4 5F1E      		adc r5,r31
 2938 09f6 F201      		movw r30,r4
 2939 09f8 83A9      		ldd r24,Z+51
 2940 09fa 94A9      		ldd r25,Z+52
 2941 09fc A5A9      		ldd r26,Z+53
 2942 09fe B6A9      		ldd r27,Z+54
 2943               	.LVL115:
 2944 0a00 8217      		cp r24,r18
 2945 0a02 9307      		cpc r25,r19
 2946 0a04 A407      		cpc r26,r20
 2947 0a06 B507      		cpc r27,r21
 2948 0a08 00F4      		brsh .L92
 2949               	.LSM206:
 2950 0a0a D201      		movw r26,r4
 2951 0a0c D396      		adiw r26,51
 2952 0a0e 2D93      		st X+,r18
 2953 0a10 3D93      		st X+,r19
 2954 0a12 4D93      		st X+,r20
 2955 0a14 5C93      		st X,r21
 2956 0a16 D697      		sbiw r26,51+3
 2957               	.LVL116:
 2958               	.L92:
 2959               	.LBE110:
 2960               	.LSM207:
 2961 0a18 8091 0000 		lds r24,debug_flags
 2962 0a1c 85FF      		sbrs r24,5
 2963 0a1e 00C0      		rjmp .L105
 2964               	.LSM208:
 2965 0a20 80E0      		ldi r24,lo8(__c.2023)
 2966 0a22 90E0      		ldi r25,hi8(__c.2023)
 2967 0a24 0E94 0000 		call serial_writestr_P
 2968               	.LVL117:
 2969               	.L105:
 2970               	.LSM209:
 2971 0a28 A0E0      		ldi r26,lo8(startpoint)
 2972 0a2a B0E0      		ldi r27,hi8(startpoint)
 2973 0a2c F101      		movw r30,r2
 2974 0a2e 85E1      		ldi r24,lo8(21)
 2975               	.LVL118:
 2976               	.L106:
 2977 0a30 0190      		ld r0,Z+
 2978 0a32 0D92      		st X+,r0
 2979 0a34 8150      		subi r24,lo8(-(-1))
 2980 0a36 01F4      		brne .L106
 2981               	.LSM210:
 2982 0a38 5092 0000 		sts (prev_dda.1992)+1,r5
 2983 0a3c 4092 0000 		sts prev_dda.1992,r4
 2984               	.LVL119:
 2985               	.L107:
 2986               	/* epilogue start */
 2987               	.LSM211:
 2988 0a40 6C96      		adiw r28,28
 2989 0a42 E2E1      		ldi r30, lo8(18)
 2990 0a44 0C94 0000 		jmp __epilogue_restores__ + ((18 - 18) * 2)
 2991               	.LFE19:
 2993               		.section	.progmem.data,"a",@progbits
 2996               	steps_per_mm_P.2362:
 2997 0000 00        		.byte	0
 2998 0001 01        		.byte	1
 2999 0002 00        		.byte	0
 3000 0003 00        		.byte	0
 3001 0004 00        		.byte	0
 3002 0005 01        		.byte	1
 3003 0006 00        		.byte	0
 3004 0007 00        		.byte	0
 3005 0008 07        		.byte	7
 3006 0009 04        		.byte	4
 3007 000a 00        		.byte	0
 3008 000b 00        		.byte	0
 3009 000c 0A        		.byte	10
 3010 000d 00        		.byte	0
 3011 000e 00        		.byte	0
 3012 000f 00        		.byte	0
 3015               	c0_P:
 3016 0010 6D        		.byte	109
 3017 0011 28        		.byte	40
 3018 0012 02        		.byte	2
 3019 0013 00        		.byte	0
 3020 0014 6D        		.byte	109
 3021 0015 28        		.byte	40
 3022 0016 02        		.byte	2
 3023 0017 00        		.byte	0
 3024 0018 46        		.byte	70
 3025 0019 13        		.byte	19
 3026 001a 01        		.byte	1
 3027 001b 00        		.byte	0
 3028 001c 15        		.byte	21
 3029 001d EB        		.byte	-21
 3030 001e 0A        		.byte	10
 3031 001f 00        		.byte	0
 3032               		.lcomm last_dda.2295,2
 3033               		.lcomm busy.2293,1
 3036               	__c.2153:
 3037 0020 5374 6172 		.string	"Start: X %lq  Y %lq  Z %lq  F %lu\n"
 3037      743A 2058 
 3037      2025 6C71 
 3037      2020 5920 
 3037      256C 7120 
 3040               	steps_per_m_P:
 3041 0043 00        		.byte	0
 3042 0044 E8        		.byte	-24
 3043 0045 03        		.byte	3
 3044 0046 00        		.byte	0
 3045 0047 00        		.byte	0
 3046 0048 E8        		.byte	-24
 3047 0049 03        		.byte	3
 3048 004a 00        		.byte	0
 3049 004b 58        		.byte	88
 3050 004c BB        		.byte	-69
 3051 004d 0F        		.byte	15
 3052 004e 00        		.byte	0
 3053 004f 10        		.byte	16
 3054 0050 27        		.byte	39
 3055 0051 00        		.byte	0
 3056 0052 00        		.byte	0
 3059               	maximum_feedrate_P:
 3060 0053 F4        		.byte	-12
 3061 0054 01        		.byte	1
 3062 0055 00        		.byte	0
 3063 0056 00        		.byte	0
 3064 0057 F4        		.byte	-12
 3065 0058 01        		.byte	1
 3066 0059 00        		.byte	0
 3067 005a 00        		.byte	0
 3068 005b D0        		.byte	-48
 3069 005c 07        		.byte	7
 3070 005d 00        		.byte	0
 3071 005e 00        		.byte	0
 3072 005f F4        		.byte	-12
 3073 0060 01        		.byte	1
 3074 0061 00        		.byte	0
 3075 0062 00        		.byte	0
 3078               	__c.2023:
 3079 0063 5D20 7D0A 		.string	"] }\n"
 3079      00
 3082               	__c.2008:
 3083 0068 2C64 733A 		.string	",ds:%lu"
 3083      256C 7500 
 3086               	__c.2006:
 3087 0070 205B 7473 		.string	" [ts:%lu"
 3087      3A25 6C75 
 3087      00
 3090               	__c.1998:
 3091 0079 5B25 6C64 		.string	"[%ld,%ld,%ld,%ld]"
 3091      2C25 6C64 
 3091      2C25 6C64 
 3091      2C25 6C64 
 3091      5D00 
 3094               	__c.1993:
 3095 008b 0A43 7265 		.string	"\nCreate: X %lq  Y %lq  Z %lq  F %lu\n"
 3095      6174 653A 
 3095      2058 2025 
 3095      6C71 2020 
 3095      5920 256C 
 3096               		.lcomm prev_dda.1992,2
 3097               		.lcomm idcnt.1991,1
 3098               	.global	startpoint
 3099               		.section	.bss,"aw",@nobits
 3102               	startpoint:
 3103 0000 0000 0000 		.skip 21,0
 3103      0000 0000 
 3103      0000 0000 
 3103      0000 0000 
 3103      0000 0000 
 3104               	.global	startpoint_steps
 3107               	startpoint_steps:
 3108 0015 0000 0000 		.skip 21,0
 3108      0000 0000 
 3108      0000 0000 
 3108      0000 0000 
 3108      0000 0000 
 3109               	.global	current_position
 3112               	current_position:
 3113 002a 0000 0000 		.skip 21,0
 3113      0000 0000 
 3113      0000 0000 
 3113      0000 0000 
 3113      0000 0000 
 3114               	.global	move_state
 3117               	move_state:
 3118 003f 0000 0000 		.skip 43,0
 3118      0000 0000 
 3118      0000 0000 
 3118      0000 0000 
 3118      0000 0000 
 3191               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 dda.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:21     .text.dda_init:00000000 dda_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3102   .bss:00000000 startpoint
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:55     .text.update_current_position:00000000 update_current_position
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3112   .bss:0000002a current_position
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:2996   .progmem.data:00000000 steps_per_mm_P.2362
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3117   .bss:0000003f move_state
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:366    .text.dda_clock:00000000 dda_clock
                             .bss:0000006a last_dda.2295
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3032   .bss:0000006c busy.2293
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3015   .progmem.data:00000010 c0_P
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:781    .text.dda_step:00000000 dda_step
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:1125   .text.dda_start:00000000 dda_start
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3036   .progmem.data:00000020 __c.2153
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:1350   .text.dda_new_startpoint:00000000 dda_new_startpoint
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3107   .bss:00000015 startpoint_steps
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:1457   .text.dda_create:00000000 dda_create
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3033   .bss:0000006d prev_dda.1992
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3094   .progmem.data:0000008b __c.1993
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3096   .bss:0000006f idcnt.1991
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3090   .progmem.data:00000079 __c.1998
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3040   .progmem.data:00000043 steps_per_m_P
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3086   .progmem.data:00000070 __c.2006
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3082   .progmem.data:00000068 __c.2008
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3059   .progmem.data:00000053 maximum_feedrate_P
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccJxclLw.s:3078   .progmem.data:00000063 __c.2023

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
next_target
mb_tail
queue_empty
movebuffer
__mulsi3
__udivmodsi4
queue_current_movement
int_inv_sqrt
__epilogue_restores__
psu_timeout
setTimer
debug_flags
sersendf_P
__prologue_saves__
axis_qn_P
axis_qr_P
muldivQR
power_on
approx_distance
approx_distance_3
acc_ramp_len
dda_find_crossing_speed
dda_join_moves
serial_writestr_P
