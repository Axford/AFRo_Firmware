   1               		.file	"dda_maths.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.muldivQR,"ax",@progbits
  19               	.global	muldivQR
  21               	muldivQR:
  22               	.LFB4:
  23               	.LSM0:
  24               	.LVL0:
  25 0000 A4E0      		ldi r26,lo8(4)
  26 0002 B0E0      		ldi r27,hi8(4)
  27 0004 E0E0      		ldi r30,lo8(gs(1f))
  28 0006 F0E0      		ldi r31,hi8(gs(1f))
  29 0008 0C94 0000 		jmp __prologue_saves__+((18 - 18) * 2)
  30               	1:
  31               	/* prologue: function */
  32               	/* frame size = 4 */
  33 000c 3B01      		movw r6,r22
  34 000e 4C01      		movw r8,r24
  35 0010 2983      		std Y+1,r18
  36 0012 3A83      		std Y+2,r19
  37 0014 4B83      		std Y+3,r20
  38 0016 5C83      		std Y+4,r21
  39 0018 1701      		movw r2,r14
  40 001a 2801      		movw r4,r16
  41               	.LSM1:
  42 001c 97FD      		sbrc r25,7
  43 001e 00C0      		rjmp .L2
  44               	.LVL1:
  45 0020 60E0      		ldi r22,lo8(0)
  46               	.LVL2:
  47 0022 00C0      		rjmp .L3
  48               	.LVL3:
  49               	.L2:
  50               	.LSM2:
  51 0024 9094      		com r9
  52 0026 8094      		com r8
  53 0028 7094      		com r7
  54 002a 6094      		com r6
  55 002c 611C      		adc r6,__zero_reg__
  56 002e 711C      		adc r7,__zero_reg__
  57 0030 811C      		adc r8,__zero_reg__
  58 0032 911C      		adc r9,__zero_reg__
  59               	.LVL4:
  60 0034 61E0      		ldi r22,lo8(1)
  61               	.LVL5:
  62               	.L3:
  63 0036 EE24      		clr r14
  64 0038 FF24      		clr r15
  65 003a 8701      		movw r16,r14
  66               	.LVL6:
  67 003c 20E0      		ldi r18,lo8(0)
  68 003e 30E0      		ldi r19,hi8(0)
  69 0040 40E0      		ldi r20,hlo8(0)
  70 0042 50E0      		ldi r21,hhi8(0)
  71               	.LVL7:
  72 0044 00C0      		rjmp .L4
  73               	.L7:
  74               	.LSM3:
  75 0046 C301      		movw r24,r6
  76               	.LVL8:
  77 0048 8170      		andi r24,lo8(1)
  78 004a 9070      		andi r25,hi8(1)
  79 004c 892B      		or r24,r25
  80 004e 01F0      		breq .L5
  81               	.LSM4:
  82 0050 8981      		ldd r24,Y+1
  83 0052 9A81      		ldd r25,Y+2
  84 0054 AB81      		ldd r26,Y+3
  85 0056 BC81      		ldd r27,Y+4
  86 0058 E80E      		add r14,r24
  87 005a F91E      		adc r15,r25
  88 005c 0A1F      		adc r16,r26
  89 005e 1B1F      		adc r17,r27
  90               	.LSM5:
  91 0060 220D      		add r18,r2
  92 0062 331D      		adc r19,r3
  93 0064 441D      		adc r20,r4
  94 0066 551D      		adc r21,r5
  95               	.LSM6:
  96 0068 2A15      		cp r18,r10
  97 006a 3B05      		cpc r19,r11
  98 006c 4C05      		cpc r20,r12
  99 006e 5D05      		cpc r21,r13
 100 0070 00F0      		brlo .L5
 101               	.LSM7:
 102 0072 0894      		sec
 103 0074 E11C      		adc r14,__zero_reg__
 104 0076 F11C      		adc r15,__zero_reg__
 105 0078 011D      		adc r16,__zero_reg__
 106 007a 111D      		adc r17,__zero_reg__
 107               	.LSM8:
 108 007c 2A19      		sub r18,r10
 109 007e 3B09      		sbc r19,r11
 110 0080 4C09      		sbc r20,r12
 111 0082 5D09      		sbc r21,r13
 112               	.L5:
 113               	.LSM9:
 114 0084 8981      		ldd r24,Y+1
 115 0086 9A81      		ldd r25,Y+2
 116 0088 AB81      		ldd r26,Y+3
 117 008a BC81      		ldd r27,Y+4
 118 008c 880F      		lsl r24
 119 008e 991F      		rol r25
 120 0090 AA1F      		rol r26
 121 0092 BB1F      		rol r27
 122 0094 8983      		std Y+1,r24
 123 0096 9A83      		std Y+2,r25
 124 0098 AB83      		std Y+3,r26
 125 009a BC83      		std Y+4,r27
 126               	.LVL9:
 127               	.LSM10:
 128 009c 220C      		lsl r2
 129 009e 331C      		rol r3
 130 00a0 441C      		rol r4
 131 00a2 551C      		rol r5
 132               	.LSM11:
 133 00a4 2A14      		cp r2,r10
 134 00a6 3B04      		cpc r3,r11
 135 00a8 4C04      		cpc r4,r12
 136 00aa 5D04      		cpc r5,r13
 137 00ac 00F0      		brlo .L6
 138               	.LSM12:
 139 00ae 0196      		adiw r24,1
 140 00b0 A11D      		adc r26,__zero_reg__
 141 00b2 B11D      		adc r27,__zero_reg__
 142 00b4 8983      		std Y+1,r24
 143 00b6 9A83      		std Y+2,r25
 144 00b8 AB83      		std Y+3,r26
 145 00ba BC83      		std Y+4,r27
 146               	.LVL10:
 147               	.LSM13:
 148 00bc 2A18      		sub r2,r10
 149 00be 3B08      		sbc r3,r11
 150 00c0 4C08      		sbc r4,r12
 151 00c2 5D08      		sbc r5,r13
 152               	.L6:
 153               	.LSM14:
 154 00c4 9594      		asr r9
 155 00c6 8794      		ror r8
 156 00c8 7794      		ror r7
 157 00ca 6794      		ror r6
 158               	.LVL11:
 159               	.L4:
 160               	.LSM15:
 161 00cc 6114      		cp r6,__zero_reg__
 162 00ce 7104      		cpc r7,__zero_reg__
 163 00d0 8104      		cpc r8,__zero_reg__
 164 00d2 9104      		cpc r9,__zero_reg__
 165 00d4 01F0      		breq .+2
 166 00d6 00C0      		rjmp .L7
 167               	.LSM16:
 168 00d8 D694      		lsr r13
 169 00da C794      		ror r12
 170 00dc B794      		ror r11
 171 00de A794      		ror r10
 172               	.LVL12:
 173 00e0 A216      		cp r10,r18
 174 00e2 B306      		cpc r11,r19
 175 00e4 C406      		cpc r12,r20
 176 00e6 D506      		cpc r13,r21
 177 00e8 00F4      		brsh .L8
 178               	.LSM17:
 179 00ea 0894      		sec
 180 00ec E11C      		adc r14,__zero_reg__
 181 00ee F11C      		adc r15,__zero_reg__
 182 00f0 011D      		adc r16,__zero_reg__
 183 00f2 111D      		adc r17,__zero_reg__
 184               	.L8:
 185               	.LSM18:
 186 00f4 6623      		tst r22
 187 00f6 01F0      		breq .L9
 188 00f8 2227      		clr r18
 189 00fa 3327      		clr r19
 190 00fc A901      		movw r20,r18
 191 00fe 2E19      		sub r18,r14
 192 0100 3F09      		sbc r19,r15
 193 0102 400B      		sbc r20,r16
 194 0104 510B      		sbc r21,r17
 195               	.LVL13:
 196 0106 00C0      		rjmp .L10
 197               	.LVL14:
 198               	.L9:
 199 0108 A801      		movw r20,r16
 200 010a 9701      		movw r18,r14
 201               	.LVL15:
 202               	.L10:
 203               	.LSM19:
 204 010c B901      		movw r22,r18
 205               	.LVL16:
 206 010e CA01      		movw r24,r20
 207               	/* epilogue start */
 208 0110 2496      		adiw r28,4
 209 0112 E2E1      		ldi r30, lo8(18)
 210 0114 0C94 0000 		jmp __epilogue_restores__ + ((18 - 18) * 2)
 211               	.LFE4:
 213               		.section	.text.approx_distance,"ax",@progbits
 214               	.global	approx_distance
 216               	approx_distance:
 217               	.LFB5:
 218               	.LSM20:
 219               	.LVL17:
 220 0000 6F92      		push r6
 221 0002 7F92      		push r7
 222 0004 8F92      		push r8
 223 0006 9F92      		push r9
 224 0008 AF92      		push r10
 225 000a BF92      		push r11
 226 000c CF92      		push r12
 227 000e DF92      		push r13
 228 0010 EF92      		push r14
 229 0012 FF92      		push r15
 230 0014 0F93      		push r16
 231 0016 1F93      		push r17
 232               	/* prologue: function */
 233               	/* frame size = 0 */
 234               	.LSM21:
 235 0018 6115      		cp r22,__zero_reg__
 236 001a 7105      		cpc r23,__zero_reg__
 237 001c 8105      		cpc r24,__zero_reg__
 238 001e 9105      		cpc r25,__zero_reg__
 239 0020 01F0      		breq .L13
 240 0022 2115      		cp r18,__zero_reg__
 241 0024 3105      		cpc r19,__zero_reg__
 242 0026 4105      		cpc r20,__zero_reg__
 243 0028 5105      		cpc r21,__zero_reg__
 244 002a 01F4      		brne .L14
 245               	.L13:
 246 002c 260F      		add r18,r22
 247 002e 371F      		adc r19,r23
 248 0030 481F      		adc r20,r24
 249 0032 591F      		adc r21,r25
 250               	.LVL18:
 251 0034 00C0      		rjmp .L15
 252               	.LVL19:
 253               	.L14:
 254               	.LSM22:
 255 0036 6217      		cp r22,r18
 256 0038 7307      		cpc r23,r19
 257 003a 8407      		cpc r24,r20
 258 003c 9507      		cpc r25,r21
 259 003e 00F0      		brlo .L16
 260 0040 5901      		movw r10,r18
 261 0042 6A01      		movw r12,r20
 262               	.LVL20:
 263 0044 3B01      		movw r6,r22
 264 0046 4C01      		movw r8,r24
 265               	.LVL21:
 266 0048 00C0      		rjmp .L17
 267               	.LVL22:
 268               	.L16:
 269 004a 5B01      		movw r10,r22
 270 004c 6C01      		movw r12,r24
 271               	.LVL23:
 272 004e 3901      		movw r6,r18
 273 0050 4A01      		movw r8,r20
 274               	.LVL24:
 275               	.L17:
 276               	.LSM23:
 277 0052 C601      		movw r24,r12
 278 0054 B501      		movw r22,r10
 279               	.LVL25:
 280 0056 29EB      		ldi r18,lo8(441)
 281 0058 31E0      		ldi r19,hi8(441)
 282 005a 40E0      		ldi r20,hlo8(441)
 283 005c 50E0      		ldi r21,hhi8(441)
 284               	.LVL26:
 285 005e 0E94 0000 		call __mulsi3
 286 0062 7B01      		movw r14,r22
 287 0064 8C01      		movw r16,r24
 288               	.LVL27:
 289 0066 C401      		movw r24,r8
 290 0068 B301      		movw r22,r6
 291 006a 2FEE      		ldi r18,lo8(1007)
 292 006c 33E0      		ldi r19,hi8(1007)
 293 006e 40E0      		ldi r20,hlo8(1007)
 294 0070 50E0      		ldi r21,hhi8(1007)
 295 0072 0E94 0000 		call __mulsi3
 296 0076 E60E      		add r14,r22
 297 0078 F71E      		adc r15,r23
 298 007a 081F      		adc r16,r24
 299 007c 191F      		adc r17,r25
 300               	.LSM24:
 301 007e A4E0      		ldi r26,4
 302 0080 AA0C      	1:	lsl r10
 303 0082 BB1C      		rol r11
 304 0084 CC1C      		rol r12
 305 0086 DD1C      		rol r13
 306 0088 AA95      		dec r26
 307 008a 01F4      		brne 1b
 308 008c 6A14      		cp r6,r10
 309 008e 7B04      		cpc r7,r11
 310 0090 8C04      		cpc r8,r12
 311 0092 9D04      		cpc r9,r13
 312 0094 00F4      		brsh .L18
 313               	.LSM25:
 314 0096 C401      		movw r24,r8
 315 0098 B301      		movw r22,r6
 316 009a 28E2      		ldi r18,lo8(40)
 317 009c 30E0      		ldi r19,hi8(40)
 318 009e 40E0      		ldi r20,hlo8(40)
 319 00a0 50E0      		ldi r21,hhi8(40)
 320 00a2 0E94 0000 		call __mulsi3
 321 00a6 E61A      		sub r14,r22
 322 00a8 F70A      		sbc r15,r23
 323 00aa 080B      		sbc r16,r24
 324 00ac 190B      		sbc r17,r25
 325               	.L18:
 326               	.LSM26:
 327 00ae A801      		movw r20,r16
 328 00b0 9701      		movw r18,r14
 329 00b2 2050      		subi r18,lo8(-(512))
 330 00b4 3E4F      		sbci r19,hi8(-(512))
 331 00b6 4F4F      		sbci r20,hlo8(-(512))
 332 00b8 5F4F      		sbci r21,hhi8(-(512))
 333 00ba FAE0      		ldi r31,10
 334 00bc 5695      	1:	lsr r21
 335 00be 4795      		ror r20
 336 00c0 3795      		ror r19
 337 00c2 2795      		ror r18
 338 00c4 FA95      		dec r31
 339 00c6 01F4      		brne 1b
 340               	.LVL28:
 341               	.L15:
 342               	.LSM27:
 343 00c8 B901      		movw r22,r18
 344               	.LVL29:
 345 00ca CA01      		movw r24,r20
 346               	/* epilogue start */
 347 00cc 1F91      		pop r17
 348 00ce 0F91      		pop r16
 349 00d0 FF90      		pop r15
 350 00d2 EF90      		pop r14
 351               	.LVL30:
 352 00d4 DF90      		pop r13
 353 00d6 CF90      		pop r12
 354 00d8 BF90      		pop r11
 355 00da AF90      		pop r10
 356               	.LVL31:
 357 00dc 9F90      		pop r9
 358 00de 8F90      		pop r8
 359 00e0 7F90      		pop r7
 360 00e2 6F90      		pop r6
 361               	.LVL32:
 362 00e4 0895      		ret
 363               	.LFE5:
 365               		.section	.text.approx_distance_3,"ax",@progbits
 366               	.global	approx_distance_3
 368               	approx_distance_3:
 369               	.LFB6:
 370               	.LSM28:
 371               	.LVL33:
 372 0000 2F92      		push r2
 373 0002 3F92      		push r3
 374 0004 4F92      		push r4
 375 0006 5F92      		push r5
 376 0008 6F92      		push r6
 377 000a 7F92      		push r7
 378 000c 8F92      		push r8
 379 000e 9F92      		push r9
 380 0010 AF92      		push r10
 381 0012 BF92      		push r11
 382 0014 CF92      		push r12
 383 0016 DF92      		push r13
 384 0018 EF92      		push r14
 385               	.LVL34:
 386 001a FF92      		push r15
 387 001c 0F93      		push r16
 388 001e 1F93      		push r17
 389               	/* prologue: function */
 390               	/* frame size = 0 */
 391               	.LSM29:
 392 0020 6217      		cp r22,r18
 393 0022 7307      		cpc r23,r19
 394 0024 8407      		cpc r24,r20
 395 0026 9507      		cpc r25,r21
 396 0028 00F0      		brlo .L21
 397 002a 1B01      		movw r2,r22
 398 002c 2C01      		movw r4,r24
 399               	.LVL35:
 400 002e 3901      		movw r6,r18
 401 0030 4A01      		movw r8,r20
 402               	.LVL36:
 403 0032 00C0      		rjmp .L22
 404               	.LVL37:
 405               	.L21:
 406 0034 1901      		movw r2,r18
 407 0036 2A01      		movw r4,r20
 408               	.LVL38:
 409 0038 3B01      		movw r6,r22
 410 003a 4C01      		movw r8,r24
 411               	.LVL39:
 412               	.L22:
 413               	.LSM30:
 414 003c E214      		cp r14,r2
 415 003e F304      		cpc r15,r3
 416 0040 0405      		cpc r16,r4
 417 0042 1505      		cpc r17,r5
 418               	.LVL40:
 419 0044 00F4      		brsh .L23
 420 0046 6401      		movw r12,r8
 421 0048 5301      		movw r10,r6
 422               	.LVL41:
 423 004a 4201      		movw r8,r4
 424 004c 3101      		movw r6,r2
 425 004e 1701      		movw r2,r14
 426 0050 2801      		movw r4,r16
 427 0052 00C0      		rjmp .L24
 428               	.LVL42:
 429               	.L23:
 430               	.LSM31:
 431 0054 E614      		cp r14,r6
 432 0056 F704      		cpc r15,r7
 433 0058 0805      		cpc r16,r8
 434 005a 1905      		cpc r17,r9
 435 005c 00F0      		brlo .L25
 436 005e 5701      		movw r10,r14
 437 0060 6801      		movw r12,r16
 438               	.LVL43:
 439 0062 00C0      		rjmp .L24
 440               	.LVL44:
 441               	.L25:
 442 0064 6401      		movw r12,r8
 443 0066 5301      		movw r10,r6
 444               	.LVL45:
 445 0068 3701      		movw r6,r14
 446 006a 4801      		movw r8,r16
 447               	.L24:
 448               	.LSM32:
 449 006c C401      		movw r24,r8
 450 006e B301      		movw r22,r6
 451               	.LVL46:
 452 0070 23E5      		ldi r18,lo8(851)
 453 0072 33E0      		ldi r19,hi8(851)
 454 0074 40E0      		ldi r20,hlo8(851)
 455 0076 50E0      		ldi r21,hhi8(851)
 456               	.LVL47:
 457 0078 0E94 0000 		call __mulsi3
 458 007c 7B01      		movw r14,r22
 459 007e 8C01      		movw r16,r24
 460               	.LVL48:
 461 0080 C601      		movw r24,r12
 462 0082 B501      		movw r22,r10
 463 0084 2CE5      		ldi r18,lo8(860)
 464 0086 33E0      		ldi r19,hi8(860)
 465 0088 40E0      		ldi r20,hlo8(860)
 466 008a 50E0      		ldi r21,hhi8(860)
 467 008c 0E94 0000 		call __mulsi3
 468 0090 E60E      		add r14,r22
 469 0092 F71E      		adc r15,r23
 470 0094 081F      		adc r16,r24
 471 0096 191F      		adc r17,r25
 472 0098 C201      		movw r24,r4
 473 009a B101      		movw r22,r2
 474 009c 28E0      		ldi r18,lo8(520)
 475 009e 32E0      		ldi r19,hi8(520)
 476 00a0 40E0      		ldi r20,hlo8(520)
 477 00a2 50E0      		ldi r21,hhi8(520)
 478 00a4 0E94 0000 		call __mulsi3
 479 00a8 E60E      		add r14,r22
 480 00aa F71E      		adc r15,r23
 481 00ac 081F      		adc r16,r24
 482 00ae 191F      		adc r17,r25
 483               	.LSM33:
 484 00b0 D401      		movw r26,r8
 485 00b2 C301      		movw r24,r6
 486 00b4 880F      		lsl r24
 487 00b6 991F      		rol r25
 488 00b8 AA1F      		rol r26
 489 00ba BB1F      		rol r27
 490 00bc A816      		cp r10,r24
 491 00be B906      		cpc r11,r25
 492 00c0 CA06      		cpc r12,r26
 493 00c2 DB06      		cpc r13,r27
 494 00c4 00F4      		brsh .L26
 495 00c6 C601      		movw r24,r12
 496 00c8 B501      		movw r22,r10
 497 00ca 26E2      		ldi r18,lo8(294)
 498 00cc 31E0      		ldi r19,hi8(294)
 499 00ce 40E0      		ldi r20,hlo8(294)
 500 00d0 50E0      		ldi r21,hhi8(294)
 501 00d2 0E94 0000 		call __mulsi3
 502 00d6 E61A      		sub r14,r22
 503 00d8 F70A      		sbc r15,r23
 504 00da 080B      		sbc r16,r24
 505 00dc 190B      		sbc r17,r25
 506               	.L26:
 507               	.LSM34:
 508 00de 82E0      		ldi r24,2
 509 00e0 220C      	1:	lsl r2
 510 00e2 331C      		rol r3
 511 00e4 441C      		rol r4
 512 00e6 551C      		rol r5
 513 00e8 8A95      		dec r24
 514 00ea 01F4      		brne 1b
 515               	.LVL49:
 516 00ec A214      		cp r10,r2
 517 00ee B304      		cpc r11,r3
 518 00f0 C404      		cpc r12,r4
 519 00f2 D504      		cpc r13,r5
 520 00f4 00F4      		brsh .L27
 521 00f6 C601      		movw r24,r12
 522 00f8 B501      		movw r22,r10
 523 00fa 21E7      		ldi r18,lo8(113)
 524 00fc 30E0      		ldi r19,hi8(113)
 525 00fe 40E0      		ldi r20,hlo8(113)
 526 0100 50E0      		ldi r21,hhi8(113)
 527 0102 0E94 0000 		call __mulsi3
 528 0106 E61A      		sub r14,r22
 529 0108 F70A      		sbc r15,r23
 530 010a 080B      		sbc r16,r24
 531 010c 190B      		sbc r17,r25
 532               	.L27:
 533               	.LSM35:
 534 010e 6214      		cp r6,r2
 535 0110 7304      		cpc r7,r3
 536 0112 8404      		cpc r8,r4
 537 0114 9504      		cpc r9,r5
 538 0116 00F4      		brsh .L28
 539 0118 C401      		movw r24,r8
 540 011a B301      		movw r22,r6
 541 011c 28E2      		ldi r18,lo8(40)
 542 011e 30E0      		ldi r19,hi8(40)
 543 0120 40E0      		ldi r20,hlo8(40)
 544 0122 50E0      		ldi r21,hhi8(40)
 545 0124 0E94 0000 		call __mulsi3
 546 0128 E61A      		sub r14,r22
 547 012a F70A      		sbc r15,r23
 548 012c 080B      		sbc r16,r24
 549 012e 190B      		sbc r17,r25
 550               	.L28:
 551 0130 A801      		movw r20,r16
 552 0132 9701      		movw r18,r14
 553 0134 2050      		subi r18,lo8(-(512))
 554 0136 3E4F      		sbci r19,hi8(-(512))
 555 0138 4F4F      		sbci r20,hlo8(-(512))
 556 013a 5F4F      		sbci r21,hhi8(-(512))
 557 013c BAE0      		ldi r27,10
 558 013e 5695      	1:	lsr r21
 559 0140 4795      		ror r20
 560 0142 3795      		ror r19
 561 0144 2795      		ror r18
 562 0146 BA95      		dec r27
 563 0148 01F4      		brne 1b
 564               	.LSM36:
 565 014a B901      		movw r22,r18
 566 014c CA01      		movw r24,r20
 567               	/* epilogue start */
 568 014e 1F91      		pop r17
 569 0150 0F91      		pop r16
 570 0152 FF90      		pop r15
 571 0154 EF90      		pop r14
 572               	.LVL50:
 573 0156 DF90      		pop r13
 574 0158 CF90      		pop r12
 575 015a BF90      		pop r11
 576 015c AF90      		pop r10
 577               	.LVL51:
 578 015e 9F90      		pop r9
 579 0160 8F90      		pop r8
 580 0162 7F90      		pop r7
 581 0164 6F90      		pop r6
 582               	.LVL52:
 583 0166 5F90      		pop r5
 584 0168 4F90      		pop r4
 585 016a 3F90      		pop r3
 586 016c 2F90      		pop r2
 587 016e 0895      		ret
 588               	.LFE6:
 590               		.section	.text.int_sqrt,"ax",@progbits
 591               	.global	int_sqrt
 593               	int_sqrt:
 594               	.LFB7:
 595               	.LSM37:
 596               	.LVL53:
 597 0000 A0E0      		ldi r26,lo8(0)
 598 0002 B0E0      		ldi r27,hi8(0)
 599 0004 E0E0      		ldi r30,lo8(gs(1f))
 600 0006 F0E0      		ldi r31,hi8(gs(1f))
 601 0008 0C94 0000 		jmp __prologue_saves__+((18 - 10) * 2)
 602               	1:
 603               	/* prologue: function */
 604               	/* frame size = 0 */
 605 000c 5B01      		movw r10,r22
 606 000e 6C01      		movw r12,r24
 607               	.LSM38:
 608 0010 AA27      		clr r26
 609 0012 BB27      		clr r27
 610 0014 FC01      		movw r30,r24
 611               	.LVL54:
 612               	.LSM39:
 613 0016 5F2F      		mov r21,r31
 614               	.LVL55:
 615 0018 90E0      		ldi r25,lo8(0)
 616               	.LVL56:
 617 001a 48E0      		ldi r20,lo8(8)
 618               	.LVL57:
 619 001c 20E0      		ldi r18,lo8(0)
 620 001e 30E0      		ldi r19,hi8(0)
 621               	.L32:
 622               	.LBB2:
 623               	.LSM40:
 624 0020 942B      		or r25,r20
 625               	.LSM41:
 626 0022 999F      		mul r25,r25
 627 0024 802D      		mov r24,r0
 628 0026 1124      		clr r1
 629 0028 5817      		cp r21,r24
 630 002a 00F4      		brsh .L31
 631               	.LSM42:
 632 002c 9427      		eor r25,r20
 633               	.L31:
 634               	.LBE2:
 635               	.LSM43:
 636 002e 4695      		lsr r20
 637 0030 2F5F      		subi r18,lo8(-(1))
 638 0032 3F4F      		sbci r19,hi8(-(1))
 639 0034 2430      		cpi r18,4
 640 0036 3105      		cpc r19,__zero_reg__
 641 0038 01F4      		brne .L32
 642               	.LSM44:
 643 003a 292F      		mov r18,r25
 644               	.LVL58:
 645 003c 30E0      		ldi r19,lo8(0)
 646               	.LVL59:
 647 003e B4E0      		ldi r27,4
 648 0040 220F      	1:	lsl r18
 649 0042 331F      		rol r19
 650 0044 BA95      		dec r27
 651 0046 01F4      		brne 1b
 652               	.LVL60:
 653 0048 48E0      		ldi r20,lo8(8)
 654 004a 50E0      		ldi r21,hi8(8)
 655               	.LVL61:
 656 004c 60E0      		ldi r22,lo8(0)
 657 004e 70E0      		ldi r23,hi8(0)
 658               	.LVL62:
 659               	.L34:
 660               	.LBB3:
 661               	.LSM45:
 662 0050 242B      		or r18,r20
 663 0052 352B      		or r19,r21
 664               	.LSM46:
 665 0054 229F      		mul r18,r18
 666 0056 C001      		movw r24,r0
 667 0058 239F      		mul r18,r19
 668 005a 900D      		add r25,r0
 669 005c 329F      		mul r19,r18
 670 005e 900D      		add r25,r0
 671 0060 1124      		clr r1
 672 0062 E817      		cp r30,r24
 673 0064 F907      		cpc r31,r25
 674 0066 00F4      		brsh .L33
 675               	.LSM47:
 676 0068 2427      		eor r18,r20
 677 006a 3527      		eor r19,r21
 678               	.L33:
 679               	.LBE3:
 680               	.LSM48:
 681 006c 5695      		lsr r21
 682 006e 4795      		ror r20
 683 0070 6F5F      		subi r22,lo8(-(1))
 684 0072 7F4F      		sbci r23,hi8(-(1))
 685 0074 6430      		cpi r22,4
 686 0076 7105      		cpc r23,__zero_reg__
 687 0078 01F4      		brne .L34
 688               	.LSM49:
 689 007a D22F      		mov r29,r18
 690 007c CC27      		clr r28
 691               	.LVL63:
 692 007e 00E8      		ldi r16,lo8(128)
 693 0080 10E0      		ldi r17,hi8(128)
 694               	.LVL64:
 695 0082 EE24      		clr r14
 696 0084 FF24      		clr r15
 697               	.L36:
 698               	.LBB4:
 699               	.LSM50:
 700 0086 C02B      		or r28,r16
 701 0088 D12B      		or r29,r17
 702               	.LSM51:
 703 008a 9E01      		movw r18,r28
 704 008c 40E0      		ldi r20,lo8(0)
 705 008e 50E0      		ldi r21,hi8(0)
 706               	.LSM52:
 707 0090 CA01      		movw r24,r20
 708 0092 B901      		movw r22,r18
 709 0094 0E94 0000 		call __mulsi3
 710               	.LVL65:
 711 0098 A616      		cp r10,r22
 712 009a B706      		cpc r11,r23
 713 009c C806      		cpc r12,r24
 714 009e D906      		cpc r13,r25
 715 00a0 00F4      		brsh .L35
 716               	.LSM53:
 717 00a2 C027      		eor r28,r16
 718 00a4 D127      		eor r29,r17
 719               	.L35:
 720               	.LBE4:
 721               	.LSM54:
 722 00a6 1695      		lsr r17
 723 00a8 0795      		ror r16
 724               	.LVL66:
 725 00aa 0894      		sec
 726 00ac E11C      		adc r14,__zero_reg__
 727 00ae F11C      		adc r15,__zero_reg__
 728 00b0 88E0      		ldi r24,lo8(8)
 729 00b2 E816      		cp r14,r24
 730 00b4 F104      		cpc r15,__zero_reg__
 731 00b6 01F4      		brne .L36
 732               	.LSM55:
 733 00b8 CE01      		movw r24,r28
 734               	.LVL67:
 735               	/* epilogue start */
 736 00ba CDB7      		in r28,__SP_L__
 737 00bc DEB7      		in r29,__SP_H__
 738 00be EAE0      		ldi r30, lo8(10)
 739 00c0 0C94 0000 		jmp __epilogue_restores__ + ((18 - 10) * 2)
 740               	.LFE7:
 742               		.section	.text.int_inv_sqrt,"ax",@progbits
 743               	.global	int_inv_sqrt
 745               	int_inv_sqrt:
 746               	.LFB8:
 747               	.LSM56:
 748               	.LVL68:
 749 0000 A0E0      		ldi r26,lo8(0)
 750 0002 B0E0      		ldi r27,hi8(0)
 751 0004 E0E0      		ldi r30,lo8(gs(1f))
 752 0006 F0E0      		ldi r31,hi8(gs(1f))
 753 0008 0C94 0000 		jmp __prologue_saves__+((18 - 10) * 2)
 754               	1:
 755               	/* prologue: function */
 756               	/* frame size = 0 */
 757 000c BC01      		movw r22,r24
 758               	.LSM57:
 759 000e 8FEF      		ldi r24,lo8(-1)
 760 0010 9FEF      		ldi r25,hi8(-1)
 761               	.LVL69:
 762 0012 0E94 0000 		call __udivmodhi4
 763               	.LVL70:
 764 0016 80E0      		ldi r24,lo8(0)
 765 0018 90E0      		ldi r25,hi8(0)
 766 001a AA24      		clr r10
 767 001c B62E      		mov r11,r22
 768 001e C72E      		mov r12,r23
 769 0020 D82E      		mov r13,r24
 770               	.LVL71:
 771               	.LBB5:
 772               	.LSM58:
 773 0022 1127      		clr r17
 774 0024 0D2D      		mov r16,r13
 775 0026 FC2C      		mov r15,r12
 776 0028 EB2C      		mov r14,r11
 777 002a 20E0      		ldi r18,lo8(0)
 778               	.LVL72:
 779 002c 30E8      		ldi r19,lo8(-128)
 780               	.LVL73:
 781 002e 60E0      		ldi r22,lo8(0)
 782 0030 70E0      		ldi r23,hi8(0)
 783               	.L40:
 784               	.LSM59:
 785 0032 232B      		or r18,r19
 786               	.LSM60:
 787 0034 822F      		mov r24,r18
 788 0036 90E0      		ldi r25,lo8(0)
 789               	.LSM61:
 790 0038 AC01      		movw r20,r24
 791 003a 449F      		mul r20,r20
 792 003c C001      		movw r24,r0
 793 003e 459F      		mul r20,r21
 794 0040 900D      		add r25,r0
 795 0042 549F      		mul r21,r20
 796 0044 900D      		add r25,r0
 797 0046 1124      		clr r1
 798 0048 A0E0      		ldi r26,lo8(0)
 799 004a B0E0      		ldi r27,hi8(0)
 800 004c E816      		cp r14,r24
 801 004e F906      		cpc r15,r25
 802 0050 0A07      		cpc r16,r26
 803 0052 1B07      		cpc r17,r27
 804 0054 00F4      		brsh .L39
 805               	.LSM62:
 806 0056 2327      		eor r18,r19
 807               	.L39:
 808               	.LBE5:
 809               	.LSM63:
 810 0058 3695      		lsr r19
 811 005a 6F5F      		subi r22,lo8(-(1))
 812 005c 7F4F      		sbci r23,hi8(-(1))
 813 005e 6830      		cpi r22,8
 814 0060 7105      		cpc r23,__zero_reg__
 815 0062 01F4      		brne .L40
 816               	.LSM64:
 817 0064 C22F      		mov r28,r18
 818               	.LVL74:
 819 0066 D0E0      		ldi r29,lo8(0)
 820               	.LVL75:
 821 0068 94E0      		ldi r25,4
 822 006a CC0F      	1:	lsl r28
 823 006c DD1F      		rol r29
 824 006e 9A95      		dec r25
 825 0070 01F4      		brne 1b
 826               	.LVL76:
 827 0072 08E0      		ldi r16,lo8(8)
 828 0074 10E0      		ldi r17,hi8(8)
 829               	.LVL77:
 830 0076 EE24      		clr r14
 831 0078 FF24      		clr r15
 832               	.L42:
 833               	.LBB6:
 834               	.LSM65:
 835 007a C02B      		or r28,r16
 836 007c D12B      		or r29,r17
 837               	.LSM66:
 838 007e 9E01      		movw r18,r28
 839               	.LVL78:
 840 0080 40E0      		ldi r20,lo8(0)
 841 0082 50E0      		ldi r21,hi8(0)
 842               	.LSM67:
 843 0084 CA01      		movw r24,r20
 844 0086 B901      		movw r22,r18
 845 0088 0E94 0000 		call __mulsi3
 846 008c A616      		cp r10,r22
 847 008e B706      		cpc r11,r23
 848 0090 C806      		cpc r12,r24
 849 0092 D906      		cpc r13,r25
 850 0094 00F4      		brsh .L41
 851               	.LSM68:
 852 0096 C027      		eor r28,r16
 853 0098 D127      		eor r29,r17
 854               	.L41:
 855               	.LBE6:
 856               	.LSM69:
 857 009a 1695      		lsr r17
 858 009c 0795      		ror r16
 859 009e 0894      		sec
 860 00a0 E11C      		adc r14,__zero_reg__
 861 00a2 F11C      		adc r15,__zero_reg__
 862 00a4 54E0      		ldi r21,lo8(4)
 863 00a6 E516      		cp r14,r21
 864 00a8 F104      		cpc r15,__zero_reg__
 865 00aa 01F4      		brne .L42
 866               	.LSM70:
 867 00ac CE01      		movw r24,r28
 868               	.LVL79:
 869               	/* epilogue start */
 870 00ae CDB7      		in r28,__SP_L__
 871 00b0 DEB7      		in r29,__SP_H__
 872 00b2 EAE0      		ldi r30, lo8(10)
 873 00b4 0C94 0000 		jmp __epilogue_restores__ + ((18 - 10) * 2)
 874               	.LFE8:
 876               		.section	.text.msbloc,"ax",@progbits
 877               	.global	msbloc
 879               	msbloc:
 880               	.LFB9:
 881               	.LSM71:
 882               	.LVL80:
 883 0000 EF92      		push r14
 884 0002 FF92      		push r15
 885 0004 0F93      		push r16
 886 0006 1F93      		push r17
 887               	/* prologue: function */
 888               	/* frame size = 0 */
 889 0008 7B01      		movw r14,r22
 890 000a 8C01      		movw r16,r24
 891               	.LSM72:
 892 000c EFE1      		ldi r30,lo8(31)
 893               	.LVL81:
 894 000e 20E0      		ldi r18,lo8(-2147483648)
 895 0010 30E0      		ldi r19,hi8(-2147483648)
 896 0012 40E0      		ldi r20,hlo8(-2147483648)
 897 0014 50E8      		ldi r21,hhi8(-2147483648)
 898               	.LVL82:
 899               	.L46:
 900               	.LSM73:
 901 0016 DA01      		movw r26,r20
 902 0018 C901      		movw r24,r18
 903 001a 8E21      		and r24,r14
 904 001c 9F21      		and r25,r15
 905 001e A023      		and r26,r16
 906 0020 B123      		and r27,r17
 907 0022 0097      		sbiw r24,0
 908 0024 A105      		cpc r26,__zero_reg__
 909 0026 B105      		cpc r27,__zero_reg__
 910 0028 01F4      		brne .L45
 911               	.LSM74:
 912 002a E150      		subi r30,lo8(-(-1))
 913 002c 01F0      		breq .L45
 914               	.LSM75:
 915 002e 5695      		lsr r21
 916 0030 4795      		ror r20
 917 0032 3795      		ror r19
 918 0034 2795      		ror r18
 919 0036 00C0      		rjmp .L46
 920               	.LVL83:
 921               	.L45:
 922               	.LSM76:
 923 0038 8E2F      		mov r24,r30
 924               	/* epilogue start */
 925 003a 1F91      		pop r17
 926 003c 0F91      		pop r16
 927 003e FF90      		pop r15
 928 0040 EF90      		pop r14
 929               	.LVL84:
 930 0042 0895      		ret
 931               	.LFE9:
 933               		.section	.text.acc_ramp_len,"ax",@progbits
 934               	.global	acc_ramp_len
 936               	acc_ramp_len:
 937               	.LFB10:
 938               	.LSM77:
 939               	.LVL85:
 940 0000 AF92      		push r10
 941 0002 BF92      		push r11
 942 0004 CF92      		push r12
 943 0006 DF92      		push r13
 944 0008 EF92      		push r14
 945 000a FF92      		push r15
 946 000c 0F93      		push r16
 947 000e 1F93      		push r17
 948               	/* prologue: function */
 949               	/* frame size = 0 */
 950 0010 7B01      		movw r14,r22
 951 0012 8C01      		movw r16,r24
 952 0014 5901      		movw r10,r18
 953 0016 6A01      		movw r12,r20
 954               	.LSM78:
 955 0018 A801      		movw r20,r16
 956 001a 9701      		movw r18,r14
 957               	.LVL86:
 958 001c 0E94 0000 		call __mulsi3
 959               	.LVL87:
 960 0020 0E94 0000 		call __floatunsisf
 961 0024 7B01      		movw r14,r22
 962 0026 8C01      		movw r16,r24
 963               	.LVL88:
 964 0028 C601      		movw r24,r12
 965 002a B501      		movw r22,r10
 966 002c 0E94 0000 		call __floatunsisf
 967 0030 9B01      		movw r18,r22
 968 0032 AC01      		movw r20,r24
 969 0034 60E5      		ldi r22,lo8(0x4e2ba950)
 970 0036 79EA      		ldi r23,hi8(0x4e2ba950)
 971 0038 8BE2      		ldi r24,hlo8(0x4e2ba950)
 972 003a 9EE4      		ldi r25,hhi8(0x4e2ba950)
 973 003c 0E94 0000 		call __divsf3
 974 0040 9B01      		movw r18,r22
 975 0042 AC01      		movw r20,r24
 976 0044 C801      		movw r24,r16
 977 0046 B701      		movw r22,r14
 978 0048 0E94 0000 		call __divsf3
 979 004c 0E94 0000 		call __fixunssfsi
 980 0050 9B01      		movw r18,r22
 981 0052 AC01      		movw r20,r24
 982               	.LSM79:
 983 0054 CA01      		movw r24,r20
 984               	/* epilogue start */
 985 0056 1F91      		pop r17
 986 0058 0F91      		pop r16
 987 005a FF90      		pop r15
 988 005c EF90      		pop r14
 989 005e DF90      		pop r13
 990 0060 CF90      		pop r12
 991 0062 BF90      		pop r11
 992 0064 AF90      		pop r10
 993               	.LVL89:
 994 0066 0895      		ret
 995               	.LFE10:
 997               	.global	axis_qn_P
 998               		.section	.progmem.data,"a",@progbits
 1001               	axis_qn_P:
 1002 0000 00        		.byte	0
 1003 0001 00        		.byte	0
 1004 0002 00        		.byte	0
 1005 0003 00        		.byte	0
 1006 0004 00        		.byte	0
 1007 0005 00        		.byte	0
 1008 0006 00        		.byte	0
 1009 0007 00        		.byte	0
 1010 0008 01        		.byte	1
 1011 0009 00        		.byte	0
 1012 000a 00        		.byte	0
 1013 000b 00        		.byte	0
 1014 000c 00        		.byte	0
 1015 000d 00        		.byte	0
 1016 000e 00        		.byte	0
 1017 000f 00        		.byte	0
 1018               	.global	axis_qr_P
 1021               	axis_qr_P:
 1022 0010 00        		.byte	0
 1023 0011 E8        		.byte	-24
 1024 0012 03        		.byte	3
 1025 0013 00        		.byte	0
 1026 0014 00        		.byte	0
 1027 0015 E8        		.byte	-24
 1028 0016 03        		.byte	3
 1029 0017 00        		.byte	0
 1030 0018 18        		.byte	24
 1031 0019 79        		.byte	121
 1032 001a 00        		.byte	0
 1033 001b 00        		.byte	0
 1034 001c 10        		.byte	16
 1035 001d 27        		.byte	39
 1036 001e 00        		.byte	0
 1037 001f 00        		.byte	0
 1110               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 dda_maths.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:21     .text.muldivQR:00000000 muldivQR
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:216    .text.approx_distance:00000000 approx_distance
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:368    .text.approx_distance_3:00000000 approx_distance_3
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:593    .text.int_sqrt:00000000 int_sqrt
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:745    .text.int_inv_sqrt:00000000 int_inv_sqrt
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:879    .text.msbloc:00000000 msbloc
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:936    .text.acc_ramp_len:00000000 acc_ramp_len
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:1001   .progmem.data:00000000 axis_qn_P
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQgtgmt.s:1021   .progmem.data:00000010 axis_qr_P

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__prologue_saves__
__epilogue_restores__
__mulsi3
__udivmodhi4
__floatunsisf
__divsf3
__fixunssfsi
