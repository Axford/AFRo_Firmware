   1               		.file	"dda_lookahead.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.dda_jerk_size_1d,"ax",@progbits
  19               	.global	dda_jerk_size_1d
  21               	dda_jerk_size_1d:
  22               	.LFB17:
  23               	.LSM0:
  24               	.LVL0:
  25 0000 6F92      		push r6
  26 0002 7F92      		push r7
  27 0004 8F92      		push r8
  28 0006 9F92      		push r9
  29 0008 AF92      		push r10
  30               	.LVL1:
  31 000a BF92      		push r11
  32 000c CF92      		push r12
  33 000e DF92      		push r13
  34 0010 EF92      		push r14
  35               	.LVL2:
  36 0012 FF92      		push r15
  37 0014 0F93      		push r16
  38 0016 1F93      		push r17
  39               	/* prologue: function */
  40               	/* frame size = 0 */
  41 0018 3701      		movw r6,r14
  42 001a 4801      		movw r8,r16
  43               	.LVL3:
  44               	.LSM1:
  45 001c 1616      		cp __zero_reg__,r22
  46 001e 1706      		cpc __zero_reg__,r23
  47 0020 1806      		cpc __zero_reg__,r24
  48 0022 1906      		cpc __zero_reg__,r25
  49 0024 04F4      		brge .L2
  50               	.LVL4:
  51 0026 7901      		movw r14,r18
  52 0028 8A01      		movw r16,r20
  53               	.LVL5:
  54 002a 00C0      		rjmp .L3
  55               	.LVL6:
  56               	.L2:
  57               	.LSM2:
  58 002c EE24      		clr r14
  59 002e FF24      		clr r15
  60 0030 8701      		movw r16,r14
  61 0032 E21A      		sub r14,r18
  62 0034 F30A      		sbc r15,r19
  63 0036 040B      		sbc r16,r20
  64 0038 150B      		sbc r17,r21
  65               	.LVL7:
  66               	.L3:
  67               	.LSM3:
  68 003a 1614      		cp __zero_reg__,r6
  69 003c 1704      		cpc __zero_reg__,r7
  70 003e 1804      		cpc __zero_reg__,r8
  71 0040 1904      		cpc __zero_reg__,r9
  72 0042 04F4      		brge .L4
  73 0044 D601      		movw r26,r12
  74 0046 C501      		movw r24,r10
  75               	.LVL8:
  76 0048 00C0      		rjmp .L5
  77               	.LVL9:
  78               	.L4:
  79               	.LSM4:
  80 004a 8827      		clr r24
  81 004c 9927      		clr r25
  82 004e DC01      		movw r26,r24
  83 0050 8A19      		sub r24,r10
  84 0052 9B09      		sbc r25,r11
  85 0054 AC09      		sbc r26,r12
  86 0056 BD09      		sbc r27,r13
  87               	.LVL10:
  88               	.L5:
  89               	.LSM5:
  90 0058 A801      		movw r20,r16
  91 005a 9701      		movw r18,r14
  92               	.LVL11:
  93 005c 281B      		sub r18,r24
  94 005e 390B      		sbc r19,r25
  95 0060 4A0B      		sbc r20,r26
  96 0062 5B0B      		sbc r21,r27
  97               	.LVL12:
  98 0064 57FF      		sbrs r21,7
  99 0066 00C0      		rjmp .L6
 100 0068 5095      		com r21
 101 006a 4095      		com r20
 102 006c 3095      		com r19
 103 006e 2195      		neg r18
 104 0070 3F4F      		sbci r19,lo8(-1)
 105 0072 4F4F      		sbci r20,lo8(-1)
 106 0074 5F4F      		sbci r21,lo8(-1)
 107               	.L6:
 108               	.LSM6:
 109 0076 C901      		movw r24,r18
 110               	.LVL13:
 111               	/* epilogue start */
 112 0078 1F91      		pop r17
 113 007a 0F91      		pop r16
 114 007c FF90      		pop r15
 115 007e EF90      		pop r14
 116 0080 DF90      		pop r13
 117 0082 CF90      		pop r12
 118 0084 BF90      		pop r11
 119 0086 AF90      		pop r10
 120               	.LVL14:
 121 0088 9F90      		pop r9
 122 008a 8F90      		pop r8
 123 008c 7F90      		pop r7
 124 008e 6F90      		pop r6
 125 0090 0895      		ret
 126               	.LFE17:
 128               		.section	.text.dda_jerk_size_2d,"ax",@progbits
 129               	.global	dda_jerk_size_2d
 131               	dda_jerk_size_2d:
 132               	.LFB18:
 133               	.LSM7:
 134               	.LVL15:
 135 0000 A0E1      		ldi r26,lo8(16)
 136 0002 B0E0      		ldi r27,hi8(16)
 137 0004 E0E0      		ldi r30,lo8(gs(1f))
 138 0006 F0E0      		ldi r31,hi8(gs(1f))
 139 0008 0C94 0000 		jmp __prologue_saves__+((18 - 18) * 2)
 140               	1:
 141               	/* prologue: function */
 142               	/* frame size = 16 */
 143 000c 6983      		std Y+1,r22
 144 000e 7A83      		std Y+2,r23
 145 0010 8B83      		std Y+3,r24
 146 0012 9C83      		std Y+4,r25
 147 0014 2D83      		std Y+5,r18
 148 0016 3E83      		std Y+6,r19
 149 0018 4F83      		std Y+7,r20
 150 001a 5887      		std Y+8,r21
 151 001c A986      		std Y+9,r10
 152 001e BA86      		std Y+10,r11
 153 0020 CB86      		std Y+11,r12
 154 0022 DC86      		std Y+12,r13
 155 0024 AAA4      		ldd r10,Y+42
 156 0026 BBA4      		ldd r11,Y+43
 157 0028 CCA4      		ldd r12,Y+44
 158 002a DDA4      		ldd r13,Y+45
 159               	.LVL16:
 160               	.LBB47:
 161               	.LBB48:
 162               	.LSM8:
 163 002c 1616      		cp __zero_reg__,r22
 164 002e 1706      		cpc __zero_reg__,r23
 165 0030 1806      		cpc __zero_reg__,r24
 166 0032 1906      		cpc __zero_reg__,r25
 167 0034 04F4      		brge .L9
 168               	.LVL17:
 169 0036 1701      		movw r2,r14
 170 0038 2801      		movw r4,r16
 171               	.LVL18:
 172 003a 00C0      		rjmp .L10
 173               	.LVL19:
 174               	.L9:
 175               	.LSM9:
 176 003c 2224      		clr r2
 177 003e 3324      		clr r3
 178 0040 2101      		movw r4,r2
 179 0042 2E18      		sub r2,r14
 180 0044 3F08      		sbc r3,r15
 181 0046 400A      		sbc r4,r16
 182 0048 510A      		sbc r5,r17
 183               	.LVL20:
 184               	.L10:
 185               	.LSM10:
 186 004a 2985      		ldd r18,Y+9
 187 004c 3A85      		ldd r19,Y+10
 188 004e 4B85      		ldd r20,Y+11
 189 0050 5C85      		ldd r21,Y+12
 190 0052 1216      		cp __zero_reg__,r18
 191 0054 1306      		cpc __zero_reg__,r19
 192 0056 1406      		cpc __zero_reg__,r20
 193 0058 1506      		cpc __zero_reg__,r21
 194 005a 04F4      		brge .L11
 195 005c 3501      		movw r6,r10
 196 005e 4601      		movw r8,r12
 197               	.LVL21:
 198 0060 00C0      		rjmp .L12
 199               	.LVL22:
 200               	.L11:
 201               	.LSM11:
 202 0062 6624      		clr r6
 203 0064 7724      		clr r7
 204 0066 4301      		movw r8,r6
 205 0068 6A18      		sub r6,r10
 206 006a 7B08      		sbc r7,r11
 207 006c 8C08      		sbc r8,r12
 208 006e 9D08      		sbc r9,r13
 209               	.LVL23:
 210               	.L12:
 211               	.LBE48:
 212               	.LBE47:
 213               	.LBB50:
 214               	.LBB51:
 215               	.LSM12:
 216 0070 8D81      		ldd r24,Y+5
 217 0072 9E81      		ldd r25,Y+6
 218 0074 AF81      		ldd r26,Y+7
 219 0076 B885      		ldd r27,Y+8
 220 0078 1816      		cp __zero_reg__,r24
 221 007a 1906      		cpc __zero_reg__,r25
 222 007c 1A06      		cpc __zero_reg__,r26
 223 007e 1B06      		cpc __zero_reg__,r27
 224 0080 04F4      		brge .L13
 225 0082 ED86      		std Y+13,r14
 226 0084 FE86      		std Y+14,r15
 227 0086 0F87      		std Y+15,r16
 228 0088 188B      		std Y+16,r17
 229               	.LVL24:
 230 008a 00C0      		rjmp .L14
 231               	.LVL25:
 232               	.L13:
 233               	.LSM13:
 234 008c 2227      		clr r18
 235 008e 3327      		clr r19
 236 0090 A901      		movw r20,r18
 237 0092 2E19      		sub r18,r14
 238 0094 3F09      		sbc r19,r15
 239 0096 400B      		sbc r20,r16
 240 0098 510B      		sbc r21,r17
 241 009a 2D87      		std Y+13,r18
 242 009c 3E87      		std Y+14,r19
 243 009e 4F87      		std Y+15,r20
 244 00a0 588B      		std Y+16,r21
 245               	.LVL26:
 246               	.L14:
 247               	.LSM14:
 248 00a2 8EA1      		ldd r24,Y+38
 249 00a4 9FA1      		ldd r25,Y+39
 250 00a6 A8A5      		ldd r26,Y+40
 251 00a8 B9A5      		ldd r27,Y+41
 252 00aa 1816      		cp __zero_reg__,r24
 253 00ac 1906      		cpc __zero_reg__,r25
 254 00ae 1A06      		cpc __zero_reg__,r26
 255 00b0 1B06      		cpc __zero_reg__,r27
 256 00b2 04F4      		brge .L15
 257               	.LVL27:
 258 00b4 D601      		movw r26,r12
 259 00b6 C501      		movw r24,r10
 260               	.LVL28:
 261 00b8 00C0      		rjmp .L16
 262               	.LVL29:
 263               	.L15:
 264               	.LSM15:
 265 00ba 8827      		clr r24
 266 00bc 9927      		clr r25
 267 00be DC01      		movw r26,r24
 268 00c0 8A19      		sub r24,r10
 269 00c2 9B09      		sbc r25,r11
 270 00c4 AC09      		sbc r26,r12
 271 00c6 BD09      		sbc r27,r13
 272               	.LVL30:
 273               	.L16:
 274               	.LSM16:
 275 00c8 2D85      		ldd r18,Y+13
 276 00ca 3E85      		ldd r19,Y+14
 277 00cc 4F85      		ldd r20,Y+15
 278 00ce 5889      		ldd r21,Y+16
 279 00d0 281B      		sub r18,r24
 280 00d2 390B      		sbc r19,r25
 281 00d4 4A0B      		sbc r20,r26
 282 00d6 5B0B      		sbc r21,r27
 283 00d8 DA01      		movw r26,r20
 284 00da C901      		movw r24,r18
 285               	.LVL31:
 286               	.LBE51:
 287               	.LBE50:
 288               	.LBB52:
 289               	.LBB49:
 290 00dc A201      		movw r20,r4
 291 00de 9101      		movw r18,r2
 292 00e0 2619      		sub r18,r6
 293 00e2 3709      		sbc r19,r7
 294 00e4 4809      		sbc r20,r8
 295 00e6 5909      		sbc r21,r9
 296               	.LVL32:
 297               	.LBE49:
 298               	.LBE52:
 299               	.LSM17:
 300 00e8 57FF      		sbrs r21,7
 301 00ea 00C0      		rjmp .L18
 302 00ec 5095      		com r21
 303 00ee 4095      		com r20
 304 00f0 3095      		com r19
 305 00f2 2195      		neg r18
 306 00f4 3F4F      		sbci r19,lo8(-1)
 307 00f6 4F4F      		sbci r20,lo8(-1)
 308 00f8 5F4F      		sbci r21,lo8(-1)
 309               	.L18:
 310 00fa B7FF      		sbrs r27,7
 311 00fc 00C0      		rjmp .L19
 312 00fe B095      		com r27
 313 0100 A095      		com r26
 314 0102 9095      		com r25
 315 0104 8195      		neg r24
 316 0106 9F4F      		sbci r25,lo8(-1)
 317 0108 AF4F      		sbci r26,lo8(-1)
 318 010a BF4F      		sbci r27,lo8(-1)
 319               	.LVL33:
 320               	.L19:
 321 010c 8217      		cp r24,r18
 322 010e 9307      		cpc r25,r19
 323 0110 04F4      		brge .L17
 324               	.LBB53:
 325               	.LBB54:
 326               	.LSM18:
 327 0112 8981      		ldd r24,Y+1
 328 0114 9A81      		ldd r25,Y+2
 329 0116 AB81      		ldd r26,Y+3
 330 0118 BC81      		ldd r27,Y+4
 331               	.LVL34:
 332 011a 1816      		cp __zero_reg__,r24
 333 011c 1906      		cpc __zero_reg__,r25
 334 011e 1A06      		cpc __zero_reg__,r26
 335 0120 1B06      		cpc __zero_reg__,r27
 336 0122 04F4      		brge .L20
 337               	.LVL35:
 338 0124 A801      		movw r20,r16
 339 0126 9701      		movw r18,r14
 340               	.LVL36:
 341 0128 00C0      		rjmp .L21
 342               	.LVL37:
 343               	.L20:
 344               	.LSM19:
 345 012a 2227      		clr r18
 346 012c 3327      		clr r19
 347 012e A901      		movw r20,r18
 348 0130 2E19      		sub r18,r14
 349 0132 3F09      		sbc r19,r15
 350 0134 400B      		sbc r20,r16
 351 0136 510B      		sbc r21,r17
 352               	.LVL38:
 353               	.L21:
 354               	.LSM20:
 355 0138 8985      		ldd r24,Y+9
 356 013a 9A85      		ldd r25,Y+10
 357 013c AB85      		ldd r26,Y+11
 358 013e BC85      		ldd r27,Y+12
 359 0140 00C0      		rjmp .L35
 360               	.LVL39:
 361               	.L17:
 362               	.LBE54:
 363               	.LBE53:
 364               	.LBB55:
 365               	.LBB56:
 366               	.LSM21:
 367 0142 2D81      		ldd r18,Y+5
 368 0144 3E81      		ldd r19,Y+6
 369 0146 4F81      		ldd r20,Y+7
 370 0148 5885      		ldd r21,Y+8
 371               	.LVL40:
 372 014a 1216      		cp __zero_reg__,r18
 373 014c 1306      		cpc __zero_reg__,r19
 374 014e 1406      		cpc __zero_reg__,r20
 375 0150 1506      		cpc __zero_reg__,r21
 376 0152 04F4      		brge .L26
 377 0154 A801      		movw r20,r16
 378 0156 9701      		movw r18,r14
 379               	.LVL41:
 380 0158 00C0      		rjmp .L27
 381               	.LVL42:
 382               	.L26:
 383               	.LSM22:
 384 015a 2227      		clr r18
 385 015c 3327      		clr r19
 386 015e A901      		movw r20,r18
 387 0160 2E19      		sub r18,r14
 388 0162 3F09      		sbc r19,r15
 389 0164 400B      		sbc r20,r16
 390 0166 510B      		sbc r21,r17
 391               	.LVL43:
 392               	.L27:
 393               	.LSM23:
 394 0168 8EA1      		ldd r24,Y+38
 395 016a 9FA1      		ldd r25,Y+39
 396 016c A8A5      		ldd r26,Y+40
 397 016e B9A5      		ldd r27,Y+41
 398               	.LVL44:
 399               	.L35:
 400 0170 1816      		cp __zero_reg__,r24
 401 0172 1906      		cpc __zero_reg__,r25
 402 0174 1A06      		cpc __zero_reg__,r26
 403 0176 1B06      		cpc __zero_reg__,r27
 404 0178 04F4      		brge .L28
 405 017a D601      		movw r26,r12
 406 017c C501      		movw r24,r10
 407               	.LVL45:
 408 017e 00C0      		rjmp .L29
 409               	.LVL46:
 410               	.L28:
 411               	.LSM24:
 412 0180 8827      		clr r24
 413 0182 9927      		clr r25
 414 0184 DC01      		movw r26,r24
 415 0186 8A19      		sub r24,r10
 416 0188 9B09      		sbc r25,r11
 417 018a AC09      		sbc r26,r12
 418 018c BD09      		sbc r27,r13
 419               	.LVL47:
 420               	.L29:
 421               	.LSM25:
 422 018e 281B      		sub r18,r24
 423 0190 390B      		sbc r19,r25
 424 0192 4A0B      		sbc r20,r26
 425 0194 5B0B      		sbc r21,r27
 426               	.LVL48:
 427               	.LSM26:
 428 0196 57FF      		sbrs r21,7
 429 0198 00C0      		rjmp .L30
 430 019a 5095      		com r21
 431 019c 4095      		com r20
 432 019e 3095      		com r19
 433 01a0 2195      		neg r18
 434 01a2 3F4F      		sbci r19,lo8(-1)
 435 01a4 4F4F      		sbci r20,lo8(-1)
 436 01a6 5F4F      		sbci r21,lo8(-1)
 437               	.L30:
 438 01a8 C901      		movw r24,r18
 439               	.LVL49:
 440               	/* epilogue start */
 441               	.LBE56:
 442               	.LBE55:
 443               	.LSM27:
 444 01aa 6096      		adiw r28,16
 445 01ac E2E1      		ldi r30, lo8(18)
 446 01ae 0C94 0000 		jmp __epilogue_restores__ + ((18 - 18) * 2)
 447               	.LFE18:
 449               		.section	.text.dda_join_moves,"ax",@progbits
 450               	.global	dda_join_moves
 452               	dda_join_moves:
 453               	.LFB21:
 454               	.LSM28:
 455               	.LVL50:
 456 0000 A4E2      		ldi r26,lo8(36)
 457 0002 B0E0      		ldi r27,hi8(36)
 458 0004 E0E0      		ldi r30,lo8(gs(1f))
 459 0006 F0E0      		ldi r31,hi8(gs(1f))
 460 0008 0C94 0000 		jmp __prologue_saves__+((18 - 18) * 2)
 461               	1:
 462               	/* prologue: function */
 463               	/* frame size = 36 */
 464 000c 9CA3      		std Y+36,r25
 465 000e 8BA3      		std Y+35,r24
 466 0010 788F      		std Y+24,r23
 467 0012 6F8B      		std Y+23,r22
 468               	.LSM29:
 469 0014 0097      		sbiw r24,0
 470 0016 01F4      		brne .+2
 471 0018 00C0      		rjmp .L51
 472               	.LVL51:
 473 001a DC01      		movw r26,r24
 474 001c 5596      		adiw r26,21
 475 001e 8C91      		ld r24,X
 476               	.LVL52:
 477 0020 80FD      		sbrc r24,0
 478 0022 00C0      		rjmp .L51
 479 0024 FB01      		movw r30,r22
 480 0026 E55B      		subi r30,lo8(-(75))
 481 0028 FF4F      		sbci r31,hi8(-(75))
 482 002a 2081      		ld r18,Z
 483 002c 3181      		ldd r19,Z+1
 484 002e 4281      		ldd r20,Z+2
 485 0030 5381      		ldd r21,Z+3
 486 0032 EB54      		subi r30,lo8(-(-75))
 487 0034 F040      		sbci r31,hi8(-(-75))
 488 0036 F88F      		std Y+24,r31
 489 0038 EF8B      		std Y+23,r30
 490               	.LVL53:
 491 003a 2115      		cp r18,__zero_reg__
 492 003c 3105      		cpc r19,__zero_reg__
 493 003e 4105      		cpc r20,__zero_reg__
 494 0040 5105      		cpc r21,__zero_reg__
 495 0042 01F4      		brne .+2
 496 0044 00C0      		rjmp .L51
 497               	.LSM30:
 498 0046 8091 0000 		lds r24,debug_flags
 499 004a 85FF      		sbrs r24,5
 500 004c 00C0      		rjmp .L38
 501               	.LSM31:
 502 004e 00D0      		rcall .
 503 0050 00D0      		rcall .
 504 0052 80E0      		ldi r24,lo8(__c.2126)
 505 0054 90E0      		ldi r25,hi8(__c.2126)
 506 0056 ADB7      		in r26,__SP_L__
 507 0058 BEB7      		in r27,__SP_H__
 508 005a 1296      		adiw r26,1+1
 509 005c 9C93      		st X,r25
 510 005e 8E93      		st -X,r24
 511 0060 1197      		sbiw r26,1
 512 0062 EDB7      		in r30,__SP_L__
 513 0064 FEB7      		in r31,__SP_H__
 514 0066 2383      		std Z+3,r18
 515 0068 3483      		std Z+4,r19
 516 006a 4583      		std Z+5,r20
 517 006c 5683      		std Z+6,r21
 518 006e 0E94 0000 		call sersendf_P
 519 0072 0DB7      		in r16,__SP_L__
 520 0074 1EB7      		in r17,__SP_H__
 521 0076 0A5F      		subi r16,lo8(-(6))
 522 0078 1F4F      		sbci r17,hi8(-(6))
 523 007a 0FB6      		in __tmp_reg__,__SREG__
 524 007c F894      		cli
 525 007e 1EBF      		out __SP_H__,r17
 526 0080 0FBE      		out __SREG__,__tmp_reg__
 527 0082 0DBF      		out __SP_L__,r16
 528               	.L38:
 529               	.LSM32:
 530 0084 ABA1      		ldd r26,Y+35
 531 0086 BCA1      		ldd r27,Y+36
 532 0088 5596      		adiw r26,21
 533 008a 8C91      		ld r24,X
 534 008c 5597      		sbiw r26,21
 535 008e 81FD      		sbrc r24,1
 536 0090 00C0      		rjmp .L51
 537               	.LBB71:
 538               	.LBB72:
 539               	.LSM33:
 540 0092 8FB7      		in r24,__SREG__
 541               	.LVL54:
 542               	/* #APP */
 543               	 ;  332 "dda_lookahead.c" 1
 544 0094 F894      		cli
 545               	 ;  0 "" 2
 546               	.LSM34:
 547               	/* #NOAPP */
 548 0096 A959      		subi r26,lo8(-(103))
 549 0098 BF4F      		sbci r27,hi8(-(103))
 550 009a BCA3      		std Y+36,r27
 551 009c ABA3      		std Y+35,r26
 552               	.LVL55:
 553 009e BC91      		ld r27,X
 554 00a0 BA87      		std Y+10,r27
 555               	.LVL56:
 556 00a2 EBA1      		ldd r30,Y+35
 557 00a4 FCA1      		ldd r31,Y+36
 558 00a6 E756      		subi r30,lo8(-(-103))
 559 00a8 F040      		sbci r31,hi8(-(-103))
 560               	.LSM35:
 561 00aa E088      		ldd r14,Z+16
 562 00ac F188      		ldd r15,Z+17
 563 00ae 0289      		ldd r16,Z+18
 564 00b0 1389      		ldd r17,Z+19
 565               	.LVL57:
 566               	.LSM36:
 567 00b2 E15B      		subi r30,lo8(-(79))
 568 00b4 FF4F      		sbci r31,hi8(-(79))
 569 00b6 DF01      		movw r26,r30
 570 00b8 2080      		ld r2,Z
 571 00ba 3180      		ldd r3,Z+1
 572 00bc 4280      		ldd r4,Z+2
 573 00be 5380      		ldd r5,Z+3
 574 00c0 2B8A      		std Y+19,r2
 575 00c2 3C8A      		std Y+20,r3
 576 00c4 4D8A      		std Y+21,r4
 577 00c6 5E8A      		std Y+22,r5
 578               	.LVL58:
 579 00c8 AF54      		subi r26,lo8(-(-79))
 580 00ca B040      		sbci r27,hi8(-(-79))
 581 00cc BCA3      		std Y+36,r27
 582 00ce ABA3      		std Y+35,r26
 583               	.LVL59:
 584               	.LSM37:
 585 00d0 9796      		adiw r26,39
 586 00d2 2D90      		ld r2,X+
 587 00d4 3D90      		ld r3,X+
 588 00d6 4D90      		ld r4,X+
 589 00d8 5C90      		ld r5,X
 590 00da 9A97      		sbiw r26,39+3
 591 00dc 2F86      		std Y+15,r2
 592 00de 388A      		std Y+16,r3
 593 00e0 498A      		std Y+17,r4
 594 00e2 5A8A      		std Y+18,r5
 595               	.LVL60:
 596               	.LSM38:
 597 00e4 EF89      		ldd r30,Y+23
 598 00e6 F88D      		ldd r31,Y+24
 599 00e8 E55B      		subi r30,lo8(-(75))
 600 00ea FF4F      		sbci r31,hi8(-(75))
 601 00ec DF01      		movw r26,r30
 602 00ee 2080      		ld r2,Z
 603 00f0 3180      		ldd r3,Z+1
 604 00f2 4280      		ldd r4,Z+2
 605 00f4 5380      		ldd r5,Z+3
 606 00f6 2B86      		std Y+11,r2
 607 00f8 3C86      		std Y+12,r3
 608 00fa 4D86      		std Y+13,r4
 609 00fc 5E86      		std Y+14,r5
 610               	.LVL61:
 611               	.LSM39:
 612 00fe 5C96      		adiw r26,28
 613 0100 B88F      		std Y+24,r27
 614 0102 AF8B      		std Y+23,r26
 615               	.LVL62:
 616 0104 BC91      		ld r27,X
 617 0106 B983      		std Y+1,r27
 618               	.LVL63:
 619 0108 EF89      		ldd r30,Y+23
 620 010a F88D      		ldd r31,Y+24
 621 010c E756      		subi r30,lo8(-(-103))
 622 010e F040      		sbci r31,hi8(-(-103))
 623 0110 F88F      		std Y+24,r31
 624 0112 EF8B      		std Y+23,r30
 625               	.LVL64:
 626               	.LSM40:
 627 0114 27A0      		ldd r2,Z+39
 628 0116 30A4      		ldd r3,Z+40
 629 0118 41A4      		ldd r4,Z+41
 630 011a 52A4      		ldd r5,Z+42
 631 011c 2A82      		std Y+2,r2
 632 011e 3B82      		std Y+3,r3
 633 0120 4C82      		std Y+4,r4
 634 0122 5D82      		std Y+5,r5
 635               	.LVL65:
 636               	.LSM41:
 637 0124 8FBF      		out __SREG__,r24
 638               	.LBE72:
 639               	.LSM42:
 640 0126 EBA1      		ldd r30,Y+35
 641 0128 FCA1      		ldd r31,Y+36
 642 012a E95B      		subi r30,lo8(-(71))
 643 012c FF4F      		sbci r31,hi8(-(71))
 644 012e A080      		ld r10,Z
 645 0130 B180      		ldd r11,Z+1
 646 0132 C280      		ldd r12,Z+2
 647 0134 D380      		ldd r13,Z+3
 648 0136 E754      		subi r30,lo8(-(-71))
 649 0138 F040      		sbci r31,hi8(-(-71))
 650 013a FCA3      		std Y+36,r31
 651 013c EBA3      		std Y+35,r30
 652               	.LVL66:
 653               	.LBB73:
 654               	.LSM43:
 655 013e 23A4      		ldd r2,Z+43
 656 0140 34A4      		ldd r3,Z+44
 657 0142 45A4      		ldd r4,Z+45
 658 0144 56A4      		ldd r5,Z+46
 659 0146 C801      		movw r24,r16
 660 0148 B701      		movw r22,r14
 661 014a A601      		movw r20,r12
 662 014c 9501      		movw r18,r10
 663 014e 0E94 0000 		call __udivmodsi4
 664 0152 7B01      		movw r14,r22
 665 0154 8C01      		movw r16,r24
 666               	.LVL67:
 667 0156 C201      		movw r24,r4
 668 0158 B101      		movw r22,r2
 669 015a 0E94 0000 		call muldivQR
 670               	.LVL68:
 671 015e 6F8F      		std Y+31,r22
 672 0160 78A3      		std Y+32,r23
 673 0162 89A3      		std Y+33,r24
 674 0164 9AA3      		std Y+34,r25
 675               	.LBE73:
 676               	.LSM44:
 677 0166 AF89      		ldd r26,Y+23
 678 0168 B88D      		ldd r27,Y+24
 679 016a 5096      		adiw r26,16
 680 016c ED90      		ld r14,X+
 681 016e FD90      		ld r15,X+
 682 0170 0D91      		ld r16,X+
 683 0172 1C91      		ld r17,X
 684 0174 5397      		sbiw r26,16+3
 685 0176 A95B      		subi r26,lo8(-(71))
 686 0178 BF4F      		sbci r27,hi8(-(71))
 687 017a BA8F      		std Y+26,r27
 688 017c A98F      		std Y+25,r26
 689 017e AD90      		ld r10,X+
 690 0180 BD90      		ld r11,X+
 691 0182 CD90      		ld r12,X+
 692 0184 DC90      		ld r13,X
 693               	.LBB74:
 694               	.LSM45:
 695 0186 EF89      		ldd r30,Y+23
 696 0188 F88D      		ldd r31,Y+24
 697 018a 23A4      		ldd r2,Z+43
 698 018c 34A4      		ldd r3,Z+44
 699 018e 45A4      		ldd r4,Z+45
 700 0190 56A4      		ldd r5,Z+46
 701 0192 C801      		movw r24,r16
 702 0194 B701      		movw r22,r14
 703 0196 A601      		movw r20,r12
 704 0198 9501      		movw r18,r10
 705 019a 0E94 0000 		call __udivmodsi4
 706 019e 7B01      		movw r14,r22
 707 01a0 8C01      		movw r16,r24
 708 01a2 C201      		movw r24,r4
 709 01a4 B101      		movw r22,r2
 710 01a6 0E94 0000 		call muldivQR
 711 01aa 6B8F      		std Y+27,r22
 712 01ac 7C8F      		std Y+28,r23
 713 01ae 8D8F      		std Y+29,r24
 714 01b0 9E8F      		std Y+30,r25
 715               	.LBE74:
 716               	.LSM46:
 717 01b2 A98D      		ldd r26,Y+25
 718 01b4 BA8D      		ldd r27,Y+26
 719 01b6 AD90      		ld r10,X+
 720 01b8 BD90      		ld r11,X+
 721 01ba CD90      		ld r12,X+
 722 01bc DC90      		ld r13,X
 723               	.LBB75:
 724               	.LSM47:
 725 01be EF89      		ldd r30,Y+23
 726 01c0 F88D      		ldd r31,Y+24
 727 01c2 23A4      		ldd r2,Z+43
 728 01c4 34A4      		ldd r3,Z+44
 729 01c6 45A4      		ldd r4,Z+45
 730 01c8 56A4      		ldd r5,Z+46
 731 01ca 6B85      		ldd r22,Y+11
 732 01cc 7C85      		ldd r23,Y+12
 733 01ce 8D85      		ldd r24,Y+13
 734 01d0 9E85      		ldd r25,Y+14
 735 01d2 A601      		movw r20,r12
 736 01d4 9501      		movw r18,r10
 737 01d6 0E94 0000 		call __udivmodsi4
 738 01da 3901      		movw r6,r18
 739 01dc 4A01      		movw r8,r20
 740 01de 6B85      		ldd r22,Y+11
 741 01e0 7C85      		ldd r23,Y+12
 742 01e2 8D85      		ldd r24,Y+13
 743 01e4 9E85      		ldd r25,Y+14
 744 01e6 A601      		movw r20,r12
 745 01e8 9501      		movw r18,r10
 746 01ea 0E94 0000 		call __udivmodsi4
 747 01ee 7B01      		movw r14,r22
 748 01f0 8C01      		movw r16,r24
 749 01f2 C201      		movw r24,r4
 750 01f4 B101      		movw r22,r2
 751 01f6 0E94 0000 		call muldivQR
 752 01fa 9B01      		movw r18,r22
 753 01fc AC01      		movw r20,r24
 754               	.LBE75:
 755               	.LSM48:
 756 01fe 0E94 0000 		call __mulsi3
 757 0202 2CEF      		ldi r18,lo8(2812)
 758 0204 3AE0      		ldi r19,hi8(2812)
 759 0206 40E0      		ldi r20,hlo8(2812)
 760 0208 50E0      		ldi r21,hhi8(2812)
 761 020a 0E94 0000 		call __udivmodsi4
 762 020e C901      		movw r24,r18
 763 0210 DA01      		movw r26,r20
 764               	.LSM49:
 765 0212 2F85      		ldd r18,Y+15
 766 0214 3889      		ldd r19,Y+16
 767 0216 4989      		ldd r20,Y+17
 768 0218 5A89      		ldd r21,Y+18
 769               	.LVL69:
 770 021a 2B88      		ldd r2,Y+19
 771 021c 3C88      		ldd r3,Y+20
 772 021e 4D88      		ldd r4,Y+21
 773 0220 5E88      		ldd r5,Y+22
 774 0222 220D      		add r18,r2
 775 0224 331D      		adc r19,r3
 776 0226 441D      		adc r20,r4
 777 0228 551D      		adc r21,r5
 778 022a EA80      		ldd r14,Y+2
 779 022c FB80      		ldd r15,Y+3
 780 022e 0C81      		ldd r16,Y+4
 781 0230 1D81      		ldd r17,Y+5
 782 0232 E216      		cp r14,r18
 783 0234 F306      		cpc r15,r19
 784 0236 0407      		cpc r16,r20
 785 0238 1507      		cpc r17,r21
 786 023a 00F4      		brsh .L39
 787 023c A801      		movw r20,r16
 788 023e 9701      		movw r18,r14
 789               	.L39:
 790               	.LSM50:
 791 0240 5901      		movw r10,r18
 792 0242 6A01      		movw r12,r20
 793 0244 8217      		cp r24,r18
 794 0246 9307      		cpc r25,r19
 795 0248 A407      		cpc r26,r20
 796 024a B507      		cpc r27,r21
 797 024c 00F4      		brsh .L40
 798               	.LVL70:
 799 024e 5C01      		movw r10,r24
 800 0250 6D01      		movw r12,r26
 801               	.L40:
 802               	.LSM51:
 803 0252 A114      		cp r10,__zero_reg__
 804 0254 B104      		cpc r11,__zero_reg__
 805 0256 C104      		cpc r12,__zero_reg__
 806 0258 D104      		cpc r13,__zero_reg__
 807 025a 01F4      		brne .+2
 808 025c 00C0      		rjmp .L51
 809               	.LVL71:
 810               	.LSM52:
 811 025e 6F8D      		ldd r22,Y+31
 812 0260 78A1      		ldd r23,Y+32
 813 0262 89A1      		ldd r24,Y+33
 814 0264 9AA1      		ldd r25,Y+34
 815 0266 9B01      		movw r18,r22
 816 0268 AC01      		movw r20,r24
 817 026a 0E94 0000 		call __mulsi3
 818 026e 2CEF      		ldi r18,lo8(2812)
 819 0270 3AE0      		ldi r19,hi8(2812)
 820 0272 40E0      		ldi r20,hlo8(2812)
 821 0274 50E0      		ldi r21,hhi8(2812)
 822 0276 0E94 0000 		call __udivmodsi4
 823 027a C901      		movw r24,r18
 824 027c DA01      		movw r26,r20
 825               	.LSM53:
 826 027e A816      		cp r10,r24
 827 0280 B906      		cpc r11,r25
 828 0282 CA06      		cpc r12,r26
 829 0284 DB06      		cpc r13,r27
 830               	.LVL72:
 831 0286 01F4      		brne .L41
 832               	.LSM54:
 833 0288 3501      		movw r6,r10
 834 028a 4601      		movw r8,r12
 835               	.LVL73:
 836 028c 0B89      		ldd r16,Y+19
 837 028e 1C89      		ldd r17,Y+20
 838 0290 2D89      		ldd r18,Y+21
 839 0292 3E89      		ldd r19,Y+22
 840 0294 601A      		sub r6,r16
 841 0296 710A      		sbc r7,r17
 842 0298 820A      		sbc r8,r18
 843 029a 930A      		sbc r9,r19
 844 029c 2224      		clr r2
 845 029e 3324      		clr r3
 846 02a0 2101      		movw r4,r2
 847               	.LVL74:
 848 02a2 00C0      		rjmp .L42
 849               	.LVL75:
 850               	.L41:
 851               	.LSM55:
 852 02a4 2B89      		ldd r18,Y+19
 853 02a6 3C89      		ldd r19,Y+20
 854 02a8 4D89      		ldd r20,Y+21
 855 02aa 5E89      		ldd r21,Y+22
 856 02ac A216      		cp r10,r18
 857 02ae B306      		cpc r11,r19
 858 02b0 C406      		cpc r12,r20
 859 02b2 D506      		cpc r13,r21
 860 02b4 00F4      		brsh .L43
 861               	.LBB76:
 862               	.LSM56:
 863 02b6 3901      		movw r6,r18
 864 02b8 4A01      		movw r8,r20
 865               	.LVL76:
 866 02ba 6A18      		sub r6,r10
 867 02bc 7B08      		sbc r7,r11
 868 02be 8C08      		sbc r8,r12
 869 02c0 9D08      		sbc r9,r13
 870               	.LSM57:
 871 02c2 EF84      		ldd r14,Y+15
 872 02c4 F888      		ldd r15,Y+16
 873 02c6 0989      		ldd r16,Y+17
 874 02c8 1A89      		ldd r17,Y+18
 875               	.LVL77:
 876 02ca E618      		sub r14,r6
 877 02cc F708      		sbc r15,r7
 878 02ce 0809      		sbc r16,r8
 879 02d0 1909      		sbc r17,r9
 880               	.LSM58:
 881 02d2 9C01      		movw r18,r24
 882 02d4 AD01      		movw r20,r26
 883 02d6 2B88      		ldd r2,Y+19
 884 02d8 3C88      		ldd r3,Y+20
 885 02da 4D88      		ldd r4,Y+21
 886 02dc 5E88      		ldd r5,Y+22
 887 02de 2219      		sub r18,r2
 888 02e0 3309      		sbc r19,r3
 889 02e2 4409      		sbc r20,r4
 890 02e4 5509      		sbc r21,r5
 891 02e6 1695      		lsr r17
 892 02e8 0795      		ror r16
 893 02ea F794      		ror r15
 894 02ec E794      		ror r14
 895 02ee 2E15      		cp r18,r14
 896 02f0 3F05      		cpc r19,r15
 897 02f2 4007      		cpc r20,r16
 898 02f4 5107      		cpc r21,r17
 899 02f6 00F4      		brsh .L44
 900 02f8 7901      		movw r14,r18
 901 02fa 8A01      		movw r16,r20
 902               	.L44:
 903               	.LSM59:
 904 02fc 1701      		movw r2,r14
 905 02fe 2801      		movw r4,r16
 906               	.LVL78:
 907 0300 260C      		add r2,r6
 908 0302 371C      		adc r3,r7
 909 0304 481C      		adc r4,r8
 910 0306 591C      		adc r5,r9
 911 0308 3701      		movw r6,r14
 912 030a 4801      		movw r8,r16
 913               	.LVL79:
 914 030c 00C0      		rjmp .L42
 915               	.LVL80:
 916               	.L43:
 917               	.LBE76:
 918               	.LBB77:
 919               	.LSM60:
 920 030e 3501      		movw r6,r10
 921 0310 4601      		movw r8,r12
 922               	.LVL81:
 923 0312 EB88      		ldd r14,Y+19
 924 0314 FC88      		ldd r15,Y+20
 925 0316 0D89      		ldd r16,Y+21
 926 0318 1E89      		ldd r17,Y+22
 927 031a 6E18      		sub r6,r14
 928 031c 7F08      		sbc r7,r15
 929 031e 800A      		sbc r8,r16
 930 0320 910A      		sbc r9,r17
 931               	.LSM61:
 932 0322 EF84      		ldd r14,Y+15
 933 0324 F888      		ldd r15,Y+16
 934 0326 0989      		ldd r16,Y+17
 935 0328 1A89      		ldd r17,Y+18
 936               	.LVL82:
 937 032a E618      		sub r14,r6
 938 032c F708      		sbc r15,r7
 939 032e 0809      		sbc r16,r8
 940 0330 1909      		sbc r17,r9
 941               	.LSM62:
 942 0332 9C01      		movw r18,r24
 943 0334 AD01      		movw r20,r26
 944 0336 2A19      		sub r18,r10
 945 0338 3B09      		sbc r19,r11
 946 033a 4C09      		sbc r20,r12
 947 033c 5D09      		sbc r21,r13
 948 033e 1695      		lsr r17
 949 0340 0795      		ror r16
 950 0342 F794      		ror r15
 951 0344 E794      		ror r14
 952 0346 2E15      		cp r18,r14
 953 0348 3F05      		cpc r19,r15
 954 034a 4007      		cpc r20,r16
 955 034c 5107      		cpc r21,r17
 956 034e 00F4      		brsh .L45
 957 0350 7901      		movw r14,r18
 958 0352 8A01      		movw r16,r20
 959               	.L45:
 960               	.LSM63:
 961 0354 6E0C      		add r6,r14
 962 0356 7F1C      		adc r7,r15
 963 0358 801E      		adc r8,r16
 964 035a 911E      		adc r9,r17
 965               	.LVL83:
 966 035c 1701      		movw r2,r14
 967 035e 2801      		movw r4,r16
 968               	.LVL84:
 969               	.L42:
 970               	.LBE77:
 971               	.LSM64:
 972 0360 6B8D      		ldd r22,Y+27
 973 0362 7C8D      		ldd r23,Y+28
 974 0364 8D8D      		ldd r24,Y+29
 975               	.LVL85:
 976 0366 9E8D      		ldd r25,Y+30
 977 0368 9B01      		movw r18,r22
 978 036a AC01      		movw r20,r24
 979 036c 0E94 0000 		call __mulsi3
 980 0370 2CEF      		ldi r18,lo8(2812)
 981 0372 3AE0      		ldi r19,hi8(2812)
 982 0374 40E0      		ldi r20,hlo8(2812)
 983 0376 50E0      		ldi r21,hhi8(2812)
 984 0378 0E94 0000 		call __udivmodsi4
 985 037c C901      		movw r24,r18
 986 037e DA01      		movw r26,r20
 987               	.LSM65:
 988 0380 A816      		cp r10,r24
 989 0382 B906      		cpc r11,r25
 990 0384 CA06      		cpc r12,r26
 991 0386 DB06      		cpc r13,r27
 992               	.LVL86:
 993 0388 01F4      		brne .L46
 994 038a AE82      		std Y+6,r10
 995 038c BF82      		std Y+7,r11
 996 038e C886      		std Y+8,r12
 997 0390 D986      		std Y+9,r13
 998               	.LVL87:
 999 0392 20E0      		ldi r18,lo8(0)
 1000 0394 30E0      		ldi r19,hi8(0)
 1001 0396 40E0      		ldi r20,hlo8(0)
 1002 0398 50E0      		ldi r21,hhi8(0)
 1003               	.LVL88:
 1004 039a 00C0      		rjmp .L47
 1005               	.LVL89:
 1006               	.L46:
 1007               	.LBB78:
 1008               	.LSM66:
 1009 039c EA80      		ldd r14,Y+2
 1010 039e FB80      		ldd r15,Y+3
 1011 03a0 0C81      		ldd r16,Y+4
 1012 03a2 1D81      		ldd r17,Y+5
 1013               	.LVL90:
 1014 03a4 EA18      		sub r14,r10
 1015 03a6 FB08      		sbc r15,r11
 1016 03a8 0C09      		sbc r16,r12
 1017 03aa 1D09      		sbc r17,r13
 1018               	.LSM67:
 1019 03ac 9C01      		movw r18,r24
 1020 03ae AD01      		movw r20,r26
 1021 03b0 2A19      		sub r18,r10
 1022 03b2 3B09      		sbc r19,r11
 1023 03b4 4C09      		sbc r20,r12
 1024 03b6 5D09      		sbc r21,r13
 1025 03b8 1695      		lsr r17
 1026 03ba 0795      		ror r16
 1027 03bc F794      		ror r15
 1028 03be E794      		ror r14
 1029               	.LVL91:
 1030 03c0 2E15      		cp r18,r14
 1031 03c2 3F05      		cpc r19,r15
 1032 03c4 4007      		cpc r20,r16
 1033 03c6 5107      		cpc r21,r17
 1034 03c8 00F4      		brsh .L48
 1035 03ca 7901      		movw r14,r18
 1036 03cc 8A01      		movw r16,r20
 1037               	.L48:
 1038               	.LSM68:
 1039 03ce A801      		movw r20,r16
 1040 03d0 9701      		movw r18,r14
 1041 03d2 2A0D      		add r18,r10
 1042 03d4 3B1D      		adc r19,r11
 1043 03d6 4C1D      		adc r20,r12
 1044 03d8 5D1D      		adc r21,r13
 1045 03da 2E83      		std Y+6,r18
 1046 03dc 3F83      		std Y+7,r19
 1047 03de 4887      		std Y+8,r20
 1048 03e0 5987      		std Y+9,r21
 1049               	.LVL92:
 1050 03e2 A801      		movw r20,r16
 1051 03e4 9701      		movw r18,r14
 1052               	.LVL93:
 1053               	.L47:
 1054               	.LBE78:
 1055               	.LBB79:
 1056               	.LSM69:
 1057 03e6 6FB7      		in r22,__SREG__
 1058               	.LVL94:
 1059               	/* #APP */
 1060               	 ;  434 "dda_lookahead.c" 1
 1061 03e8 F894      		cli
 1062               	 ;  0 "" 2
 1063               	.LSM70:
 1064               	/* #NOAPP */
 1065 03ea 8091 0000 		lds r24,lookahead_joined
 1066 03ee 9091 0000 		lds r25,(lookahead_joined)+1
 1067 03f2 A091 0000 		lds r26,(lookahead_joined)+2
 1068 03f6 B091 0000 		lds r27,(lookahead_joined)+3
 1069               	.LVL95:
 1070 03fa 0196      		adiw r24,1
 1071 03fc A11D      		adc r26,__zero_reg__
 1072 03fe B11D      		adc r27,__zero_reg__
 1073 0400 8093 0000 		sts lookahead_joined,r24
 1074 0404 9093 0000 		sts (lookahead_joined)+1,r25
 1075 0408 A093 0000 		sts (lookahead_joined)+2,r26
 1076 040c B093 0000 		sts (lookahead_joined)+3,r27
 1077               	.LSM71:
 1078 0410 ABA1      		ldd r26,Y+35
 1079 0412 BCA1      		ldd r27,Y+36
 1080 0414 5596      		adiw r26,21
 1081 0416 8C91      		ld r24,X
 1082 0418 5597      		sbiw r26,21
 1083 041a 81FD      		sbrc r24,1
 1084 041c 00C0      		rjmp .L49
 1085 041e A959      		subi r26,lo8(-(103))
 1086 0420 BF4F      		sbci r27,hi8(-(103))
 1087 0422 8C91      		ld r24,X
 1088 0424 A756      		subi r26,lo8(-(-103))
 1089 0426 B040      		sbci r27,hi8(-(-103))
 1090 0428 BCA3      		std Y+36,r27
 1091 042a ABA3      		std Y+35,r26
 1092               	.LVL96:
 1093 042c BA85      		ldd r27,Y+10
 1094 042e 8B17      		cp r24,r27
 1095 0430 01F0      		breq .+2
 1096 0432 00C0      		rjmp .L49
 1097 0434 EF89      		ldd r30,Y+23
 1098 0436 F88D      		ldd r31,Y+24
 1099 0438 8589      		ldd r24,Z+21
 1100 043a 81FD      		sbrc r24,1
 1101 043c 00C0      		rjmp .L49
 1102 043e E959      		subi r30,lo8(-(103))
 1103 0440 FF4F      		sbci r31,hi8(-(103))
 1104 0442 8081      		ld r24,Z
 1105 0444 E756      		subi r30,lo8(-(-103))
 1106 0446 F040      		sbci r31,hi8(-(-103))
 1107 0448 F88F      		std Y+24,r31
 1108 044a EF8B      		std Y+23,r30
 1109               	.LVL97:
 1110 044c F981      		ldd r31,Y+1
 1111 044e 8F17      		cp r24,r31
 1112 0450 01F0      		breq .+2
 1113 0452 00C0      		rjmp .L49
 1114               	.LSM72:
 1115 0454 0BA1      		ldd r16,Y+35
 1116 0456 1CA1      		ldd r17,Y+36
 1117 0458 0D5A      		subi r16,lo8(-(83))
 1118 045a 1F4F      		sbci r17,hi8(-(83))
 1119 045c D801      		movw r26,r16
 1120 045e AD92      		st X+,r10
 1121 0460 BD92      		st X+,r11
 1122 0462 CD92      		st X+,r12
 1123 0464 DC92      		st X,r13
 1124 0466 1397      		sbiw r26,3
 1125 0468 A355      		subi r26,lo8(-(-83))
 1126 046a B040      		sbci r27,hi8(-(-83))
 1127               	.LSM73:
 1128 046c FD01      		movw r30,r26
 1129 046e 63AE      		std Z+59,r6
 1130 0470 74AE      		std Z+60,r7
 1131 0472 85AE      		std Z+61,r8
 1132 0474 96AE      		std Z+62,r9
 1133               	.LSM74:
 1134 0476 FF96      		adiw r30,63
 1135 0478 FCA3      		std Y+36,r31
 1136 047a EBA3      		std Y+35,r30
 1137               	.LVL98:
 1138 047c EF84      		ldd r14,Y+15
 1139 047e F888      		ldd r15,Y+16
 1140 0480 0989      		ldd r16,Y+17
 1141 0482 1A89      		ldd r17,Y+18
 1142               	.LVL99:
 1143 0484 E218      		sub r14,r2
 1144 0486 F308      		sbc r15,r3
 1145 0488 0409      		sbc r16,r4
 1146 048a 1509      		sbc r17,r5
 1147 048c E082      		st Z,r14
 1148 048e F182      		std Z+1,r15
 1149 0490 0283      		std Z+2,r16
 1150 0492 1383      		std Z+3,r17
 1151               	.LSM75:
 1152 0494 EF89      		ldd r30,Y+23
 1153 0496 F88D      		ldd r31,Y+24
 1154 0498 23AF      		std Z+59,r18
 1155 049a 34AF      		std Z+60,r19
 1156 049c 45AF      		std Z+61,r20
 1157 049e 56AF      		std Z+62,r21
 1158               	.LSM76:
 1159 04a0 FF96      		adiw r30,63
 1160 04a2 2A80      		ldd r2,Y+2
 1161 04a4 3B80      		ldd r3,Y+3
 1162 04a6 4C80      		ldd r4,Y+4
 1163 04a8 5D80      		ldd r5,Y+5
 1164               	.LVL100:
 1165 04aa EE80      		ldd r14,Y+6
 1166 04ac FF80      		ldd r15,Y+7
 1167 04ae 0885      		ldd r16,Y+8
 1168 04b0 1985      		ldd r17,Y+9
 1169 04b2 2E18      		sub r2,r14
 1170 04b4 3F08      		sbc r3,r15
 1171 04b6 400A      		sbc r4,r16
 1172 04b8 510A      		sbc r5,r17
 1173 04ba DF01      		movw r26,r30
 1174 04bc 2082      		st Z,r2
 1175 04be 3182      		std Z+1,r3
 1176 04c0 4282      		std Z+2,r4
 1177 04c2 5382      		std Z+3,r5
 1178               	.LSM77:
 1179 04c4 5496      		adiw r26,20
 1180 04c6 B88F      		std Y+24,r27
 1181 04c8 AF8B      		std Y+23,r26
 1182               	.LVL101:
 1183 04ca FD01      		movw r30,r26
 1184 04cc 1082      		st Z,__zero_reg__
 1185 04ce 1182      		std Z+1,__zero_reg__
 1186 04d0 1282      		std Z+2,__zero_reg__
 1187 04d2 1382      		std Z+3,__zero_reg__
 1188               	.LSM78:
 1189 04d4 D292      		st -Z,r13
 1190 04d6 C292      		st -Z,r12
 1191 04d8 B292      		st -Z,r11
 1192 04da A292      		st -Z,r10
 1193               	.LSM79:
 1194 04dc 8091 0000 		lds r24,la_cnt.2125
 1195 04e0 9091 0000 		lds r25,(la_cnt.2125)+1
 1196 04e4 A091 0000 		lds r26,(la_cnt.2125)+2
 1197 04e8 B091 0000 		lds r27,(la_cnt.2125)+3
 1198 04ec 0196      		adiw r24,1
 1199 04ee A11D      		adc r26,__zero_reg__
 1200 04f0 B11D      		adc r27,__zero_reg__
 1201 04f2 8093 0000 		sts la_cnt.2125,r24
 1202 04f6 9093 0000 		sts (la_cnt.2125)+1,r25
 1203 04fa A093 0000 		sts (la_cnt.2125)+2,r26
 1204 04fe B093 0000 		sts (la_cnt.2125)+3,r27
 1205 0502 80E0      		ldi r24,lo8(0)
 1206               	.LVL102:
 1207 0504 00C0      		rjmp .L50
 1208               	.LVL103:
 1209               	.L49:
 1210               	.LSM80:
 1211 0506 81E0      		ldi r24,lo8(1)
 1212               	.LVL104:
 1213               	.L50:
 1214               	.LSM81:
 1215 0508 6FBF      		out __SREG__,r22
 1216               	.LBE79:
 1217               	.LSM82:
 1218 050a 8823      		tst r24
 1219 050c 01F0      		breq .L51
 1220               	.LSM83:
 1221 050e 0F92      		push __tmp_reg__
 1222 0510 0F92      		push __tmp_reg__
 1223 0512 80E0      		ldi r24,lo8(__c.2137)
 1224 0514 90E0      		ldi r25,hi8(__c.2137)
 1225               	.LVL105:
 1226 0516 ADB7      		in r26,__SP_L__
 1227 0518 BEB7      		in r27,__SP_H__
 1228 051a 1296      		adiw r26,1+1
 1229 051c 9C93      		st X,r25
 1230 051e 8E93      		st -X,r24
 1231 0520 1197      		sbiw r26,1
 1232 0522 0E94 0000 		call sersendf_P
 1233               	.LVL106:
 1234               	.LSM84:
 1235 0526 8091 0000 		lds r24,lookahead_timeout
 1236 052a 9091 0000 		lds r25,(lookahead_timeout)+1
 1237 052e A091 0000 		lds r26,(lookahead_timeout)+2
 1238 0532 B091 0000 		lds r27,(lookahead_timeout)+3
 1239 0536 0196      		adiw r24,1
 1240 0538 A11D      		adc r26,__zero_reg__
 1241 053a B11D      		adc r27,__zero_reg__
 1242 053c 8093 0000 		sts lookahead_timeout,r24
 1243 0540 9093 0000 		sts (lookahead_timeout)+1,r25
 1244 0544 A093 0000 		sts (lookahead_timeout)+2,r26
 1245 0548 B093 0000 		sts (lookahead_timeout)+3,r27
 1246 054c 0F90      		pop __tmp_reg__
 1247 054e 0F90      		pop __tmp_reg__
 1248               	.LVL107:
 1249               	.L51:
 1250               	/* epilogue start */
 1251               	.LBE71:
 1252               	.LSM85:
 1253 0550 A496      		adiw r28,36
 1254 0552 E2E1      		ldi r30, lo8(18)
 1255 0554 0C94 0000 		jmp __epilogue_restores__ + ((18 - 18) * 2)
 1256               	.LFE21:
 1258               		.section	.text.dda_find_crossing_speed,"ax",@progbits
 1259               	.global	dda_find_crossing_speed
 1261               	dda_find_crossing_speed:
 1262               	.LFB20:
 1263               	.LSM86:
 1264               	.LVL108:
 1265 0000 A6E2      		ldi r26,lo8(38)
 1266 0002 B0E0      		ldi r27,hi8(38)
 1267 0004 E0E0      		ldi r30,lo8(gs(1f))
 1268 0006 F0E0      		ldi r31,hi8(gs(1f))
 1269 0008 0C94 0000 		jmp __prologue_saves__+((18 - 18) * 2)
 1270               	1:
 1271               	/* prologue: function */
 1272               	/* frame size = 38 */
 1273 000c 9EA3      		std Y+38,r25
 1274 000e 8DA3      		std Y+37,r24
 1275 0010 7AA3      		std Y+34,r23
 1276 0012 69A3      		std Y+33,r22
 1277               	.LSM87:
 1278 0014 0097      		sbiw r24,0
 1279 0016 01F4      		brne .+2
 1280 0018 00C0      		rjmp .L77
 1281               	.LVL109:
 1282 001a DC01      		movw r26,r24
 1283 001c 5596      		adiw r26,21
 1284 001e 8C91      		ld r24,X
 1285 0020 5597      		sbiw r26,21
 1286               	.LVL110:
 1287 0022 80FD      		sbrc r24,0
 1288 0024 00C0      		rjmp .L77
 1289               	.LSM88:
 1290 0026 5096      		adiw r26,16
 1291 0028 8D91      		ld r24,X+
 1292 002a 9D91      		ld r25,X+
 1293 002c 0D90      		ld __tmp_reg__,X+
 1294 002e BC91      		ld r27,X
 1295 0030 A02D      		mov r26,__tmp_reg__
 1296               	.LVL111:
 1297 0032 FB01      		movw r30,r22
 1298 0034 2089      		ldd r18,Z+16
 1299 0036 3189      		ldd r19,Z+17
 1300 0038 4289      		ldd r20,Z+18
 1301 003a 5389      		ldd r21,Z+19
 1302 003c 2983      		std Y+1,r18
 1303 003e 3A83      		std Y+2,r19
 1304 0040 4B83      		std Y+3,r20
 1305 0042 5C83      		std Y+4,r21
 1306               	.LVL112:
 1307 0044 8217      		cp r24,r18
 1308 0046 9307      		cpc r25,r19
 1309 0048 A407      		cpc r26,r20
 1310 004a B507      		cpc r27,r21
 1311 004c 00F4      		brsh .L54
 1312               	.LVL113:
 1313 004e 8983      		std Y+1,r24
 1314 0050 9A83      		std Y+2,r25
 1315 0052 AB83      		std Y+3,r26
 1316 0054 BC83      		std Y+4,r27
 1317               	.L54:
 1318               	.LSM89:
 1319 0056 8091 0000 		lds r24,debug_flags
 1320               	.LVL114:
 1321 005a 85FF      		sbrs r24,5
 1322 005c 00C0      		rjmp .L55
 1323               	.LSM90:
 1324 005e 2DB7      		in r18,__SP_L__
 1325 0060 3EB7      		in r19,__SP_H__
 1326 0062 2A50      		subi r18,lo8(-(-10))
 1327 0064 3040      		sbci r19,hi8(-(-10))
 1328 0066 0FB6      		in __tmp_reg__,__SREG__
 1329 0068 F894      		cli
 1330 006a 3EBF      		out __SP_H__,r19
 1331 006c 0FBE      		out __SREG__,__tmp_reg__
 1332 006e 2DBF      		out __SP_L__,r18
 1333 0070 EDB7      		in r30,__SP_L__
 1334 0072 FEB7      		in r31,__SP_H__
 1335 0074 3196      		adiw r30,1
 1336 0076 80E0      		ldi r24,lo8(__c.2040)
 1337 0078 90E0      		ldi r25,hi8(__c.2040)
 1338 007a ADB7      		in r26,__SP_L__
 1339 007c BEB7      		in r27,__SP_H__
 1340 007e 1296      		adiw r26,1+1
 1341 0080 9C93      		st X,r25
 1342 0082 8E93      		st -X,r24
 1343 0084 1197      		sbiw r26,1
 1344 0086 2DA1      		ldd r18,Y+37
 1345 0088 3EA1      		ldd r19,Y+38
 1346 008a 295B      		subi r18,lo8(-(71))
 1347 008c 3F4F      		sbci r19,hi8(-(71))
 1348 008e D901      		movw r26,r18
 1349 0090 2D91      		ld r18,X+
 1350 0092 3D91      		ld r19,X+
 1351 0094 4D91      		ld r20,X+
 1352 0096 5C91      		ld r21,X
 1353 0098 1397      		sbiw r26,3
 1354 009a A754      		subi r26,lo8(-(-71))
 1355 009c B040      		sbci r27,hi8(-(-71))
 1356 009e BEA3      		std Y+38,r27
 1357 00a0 ADA3      		std Y+37,r26
 1358               	.LVL115:
 1359 00a2 2283      		std Z+2,r18
 1360 00a4 3383      		std Z+3,r19
 1361 00a6 4483      		std Z+4,r20
 1362 00a8 5583      		std Z+5,r21
 1363 00aa 29A1      		ldd r18,Y+33
 1364 00ac 3AA1      		ldd r19,Y+34
 1365 00ae 295B      		subi r18,lo8(-(71))
 1366 00b0 3F4F      		sbci r19,hi8(-(71))
 1367 00b2 D901      		movw r26,r18
 1368 00b4 2D91      		ld r18,X+
 1369 00b6 3D91      		ld r19,X+
 1370 00b8 4D91      		ld r20,X+
 1371 00ba 5C91      		ld r21,X
 1372 00bc 1397      		sbiw r26,3
 1373 00be A754      		subi r26,lo8(-(-71))
 1374 00c0 B040      		sbci r27,hi8(-(-71))
 1375 00c2 BAA3      		std Y+34,r27
 1376 00c4 A9A3      		std Y+33,r26
 1377               	.LVL116:
 1378 00c6 2683      		std Z+6,r18
 1379 00c8 3783      		std Z+7,r19
 1380 00ca 4087      		std Z+8,r20
 1381 00cc 5187      		std Z+9,r21
 1382 00ce 0E94 0000 		call sersendf_P
 1383 00d2 EDB7      		in r30,__SP_L__
 1384 00d4 FEB7      		in r31,__SP_H__
 1385 00d6 3A96      		adiw r30,10
 1386 00d8 0FB6      		in __tmp_reg__,__SREG__
 1387 00da F894      		cli
 1388 00dc FEBF      		out __SP_H__,r31
 1389 00de 0FBE      		out __SREG__,__tmp_reg__
 1390 00e0 EDBF      		out __SP_L__,r30
 1391               	.LVL117:
 1392               	.L55:
 1393               	.LSM91:
 1394 00e2 2DA1      		ldd r18,Y+37
 1395 00e4 3EA1      		ldd r19,Y+38
 1396 00e6 295B      		subi r18,lo8(-(71))
 1397 00e8 3F4F      		sbci r19,hi8(-(71))
 1398 00ea 3CA3      		std Y+36,r19
 1399 00ec 2BA3      		std Y+35,r18
 1400 00ee D901      		movw r26,r18
 1401 00f0 AD90      		ld r10,X+
 1402 00f2 BD90      		ld r11,X+
 1403 00f4 CD90      		ld r12,X+
 1404 00f6 DC90      		ld r13,X
 1405               	.LBB103:
 1406               	.LSM92:
 1407 00f8 EDA1      		ldd r30,Y+37
 1408 00fa FEA1      		ldd r31,Y+38
 1409 00fc E95A      		subi r30,lo8(-(87))
 1410 00fe FF4F      		sbci r31,hi8(-(87))
 1411 0100 2190      		ld r2,Z+
 1412 0102 3190      		ld r3,Z+
 1413 0104 4190      		ld r4,Z+
 1414 0106 5190      		ld r5,Z+
 1415 0108 FEA3      		std Y+38,r31
 1416 010a EDA3      		std Y+37,r30
 1417               	.LVL118:
 1418 010c 6981      		ldd r22,Y+1
 1419 010e 7A81      		ldd r23,Y+2
 1420 0110 8B81      		ldd r24,Y+3
 1421 0112 9C81      		ldd r25,Y+4
 1422 0114 A601      		movw r20,r12
 1423 0116 9501      		movw r18,r10
 1424 0118 0E94 0000 		call __udivmodsi4
 1425 011c 7B01      		movw r14,r22
 1426 011e 8C01      		movw r16,r24
 1427 0120 C201      		movw r24,r4
 1428 0122 B101      		movw r22,r2
 1429 0124 0E94 0000 		call muldivQR
 1430 0128 6D8F      		std Y+29,r22
 1431 012a 7E8F      		std Y+30,r23
 1432 012c 8F8F      		std Y+31,r24
 1433 012e 98A3      		std Y+32,r25
 1434               	.LVL119:
 1435               	.LBE103:
 1436               	.LSM93:
 1437 0130 ABA1      		ldd r26,Y+35
 1438 0132 BCA1      		ldd r27,Y+36
 1439 0134 AD90      		ld r10,X+
 1440 0136 BD90      		ld r11,X+
 1441 0138 CD90      		ld r12,X+
 1442 013a DC90      		ld r13,X
 1443               	.LBB104:
 1444               	.LSM94:
 1445 013c EDA1      		ldd r30,Y+37
 1446 013e FEA1      		ldd r31,Y+38
 1447 0140 2190      		ld r2,Z+
 1448 0142 3190      		ld r3,Z+
 1449 0144 4190      		ld r4,Z+
 1450 0146 5190      		ld r5,Z+
 1451 0148 FEA3      		std Y+38,r31
 1452 014a EDA3      		std Y+37,r30
 1453               	.LVL120:
 1454 014c 6981      		ldd r22,Y+1
 1455 014e 7A81      		ldd r23,Y+2
 1456 0150 8B81      		ldd r24,Y+3
 1457 0152 9C81      		ldd r25,Y+4
 1458 0154 A601      		movw r20,r12
 1459 0156 9501      		movw r18,r10
 1460 0158 0E94 0000 		call __udivmodsi4
 1461 015c 7B01      		movw r14,r22
 1462 015e 8C01      		movw r16,r24
 1463 0160 C201      		movw r24,r4
 1464 0162 B101      		movw r22,r2
 1465 0164 0E94 0000 		call muldivQR
 1466 0168 698F      		std Y+25,r22
 1467 016a 7A8F      		std Y+26,r23
 1468 016c 8B8F      		std Y+27,r24
 1469 016e 9C8F      		std Y+28,r25
 1470               	.LVL121:
 1471               	.LBE104:
 1472               	.LSM95:
 1473 0170 ABA1      		ldd r26,Y+35
 1474 0172 BCA1      		ldd r27,Y+36
 1475 0174 AD90      		ld r10,X+
 1476 0176 BD90      		ld r11,X+
 1477 0178 CD90      		ld r12,X+
 1478 017a DC90      		ld r13,X
 1479               	.LBB105:
 1480               	.LSM96:
 1481 017c EDA1      		ldd r30,Y+37
 1482 017e FEA1      		ldd r31,Y+38
 1483 0180 2190      		ld r2,Z+
 1484 0182 3190      		ld r3,Z+
 1485 0184 4190      		ld r4,Z+
 1486 0186 5190      		ld r5,Z+
 1487 0188 FEA3      		std Y+38,r31
 1488 018a EDA3      		std Y+37,r30
 1489               	.LVL122:
 1490 018c 6981      		ldd r22,Y+1
 1491 018e 7A81      		ldd r23,Y+2
 1492 0190 8B81      		ldd r24,Y+3
 1493 0192 9C81      		ldd r25,Y+4
 1494 0194 A601      		movw r20,r12
 1495 0196 9501      		movw r18,r10
 1496 0198 0E94 0000 		call __udivmodsi4
 1497 019c 7B01      		movw r14,r22
 1498 019e 8C01      		movw r16,r24
 1499 01a0 C201      		movw r24,r4
 1500 01a2 B101      		movw r22,r2
 1501 01a4 0E94 0000 		call muldivQR
 1502 01a8 6D8B      		std Y+21,r22
 1503 01aa 7E8B      		std Y+22,r23
 1504 01ac 8F8B      		std Y+23,r24
 1505 01ae 988F      		std Y+24,r25
 1506               	.LVL123:
 1507               	.LBE105:
 1508               	.LSM97:
 1509 01b0 ABA1      		ldd r26,Y+35
 1510 01b2 BCA1      		ldd r27,Y+36
 1511 01b4 AD90      		ld r10,X+
 1512 01b6 BD90      		ld r11,X+
 1513 01b8 CD90      		ld r12,X+
 1514 01ba DC90      		ld r13,X
 1515               	.LBB106:
 1516               	.LSM98:
 1517 01bc EDA1      		ldd r30,Y+37
 1518 01be FEA1      		ldd r31,Y+38
 1519 01c0 2080      		ld r2,Z
 1520 01c2 3180      		ldd r3,Z+1
 1521 01c4 4280      		ldd r4,Z+2
 1522 01c6 5380      		ldd r5,Z+3
 1523 01c8 6981      		ldd r22,Y+1
 1524 01ca 7A81      		ldd r23,Y+2
 1525 01cc 8B81      		ldd r24,Y+3
 1526 01ce 9C81      		ldd r25,Y+4
 1527 01d0 A601      		movw r20,r12
 1528 01d2 9501      		movw r18,r10
 1529 01d4 0E94 0000 		call __udivmodsi4
 1530 01d8 7B01      		movw r14,r22
 1531 01da 8C01      		movw r16,r24
 1532 01dc C201      		movw r24,r4
 1533 01de B101      		movw r22,r2
 1534 01e0 0E94 0000 		call muldivQR
 1535 01e4 698B      		std Y+17,r22
 1536 01e6 7A8B      		std Y+18,r23
 1537 01e8 8B8B      		std Y+19,r24
 1538 01ea 9C8B      		std Y+20,r25
 1539               	.LVL124:
 1540               	.LBE106:
 1541               	.LSM99:
 1542 01ec E9A1      		ldd r30,Y+33
 1543 01ee FAA1      		ldd r31,Y+34
 1544 01f0 E95B      		subi r30,lo8(-(71))
 1545 01f2 FF4F      		sbci r31,hi8(-(71))
 1546 01f4 FEA3      		std Y+38,r31
 1547 01f6 EDA3      		std Y+37,r30
 1548 01f8 A080      		ld r10,Z
 1549 01fa B180      		ldd r11,Z+1
 1550 01fc C280      		ldd r12,Z+2
 1551 01fe D380      		ldd r13,Z+3
 1552               	.LBB107:
 1553               	.LSM100:
 1554 0200 29A1      		ldd r18,Y+33
 1555 0202 3AA1      		ldd r19,Y+34
 1556 0204 295A      		subi r18,lo8(-(87))
 1557 0206 3F4F      		sbci r19,hi8(-(87))
 1558 0208 D901      		movw r26,r18
 1559 020a 2D90      		ld r2,X+
 1560 020c 3D90      		ld r3,X+
 1561 020e 4D90      		ld r4,X+
 1562 0210 5D90      		ld r5,X+
 1563 0212 BAA3      		std Y+34,r27
 1564 0214 A9A3      		std Y+33,r26
 1565               	.LVL125:
 1566 0216 6981      		ldd r22,Y+1
 1567 0218 7A81      		ldd r23,Y+2
 1568 021a 8B81      		ldd r24,Y+3
 1569 021c 9C81      		ldd r25,Y+4
 1570 021e A601      		movw r20,r12
 1571 0220 9501      		movw r18,r10
 1572 0222 0E94 0000 		call __udivmodsi4
 1573 0226 7B01      		movw r14,r22
 1574 0228 8C01      		movw r16,r24
 1575 022a C201      		movw r24,r4
 1576 022c B101      		movw r22,r2
 1577 022e 0E94 0000 		call muldivQR
 1578 0232 6D87      		std Y+13,r22
 1579 0234 7E87      		std Y+14,r23
 1580 0236 8F87      		std Y+15,r24
 1581 0238 988B      		std Y+16,r25
 1582               	.LVL126:
 1583               	.LBE107:
 1584               	.LSM101:
 1585 023a EDA1      		ldd r30,Y+37
 1586 023c FEA1      		ldd r31,Y+38
 1587 023e A080      		ld r10,Z
 1588 0240 B180      		ldd r11,Z+1
 1589 0242 C280      		ldd r12,Z+2
 1590 0244 D380      		ldd r13,Z+3
 1591               	.LBB108:
 1592               	.LSM102:
 1593 0246 A9A1      		ldd r26,Y+33
 1594 0248 BAA1      		ldd r27,Y+34
 1595 024a 2D90      		ld r2,X+
 1596 024c 3D90      		ld r3,X+
 1597 024e 4D90      		ld r4,X+
 1598 0250 5D90      		ld r5,X+
 1599 0252 BAA3      		std Y+34,r27
 1600 0254 A9A3      		std Y+33,r26
 1601               	.LVL127:
 1602 0256 6981      		ldd r22,Y+1
 1603 0258 7A81      		ldd r23,Y+2
 1604 025a 8B81      		ldd r24,Y+3
 1605 025c 9C81      		ldd r25,Y+4
 1606 025e A601      		movw r20,r12
 1607 0260 9501      		movw r18,r10
 1608 0262 0E94 0000 		call __udivmodsi4
 1609 0266 7B01      		movw r14,r22
 1610 0268 8C01      		movw r16,r24
 1611 026a C201      		movw r24,r4
 1612 026c B101      		movw r22,r2
 1613 026e 0E94 0000 		call muldivQR
 1614 0272 6987      		std Y+9,r22
 1615 0274 7A87      		std Y+10,r23
 1616 0276 8B87      		std Y+11,r24
 1617 0278 9C87      		std Y+12,r25
 1618               	.LVL128:
 1619               	.LBE108:
 1620               	.LSM103:
 1621 027a EDA1      		ldd r30,Y+37
 1622 027c FEA1      		ldd r31,Y+38
 1623 027e A080      		ld r10,Z
 1624 0280 B180      		ldd r11,Z+1
 1625 0282 C280      		ldd r12,Z+2
 1626 0284 D380      		ldd r13,Z+3
 1627               	.LBB109:
 1628               	.LSM104:
 1629 0286 A9A1      		ldd r26,Y+33
 1630 0288 BAA1      		ldd r27,Y+34
 1631 028a 2D90      		ld r2,X+
 1632 028c 3D90      		ld r3,X+
 1633 028e 4D90      		ld r4,X+
 1634 0290 5D90      		ld r5,X+
 1635 0292 BAA3      		std Y+34,r27
 1636 0294 A9A3      		std Y+33,r26
 1637               	.LVL129:
 1638 0296 6981      		ldd r22,Y+1
 1639 0298 7A81      		ldd r23,Y+2
 1640 029a 8B81      		ldd r24,Y+3
 1641 029c 9C81      		ldd r25,Y+4
 1642 029e A601      		movw r20,r12
 1643 02a0 9501      		movw r18,r10
 1644 02a2 0E94 0000 		call __udivmodsi4
 1645 02a6 7B01      		movw r14,r22
 1646 02a8 8C01      		movw r16,r24
 1647 02aa C201      		movw r24,r4
 1648 02ac B101      		movw r22,r2
 1649 02ae 0E94 0000 		call muldivQR
 1650 02b2 6D83      		std Y+5,r22
 1651 02b4 7E83      		std Y+6,r23
 1652 02b6 8F83      		std Y+7,r24
 1653 02b8 9887      		std Y+8,r25
 1654               	.LVL130:
 1655               	.LBE109:
 1656               	.LSM105:
 1657 02ba EDA1      		ldd r30,Y+37
 1658 02bc FEA1      		ldd r31,Y+38
 1659 02be A080      		ld r10,Z
 1660 02c0 B180      		ldd r11,Z+1
 1661 02c2 C280      		ldd r12,Z+2
 1662 02c4 D380      		ldd r13,Z+3
 1663               	.LBB110:
 1664               	.LSM106:
 1665 02c6 A9A1      		ldd r26,Y+33
 1666 02c8 BAA1      		ldd r27,Y+34
 1667 02ca 2D90      		ld r2,X+
 1668 02cc 3D90      		ld r3,X+
 1669 02ce 4D90      		ld r4,X+
 1670 02d0 5C90      		ld r5,X
 1671 02d2 1397      		sbiw r26,3
 1672 02d4 A356      		subi r26,lo8(-(-99))
 1673 02d6 B040      		sbci r27,hi8(-(-99))
 1674 02d8 BAA3      		std Y+34,r27
 1675 02da A9A3      		std Y+33,r26
 1676               	.LVL131:
 1677 02dc 6981      		ldd r22,Y+1
 1678 02de 7A81      		ldd r23,Y+2
 1679 02e0 8B81      		ldd r24,Y+3
 1680 02e2 9C81      		ldd r25,Y+4
 1681 02e4 A601      		movw r20,r12
 1682 02e6 9501      		movw r18,r10
 1683 02e8 0E94 0000 		call __udivmodsi4
 1684 02ec 7B01      		movw r14,r22
 1685 02ee 8C01      		movw r16,r24
 1686 02f0 C201      		movw r24,r4
 1687 02f2 B101      		movw r22,r2
 1688 02f4 0E94 0000 		call muldivQR
 1689 02f8 1B01      		movw r2,r22
 1690 02fa 2C01      		movw r4,r24
 1691               	.LVL132:
 1692               	.LBE110:
 1693               	.LSM107:
 1694 02fc 8091 0000 		lds r24,debug_flags
 1695 0300 85FF      		sbrs r24,5
 1696 0302 00C0      		rjmp .L56
 1697               	.LSM108:
 1698 0304 EDB7      		in r30,__SP_L__
 1699 0306 FEB7      		in r31,__SP_H__
 1700 0308 B297      		sbiw r30,34
 1701 030a 0FB6      		in __tmp_reg__,__SREG__
 1702 030c F894      		cli
 1703 030e FEBF      		out __SP_H__,r31
 1704 0310 0FBE      		out __SREG__,__tmp_reg__
 1705 0312 EDBF      		out __SP_L__,r30
 1706 0314 3196      		adiw r30,1
 1707 0316 80E0      		ldi r24,lo8(__c.2042)
 1708 0318 90E0      		ldi r25,hi8(__c.2042)
 1709 031a ADB7      		in r26,__SP_L__
 1710 031c BEB7      		in r27,__SP_H__
 1711 031e 1296      		adiw r26,1+1
 1712 0320 9C93      		st X,r25
 1713 0322 8E93      		st -X,r24
 1714 0324 1197      		sbiw r26,1
 1715 0326 2D8D      		ldd r18,Y+29
 1716 0328 3E8D      		ldd r19,Y+30
 1717 032a 4F8D      		ldd r20,Y+31
 1718 032c 58A1      		ldd r21,Y+32
 1719 032e 2283      		std Z+2,r18
 1720 0330 3383      		std Z+3,r19
 1721 0332 4483      		std Z+4,r20
 1722 0334 5583      		std Z+5,r21
 1723 0336 898D      		ldd r24,Y+25
 1724 0338 9A8D      		ldd r25,Y+26
 1725 033a AB8D      		ldd r26,Y+27
 1726 033c BC8D      		ldd r27,Y+28
 1727 033e 8683      		std Z+6,r24
 1728 0340 9783      		std Z+7,r25
 1729 0342 A087      		std Z+8,r26
 1730 0344 B187      		std Z+9,r27
 1731 0346 2D89      		ldd r18,Y+21
 1732 0348 3E89      		ldd r19,Y+22
 1733 034a 4F89      		ldd r20,Y+23
 1734 034c 588D      		ldd r21,Y+24
 1735 034e 2287      		std Z+10,r18
 1736 0350 3387      		std Z+11,r19
 1737 0352 4487      		std Z+12,r20
 1738 0354 5587      		std Z+13,r21
 1739 0356 8989      		ldd r24,Y+17
 1740 0358 9A89      		ldd r25,Y+18
 1741 035a AB89      		ldd r26,Y+19
 1742 035c BC89      		ldd r27,Y+20
 1743 035e 8687      		std Z+14,r24
 1744 0360 9787      		std Z+15,r25
 1745 0362 A08B      		std Z+16,r26
 1746 0364 B18B      		std Z+17,r27
 1747 0366 2D85      		ldd r18,Y+13
 1748 0368 3E85      		ldd r19,Y+14
 1749 036a 4F85      		ldd r20,Y+15
 1750 036c 5889      		ldd r21,Y+16
 1751 036e 228B      		std Z+18,r18
 1752 0370 338B      		std Z+19,r19
 1753 0372 448B      		std Z+20,r20
 1754 0374 558B      		std Z+21,r21
 1755 0376 8985      		ldd r24,Y+9
 1756 0378 9A85      		ldd r25,Y+10
 1757 037a AB85      		ldd r26,Y+11
 1758 037c BC85      		ldd r27,Y+12
 1759 037e 868B      		std Z+22,r24
 1760 0380 978B      		std Z+23,r25
 1761 0382 A08F      		std Z+24,r26
 1762 0384 B18F      		std Z+25,r27
 1763 0386 2D81      		ldd r18,Y+5
 1764 0388 3E81      		ldd r19,Y+6
 1765 038a 4F81      		ldd r20,Y+7
 1766 038c 5885      		ldd r21,Y+8
 1767 038e 228F      		std Z+26,r18
 1768 0390 338F      		std Z+27,r19
 1769 0392 448F      		std Z+28,r20
 1770 0394 558F      		std Z+29,r21
 1771 0396 268E      		std Z+30,r2
 1772 0398 378E      		std Z+31,r3
 1773 039a 40A2      		std Z+32,r4
 1774 039c 51A2      		std Z+33,r5
 1775 039e 0E94 0000 		call sersendf_P
 1776 03a2 4DB7      		in r20,__SP_L__
 1777 03a4 5EB7      		in r21,__SP_H__
 1778 03a6 4E5D      		subi r20,lo8(-(34))
 1779 03a8 5F4F      		sbci r21,hi8(-(34))
 1780 03aa 0FB6      		in __tmp_reg__,__SREG__
 1781 03ac F894      		cli
 1782 03ae 5EBF      		out __SP_H__,r21
 1783 03b0 0FBE      		out __SREG__,__tmp_reg__
 1784 03b2 4DBF      		out __SP_L__,r20
 1785               	.L56:
 1786               	.LSM109:
 1787 03b4 8D85      		ldd r24,Y+13
 1788 03b6 9E85      		ldd r25,Y+14
 1789 03b8 AF85      		ldd r26,Y+15
 1790 03ba B889      		ldd r27,Y+16
 1791 03bc 2D8D      		ldd r18,Y+29
 1792 03be 3E8D      		ldd r19,Y+30
 1793 03c0 4F8D      		ldd r20,Y+31
 1794 03c2 58A1      		ldd r21,Y+32
 1795 03c4 2817      		cp r18,r24
 1796 03c6 3907      		cpc r19,r25
 1797 03c8 4A07      		cpc r20,r26
 1798 03ca 5B07      		cpc r21,r27
 1799 03cc 04F4      		brge .L57
 1800 03ce 5C01      		movw r10,r24
 1801 03d0 6D01      		movw r12,r26
 1802 03d2 A21A      		sub r10,r18
 1803 03d4 B30A      		sbc r11,r19
 1804 03d6 C40A      		sbc r12,r20
 1805 03d8 D50A      		sbc r13,r21
 1806 03da 00C0      		rjmp .L58
 1807               	.L57:
 1808 03dc AD8C      		ldd r10,Y+29
 1809 03de BE8C      		ldd r11,Y+30
 1810 03e0 CF8C      		ldd r12,Y+31
 1811 03e2 D8A0      		ldd r13,Y+32
 1812 03e4 8D85      		ldd r24,Y+13
 1813 03e6 9E85      		ldd r25,Y+14
 1814 03e8 AF85      		ldd r26,Y+15
 1815 03ea B889      		ldd r27,Y+16
 1816 03ec A81A      		sub r10,r24
 1817 03ee B90A      		sbc r11,r25
 1818 03f0 CA0A      		sbc r12,r26
 1819 03f2 DB0A      		sbc r13,r27
 1820               	.L58:
 1821               	.LSM110:
 1822 03f4 A114      		cp r10,__zero_reg__
 1823 03f6 B104      		cpc r11,__zero_reg__
 1824 03f8 C104      		cpc r12,__zero_reg__
 1825 03fa D104      		cpc r13,__zero_reg__
 1826 03fc 01F4      		brne .L59
 1827 03fe 612C      		mov r6,__zero_reg__
 1828 0400 A2E0      		ldi r26,hi8(512)
 1829 0402 7A2E      		mov r7,r26
 1830 0404 812C      		mov r8,__zero_reg__
 1831 0406 912C      		mov r9,__zero_reg__
 1832               	.LVL133:
 1833 0408 00C0      		rjmp .L60
 1834               	.LVL134:
 1835               	.L59:
 1836               	.LSM111:
 1837 040a 60E0      		ldi r22,lo8(2560)
 1838 040c 7AE0      		ldi r23,hi8(2560)
 1839 040e 80E0      		ldi r24,hlo8(2560)
 1840 0410 90E0      		ldi r25,hhi8(2560)
 1841 0412 A601      		movw r20,r12
 1842 0414 9501      		movw r18,r10
 1843 0416 0E94 0000 		call __udivmodsi4
 1844 041a 7901      		movw r14,r18
 1845 041c 8A01      		movw r16,r20
 1846               	.LSM112:
 1847 041e 90E0      		ldi r25,lo8(512)
 1848 0420 E916      		cp r14,r25
 1849 0422 92E0      		ldi r25,hi8(512)
 1850 0424 F906      		cpc r15,r25
 1851 0426 90E0      		ldi r25,hlo8(512)
 1852 0428 0907      		cpc r16,r25
 1853 042a 90E0      		ldi r25,hhi8(512)
 1854 042c 1907      		cpc r17,r25
 1855               	.LVL135:
 1856 042e 00F4      		brsh .L61
 1857 0430 3701      		movw r6,r14
 1858 0432 4801      		movw r8,r16
 1859               	.LVL136:
 1860 0434 00C0      		rjmp .L62
 1861               	.LVL137:
 1862               	.L61:
 1863 0436 612C      		mov r6,__zero_reg__
 1864 0438 F2E0      		ldi r31,hi8(512)
 1865 043a 7F2E      		mov r7,r31
 1866 043c 812C      		mov r8,__zero_reg__
 1867 043e 912C      		mov r9,__zero_reg__
 1868               	.LVL138:
 1869               	.L62:
 1870               	.LSM113:
 1871 0440 8091 0000 		lds r24,debug_flags
 1872 0444 85FF      		sbrs r24,5
 1873 0446 00C0      		rjmp .L60
 1874               	.LSM114:
 1875 0448 ADB7      		in r26,__SP_L__
 1876 044a BEB7      		in r27,__SP_H__
 1877 044c 5297      		sbiw r26,18
 1878 044e 0FB6      		in __tmp_reg__,__SREG__
 1879 0450 F894      		cli
 1880 0452 BEBF      		out __SP_H__,r27
 1881 0454 0FBE      		out __SREG__,__tmp_reg__
 1882 0456 ADBF      		out __SP_L__,r26
 1883 0458 EDB7      		in r30,__SP_L__
 1884 045a FEB7      		in r31,__SP_H__
 1885 045c 3196      		adiw r30,1
 1886 045e 80E0      		ldi r24,lo8(__c.2044)
 1887 0460 90E0      		ldi r25,hi8(__c.2044)
 1888 0462 1296      		adiw r26,1+1
 1889 0464 9C93      		st X,r25
 1890 0466 8E93      		st -X,r24
 1891 0468 1197      		sbiw r26,1
 1892 046a A282      		std Z+2,r10
 1893 046c B382      		std Z+3,r11
 1894 046e C482      		std Z+4,r12
 1895 0470 D582      		std Z+5,r13
 1896 0472 8AE0      		ldi r24,lo8(10)
 1897 0474 90E0      		ldi r25,hi8(10)
 1898 0476 A0E0      		ldi r26,hlo8(10)
 1899 0478 B0E0      		ldi r27,hhi8(10)
 1900 047a 8683      		std Z+6,r24
 1901 047c 9783      		std Z+7,r25
 1902 047e A087      		std Z+8,r26
 1903 0480 B187      		std Z+9,r27
 1904 0482 E286      		std Z+10,r14
 1905 0484 F386      		std Z+11,r15
 1906 0486 0487      		std Z+12,r16
 1907 0488 1587      		std Z+13,r17
 1908 048a 80E0      		ldi r24,lo8(256)
 1909 048c 91E0      		ldi r25,hi8(256)
 1910 048e A0E0      		ldi r26,hlo8(256)
 1911 0490 B0E0      		ldi r27,hhi8(256)
 1912 0492 8687      		std Z+14,r24
 1913 0494 9787      		std Z+15,r25
 1914 0496 A08B      		std Z+16,r26
 1915 0498 B18B      		std Z+17,r27
 1916 049a 0E94 0000 		call sersendf_P
 1917 049e EDB7      		in r30,__SP_L__
 1918 04a0 FEB7      		in r31,__SP_H__
 1919 04a2 7296      		adiw r30,18
 1920 04a4 0FB6      		in __tmp_reg__,__SREG__
 1921 04a6 F894      		cli
 1922 04a8 FEBF      		out __SP_H__,r31
 1923 04aa 0FBE      		out __SREG__,__tmp_reg__
 1924 04ac EDBF      		out __SP_L__,r30
 1925               	.L60:
 1926               	.LSM115:
 1927 04ae 2985      		ldd r18,Y+9
 1928 04b0 3A85      		ldd r19,Y+10
 1929 04b2 4B85      		ldd r20,Y+11
 1930 04b4 5C85      		ldd r21,Y+12
 1931 04b6 898D      		ldd r24,Y+25
 1932 04b8 9A8D      		ldd r25,Y+26
 1933 04ba AB8D      		ldd r26,Y+27
 1934 04bc BC8D      		ldd r27,Y+28
 1935 04be 8217      		cp r24,r18
 1936 04c0 9307      		cpc r25,r19
 1937 04c2 A407      		cpc r26,r20
 1938 04c4 B507      		cpc r27,r21
 1939 04c6 04F4      		brge .L63
 1940 04c8 5901      		movw r10,r18
 1941 04ca 6A01      		movw r12,r20
 1942 04cc A81A      		sub r10,r24
 1943 04ce B90A      		sbc r11,r25
 1944 04d0 CA0A      		sbc r12,r26
 1945 04d2 DB0A      		sbc r13,r27
 1946 04d4 00C0      		rjmp .L64
 1947               	.L63:
 1948 04d6 A98C      		ldd r10,Y+25
 1949 04d8 BA8C      		ldd r11,Y+26
 1950 04da CB8C      		ldd r12,Y+27
 1951 04dc DC8C      		ldd r13,Y+28
 1952 04de 2985      		ldd r18,Y+9
 1953 04e0 3A85      		ldd r19,Y+10
 1954 04e2 4B85      		ldd r20,Y+11
 1955 04e4 5C85      		ldd r21,Y+12
 1956 04e6 A21A      		sub r10,r18
 1957 04e8 B30A      		sbc r11,r19
 1958 04ea C40A      		sbc r12,r20
 1959 04ec D50A      		sbc r13,r21
 1960               	.L64:
 1961               	.LSM116:
 1962 04ee A114      		cp r10,__zero_reg__
 1963 04f0 B104      		cpc r11,__zero_reg__
 1964 04f2 C104      		cpc r12,__zero_reg__
 1965 04f4 D104      		cpc r13,__zero_reg__
 1966 04f6 01F4      		brne .+2
 1967 04f8 00C0      		rjmp .L65
 1968               	.LSM117:
 1969 04fa 60E0      		ldi r22,lo8(2560)
 1970 04fc 7AE0      		ldi r23,hi8(2560)
 1971 04fe 80E0      		ldi r24,hlo8(2560)
 1972 0500 90E0      		ldi r25,hhi8(2560)
 1973 0502 A601      		movw r20,r12
 1974 0504 9501      		movw r18,r10
 1975 0506 0E94 0000 		call __udivmodsi4
 1976 050a 7901      		movw r14,r18
 1977               	.LVL139:
 1978 050c 8A01      		movw r16,r20
 1979 050e E614      		cp r14,r6
 1980 0510 F704      		cpc r15,r7
 1981 0512 0805      		cpc r16,r8
 1982 0514 1905      		cpc r17,r9
 1983               	.LVL140:
 1984 0516 00F4      		brsh .L66
 1985 0518 3701      		movw r6,r14
 1986 051a 4801      		movw r8,r16
 1987               	.L66:
 1988               	.LSM118:
 1989 051c 8091 0000 		lds r24,debug_flags
 1990 0520 85FF      		sbrs r24,5
 1991 0522 00C0      		rjmp .L65
 1992               	.LSM119:
 1993 0524 4DB7      		in r20,__SP_L__
 1994 0526 5EB7      		in r21,__SP_H__
 1995 0528 4251      		subi r20,lo8(-(-18))
 1996 052a 5040      		sbci r21,hi8(-(-18))
 1997 052c 0FB6      		in __tmp_reg__,__SREG__
 1998 052e F894      		cli
 1999 0530 5EBF      		out __SP_H__,r21
 2000 0532 0FBE      		out __SREG__,__tmp_reg__
 2001 0534 4DBF      		out __SP_L__,r20
 2002 0536 EDB7      		in r30,__SP_L__
 2003 0538 FEB7      		in r31,__SP_H__
 2004 053a 3196      		adiw r30,1
 2005 053c 80E0      		ldi r24,lo8(__c.2046)
 2006 053e 90E0      		ldi r25,hi8(__c.2046)
 2007 0540 ADB7      		in r26,__SP_L__
 2008 0542 BEB7      		in r27,__SP_H__
 2009 0544 1296      		adiw r26,1+1
 2010 0546 9C93      		st X,r25
 2011 0548 8E93      		st -X,r24
 2012 054a 1197      		sbiw r26,1
 2013 054c A282      		std Z+2,r10
 2014 054e B382      		std Z+3,r11
 2015 0550 C482      		std Z+4,r12
 2016 0552 D582      		std Z+5,r13
 2017 0554 8AE0      		ldi r24,lo8(10)
 2018 0556 90E0      		ldi r25,hi8(10)
 2019 0558 A0E0      		ldi r26,hlo8(10)
 2020 055a B0E0      		ldi r27,hhi8(10)
 2021 055c 8683      		std Z+6,r24
 2022 055e 9783      		std Z+7,r25
 2023 0560 A087      		std Z+8,r26
 2024 0562 B187      		std Z+9,r27
 2025 0564 E286      		std Z+10,r14
 2026 0566 F386      		std Z+11,r15
 2027 0568 0487      		std Z+12,r16
 2028 056a 1587      		std Z+13,r17
 2029 056c 80E0      		ldi r24,lo8(256)
 2030 056e 91E0      		ldi r25,hi8(256)
 2031 0570 A0E0      		ldi r26,hlo8(256)
 2032 0572 B0E0      		ldi r27,hhi8(256)
 2033 0574 8687      		std Z+14,r24
 2034 0576 9787      		std Z+15,r25
 2035 0578 A08B      		std Z+16,r26
 2036 057a B18B      		std Z+17,r27
 2037 057c 0E94 0000 		call sersendf_P
 2038 0580 EDB7      		in r30,__SP_L__
 2039 0582 FEB7      		in r31,__SP_H__
 2040 0584 7296      		adiw r30,18
 2041 0586 0FB6      		in __tmp_reg__,__SREG__
 2042 0588 F894      		cli
 2043 058a FEBF      		out __SP_H__,r31
 2044 058c 0FBE      		out __SREG__,__tmp_reg__
 2045 058e EDBF      		out __SP_L__,r30
 2046               	.L65:
 2047               	.LSM120:
 2048 0590 2D81      		ldd r18,Y+5
 2049 0592 3E81      		ldd r19,Y+6
 2050 0594 4F81      		ldd r20,Y+7
 2051 0596 5885      		ldd r21,Y+8
 2052 0598 8D89      		ldd r24,Y+21
 2053 059a 9E89      		ldd r25,Y+22
 2054 059c AF89      		ldd r26,Y+23
 2055 059e B88D      		ldd r27,Y+24
 2056 05a0 8217      		cp r24,r18
 2057 05a2 9307      		cpc r25,r19
 2058 05a4 A407      		cpc r26,r20
 2059 05a6 B507      		cpc r27,r21
 2060 05a8 04F4      		brge .L67
 2061 05aa 5901      		movw r10,r18
 2062 05ac 6A01      		movw r12,r20
 2063 05ae A81A      		sub r10,r24
 2064 05b0 B90A      		sbc r11,r25
 2065 05b2 CA0A      		sbc r12,r26
 2066 05b4 DB0A      		sbc r13,r27
 2067 05b6 00C0      		rjmp .L68
 2068               	.L67:
 2069 05b8 AD88      		ldd r10,Y+21
 2070 05ba BE88      		ldd r11,Y+22
 2071 05bc CF88      		ldd r12,Y+23
 2072 05be D88C      		ldd r13,Y+24
 2073 05c0 2D81      		ldd r18,Y+5
 2074 05c2 3E81      		ldd r19,Y+6
 2075 05c4 4F81      		ldd r20,Y+7
 2076 05c6 5885      		ldd r21,Y+8
 2077 05c8 A21A      		sub r10,r18
 2078 05ca B30A      		sbc r11,r19
 2079 05cc C40A      		sbc r12,r20
 2080 05ce D50A      		sbc r13,r21
 2081               	.L68:
 2082               	.LSM121:
 2083 05d0 A114      		cp r10,__zero_reg__
 2084 05d2 B104      		cpc r11,__zero_reg__
 2085 05d4 C104      		cpc r12,__zero_reg__
 2086 05d6 D104      		cpc r13,__zero_reg__
 2087 05d8 01F4      		brne .+2
 2088 05da 00C0      		rjmp .L69
 2089               	.LSM122:
 2090 05dc 60E0      		ldi r22,lo8(2560)
 2091 05de 7AE0      		ldi r23,hi8(2560)
 2092 05e0 80E0      		ldi r24,hlo8(2560)
 2093 05e2 90E0      		ldi r25,hhi8(2560)
 2094 05e4 A601      		movw r20,r12
 2095 05e6 9501      		movw r18,r10
 2096 05e8 0E94 0000 		call __udivmodsi4
 2097 05ec 7901      		movw r14,r18
 2098               	.LVL141:
 2099 05ee 8A01      		movw r16,r20
 2100 05f0 E614      		cp r14,r6
 2101 05f2 F704      		cpc r15,r7
 2102 05f4 0805      		cpc r16,r8
 2103 05f6 1905      		cpc r17,r9
 2104               	.LVL142:
 2105 05f8 00F4      		brsh .L70
 2106 05fa 3701      		movw r6,r14
 2107 05fc 4801      		movw r8,r16
 2108               	.L70:
 2109               	.LSM123:
 2110 05fe 8091 0000 		lds r24,debug_flags
 2111 0602 85FF      		sbrs r24,5
 2112 0604 00C0      		rjmp .L69
 2113               	.LSM124:
 2114 0606 4DB7      		in r20,__SP_L__
 2115 0608 5EB7      		in r21,__SP_H__
 2116 060a 4251      		subi r20,lo8(-(-18))
 2117 060c 5040      		sbci r21,hi8(-(-18))
 2118 060e 0FB6      		in __tmp_reg__,__SREG__
 2119 0610 F894      		cli
 2120 0612 5EBF      		out __SP_H__,r21
 2121 0614 0FBE      		out __SREG__,__tmp_reg__
 2122 0616 4DBF      		out __SP_L__,r20
 2123 0618 EDB7      		in r30,__SP_L__
 2124 061a FEB7      		in r31,__SP_H__
 2125 061c 3196      		adiw r30,1
 2126 061e 80E0      		ldi r24,lo8(__c.2048)
 2127 0620 90E0      		ldi r25,hi8(__c.2048)
 2128 0622 ADB7      		in r26,__SP_L__
 2129 0624 BEB7      		in r27,__SP_H__
 2130 0626 1296      		adiw r26,1+1
 2131 0628 9C93      		st X,r25
 2132 062a 8E93      		st -X,r24
 2133 062c 1197      		sbiw r26,1
 2134 062e A282      		std Z+2,r10
 2135 0630 B382      		std Z+3,r11
 2136 0632 C482      		std Z+4,r12
 2137 0634 D582      		std Z+5,r13
 2138 0636 8AE0      		ldi r24,lo8(10)
 2139 0638 90E0      		ldi r25,hi8(10)
 2140 063a A0E0      		ldi r26,hlo8(10)
 2141 063c B0E0      		ldi r27,hhi8(10)
 2142 063e 8683      		std Z+6,r24
 2143 0640 9783      		std Z+7,r25
 2144 0642 A087      		std Z+8,r26
 2145 0644 B187      		std Z+9,r27
 2146 0646 E286      		std Z+10,r14
 2147 0648 F386      		std Z+11,r15
 2148 064a 0487      		std Z+12,r16
 2149 064c 1587      		std Z+13,r17
 2150 064e 80E0      		ldi r24,lo8(256)
 2151 0650 91E0      		ldi r25,hi8(256)
 2152 0652 A0E0      		ldi r26,hlo8(256)
 2153 0654 B0E0      		ldi r27,hhi8(256)
 2154 0656 8687      		std Z+14,r24
 2155 0658 9787      		std Z+15,r25
 2156 065a A08B      		std Z+16,r26
 2157 065c B18B      		std Z+17,r27
 2158 065e 0E94 0000 		call sersendf_P
 2159 0662 EDB7      		in r30,__SP_L__
 2160 0664 FEB7      		in r31,__SP_H__
 2161 0666 7296      		adiw r30,18
 2162 0668 0FB6      		in __tmp_reg__,__SREG__
 2163 066a F894      		cli
 2164 066c FEBF      		out __SP_H__,r31
 2165 066e 0FBE      		out __SREG__,__tmp_reg__
 2166 0670 EDBF      		out __SP_L__,r30
 2167               	.L69:
 2168               	.LSM125:
 2169 0672 2989      		ldd r18,Y+17
 2170 0674 3A89      		ldd r19,Y+18
 2171 0676 4B89      		ldd r20,Y+19
 2172 0678 5C89      		ldd r21,Y+20
 2173 067a 2215      		cp r18,r2
 2174 067c 3305      		cpc r19,r3
 2175 067e 4405      		cpc r20,r4
 2176 0680 5505      		cpc r21,r5
 2177 0682 04F4      		brge .L71
 2178 0684 6201      		movw r12,r4
 2179 0686 5101      		movw r10,r2
 2180 0688 A21A      		sub r10,r18
 2181 068a B30A      		sbc r11,r19
 2182 068c C40A      		sbc r12,r20
 2183 068e D50A      		sbc r13,r21
 2184 0690 00C0      		rjmp .L72
 2185               	.L71:
 2186 0692 A988      		ldd r10,Y+17
 2187 0694 BA88      		ldd r11,Y+18
 2188 0696 CB88      		ldd r12,Y+19
 2189 0698 DC88      		ldd r13,Y+20
 2190 069a A218      		sub r10,r2
 2191 069c B308      		sbc r11,r3
 2192 069e C408      		sbc r12,r4
 2193 06a0 D508      		sbc r13,r5
 2194               	.L72:
 2195               	.LSM126:
 2196 06a2 A114      		cp r10,__zero_reg__
 2197 06a4 B104      		cpc r11,__zero_reg__
 2198 06a6 C104      		cpc r12,__zero_reg__
 2199 06a8 D104      		cpc r13,__zero_reg__
 2200 06aa 01F4      		brne .+2
 2201 06ac 00C0      		rjmp .L73
 2202               	.LSM127:
 2203 06ae 60E0      		ldi r22,lo8(2560)
 2204 06b0 7AE0      		ldi r23,hi8(2560)
 2205 06b2 80E0      		ldi r24,hlo8(2560)
 2206 06b4 90E0      		ldi r25,hhi8(2560)
 2207 06b6 A601      		movw r20,r12
 2208 06b8 9501      		movw r18,r10
 2209 06ba 0E94 0000 		call __udivmodsi4
 2210 06be 7901      		movw r14,r18
 2211               	.LVL143:
 2212 06c0 8A01      		movw r16,r20
 2213 06c2 E614      		cp r14,r6
 2214 06c4 F704      		cpc r15,r7
 2215 06c6 0805      		cpc r16,r8
 2216 06c8 1905      		cpc r17,r9
 2217               	.LVL144:
 2218 06ca 00F4      		brsh .L74
 2219 06cc 3701      		movw r6,r14
 2220 06ce 4801      		movw r8,r16
 2221               	.L74:
 2222               	.LSM128:
 2223 06d0 8091 0000 		lds r24,debug_flags
 2224 06d4 85FF      		sbrs r24,5
 2225 06d6 00C0      		rjmp .L73
 2226               	.LSM129:
 2227 06d8 4DB7      		in r20,__SP_L__
 2228 06da 5EB7      		in r21,__SP_H__
 2229 06dc 4251      		subi r20,lo8(-(-18))
 2230 06de 5040      		sbci r21,hi8(-(-18))
 2231 06e0 0FB6      		in __tmp_reg__,__SREG__
 2232 06e2 F894      		cli
 2233 06e4 5EBF      		out __SP_H__,r21
 2234 06e6 0FBE      		out __SREG__,__tmp_reg__
 2235 06e8 4DBF      		out __SP_L__,r20
 2236 06ea EDB7      		in r30,__SP_L__
 2237 06ec FEB7      		in r31,__SP_H__
 2238 06ee 3196      		adiw r30,1
 2239 06f0 80E0      		ldi r24,lo8(__c.2050)
 2240 06f2 90E0      		ldi r25,hi8(__c.2050)
 2241 06f4 ADB7      		in r26,__SP_L__
 2242 06f6 BEB7      		in r27,__SP_H__
 2243 06f8 1296      		adiw r26,1+1
 2244 06fa 9C93      		st X,r25
 2245 06fc 8E93      		st -X,r24
 2246 06fe 1197      		sbiw r26,1
 2247 0700 A282      		std Z+2,r10
 2248 0702 B382      		std Z+3,r11
 2249 0704 C482      		std Z+4,r12
 2250 0706 D582      		std Z+5,r13
 2251 0708 8AE0      		ldi r24,lo8(10)
 2252 070a 90E0      		ldi r25,hi8(10)
 2253 070c A0E0      		ldi r26,hlo8(10)
 2254 070e B0E0      		ldi r27,hhi8(10)
 2255 0710 8683      		std Z+6,r24
 2256 0712 9783      		std Z+7,r25
 2257 0714 A087      		std Z+8,r26
 2258 0716 B187      		std Z+9,r27
 2259 0718 E286      		std Z+10,r14
 2260 071a F386      		std Z+11,r15
 2261 071c 0487      		std Z+12,r16
 2262 071e 1587      		std Z+13,r17
 2263 0720 80E0      		ldi r24,lo8(256)
 2264 0722 91E0      		ldi r25,hi8(256)
 2265 0724 A0E0      		ldi r26,hlo8(256)
 2266 0726 B0E0      		ldi r27,hhi8(256)
 2267 0728 8687      		std Z+14,r24
 2268 072a 9787      		std Z+15,r25
 2269 072c A08B      		std Z+16,r26
 2270 072e B18B      		std Z+17,r27
 2271 0730 0E94 0000 		call sersendf_P
 2272 0734 EDB7      		in r30,__SP_L__
 2273 0736 FEB7      		in r31,__SP_H__
 2274 0738 7296      		adiw r30,18
 2275 073a 0FB6      		in __tmp_reg__,__SREG__
 2276 073c F894      		cli
 2277 073e FEBF      		out __SP_H__,r31
 2278 0740 0FBE      		out __SREG__,__tmp_reg__
 2279 0742 EDBF      		out __SP_L__,r30
 2280               	.L73:
 2281 0744 09A1      		ldd r16,Y+33
 2282 0746 1AA1      		ldd r17,Y+34
 2283 0748 055B      		subi r16,lo8(-(75))
 2284 074a 1F4F      		sbci r17,hi8(-(75))
 2285               	.LSM130:
 2286 074c FFEF      		ldi r31,lo8(255)
 2287 074e 6F16      		cp r6,r31
 2288 0750 7104      		cpc r7,__zero_reg__
 2289 0752 8104      		cpc r8,__zero_reg__
 2290 0754 9104      		cpc r9,__zero_reg__
 2291 0756 01F0      		breq .L75
 2292 0758 00F0      		brlo .L75
 2293               	.LSM131:
 2294 075a 2981      		ldd r18,Y+1
 2295 075c 3A81      		ldd r19,Y+2
 2296 075e 4B81      		ldd r20,Y+3
 2297 0760 5C81      		ldd r21,Y+4
 2298 0762 D801      		movw r26,r16
 2299 0764 2D93      		st X+,r18
 2300 0766 3D93      		st X+,r19
 2301 0768 4D93      		st X+,r20
 2302 076a 5C93      		st X,r21
 2303 076c 1397      		sbiw r26,3
 2304 076e 00C0      		rjmp .L76
 2305               	.L75:
 2306               	.LSM132:
 2307 0770 C401      		movw r24,r8
 2308 0772 B301      		movw r22,r6
 2309 0774 2981      		ldd r18,Y+1
 2310 0776 3A81      		ldd r19,Y+2
 2311 0778 4B81      		ldd r20,Y+3
 2312 077a 5C81      		ldd r21,Y+4
 2313 077c 0E94 0000 		call __mulsi3
 2314 0780 672F      		mov r22,r23
 2315 0782 782F      		mov r23,r24
 2316 0784 892F      		mov r24,r25
 2317 0786 9927      		clr r25
 2318 0788 F801      		movw r30,r16
 2319 078a 6083      		st Z,r22
 2320 078c 7183      		std Z+1,r23
 2321 078e 8283      		std Z+2,r24
 2322 0790 9383      		std Z+3,r25
 2323               	.L76:
 2324               	.LSM133:
 2325 0792 8091 0000 		lds r24,debug_flags
 2326 0796 85FF      		sbrs r24,5
 2327 0798 00C0      		rjmp .L77
 2328               	.LSM134:
 2329 079a 2DB7      		in r18,__SP_L__
 2330 079c 3EB7      		in r19,__SP_H__
 2331 079e 2A50      		subi r18,lo8(-(-10))
 2332 07a0 3040      		sbci r19,hi8(-(-10))
 2333 07a2 0FB6      		in __tmp_reg__,__SREG__
 2334 07a4 F894      		cli
 2335 07a6 3EBF      		out __SP_H__,r19
 2336 07a8 0FBE      		out __SREG__,__tmp_reg__
 2337 07aa 2DBF      		out __SP_L__,r18
 2338 07ac EDB7      		in r30,__SP_L__
 2339 07ae FEB7      		in r31,__SP_H__
 2340 07b0 3196      		adiw r30,1
 2341 07b2 80E0      		ldi r24,lo8(__c.2052)
 2342 07b4 90E0      		ldi r25,hi8(__c.2052)
 2343 07b6 ADB7      		in r26,__SP_L__
 2344 07b8 BEB7      		in r27,__SP_H__
 2345 07ba 1296      		adiw r26,1+1
 2346 07bc 9C93      		st X,r25
 2347 07be 8E93      		st -X,r24
 2348 07c0 1197      		sbiw r26,1
 2349 07c2 2981      		ldd r18,Y+1
 2350 07c4 3A81      		ldd r19,Y+2
 2351 07c6 4B81      		ldd r20,Y+3
 2352 07c8 5C81      		ldd r21,Y+4
 2353 07ca 2283      		std Z+2,r18
 2354 07cc 3383      		std Z+3,r19
 2355 07ce 4483      		std Z+4,r20
 2356 07d0 5583      		std Z+5,r21
 2357 07d2 49A1      		ldd r20,Y+33
 2358 07d4 5AA1      		ldd r21,Y+34
 2359 07d6 455B      		subi r20,lo8(-(75))
 2360 07d8 5F4F      		sbci r21,hi8(-(75))
 2361 07da DA01      		movw r26,r20
 2362 07dc 2D90      		ld r2,X+
 2363 07de 3D90      		ld r3,X+
 2364 07e0 4D90      		ld r4,X+
 2365 07e2 5C90      		ld r5,X
 2366               	.LVL145:
 2367 07e4 2682      		std Z+6,r2
 2368 07e6 3782      		std Z+7,r3
 2369 07e8 4086      		std Z+8,r4
 2370 07ea 5186      		std Z+9,r5
 2371 07ec 0E94 0000 		call sersendf_P
 2372 07f0 EDB7      		in r30,__SP_L__
 2373 07f2 FEB7      		in r31,__SP_H__
 2374 07f4 3A96      		adiw r30,10
 2375 07f6 0FB6      		in __tmp_reg__,__SREG__
 2376 07f8 F894      		cli
 2377 07fa FEBF      		out __SP_H__,r31
 2378 07fc 0FBE      		out __SREG__,__tmp_reg__
 2379 07fe EDBF      		out __SP_L__,r30
 2380               	.LVL146:
 2381               	.L77:
 2382               	/* epilogue start */
 2383               	.LSM135:
 2384 0800 A696      		adiw r28,38
 2385 0802 E2E1      		ldi r30, lo8(18)
 2386 0804 0C94 0000 		jmp __epilogue_restores__ + ((18 - 18) * 2)
 2387               	.LFE20:
 2389               		.section	.text.dda_emergency_shutdown,"ax",@progbits
 2390               	.global	dda_emergency_shutdown
 2392               	dda_emergency_shutdown:
 2393               	.LFB19:
 2394               	.LSM136:
 2395               	.LVL147:
 2396 0000 CF93      		push r28
 2397 0002 DF93      		push r29
 2398               	/* prologue: function */
 2399               	/* frame size = 0 */
 2400 0004 EC01      		movw r28,r24
 2401               	.LSM137:
 2402               	/* #APP */
 2403               	 ;  141 "dda_lookahead.c" 1
 2404 0006 7894      		sei
 2405               	 ;  0 "" 2
 2406               	.LSM138:
 2407               	/* #NOAPP */
 2408 0008 80E0      		ldi r24,lo8(__c.2019)
 2409 000a 90E0      		ldi r25,hi8(__c.2019)
 2410               	.LVL148:
 2411 000c 0E94 0000 		call serial_writestr_P
 2412               	.LSM139:
 2413 0010 2097      		sbiw r28,0
 2414 0012 01F0      		breq .L79
 2415 0014 CE01      		movw r24,r28
 2416 0016 0E94 0000 		call serial_writestr_P
 2417               	.L79:
 2418               	.LSM140:
 2419 001a 80E0      		ldi r24,lo8(__c.2021)
 2420 001c 90E0      		ldi r25,hi8(__c.2021)
 2421 001e 0E94 0000 		call serial_writestr_P
 2422               	.LSM141:
 2423 0022 64E1      		ldi r22,lo8(20)
 2424 0024 70E0      		ldi r23,hi8(20)
 2425 0026 80E0      		ldi r24,hlo8(20)
 2426 0028 90E0      		ldi r25,hhi8(20)
 2427 002a 0E94 0000 		call delay_ms
 2428               	.LSM142:
 2429 002e 0E94 0000 		call timer_stop
 2430               	.LSM143:
 2431 0032 0E94 0000 		call queue_flush
 2432               	.LSM144:
 2433 0036 0E94 0000 		call power_off
 2434               	.LSM145:
 2435               	/* #APP */
 2436               	 ;  149 "dda_lookahead.c" 1
 2437 003a F894      		cli
 2438               	 ;  0 "" 2
 2439               	/* #NOAPP */
 2440               	.L80:
 2441 003c 00C0      		rjmp .L80
 2442               	.LFE19:
 2444               		.section	.text.dda_steps_to_velocity,"ax",@progbits
 2445               	.global	dda_steps_to_velocity
 2447               	dda_steps_to_velocity:
 2448               	.LFB15:
 2449               	.LSM146:
 2450               	.LVL149:
 2451               	/* prologue: function */
 2452               	/* frame size = 0 */
 2453 0000 9B01      		movw r18,r22
 2454 0002 AC01      		movw r20,r24
 2455               	.LSM147:
 2456 0004 8091 0000 		lds r24,part.1949
 2457 0008 9091 0000 		lds r25,(part.1949)+1
 2458 000c A091 0000 		lds r26,(part.1949)+2
 2459 0010 B091 0000 		lds r27,(part.1949)+3
 2460 0014 0097      		sbiw r24,0
 2461 0016 A105      		cpc r26,__zero_reg__
 2462 0018 B105      		cpc r27,__zero_reg__
 2463 001a 01F4      		brne .L83
 2464               	.LVL150:
 2465               	.LSM148:
 2466 001c 84E8      		ldi r24,lo8(6788)
 2467 001e 9AE1      		ldi r25,hi8(6788)
 2468 0020 A0E0      		ldi r26,hlo8(6788)
 2469 0022 B0E0      		ldi r27,hhi8(6788)
 2470 0024 8093 0000 		sts part.1949,r24
 2471 0028 9093 0000 		sts (part.1949)+1,r25
 2472 002c A093 0000 		sts (part.1949)+2,r26
 2473 0030 B093 0000 		sts (part.1949)+3,r27
 2474               	.L83:
 2475               	.LSM149:
 2476 0034 8EE0      		ldi r24,14
 2477 0036 220F      	1:	lsl r18
 2478 0038 331F      		rol r19
 2479 003a 441F      		rol r20
 2480 003c 551F      		rol r21
 2481 003e 8A95      		dec r24
 2482 0040 01F4      		brne 1b
 2483 0042 CA01      		movw r24,r20
 2484 0044 B901      		movw r22,r18
 2485 0046 0E94 0000 		call int_sqrt
 2486               	.LVL151:
 2487 004a A0E0      		ldi r26,lo8(0)
 2488 004c B0E0      		ldi r27,hi8(0)
 2489 004e 2091 0000 		lds r18,part.1949
 2490 0052 3091 0000 		lds r19,(part.1949)+1
 2491 0056 4091 0000 		lds r20,(part.1949)+2
 2492 005a 5091 0000 		lds r21,(part.1949)+3
 2493 005e BC01      		movw r22,r24
 2494 0060 CD01      		movw r24,r26
 2495 0062 0E94 0000 		call __mulsi3
 2496 0066 9B01      		movw r18,r22
 2497 0068 AC01      		movw r20,r24
 2498 006a BEE0      		ldi r27,14
 2499 006c 5695      	1:	lsr r21
 2500 006e 4795      		ror r20
 2501 0070 3795      		ror r19
 2502 0072 2795      		ror r18
 2503 0074 BA95      		dec r27
 2504 0076 01F4      		brne 1b
 2505               	.LSM150:
 2506 0078 B901      		movw r22,r18
 2507 007a CA01      		movw r24,r20
 2508               	/* epilogue start */
 2509 007c 0895      		ret
 2510               	.LFE15:
 2512               		.section	.text.dda_jerk_size_2d_real,"ax",@progbits
 2513               	.global	dda_jerk_size_2d_real
 2515               	dda_jerk_size_2d_real:
 2516               	.LFB16:
 2517               	.LSM151:
 2518               	.LVL152:
 2519 0000 ACE0      		ldi r26,lo8(12)
 2520 0002 B0E0      		ldi r27,hi8(12)
 2521 0004 E0E0      		ldi r30,lo8(gs(1f))
 2522 0006 F0E0      		ldi r31,hi8(gs(1f))
 2523 0008 0C94 0000 		jmp __prologue_saves__+((18 - 18) * 2)
 2524               	1:
 2525               	/* prologue: function */
 2526               	/* frame size = 12 */
 2527 000c 1B01      		movw r2,r22
 2528 000e 2C01      		movw r4,r24
 2529 0010 2987      		std Y+9,r18
 2530 0012 3A87      		std Y+10,r19
 2531 0014 4B87      		std Y+11,r20
 2532 0016 5C87      		std Y+12,r21
 2533               	.LSM152:
 2534 0018 CA01      		movw r24,r20
 2535 001a B901      		movw r22,r18
 2536               	.LVL153:
 2537 001c 0E94 0000 		call __mulsi3
 2538               	.LVL154:
 2539 0020 3B01      		movw r6,r22
 2540 0022 4C01      		movw r8,r24
 2541 0024 C201      		movw r24,r4
 2542 0026 B101      		movw r22,r2
 2543 0028 A201      		movw r20,r4
 2544 002a 9101      		movw r18,r2
 2545 002c 0E94 0000 		call __mulsi3
 2546 0030 660E      		add r6,r22
 2547 0032 771E      		adc r7,r23
 2548 0034 881E      		adc r8,r24
 2549 0036 991E      		adc r9,r25
 2550 0038 C401      		movw r24,r8
 2551 003a B301      		movw r22,r6
 2552 003c 0E94 0000 		call int_sqrt
 2553 0040 9C01      		movw r18,r24
 2554 0042 40E0      		ldi r20,lo8(0)
 2555 0044 50E0      		ldi r21,hi8(0)
 2556 0046 2D83      		std Y+5,r18
 2557 0048 3E83      		std Y+6,r19
 2558 004a 4F83      		std Y+7,r20
 2559 004c 5887      		std Y+8,r21
 2560               	.LVL155:
 2561               	.LSM153:
 2562 004e 5EE0      		ldi r21,14
 2563 0050 220C      	1:	lsl r2
 2564 0052 331C      		rol r3
 2565 0054 441C      		rol r4
 2566 0056 551C      		rol r5
 2567 0058 5A95      		dec r21
 2568 005a 01F4      		brne 1b
 2569               	.LSM154:
 2570 005c 8985      		ldd r24,Y+9
 2571 005e 9A85      		ldd r25,Y+10
 2572 0060 AB85      		ldd r26,Y+11
 2573 0062 BC85      		ldd r27,Y+12
 2574 0064 4EE0      		ldi r20,14
 2575 0066 880F      	1:	lsl r24
 2576 0068 991F      		rol r25
 2577 006a AA1F      		rol r26
 2578 006c BB1F      		rol r27
 2579 006e 4A95      		dec r20
 2580 0070 01F4      		brne 1b
 2581 0072 8987      		std Y+9,r24
 2582 0074 9A87      		std Y+10,r25
 2583 0076 AB87      		std Y+11,r26
 2584 0078 BC87      		std Y+12,r27
 2585               	.LVL156:
 2586               	.LSM155:
 2587 007a 6AA1      		ldd r22,Y+34
 2588 007c 7BA1      		ldd r23,Y+35
 2589 007e 8CA1      		ldd r24,Y+36
 2590 0080 9DA1      		ldd r25,Y+37
 2591 0082 9B01      		movw r18,r22
 2592 0084 AC01      		movw r20,r24
 2593 0086 0E94 0000 		call __mulsi3
 2594 008a 3B01      		movw r6,r22
 2595 008c 4C01      		movw r8,r24
 2596 008e C601      		movw r24,r12
 2597 0090 B501      		movw r22,r10
 2598 0092 A601      		movw r20,r12
 2599 0094 9501      		movw r18,r10
 2600 0096 0E94 0000 		call __mulsi3
 2601 009a 660E      		add r6,r22
 2602 009c 771E      		adc r7,r23
 2603 009e 881E      		adc r8,r24
 2604 00a0 991E      		adc r9,r25
 2605 00a2 C401      		movw r24,r8
 2606 00a4 B301      		movw r22,r6
 2607 00a6 0E94 0000 		call int_sqrt
 2608 00aa 9C01      		movw r18,r24
 2609 00ac 40E0      		ldi r20,lo8(0)
 2610 00ae 50E0      		ldi r21,hi8(0)
 2611 00b0 2983      		std Y+1,r18
 2612 00b2 3A83      		std Y+2,r19
 2613 00b4 4B83      		std Y+3,r20
 2614 00b6 5C83      		std Y+4,r21
 2615               	.LVL157:
 2616               	.LSM156:
 2617 00b8 3EE0      		ldi r19,14
 2618 00ba AA0C      	1:	lsl r10
 2619 00bc BB1C      		rol r11
 2620 00be CC1C      		rol r12
 2621 00c0 DD1C      		rol r13
 2622 00c2 3A95      		dec r19
 2623 00c4 01F4      		brne 1b
 2624               	.LVL158:
 2625               	.LSM157:
 2626 00c6 8AA1      		ldd r24,Y+34
 2627 00c8 9BA1      		ldd r25,Y+35
 2628 00ca ACA1      		ldd r26,Y+36
 2629 00cc BDA1      		ldd r27,Y+37
 2630 00ce 2EE0      		ldi r18,14
 2631 00d0 880F      	1:	lsl r24
 2632 00d2 991F      		rol r25
 2633 00d4 AA1F      		rol r26
 2634 00d6 BB1F      		rol r27
 2635 00d8 2A95      		dec r18
 2636 00da 01F4      		brne 1b
 2637 00dc 8AA3      		std Y+34,r24
 2638 00de 9BA3      		std Y+35,r25
 2639 00e0 ACA3      		std Y+36,r26
 2640 00e2 BDA3      		std Y+37,r27
 2641               	.LVL159:
 2642               	.LSM158:
 2643 00e4 C201      		movw r24,r4
 2644 00e6 B101      		movw r22,r2
 2645 00e8 2D81      		ldd r18,Y+5
 2646 00ea 3E81      		ldd r19,Y+6
 2647 00ec 4F81      		ldd r20,Y+7
 2648 00ee 5885      		ldd r21,Y+8
 2649 00f0 0E94 0000 		call __divmodsi4
 2650 00f4 CA01      		movw r24,r20
 2651 00f6 B901      		movw r22,r18
 2652 00f8 A801      		movw r20,r16
 2653 00fa 9701      		movw r18,r14
 2654 00fc 0E94 0000 		call __mulsi3
 2655 0100 3B01      		movw r6,r22
 2656 0102 4C01      		movw r8,r24
 2657 0104 6985      		ldd r22,Y+9
 2658 0106 7A85      		ldd r23,Y+10
 2659 0108 8B85      		ldd r24,Y+11
 2660 010a 9C85      		ldd r25,Y+12
 2661 010c 2D81      		ldd r18,Y+5
 2662 010e 3E81      		ldd r19,Y+6
 2663 0110 4F81      		ldd r20,Y+7
 2664 0112 5885      		ldd r21,Y+8
 2665 0114 0E94 0000 		call __divmodsi4
 2666 0118 CA01      		movw r24,r20
 2667 011a B901      		movw r22,r18
 2668 011c A801      		movw r20,r16
 2669 011e 9701      		movw r18,r14
 2670 0120 0E94 0000 		call __mulsi3
 2671 0124 7B01      		movw r14,r22
 2672               	.LVL160:
 2673 0126 8C01      		movw r16,r24
 2674 0128 C601      		movw r24,r12
 2675 012a B501      		movw r22,r10
 2676 012c 2981      		ldd r18,Y+1
 2677 012e 3A81      		ldd r19,Y+2
 2678 0130 4B81      		ldd r20,Y+3
 2679 0132 5C81      		ldd r21,Y+4
 2680 0134 0E94 0000 		call __divmodsi4
 2681 0138 CA01      		movw r24,r20
 2682 013a B901      		movw r22,r18
 2683 013c 2EA1      		ldd r18,Y+38
 2684 013e 3FA1      		ldd r19,Y+39
 2685 0140 48A5      		ldd r20,Y+40
 2686 0142 59A5      		ldd r21,Y+41
 2687 0144 0E94 0000 		call __mulsi3
 2688 0148 5B01      		movw r10,r22
 2689 014a 6C01      		movw r12,r24
 2690               	.LVL161:
 2691 014c 6AA1      		ldd r22,Y+34
 2692 014e 7BA1      		ldd r23,Y+35
 2693 0150 8CA1      		ldd r24,Y+36
 2694 0152 9DA1      		ldd r25,Y+37
 2695 0154 2981      		ldd r18,Y+1
 2696 0156 3A81      		ldd r19,Y+2
 2697 0158 4B81      		ldd r20,Y+3
 2698 015a 5C81      		ldd r21,Y+4
 2699 015c 0E94 0000 		call __divmodsi4
 2700 0160 CA01      		movw r24,r20
 2701 0162 B901      		movw r22,r18
 2702 0164 2EA1      		ldd r18,Y+38
 2703 0166 3FA1      		ldd r19,Y+39
 2704 0168 48A5      		ldd r20,Y+40
 2705 016a 59A5      		ldd r21,Y+41
 2706 016c 0E94 0000 		call __mulsi3
 2707               	.LSM159:
 2708 0170 6A18      		sub r6,r10
 2709 0172 7B08      		sbc r7,r11
 2710 0174 8C08      		sbc r8,r12
 2711 0176 9D08      		sbc r9,r13
 2712               	.LVL162:
 2713 0178 E61A      		sub r14,r22
 2714 017a F70A      		sbc r15,r23
 2715 017c 080B      		sbc r16,r24
 2716 017e 190B      		sbc r17,r25
 2717               	.LVL163:
 2718 0180 C401      		movw r24,r8
 2719 0182 B301      		movw r22,r6
 2720 0184 A801      		movw r20,r16
 2721 0186 9701      		movw r18,r14
 2722 0188 0E94 0000 		call approx_distance
 2723 018c 9B01      		movw r18,r22
 2724 018e AC01      		movw r20,r24
 2725 0190 9EE0      		ldi r25,14
 2726 0192 5695      	1:	lsr r21
 2727 0194 4795      		ror r20
 2728 0196 3795      		ror r19
 2729 0198 2795      		ror r18
 2730 019a 9A95      		dec r25
 2731 019c 01F4      		brne 1b
 2732               	.LSM160:
 2733 019e C901      		movw r24,r18
 2734               	/* epilogue start */
 2735 01a0 2C96      		adiw r28,12
 2736 01a2 E2E1      		ldi r30, lo8(18)
 2737 01a4 0C94 0000 		jmp __epilogue_restores__ + ((18 - 18) * 2)
 2738               	.LFE16:
 2740               	.global	lookahead_joined
 2741               	.global	lookahead_joined
 2742               		.section .bss
 2745               	lookahead_joined:
 2746 0000 0000 0000 		.skip 4,0
 2747               	.global	lookahead_timeout
 2748               	.global	lookahead_timeout
 2751               	lookahead_timeout:
 2752 0004 0000 0000 		.skip 4,0
 2753               		.section	.progmem.data,"a",@progbits
 2756               	__c.2137:
 2757 0000 4572 726F 		.string	"Error: look ahead not fast enough\r\n"
 2757      723A 206C 
 2757      6F6F 6B20 
 2757      6168 6561 
 2757      6420 6E6F 
 2760               	__c.2126:
 2761 0024 496E 6974 		.string	"Initial crossing speed: %lu\n"
 2761      6961 6C20 
 2761      6372 6F73 
 2761      7369 6E67 
 2761      2073 7065 
 2762               		.lcomm la_cnt.2125,4
 2765               	__c.2052:
 2766 0041 4372 6F73 		.string	"Cross speed reduction from %lu to %lu\n"
 2766      7320 7370 
 2766      6565 6420 
 2766      7265 6475 
 2766      6374 696F 
 2769               	__c.2050:
 2770 0068 453A 2064 		.string	"E: dv %lu of %lu   factor %lu of %lu\n"
 2770      7620 256C 
 2770      7520 6F66 
 2770      2025 6C75 
 2770      2020 2066 
 2773               	__c.2048:
 2774 008e 5A3A 2064 		.string	"Z: dv %lu of %lu   factor %lu of %lu\n"
 2774      7620 256C 
 2774      7520 6F66 
 2774      2025 6C75 
 2774      2020 2066 
 2777               	__c.2046:
 2778 00b4 593A 2064 		.string	"Y: dv %lu of %lu   factor %lu of %lu\n"
 2778      7620 256C 
 2778      7520 6F66 
 2778      2025 6C75 
 2778      2020 2066 
 2781               	__c.2044:
 2782 00da 583A 2064 		.string	"X: dv %lu of %lu   factor %lu of %lu\n"
 2782      7620 256C 
 2782      7520 6F66 
 2782      2025 6C75 
 2782      2020 2066 
 2785               	__c.2042:
 2786 0100 7072 6576 		.string	"prevF: %ld  %ld  %ld  %ld\ncurrF: %ld  %ld  %ld  %ld\n"
 2786      463A 2025 
 2786      6C64 2020 
 2786      256C 6420 
 2786      2025 6C64 
 2789               	__c.2040:
 2790 0135 4469 7374 		.string	"Distance: %lu, then %lu\n"
 2790      616E 6365 
 2790      3A20 256C 
 2790      752C 2074 
 2790      6865 6E20 
 2793               	__c.2021:
 2794 014e 0D0A 00   		.string	"\r\n"
 2797               	__c.2019:
 2798 0151 6572 726F 		.string	"error: emergency stop:"
 2798      723A 2065 
 2798      6D65 7267 
 2798      656E 6379 
 2798      2073 746F 
 2799               		.lcomm part.1949,4
 2872               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 dda_lookahead.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:21     .text.dda_jerk_size_1d:00000000 dda_jerk_size_1d
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:131    .text.dda_jerk_size_2d:00000000 dda_jerk_size_2d
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:452    .text.dda_join_moves:00000000 dda_join_moves
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2760   .progmem.data:00000024 __c.2126
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2745   .bss:00000000 lookahead_joined
                             .bss:00000008 la_cnt.2125
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2756   .progmem.data:00000000 __c.2137
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2751   .bss:00000004 lookahead_timeout
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:1261   .text.dda_find_crossing_speed:00000000 dda_find_crossing_speed
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2789   .progmem.data:00000135 __c.2040
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2785   .progmem.data:00000100 __c.2042
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2781   .progmem.data:000000da __c.2044
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2777   .progmem.data:000000b4 __c.2046
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2773   .progmem.data:0000008e __c.2048
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2769   .progmem.data:00000068 __c.2050
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2765   .progmem.data:00000041 __c.2052
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2392   .text.dda_emergency_shutdown:00000000 dda_emergency_shutdown
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2797   .progmem.data:00000151 __c.2019
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2793   .progmem.data:0000014e __c.2021
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2447   .text.dda_steps_to_velocity:00000000 dda_steps_to_velocity
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2762   .bss:0000000c part.1949
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccJFkXa.s:2515   .text.dda_jerk_size_2d_real:00000000 dda_jerk_size_2d_real

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__prologue_saves__
__epilogue_restores__
debug_flags
sersendf_P
__udivmodsi4
muldivQR
__mulsi3
serial_writestr_P
delay_ms
timer_stop
queue_flush
power_off
int_sqrt
__divmodsi4
approx_distance
