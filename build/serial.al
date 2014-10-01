   1               		.file	"serial.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.serial_init,"ax",@progbits
  19               	.global	serial_init
  21               	serial_init:
  22               	.LFB7:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 82E0      		ldi r24,lo8(2)
  28 0002 8093 C000 		sts 192,r24
  29               	.LSM2:
  30 0006 80E1      		ldi r24,lo8(16)
  31 0008 90E0      		ldi r25,hi8(16)
  32 000a 9093 C500 		sts (196)+1,r25
  33 000e 8093 C400 		sts 196,r24
  34               	.LSM3:
  35 0012 E1EC      		ldi r30,lo8(193)
  36 0014 F0E0      		ldi r31,hi8(193)
  37 0016 88E1      		ldi r24,lo8(24)
  38 0018 8083      		st Z,r24
  39               	.LSM4:
  40 001a 86E0      		ldi r24,lo8(6)
  41 001c 8093 C200 		sts 194,r24
  42               	.LSM5:
  43 0020 8081      		ld r24,Z
  44 0022 806A      		ori r24,lo8(-96)
  45 0024 8083      		st Z,r24
  46               	/* epilogue start */
  47               	.LSM6:
  48 0026 0895      		ret
  49               	.LFE7:
  51               		.section	.text.__vector_25,"ax",@progbits
  52               	.global	__vector_25
  54               	__vector_25:
  55               	.LFB8:
  56               	.LSM7:
  57 0000 1F92      		push __zero_reg__
  58 0002 0F92      		push r0
  59 0004 0FB6      		in r0,__SREG__
  60 0006 0F92      		push r0
  61 0008 0BB6      		in r0,91-32
  62 000a 0F92      		push r0
  63 000c 1124      		clr __zero_reg__
  64 000e 2F93      		push r18
  65 0010 8F93      		push r24
  66 0012 9F93      		push r25
  67 0014 EF93      		push r30
  68 0016 FF93      		push r31
  69               	/* prologue: Signal */
  70               	/* frame size = 0 */
  71               	.LSM8:
  72 0018 8091 0000 		lds r24,rxtail
  73 001c 2091 0000 		lds r18,rxhead
  74 0020 90E0      		ldi r25,lo8(0)
  75 0022 0197      		sbiw r24,1
  76 0024 821B      		sub r24,r18
  77 0026 9109      		sbc r25,__zero_reg__
  78 0028 8F73      		andi r24,lo8(63)
  79 002a 9070      		andi r25,hi8(63)
  80 002c 892B      		or r24,r25
  81 002e 01F0      		breq .L4
  82               	.LSM9:
  83 0030 E091 0000 		lds r30,rxhead
  84 0034 F0E0      		ldi r31,lo8(0)
  85 0036 8091 C600 		lds r24,198
  86 003a E050      		subi r30,lo8(-(rxbuf))
  87 003c F040      		sbci r31,hi8(-(rxbuf))
  88 003e 8083      		st Z,r24
  89 0040 8091 0000 		lds r24,rxhead
  90 0044 8F5F      		subi r24,lo8(-(1))
  91 0046 8F73      		andi r24,lo8(63)
  92 0048 8093 0000 		sts rxhead,r24
  93 004c 00C0      		rjmp .L6
  94               	.L4:
  95               	.LBB2:
  96               	.LSM10:
  97 004e 8091 C600 		lds r24,198
  98               	.LVL0:
  99               	.L6:
 100               	/* epilogue start */
 101               	.LBE2:
 102               	.LSM11:
 103 0052 FF91      		pop r31
 104 0054 EF91      		pop r30
 105 0056 9F91      		pop r25
 106 0058 8F91      		pop r24
 107               	.LVL1:
 108 005a 2F91      		pop r18
 109 005c 0F90      		pop r0
 110 005e 0BBE      		out 91-32,r0
 111 0060 0F90      		pop r0
 112 0062 0FBE      		out __SREG__,r0
 113 0064 0F90      		pop r0
 114 0066 1F90      		pop __zero_reg__
 115 0068 1895      		reti
 116               	.LFE8:
 118               		.section	.text.__vector_26,"ax",@progbits
 119               	.global	__vector_26
 121               	__vector_26:
 122               	.LFB9:
 123               	.LSM12:
 124 0000 1F92      		push __zero_reg__
 125 0002 0F92      		push r0
 126 0004 0FB6      		in r0,__SREG__
 127 0006 0F92      		push r0
 128 0008 0BB6      		in r0,91-32
 129 000a 0F92      		push r0
 130 000c 1124      		clr __zero_reg__
 131 000e 2F93      		push r18
 132 0010 8F93      		push r24
 133 0012 9F93      		push r25
 134 0014 EF93      		push r30
 135 0016 FF93      		push r31
 136               	/* prologue: Signal */
 137               	/* frame size = 0 */
 138               	.LSM13:
 139 0018 8091 0000 		lds r24,txhead
 140 001c 2091 0000 		lds r18,txtail
 141 0020 90E0      		ldi r25,lo8(0)
 142 0022 821B      		sub r24,r18
 143 0024 9109      		sbc r25,__zero_reg__
 144 0026 8F73      		andi r24,lo8(63)
 145 0028 9070      		andi r25,hi8(63)
 146 002a 892B      		or r24,r25
 147 002c 01F0      		breq .L8
 148               	.LSM14:
 149 002e E091 0000 		lds r30,txtail
 150 0032 F0E0      		ldi r31,lo8(0)
 151 0034 E050      		subi r30,lo8(-(txbuf))
 152 0036 F040      		sbci r31,hi8(-(txbuf))
 153 0038 8081      		ld r24,Z
 154 003a 8093 C600 		sts 198,r24
 155 003e 8091 0000 		lds r24,txtail
 156 0042 8F5F      		subi r24,lo8(-(1))
 157 0044 8F73      		andi r24,lo8(63)
 158 0046 8093 0000 		sts txtail,r24
 159 004a 00C0      		rjmp .L10
 160               	.L8:
 161               	.LSM15:
 162 004c 8091 C100 		lds r24,193
 163 0050 8F7D      		andi r24,lo8(-33)
 164 0052 8093 C100 		sts 193,r24
 165               	.L10:
 166               	/* epilogue start */
 167               	.LSM16:
 168 0056 FF91      		pop r31
 169 0058 EF91      		pop r30
 170 005a 9F91      		pop r25
 171 005c 8F91      		pop r24
 172 005e 2F91      		pop r18
 173 0060 0F90      		pop r0
 174 0062 0BBE      		out 91-32,r0
 175 0064 0F90      		pop r0
 176 0066 0FBE      		out __SREG__,r0
 177 0068 0F90      		pop r0
 178 006a 1F90      		pop __zero_reg__
 179 006c 1895      		reti
 180               	.LFE9:
 182               		.section	.text.serial_rxchars,"ax",@progbits
 183               	.global	serial_rxchars
 185               	serial_rxchars:
 186               	.LFB10:
 187               	.LSM17:
 188               	/* prologue: function */
 189               	/* frame size = 0 */
 190               	.LSM18:
 191 0000 8091 0000 		lds r24,rxhead
 192 0004 9091 0000 		lds r25,rxtail
 193 0008 891B      		sub r24,r25
 194               	.LSM19:
 195 000a 8F73      		andi r24,lo8(63)
 196               	/* epilogue start */
 197 000c 0895      		ret
 198               	.LFE10:
 200               		.section	.text.serial_popchar,"ax",@progbits
 201               	.global	serial_popchar
 203               	serial_popchar:
 204               	.LFB11:
 205               	.LSM20:
 206               	/* prologue: function */
 207               	/* frame size = 0 */
 208               	.LSM21:
 209 0000 8091 0000 		lds r24,rxhead
 210 0004 2091 0000 		lds r18,rxtail
 211 0008 90E0      		ldi r25,lo8(0)
 212 000a 821B      		sub r24,r18
 213 000c 9109      		sbc r25,__zero_reg__
 214 000e 8F73      		andi r24,lo8(63)
 215 0010 9070      		andi r25,hi8(63)
 216 0012 892B      		or r24,r25
 217 0014 01F4      		brne .L14
 218 0016 E0E0      		ldi r30,lo8(0)
 219               	.LVL2:
 220 0018 00C0      		rjmp .L15
 221               	.LVL3:
 222               	.L14:
 223               	.LSM22:
 224 001a E091 0000 		lds r30,rxtail
 225 001e F0E0      		ldi r31,lo8(0)
 226 0020 E050      		subi r30,lo8(-(rxbuf))
 227 0022 F040      		sbci r31,hi8(-(rxbuf))
 228 0024 E081      		ld r30,Z
 229               	.LVL4:
 230 0026 8091 0000 		lds r24,rxtail
 231 002a 8F5F      		subi r24,lo8(-(1))
 232 002c 8F73      		andi r24,lo8(63)
 233 002e 8093 0000 		sts rxtail,r24
 234               	.L15:
 235               	.LSM23:
 236 0032 8E2F      		mov r24,r30
 237               	/* epilogue start */
 238 0034 0895      		ret
 239               	.LFE11:
 241               		.section	.text.serial_writechar,"ax",@progbits
 242               	.global	serial_writechar
 244               	serial_writechar:
 245               	.LFB12:
 246               	.LSM24:
 247               	.LVL5:
 248               	/* prologue: function */
 249               	/* frame size = 0 */
 250 0000 382F      		mov r19,r24
 251               	.LSM25:
 252 0002 0FB6      		in __tmp_reg__,95-32
 253 0004 07FE      		sbrs __tmp_reg__,7
 254 0006 00C0      		rjmp .L18
 255               	.LVL6:
 256               	.L19:
 257               	.LSM26:
 258 0008 8091 0000 		lds r24,txtail
 259 000c 2091 0000 		lds r18,txhead
 260 0010 90E0      		ldi r25,lo8(0)
 261 0012 0197      		sbiw r24,1
 262 0014 821B      		sub r24,r18
 263 0016 9109      		sbc r25,__zero_reg__
 264 0018 8F73      		andi r24,lo8(63)
 265 001a 9070      		andi r25,hi8(63)
 266 001c 892B      		or r24,r25
 267 001e 01F0      		breq .L19
 268 0020 00C0      		rjmp .L22
 269               	.LVL7:
 270               	.L18:
 271               	.LSM27:
 272 0022 8091 0000 		lds r24,txtail
 273 0026 2091 0000 		lds r18,txhead
 274 002a 90E0      		ldi r25,lo8(0)
 275 002c 0197      		sbiw r24,1
 276 002e 821B      		sub r24,r18
 277 0030 9109      		sbc r25,__zero_reg__
 278 0032 8F73      		andi r24,lo8(63)
 279 0034 9070      		andi r25,hi8(63)
 280 0036 892B      		or r24,r25
 281 0038 01F0      		breq .L20
 282               	.L22:
 283               	.LSM28:
 284 003a E091 0000 		lds r30,txhead
 285 003e F0E0      		ldi r31,lo8(0)
 286 0040 E050      		subi r30,lo8(-(txbuf))
 287 0042 F040      		sbci r31,hi8(-(txbuf))
 288 0044 3083      		st Z,r19
 289 0046 8091 0000 		lds r24,txhead
 290 004a 8F5F      		subi r24,lo8(-(1))
 291 004c 8F73      		andi r24,lo8(63)
 292 004e 8093 0000 		sts txhead,r24
 293               	.L20:
 294               	.LSM29:
 295 0052 8091 C100 		lds r24,193
 296 0056 8062      		ori r24,lo8(32)
 297 0058 8093 C100 		sts 193,r24
 298               	/* epilogue start */
 299               	.LSM30:
 300 005c 0895      		ret
 301               	.LFE12:
 303               		.section	.text.serial_writeblock,"ax",@progbits
 304               	.global	serial_writeblock
 306               	serial_writeblock:
 307               	.LFB13:
 308               	.LSM31:
 309               	.LVL8:
 310 0000 EF92      		push r14
 311 0002 FF92      		push r15
 312 0004 0F93      		push r16
 313 0006 1F93      		push r17
 314 0008 CF93      		push r28
 315 000a DF93      		push r29
 316               	/* prologue: function */
 317               	/* frame size = 0 */
 318 000c 7C01      		movw r14,r24
 319 000e 8B01      		movw r16,r22
 320               	.LSM32:
 321 0010 C0E0      		ldi r28,lo8(0)
 322 0012 D0E0      		ldi r29,hi8(0)
 323               	.LVL9:
 324 0014 00C0      		rjmp .L24
 325               	.LVL10:
 326               	.L25:
 327               	.LSM33:
 328 0016 F701      		movw r30,r14
 329 0018 EC0F      		add r30,r28
 330 001a FD1F      		adc r31,r29
 331 001c 8081      		ld r24,Z
 332 001e 0E94 0000 		call serial_writechar
 333               	.LSM34:
 334 0022 2196      		adiw r28,1
 335               	.LVL11:
 336               	.L24:
 337 0024 C017      		cp r28,r16
 338 0026 D107      		cpc r29,r17
 339 0028 04F0      		brlt .L25
 340               	/* epilogue start */
 341               	.LSM35:
 342 002a CDB7      		in r28,__SP_L__
 343 002c DEB7      		in r29,__SP_H__
 344               	.LVL12:
 345 002e E6E0      		ldi r30, lo8(6)
 346 0030 0C94 0000 		jmp __epilogue_restores__ + ((18 - 6) * 2)
 347               	.LFE13:
 349               		.section	.text.serial_writestr,"ax",@progbits
 350               	.global	serial_writestr
 352               	serial_writestr:
 353               	.LFB14:
 354               	.LSM36:
 355               	.LVL13:
 356 0000 1F93      		push r17
 357 0002 CF93      		push r28
 358 0004 DF93      		push r29
 359               	/* prologue: function */
 360               	/* frame size = 0 */
 361 0006 EC01      		movw r28,r24
 362               	.LSM37:
 363 0008 10E0      		ldi r17,lo8(0)
 364               	.LVL14:
 365 000a 00C0      		rjmp .L28
 366               	.LVL15:
 367               	.L29:
 368               	.LSM38:
 369 000c 0E94 0000 		call serial_writechar
 370               	.LVL16:
 371               	.L28:
 372               	.LSM39:
 373 0010 FE01      		movw r30,r28
 374 0012 E10F      		add r30,r17
 375 0014 F11D      		adc r31,__zero_reg__
 376 0016 8081      		ld r24,Z
 377               	.LVL17:
 378 0018 1F5F      		subi r17,lo8(-(1))
 379 001a 8823      		tst r24
 380 001c 01F4      		brne .L29
 381               	/* epilogue start */
 382               	.LSM40:
 383 001e DF91      		pop r29
 384 0020 CF91      		pop r28
 385               	.LVL18:
 386 0022 1F91      		pop r17
 387               	.LVL19:
 388 0024 0895      		ret
 389               	.LFE14:
 391               		.section	.text.serial_writeblock_P,"ax",@progbits
 392               	.global	serial_writeblock_P
 394               	serial_writeblock_P:
 395               	.LFB15:
 396               	.LSM41:
 397               	.LVL20:
 398 0000 EF92      		push r14
 399 0002 FF92      		push r15
 400 0004 0F93      		push r16
 401 0006 1F93      		push r17
 402 0008 CF93      		push r28
 403 000a DF93      		push r29
 404               	/* prologue: function */
 405               	/* frame size = 0 */
 406 000c 7C01      		movw r14,r24
 407 000e 8B01      		movw r16,r22
 408               	.LSM42:
 409 0010 C0E0      		ldi r28,lo8(0)
 410 0012 D0E0      		ldi r29,hi8(0)
 411               	.LVL21:
 412 0014 00C0      		rjmp .L32
 413               	.LVL22:
 414               	.L33:
 415               	.LBB4:
 416               	.LSM43:
 417 0016 F701      		movw r30,r14
 418 0018 EC0F      		add r30,r28
 419 001a FD1F      		adc r31,r29
 420               	/* #APP */
 421               	 ;  253 "serial.c" 1
 422 001c E491      		lpm r30, Z
 423               		
 424               	 ;  0 "" 2
 425               	.LVL23:
 426               	/* #NOAPP */
 427               	.LBE4:
 428 001e 8E2F      		mov r24,r30
 429 0020 0E94 0000 		call serial_writechar
 430               	.LVL24:
 431               	.LSM44:
 432 0024 2196      		adiw r28,1
 433               	.LVL25:
 434               	.L32:
 435 0026 C017      		cp r28,r16
 436 0028 D107      		cpc r29,r17
 437 002a 04F0      		brlt .L33
 438               	/* epilogue start */
 439               	.LSM45:
 440 002c CDB7      		in r28,__SP_L__
 441 002e DEB7      		in r29,__SP_H__
 442               	.LVL26:
 443 0030 E6E0      		ldi r30, lo8(6)
 444 0032 0C94 0000 		jmp __epilogue_restores__ + ((18 - 6) * 2)
 445               	.LFE15:
 447               		.section	.text.serial_writestr_P,"ax",@progbits
 448               	.global	serial_writestr_P
 450               	serial_writestr_P:
 451               	.LFB16:
 452               	.LSM46:
 453               	.LVL27:
 454 0000 1F93      		push r17
 455 0002 CF93      		push r28
 456 0004 DF93      		push r29
 457               	/* prologue: function */
 458               	/* frame size = 0 */
 459 0006 EC01      		movw r28,r24
 460               	.LSM47:
 461 0008 10E0      		ldi r17,lo8(0)
 462               	.LVL28:
 463 000a 00C0      		rjmp .L36
 464               	.LVL29:
 465               	.L37:
 466               	.LSM48:
 467 000c 0E94 0000 		call serial_writechar
 468               	.LVL30:
 469               	.L36:
 470               	.LBB6:
 471               	.LSM49:
 472 0010 FE01      		movw r30,r28
 473               	.LVL31:
 474 0012 E10F      		add r30,r17
 475 0014 F11D      		adc r31,__zero_reg__
 476 0016 1F5F      		subi r17,lo8(-(1))
 477               	/* #APP */
 478               	 ;  261 "serial.c" 1
 479 0018 8491      		lpm r24, Z
 480               		
 481               	 ;  0 "" 2
 482               	.LVL32:
 483               	/* #NOAPP */
 484               	.LBE6:
 485 001a 8823      		tst r24
 486 001c 01F4      		brne .L37
 487               	/* epilogue start */
 488               	.LSM50:
 489 001e DF91      		pop r29
 490 0020 CF91      		pop r28
 491               	.LVL33:
 492 0022 1F91      		pop r17
 493               	.LVL34:
 494 0024 0895      		ret
 495               	.LFE16:
 497               	.global	rxhead
 498               	.global	rxhead
 499               		.section .bss
 502               	rxhead:
 503 0000 00        		.skip 1,0
 504               	.global	rxtail
 505               	.global	rxtail
 508               	rxtail:
 509 0001 00        		.skip 1,0
 510               	.global	txhead
 511               	.global	txhead
 514               	txhead:
 515 0002 00        		.skip 1,0
 516               	.global	txtail
 517               	.global	txtail
 520               	txtail:
 521 0003 00        		.skip 1,0
 522               		.comm rxbuf,64,1
 523               		.comm txbuf,64,1
 620               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 serial.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:21     .text.serial_init:00000000 serial_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:54     .text.__vector_25:00000000 __vector_25
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:508    .bss:00000001 rxtail
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:502    .bss:00000000 rxhead
                            *COM*:00000040 rxbuf
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:121    .text.__vector_26:00000000 __vector_26
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:514    .bss:00000002 txhead
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:520    .bss:00000003 txtail
                            *COM*:00000040 txbuf
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:185    .text.serial_rxchars:00000000 serial_rxchars
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:203    .text.serial_popchar:00000000 serial_popchar
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:244    .text.serial_writechar:00000000 serial_writechar
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:306    .text.serial_writeblock:00000000 serial_writeblock
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:352    .text.serial_writestr:00000000 serial_writestr
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:394    .text.serial_writeblock_P:00000000 serial_writeblock_P
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccYW6hTM.s:450    .text.serial_writestr_P:00000000 serial_writestr_P

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__epilogue_restores__
