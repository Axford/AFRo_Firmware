   1               		.file	"gcode_parse.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.decfloat_to_int,"ax",@progbits
  20               	decfloat_to_int:
  21               	.LFB3:
  22               	.LSM0:
  23               	.LVL0:
  24 0000 DF92      		push r13
  25 0002 EF92      		push r14
  26 0004 FF92      		push r15
  27 0006 0F93      		push r16
  28 0008 1F93      		push r17
  29 000a CF93      		push r28
  30 000c DF93      		push r29
  31               	/* prologue: function */
  32               	/* frame size = 0 */
  33 000e EC01      		movw r28,r24
  34 0010 9B01      		movw r18,r22
  35               	.LSM1:
  36 0012 E880      		ld r14,Y
  37 0014 F980      		ldd r15,Y+1
  38 0016 0A81      		ldd r16,Y+2
  39 0018 1B81      		ldd r17,Y+3
  40               	.LVL1:
  41               	.LSM2:
  42 001a DC80      		ldd r13,Y+4
  43               	.LVL2:
  44 001c 8FE7      		ldi r24,lo8(127)
  45               	.LVL3:
  46 001e D822      		and r13,r24
  47               	.LSM3:
  48 0020 01F0      		breq .L2
  49               	.LVL4:
  50 0022 00C0      		rjmp .L9
  51               	.LVL5:
  52               	.L4:
  53               	.LSM4:
  54 0024 C901      		movw r24,r18
  55 0026 6AE0      		ldi r22,lo8(10)
  56 0028 70E0      		ldi r23,hi8(10)
  57 002a 0E94 0000 		call __udivmodhi4
  58 002e 9B01      		movw r18,r22
  59               	.L9:
  60               	.LSM5:
  61 0030 DA94      		dec r13
  62               	.L2:
  63               	.LSM6:
  64 0032 DD20      		tst r13
  65 0034 01F0      		breq .L3
  66 0036 C901      		movw r24,r18
  67 0038 6AE0      		ldi r22,lo8(10)
  68 003a 70E0      		ldi r23,hi8(10)
  69 003c 0E94 0000 		call __udivmodhi4
  70 0040 892B      		or r24,r25
  71 0042 01F0      		breq .L4
  72               	.LVL6:
  73               	.L3:
  74               	.LSM7:
  75 0044 B901      		movw r22,r18
  76 0046 80E0      		ldi r24,lo8(0)
  77 0048 90E0      		ldi r25,hi8(0)
  78               	.LVL7:
  79 004a A801      		movw r20,r16
  80 004c 9701      		movw r18,r14
  81               	.LVL8:
  82 004e 0E94 0000 		call __mulsi3
  83               	.LVL9:
  84 0052 7B01      		movw r14,r22
  85 0054 8C01      		movw r16,r24
  86               	.LVL10:
  87               	.LSM8:
  88 0056 DD20      		tst r13
  89 0058 01F0      		breq .L5
  90               	.LSM9:
  91 005a ED2D      		mov r30,r13
  92 005c F0E0      		ldi r31,lo8(0)
  93               	.LVL11:
  94 005e EE0F      		lsl r30
  95 0060 FF1F      		rol r31
  96 0062 EE0F      		lsl r30
  97 0064 FF1F      		rol r31
  98               	.LVL12:
  99 0066 E050      		subi r30,lo8(-(powers))
 100 0068 F040      		sbci r31,hi8(-(powers))
 101               	.LVL13:
 102 006a 2081      		ld r18,Z
 103 006c 3181      		ldd r19,Z+1
 104 006e 4281      		ldd r20,Z+2
 105 0070 5381      		ldd r21,Z+3
 106 0072 CA01      		movw r24,r20
 107 0074 B901      		movw r22,r18
 108 0076 9695      		lsr r25
 109 0078 8795      		ror r24
 110 007a 7795      		ror r23
 111 007c 6795      		ror r22
 112               	.LVL14:
 113 007e 6E0D      		add r22,r14
 114 0080 7F1D      		adc r23,r15
 115 0082 801F      		adc r24,r16
 116 0084 911F      		adc r25,r17
 117 0086 0E94 0000 		call __udivmodsi4
 118 008a C901      		movw r24,r18
 119               	.LVL15:
 120 008c DA01      		movw r26,r20
 121 008e 7C01      		movw r14,r24
 122 0090 8D01      		movw r16,r26
 123               	.LVL16:
 124               	.L5:
 125               	.LSM10:
 126 0092 8C81      		ldd r24,Y+4
 127               	.LVL17:
 128 0094 87FF      		sbrs r24,7
 129 0096 00C0      		rjmp .L6
 130 0098 2227      		clr r18
 131 009a 3327      		clr r19
 132 009c A901      		movw r20,r18
 133 009e 2E19      		sub r18,r14
 134 00a0 3F09      		sbc r19,r15
 135 00a2 400B      		sbc r20,r16
 136 00a4 510B      		sbc r21,r17
 137 00a6 00C0      		rjmp .L7
 138               	.L6:
 139 00a8 A801      		movw r20,r16
 140 00aa 9701      		movw r18,r14
 141               	.L7:
 142               	.LSM11:
 143 00ac B901      		movw r22,r18
 144 00ae CA01      		movw r24,r20
 145               	/* epilogue start */
 146 00b0 CDB7      		in r28,__SP_L__
 147 00b2 DEB7      		in r29,__SP_H__
 148               	.LVL18:
 149 00b4 E7E0      		ldi r30, lo8(7)
 150 00b6 0C94 0000 		jmp __epilogue_restores__ + ((18 - 7) * 2)
 151               	.LFE3:
 153               		.section	.text.gcode_init,"ax",@progbits
 154               	.global	gcode_init
 156               	gcode_init:
 157               	.LFB4:
 158               	.LSM12:
 159               	/* prologue: function */
 160               	/* frame size = 0 */
 161               	.LSM13:
 162 0000 8091 0000 		lds r24,next_target+1
 163 0004 8068      		ori r24,lo8(-128)
 164 0006 8093 0000 		sts next_target+1,r24
 165               	/* epilogue start */
 166               	.LSM14:
 167 000a 0895      		ret
 168               	.LFE4:
 170               		.section	.text.request_resend,"ax",@progbits
 171               	.global	request_resend
 173               	request_resend:
 174               	.LFB6:
 175               	.LSM15:
 176               	/* prologue: function */
 177               	/* frame size = 0 */
 178               	.LSM16:
 179 0000 80E0      		ldi r24,lo8(__c.1912)
 180 0002 90E0      		ldi r25,hi8(__c.1912)
 181 0004 0E94 0000 		call serial_writestr_P
 182               	.LSM17:
 183 0008 6091 0000 		lds r22,next_target+33
 184 000c 7091 0000 		lds r23,(next_target+33)+1
 185 0010 8091 0000 		lds r24,(next_target+33)+2
 186 0014 9091 0000 		lds r25,(next_target+33)+3
 187 0018 0E94 0000 		call serwrite_uint32
 188               	.LSM18:
 189 001c 8AE0      		ldi r24,lo8(10)
 190 001e 0E94 0000 		call serial_writechar
 191               	/* epilogue start */
 192               	.LSM19:
 193 0022 0895      		ret
 194               	.LFE6:
 196               		.section	.text.gcode_parse_char,"ax",@progbits
 197               	.global	gcode_parse_char
 199               	gcode_parse_char:
 200               	.LFB5:
 201               	.LSM20:
 202               	.LVL19:
 203 0000 0F93      		push r16
 204 0002 1F93      		push r17
 205               	/* prologue: function */
 206               	/* frame size = 0 */
 207 0004 082F      		mov r16,r24
 208               	.LSM21:
 209 0006 8156      		subi r24,lo8(-(-97))
 210               	.LVL20:
 211 0008 8A31      		cpi r24,lo8(26)
 212 000a 00F0      		brlo .L15
 213 000c 102F      		mov r17,r16
 214 000e 00C0      		rjmp .L16
 215               	.LVL21:
 216               	.L15:
 217               	.LSM22:
 218 0010 102F      		mov r17,r16
 219 0012 1F7D      		andi r17,lo8(-33)
 220               	.LVL22:
 221               	.L16:
 222               	.LSM23:
 223 0014 9091 0000 		lds r25,last_field
 224 0018 9923      		tst r25
 225 001a 01F4      		brne .+2
 226 001c 00C0      		rjmp .L17
 227               	.LSM24:
 228 001e 812F      		mov r24,r17
 229 0020 8154      		subi r24,lo8(-(-65))
 230 0022 8A31      		cpi r24,lo8(26)
 231 0024 00F0      		brlo .L18
 232 0026 1A32      		cpi r17,lo8(42)
 233 0028 01F0      		breq .L18
 234 002a 1A30      		cpi r17,lo8(10)
 235 002c 01F0      		breq .L18
 236 002e 1D30      		cpi r17,lo8(13)
 237 0030 01F0      		breq .+2
 238 0032 00C0      		rjmp .L17
 239               	.L18:
 240               	.LSM25:
 241 0034 9035      		cpi r25,lo8(80)
 242 0036 01F4      		brne .+2
 243 0038 00C0      		rjmp .L26
 244 003a 9135      		cpi r25,lo8(81)
 245 003c 00F4      		brsh .L32
 246 003e 9734      		cpi r25,lo8(71)
 247 0040 01F0      		breq .L23
 248 0042 9834      		cpi r25,lo8(72)
 249 0044 00F4      		brsh .L33
 250 0046 9534      		cpi r25,lo8(69)
 251 0048 01F4      		brne .+2
 252 004a 00C0      		rjmp .L21
 253 004c 9634      		cpi r25,lo8(70)
 254 004e 00F0      		brlo .+2
 255 0050 00C0      		rjmp .L22
 256 0052 9A32      		cpi r25,lo8(42)
 257 0054 01F0      		breq .+2
 258 0056 00C0      		rjmp .L19
 259 0058 00C0      		rjmp .L108
 260               	.L33:
 261 005a 9D34      		cpi r25,lo8(77)
 262 005c 01F0      		breq .L24
 263 005e 9E34      		cpi r25,lo8(78)
 264 0060 01F0      		breq .+2
 265 0062 00C0      		rjmp .L19
 266 0064 00C0      		rjmp .L109
 267               	.L32:
 268 0066 9835      		cpi r25,lo8(88)
 269 0068 01F0      		breq .L29
 270 006a 9935      		cpi r25,lo8(89)
 271 006c 00F4      		brsh .L34
 272 006e 9335      		cpi r25,lo8(83)
 273 0070 01F4      		brne .+2
 274 0072 00C0      		rjmp .L27
 275 0074 9435      		cpi r25,lo8(84)
 276 0076 01F0      		breq .+2
 277 0078 00C0      		rjmp .L19
 278 007a 00C0      		rjmp .L110
 279               	.L34:
 280 007c 9935      		cpi r25,lo8(89)
 281 007e 01F0      		breq .L30
 282 0080 9A35      		cpi r25,lo8(90)
 283 0082 01F0      		breq .+2
 284 0084 00C0      		rjmp .L19
 285 0086 00C0      		rjmp .L111
 286               	.L23:
 287               	.LSM26:
 288 0088 6091 0000 		lds r22,read_digit
 289 008c 6093 0000 		sts next_target+3,r22
 290 0090 00C0      		rjmp .L104
 291               	.L24:
 292               	.LSM27:
 293 0092 6091 0000 		lds r22,read_digit
 294 0096 6093 0000 		sts next_target+4,r22
 295 009a 00C0      		rjmp .L104
 296               	.L29:
 297               	.LSM28:
 298 009c 8091 0000 		lds r24,next_target+2
 299 00a0 80FF      		sbrs r24,0
 300 00a2 00C0      		rjmp .L35
 301               	.LSM29:
 302 00a4 80E0      		ldi r24,lo8(read_digit)
 303 00a6 90E0      		ldi r25,hi8(read_digit)
 304 00a8 68E3      		ldi r22,lo8(25400)
 305 00aa 73E6      		ldi r23,hi8(25400)
 306 00ac 00C0      		rjmp .L91
 307               	.L35:
 308               	.LSM30:
 309 00ae 80E0      		ldi r24,lo8(read_digit)
 310 00b0 90E0      		ldi r25,hi8(read_digit)
 311 00b2 68EE      		ldi r22,lo8(1000)
 312 00b4 73E0      		ldi r23,hi8(1000)
 313               	.L91:
 314 00b6 0E94 0000 		call decfloat_to_int
 315 00ba 6093 0000 		sts next_target+5,r22
 316 00be 7093 0000 		sts (next_target+5)+1,r23
 317 00c2 8093 0000 		sts (next_target+5)+2,r24
 318 00c6 9093 0000 		sts (next_target+5)+3,r25
 319               	.LSM31:
 320 00ca 8091 0000 		lds r24,debug_flags
 321 00ce 80FF      		sbrs r24,0
 322 00d0 00C0      		rjmp .L19
 323               	.LSM32:
 324 00d2 6091 0000 		lds r22,next_target+5
 325 00d6 7091 0000 		lds r23,(next_target+5)+1
 326 00da 8091 0000 		lds r24,(next_target+5)+2
 327 00de 9091 0000 		lds r25,(next_target+5)+3
 328 00e2 00C0      		rjmp .L99
 329               	.L30:
 330               	.LSM33:
 331 00e4 8091 0000 		lds r24,next_target+2
 332 00e8 80FF      		sbrs r24,0
 333 00ea 00C0      		rjmp .L37
 334               	.LSM34:
 335 00ec 80E0      		ldi r24,lo8(read_digit)
 336 00ee 90E0      		ldi r25,hi8(read_digit)
 337 00f0 68E3      		ldi r22,lo8(25400)
 338 00f2 73E6      		ldi r23,hi8(25400)
 339 00f4 00C0      		rjmp .L92
 340               	.L37:
 341               	.LSM35:
 342 00f6 80E0      		ldi r24,lo8(read_digit)
 343 00f8 90E0      		ldi r25,hi8(read_digit)
 344 00fa 68EE      		ldi r22,lo8(1000)
 345 00fc 73E0      		ldi r23,hi8(1000)
 346               	.L92:
 347 00fe 0E94 0000 		call decfloat_to_int
 348 0102 6093 0000 		sts next_target+9,r22
 349 0106 7093 0000 		sts (next_target+9)+1,r23
 350 010a 8093 0000 		sts (next_target+9)+2,r24
 351 010e 9093 0000 		sts (next_target+9)+3,r25
 352               	.LSM36:
 353 0112 8091 0000 		lds r24,debug_flags
 354 0116 80FF      		sbrs r24,0
 355 0118 00C0      		rjmp .L19
 356               	.LSM37:
 357 011a 6091 0000 		lds r22,next_target+9
 358 011e 7091 0000 		lds r23,(next_target+9)+1
 359 0122 8091 0000 		lds r24,(next_target+9)+2
 360 0126 9091 0000 		lds r25,(next_target+9)+3
 361               	.L99:
 362 012a 0E94 0000 		call serwrite_int32
 363 012e 00C0      		rjmp .L19
 364               	.L111:
 365               	.LSM38:
 366 0130 8091 0000 		lds r24,next_target+2
 367 0134 80FF      		sbrs r24,0
 368 0136 00C0      		rjmp .L39
 369               	.LSM39:
 370 0138 80E0      		ldi r24,lo8(read_digit)
 371 013a 90E0      		ldi r25,hi8(read_digit)
 372 013c 68E3      		ldi r22,lo8(25400)
 373 013e 73E6      		ldi r23,hi8(25400)
 374 0140 00C0      		rjmp .L93
 375               	.L39:
 376               	.LSM40:
 377 0142 80E0      		ldi r24,lo8(read_digit)
 378 0144 90E0      		ldi r25,hi8(read_digit)
 379 0146 68EE      		ldi r22,lo8(1000)
 380 0148 73E0      		ldi r23,hi8(1000)
 381               	.L93:
 382 014a 0E94 0000 		call decfloat_to_int
 383 014e 6093 0000 		sts next_target+13,r22
 384 0152 7093 0000 		sts (next_target+13)+1,r23
 385 0156 8093 0000 		sts (next_target+13)+2,r24
 386 015a 9093 0000 		sts (next_target+13)+3,r25
 387               	.LSM41:
 388 015e 8091 0000 		lds r24,debug_flags
 389 0162 80FF      		sbrs r24,0
 390 0164 00C0      		rjmp .L19
 391               	.LSM42:
 392 0166 6091 0000 		lds r22,next_target+13
 393 016a 7091 0000 		lds r23,(next_target+13)+1
 394 016e 8091 0000 		lds r24,(next_target+13)+2
 395 0172 9091 0000 		lds r25,(next_target+13)+3
 396 0176 00C0      		rjmp .L99
 397               	.L21:
 398               	.LSM43:
 399 0178 8091 0000 		lds r24,next_target+2
 400 017c 80FF      		sbrs r24,0
 401 017e 00C0      		rjmp .L41
 402               	.LSM44:
 403 0180 80E0      		ldi r24,lo8(read_digit)
 404 0182 90E0      		ldi r25,hi8(read_digit)
 405 0184 68E3      		ldi r22,lo8(25400)
 406 0186 73E6      		ldi r23,hi8(25400)
 407 0188 00C0      		rjmp .L94
 408               	.L41:
 409               	.LSM45:
 410 018a 80E0      		ldi r24,lo8(read_digit)
 411 018c 90E0      		ldi r25,hi8(read_digit)
 412 018e 68EE      		ldi r22,lo8(1000)
 413 0190 73E0      		ldi r23,hi8(1000)
 414               	.L94:
 415 0192 0E94 0000 		call decfloat_to_int
 416 0196 6093 0000 		sts next_target+17,r22
 417 019a 7093 0000 		sts (next_target+17)+1,r23
 418 019e 8093 0000 		sts (next_target+17)+2,r24
 419 01a2 9093 0000 		sts (next_target+17)+3,r25
 420               	.LSM46:
 421 01a6 8091 0000 		lds r24,debug_flags
 422 01aa 80FF      		sbrs r24,0
 423 01ac 00C0      		rjmp .L19
 424               	.LSM47:
 425 01ae 6091 0000 		lds r22,next_target+17
 426 01b2 7091 0000 		lds r23,(next_target+17)+1
 427 01b6 8091 0000 		lds r24,(next_target+17)+2
 428 01ba 9091 0000 		lds r25,(next_target+17)+3
 429 01be 00C0      		rjmp .L98
 430               	.L22:
 431               	.LSM48:
 432 01c0 8091 0000 		lds r24,next_target+2
 433 01c4 80FF      		sbrs r24,0
 434 01c6 00C0      		rjmp .L43
 435               	.LSM49:
 436 01c8 80E0      		ldi r24,lo8(read_digit)
 437 01ca 90E0      		ldi r25,hi8(read_digit)
 438 01cc 68E3      		ldi r22,lo8(25400)
 439 01ce 73E6      		ldi r23,hi8(25400)
 440 01d0 00C0      		rjmp .L95
 441               	.L43:
 442               	.LSM50:
 443 01d2 80E0      		ldi r24,lo8(read_digit)
 444 01d4 90E0      		ldi r25,hi8(read_digit)
 445 01d6 61E0      		ldi r22,lo8(1)
 446 01d8 70E0      		ldi r23,hi8(1)
 447               	.L95:
 448 01da 0E94 0000 		call decfloat_to_int
 449 01de 6093 0000 		sts next_target+21,r22
 450 01e2 7093 0000 		sts (next_target+21)+1,r23
 451 01e6 8093 0000 		sts (next_target+21)+2,r24
 452 01ea 9093 0000 		sts (next_target+21)+3,r25
 453               	.LSM51:
 454 01ee 8091 0000 		lds r24,debug_flags
 455 01f2 80FF      		sbrs r24,0
 456 01f4 00C0      		rjmp .L19
 457               	.LSM52:
 458 01f6 6091 0000 		lds r22,next_target+21
 459 01fa 7091 0000 		lds r23,(next_target+21)+1
 460 01fe 8091 0000 		lds r24,(next_target+21)+2
 461 0202 9091 0000 		lds r25,(next_target+21)+3
 462 0206 00C0      		rjmp .L98
 463               	.L27:
 464               	.LSM53:
 465 0208 8091 0000 		lds r24,next_target+4
 466 020c 8836      		cpi r24,lo8(104)
 467 020e 01F0      		breq .L45
 468 0210 8D36      		cpi r24,lo8(109)
 469 0212 01F0      		breq .L45
 470 0214 8C38      		cpi r24,lo8(-116)
 471 0216 01F4      		brne .L46
 472               	.L45:
 473               	.LSM54:
 474 0218 80E0      		ldi r24,lo8(read_digit)
 475 021a 90E0      		ldi r25,hi8(read_digit)
 476 021c 64E0      		ldi r22,lo8(4)
 477 021e 70E0      		ldi r23,hi8(4)
 478 0220 00C0      		rjmp .L96
 479               	.L46:
 480               	.LSM55:
 481 0222 8258      		subi r24,lo8(-(126))
 482 0224 8330      		cpi r24,lo8(3)
 483 0226 00F4      		brsh .L48
 484               	.LSM56:
 485 0228 80E0      		ldi r24,lo8(read_digit)
 486 022a 90E0      		ldi r25,hi8(read_digit)
 487 022c 60E0      		ldi r22,lo8(1024)
 488 022e 74E0      		ldi r23,hi8(1024)
 489 0230 00C0      		rjmp .L96
 490               	.L48:
 491               	.LSM57:
 492 0232 80E0      		ldi r24,lo8(read_digit)
 493 0234 90E0      		ldi r25,hi8(read_digit)
 494 0236 61E0      		ldi r22,lo8(1)
 495 0238 70E0      		ldi r23,hi8(1)
 496               	.L96:
 497 023a 0E94 0000 		call decfloat_to_int
 498 023e 6093 0000 		sts next_target+26,r22
 499 0242 7093 0000 		sts (next_target+26)+1,r23
 500 0246 8093 0000 		sts (next_target+26)+2,r24
 501 024a 9093 0000 		sts (next_target+26)+3,r25
 502               	.LSM58:
 503 024e 8091 0000 		lds r24,debug_flags
 504 0252 80FF      		sbrs r24,0
 505 0254 00C0      		rjmp .L19
 506               	.LSM59:
 507 0256 6091 0000 		lds r22,next_target+26
 508 025a 7091 0000 		lds r23,(next_target+26)+1
 509 025e 8091 0000 		lds r24,(next_target+26)+2
 510 0262 9091 0000 		lds r25,(next_target+26)+3
 511 0266 00C0      		rjmp .L99
 512               	.L26:
 513               	.LSM60:
 514 0268 80E0      		ldi r24,lo8(read_digit)
 515 026a 90E0      		ldi r25,hi8(read_digit)
 516 026c 61E0      		ldi r22,lo8(1)
 517 026e 70E0      		ldi r23,hi8(1)
 518 0270 0E94 0000 		call decfloat_to_int
 519 0274 9B01      		movw r18,r22
 520 0276 7093 0000 		sts (next_target+30)+1,r23
 521 027a 6093 0000 		sts next_target+30,r22
 522               	.LSM61:
 523 027e 8091 0000 		lds r24,debug_flags
 524 0282 80FF      		sbrs r24,0
 525 0284 00C0      		rjmp .L19
 526               	.LSM62:
 527 0286 B901      		movw r22,r18
 528 0288 00C0      		rjmp .L105
 529               	.L110:
 530               	.LSM63:
 531 028a 6091 0000 		lds r22,read_digit
 532 028e 6093 0000 		sts next_target+32,r22
 533 0292 00C0      		rjmp .L104
 534               	.L109:
 535               	.LSM64:
 536 0294 80E0      		ldi r24,lo8(read_digit)
 537 0296 90E0      		ldi r25,hi8(read_digit)
 538 0298 61E0      		ldi r22,lo8(1)
 539 029a 70E0      		ldi r23,hi8(1)
 540 029c 0E94 0000 		call decfloat_to_int
 541 02a0 282F      		mov r18,r24
 542 02a2 6093 0000 		sts next_target+33,r22
 543 02a6 7093 0000 		sts next_target+34,r23
 544 02aa 8093 0000 		sts next_target+35,r24
 545 02ae 9093 0000 		sts next_target+36,r25
 546               	.LSM65:
 547 02b2 8091 0000 		lds r24,debug_flags
 548 02b6 80FF      		sbrs r24,0
 549 02b8 00C0      		rjmp .L19
 550               	.LSM66:
 551 02ba 822F      		mov r24,r18
 552 02bc 00C0      		rjmp .L98
 553               	.L108:
 554               	.LSM67:
 555 02be 80E0      		ldi r24,lo8(read_digit)
 556 02c0 90E0      		ldi r25,hi8(read_digit)
 557 02c2 61E0      		ldi r22,lo8(1)
 558 02c4 70E0      		ldi r23,hi8(1)
 559 02c6 0E94 0000 		call decfloat_to_int
 560 02ca 6093 0000 		sts next_target+41,r22
 561               	.L104:
 562               	.LSM68:
 563 02ce 8091 0000 		lds r24,debug_flags
 564 02d2 80FF      		sbrs r24,0
 565 02d4 00C0      		rjmp .L19
 566               	.LSM69:
 567 02d6 70E0      		ldi r23,lo8(0)
 568               	.L105:
 569 02d8 80E0      		ldi r24,lo8(0)
 570 02da 90E0      		ldi r25,hi8(0)
 571               	.L98:
 572 02dc 0E94 0000 		call serwrite_uint32
 573               	.L19:
 574               	.LSM70:
 575 02e0 1092 0000 		sts last_field,__zero_reg__
 576               	.LSM71:
 577 02e4 1092 0000 		sts read_digit,__zero_reg__
 578 02e8 1092 0000 		sts (read_digit)+1,__zero_reg__
 579 02ec 1092 0000 		sts (read_digit)+2,__zero_reg__
 580 02f0 1092 0000 		sts (read_digit)+3,__zero_reg__
 581 02f4 1092 0000 		sts read_digit+4,__zero_reg__
 582               	.L17:
 583               	.LSM72:
 584 02f8 8091 0000 		lds r24,next_target+1
 585 02fc 84FD      		sbrc r24,4
 586 02fe 00C0      		rjmp .L49
 587 0300 85FD      		sbrc r24,5
 588 0302 00C0      		rjmp .L49
 589               	.LSM73:
 590 0304 812F      		mov r24,r17
 591 0306 8154      		subi r24,lo8(-(-65))
 592 0308 8A31      		cpi r24,lo8(26)
 593 030a 00F0      		brlo .L50
 594 030c 1A32      		cpi r17,lo8(42)
 595 030e 01F4      		brne .L51
 596               	.L50:
 597               	.LSM74:
 598 0310 1093 0000 		sts last_field,r17
 599               	.LSM75:
 600 0314 8091 0000 		lds r24,debug_flags
 601 0318 80FF      		sbrs r24,0
 602 031a 00C0      		rjmp .L51
 603               	.LSM76:
 604 031c 812F      		mov r24,r17
 605 031e 0E94 0000 		call serial_writechar
 606               	.L51:
 607               	.LSM77:
 608 0322 812F      		mov r24,r17
 609 0324 8053      		subi r24,lo8(-(-48))
 610 0326 8A30      		cpi r24,lo8(10)
 611 0328 00F0      		brlo .+2
 612 032a 00C0      		rjmp .L52
 613               	.LSM78:
 614 032c 8091 0000 		lds r24,read_digit+4
 615 0330 8F77      		andi r24,lo8(127)
 616 0332 90E0      		ldi r25,lo8(0)
 617 0334 0497      		sbiw r24,4
 618 0336 04F0      		brlt .+2
 619 0338 00C0      		rjmp .L53
 620 033a 8091 0000 		lds r24,next_target+2
 621 033e 80FD      		sbrc r24,0
 622 0340 00C0      		rjmp .L54
 623 0342 8091 0000 		lds r24,read_digit
 624 0346 9091 0000 		lds r25,(read_digit)+1
 625 034a A091 0000 		lds r26,(read_digit)+2
 626 034e B091 0000 		lds r27,(read_digit)+3
 627 0352 8F5A      		subi r24,lo8(4289967)
 628 0354 9547      		sbci r25,hi8(4289967)
 629 0356 A144      		sbci r26,hlo8(4289967)
 630 0358 B040      		sbci r27,hhi8(4289967)
 631 035a 00F0      		brlo .L55
 632 035c 00C0      		rjmp .L53
 633               	.L54:
 634 035e 8091 0000 		lds r24,read_digit
 635 0362 9091 0000 		lds r25,(read_digit)+1
 636 0366 A091 0000 		lds r26,(read_digit)+2
 637 036a B091 0000 		lds r27,(read_digit)+3
 638 036e 8D5F      		subi r24,lo8(164093)
 639 0370 9048      		sbci r25,hi8(164093)
 640 0372 A240      		sbci r26,hlo8(164093)
 641 0374 B040      		sbci r27,hhi8(164093)
 642 0376 00F0      		brlo .+2
 643 0378 00C0      		rjmp .L53
 644               	.L55:
 645               	.LSM79:
 646 037a 8091 0000 		lds r24,read_digit
 647 037e 9091 0000 		lds r25,(read_digit)+1
 648 0382 A091 0000 		lds r26,(read_digit)+2
 649 0386 B091 0000 		lds r27,(read_digit)+3
 650 038a 9C01      		movw r18,r24
 651 038c AD01      		movw r20,r26
 652 038e 73E0      		ldi r23,3
 653 0390 220F      	1:	lsl r18
 654 0392 331F      		rol r19
 655 0394 441F      		rol r20
 656 0396 551F      		rol r21
 657 0398 7A95      		dec r23
 658 039a 01F4      		brne 1b
 659 039c 880F      		lsl r24
 660 039e 991F      		rol r25
 661 03a0 AA1F      		rol r26
 662 03a2 BB1F      		rol r27
 663 03a4 280F      		add r18,r24
 664 03a6 391F      		adc r19,r25
 665 03a8 4A1F      		adc r20,r26
 666 03aa 5B1F      		adc r21,r27
 667 03ac 812F      		mov r24,r17
 668 03ae 90E0      		ldi r25,lo8(0)
 669               	.LVL23:
 670 03b0 C097      		sbiw r24,48
 671               	.LVL24:
 672 03b2 AA27      		clr r26
 673 03b4 97FD      		sbrc r25,7
 674 03b6 A095      		com r26
 675 03b8 BA2F      		mov r27,r26
 676               	.LVL25:
 677 03ba 280F      		add r18,r24
 678 03bc 391F      		adc r19,r25
 679 03be 4A1F      		adc r20,r26
 680 03c0 5B1F      		adc r21,r27
 681 03c2 2093 0000 		sts read_digit,r18
 682 03c6 3093 0000 		sts (read_digit)+1,r19
 683 03ca 4093 0000 		sts (read_digit)+2,r20
 684 03ce 5093 0000 		sts (read_digit)+3,r21
 685               	.LSM80:
 686 03d2 9091 0000 		lds r25,read_digit+4
 687               	.LVL26:
 688 03d6 892F      		mov r24,r25
 689 03d8 8F77      		andi r24,lo8(127)
 690 03da 01F4      		brne .+2
 691 03dc 00C0      		rjmp .L53
 692               	.LSM81:
 693 03de 8F5F      		subi r24,lo8(-(1))
 694 03e0 8F77      		andi r24,lo8(127)
 695 03e2 9078      		andi r25,lo8(-128)
 696 03e4 982B      		or r25,r24
 697 03e6 00C0      		rjmp .L101
 698               	.LVL27:
 699               	.L52:
 700               	.LSM82:
 701 03e8 1534      		cpi r17,lo8(69)
 702 03ea 01F4      		brne .+2
 703 03ec 00C0      		rjmp .L62
 704 03ee 1634      		cpi r17,lo8(70)
 705 03f0 00F4      		brsh .L73
 706 03f2 1832      		cpi r17,lo8(40)
 707 03f4 01F4      		brne .+2
 708 03f6 00C0      		rjmp .L57
 709 03f8 1932      		cpi r17,lo8(41)
 710 03fa 00F4      		brsh .L74
 711 03fc 1D30      		cpi r17,lo8(13)
 712 03fe 01F4      		brne .+2
 713 0400 00C0      		rjmp .L53
 714 0402 1E30      		cpi r17,lo8(14)
 715 0404 00F4      		brsh .L75
 716 0406 812F      		mov r24,r17
 717 0408 8950      		subi r24,lo8(-(-9))
 718 040a 8230      		cpi r24,lo8(2)
 719 040c 00F0      		brlo .+2
 720 040e 00C0      		rjmp .L56
 721 0410 00C0      		rjmp .L53
 722               	.L75:
 723 0412 1032      		cpi r17,lo8(32)
 724 0414 01F0      		breq .+2
 725 0416 00C0      		rjmp .L56
 726 0418 00C0      		rjmp .L53
 727               	.L74:
 728 041a 1D32      		cpi r17,lo8(45)
 729 041c 01F4      		brne .+2
 730 041e 00C0      		rjmp .L59
 731 0420 1E32      		cpi r17,lo8(46)
 732 0422 00F4      		brsh .L76
 733 0424 1A32      		cpi r17,lo8(42)
 734 0426 01F0      		breq .+2
 735 0428 00C0      		rjmp .L56
 736 042a 00C0      		rjmp .L112
 737               	.L76:
 738 042c 1E32      		cpi r17,lo8(46)
 739 042e 01F4      		brne .+2
 740 0430 00C0      		rjmp .L60
 741 0432 1B33      		cpi r17,lo8(59)
 742 0434 01F0      		breq .+2
 743 0436 00C0      		rjmp .L56
 744 0438 00C0      		rjmp .L113
 745               	.L73:
 746 043a 1035      		cpi r17,lo8(80)
 747 043c 01F4      		brne .+2
 748 043e 00C0      		rjmp .L67
 749 0440 1135      		cpi r17,lo8(81)
 750 0442 00F4      		brsh .L77
 751 0444 1734      		cpi r17,lo8(71)
 752 0446 01F0      		breq .L64
 753 0448 1734      		cpi r17,lo8(71)
 754 044a 00F0      		brlo .L63
 755 044c 1D34      		cpi r17,lo8(77)
 756 044e 01F0      		breq .L65
 757 0450 1E34      		cpi r17,lo8(78)
 758 0452 01F0      		breq .+2
 759 0454 00C0      		rjmp .L56
 760 0456 00C0      		rjmp .L114
 761               	.L77:
 762 0458 1835      		cpi r17,lo8(88)
 763 045a 01F0      		breq .L70
 764 045c 1935      		cpi r17,lo8(89)
 765 045e 00F4      		brsh .L78
 766 0460 1335      		cpi r17,lo8(83)
 767 0462 01F0      		breq .L68
 768 0464 1435      		cpi r17,lo8(84)
 769 0466 01F0      		breq .+2
 770 0468 00C0      		rjmp .L56
 771 046a 00C0      		rjmp .L115
 772               	.L78:
 773 046c 1935      		cpi r17,lo8(89)
 774 046e 01F0      		breq .L71
 775 0470 1A35      		cpi r17,lo8(90)
 776 0472 01F0      		breq .+2
 777 0474 00C0      		rjmp .L56
 778 0476 00C0      		rjmp .L116
 779               	.L64:
 780               	.LSM83:
 781 0478 8091 0000 		lds r24,next_target
 782 047c 8160      		ori r24,lo8(1)
 783               	.LSM84:
 784 047e 8D7F      		andi r24,lo8(-3)
 785 0480 8093 0000 		sts next_target,r24
 786               	.LSM85:
 787 0484 1092 0000 		sts next_target+4,__zero_reg__
 788 0488 00C0      		rjmp .L53
 789               	.L65:
 790               	.LSM86:
 791 048a 8091 0000 		lds r24,next_target
 792 048e 8260      		ori r24,lo8(2)
 793               	.LSM87:
 794 0490 8E7F      		andi r24,lo8(-2)
 795 0492 8093 0000 		sts next_target,r24
 796               	.LSM88:
 797 0496 1092 0000 		sts next_target+3,__zero_reg__
 798 049a 00C0      		rjmp .L53
 799               	.L70:
 800               	.LSM89:
 801 049c 8091 0000 		lds r24,next_target
 802 04a0 8460      		ori r24,lo8(4)
 803 04a2 00C0      		rjmp .L102
 804               	.L71:
 805               	.LSM90:
 806 04a4 8091 0000 		lds r24,next_target
 807 04a8 8860      		ori r24,lo8(8)
 808 04aa 00C0      		rjmp .L102
 809               	.L116:
 810               	.LSM91:
 811 04ac 8091 0000 		lds r24,next_target
 812 04b0 8061      		ori r24,lo8(16)
 813 04b2 00C0      		rjmp .L102
 814               	.L62:
 815               	.LSM92:
 816 04b4 8091 0000 		lds r24,next_target
 817 04b8 8062      		ori r24,lo8(32)
 818 04ba 00C0      		rjmp .L102
 819               	.L63:
 820               	.LSM93:
 821 04bc 8091 0000 		lds r24,next_target
 822 04c0 8064      		ori r24,lo8(64)
 823 04c2 00C0      		rjmp .L102
 824               	.L68:
 825               	.LSM94:
 826 04c4 8091 0000 		lds r24,next_target
 827 04c8 8068      		ori r24,lo8(-128)
 828               	.L102:
 829 04ca 8093 0000 		sts next_target,r24
 830 04ce 00C0      		rjmp .L53
 831               	.L67:
 832               	.LSM95:
 833 04d0 8091 0000 		lds r24,next_target+1
 834 04d4 8160      		ori r24,lo8(1)
 835 04d6 00C0      		rjmp .L100
 836               	.L115:
 837               	.LSM96:
 838 04d8 8091 0000 		lds r24,next_target+1
 839 04dc 8260      		ori r24,lo8(2)
 840 04de 00C0      		rjmp .L100
 841               	.L114:
 842               	.LSM97:
 843 04e0 8091 0000 		lds r24,next_target+1
 844 04e4 8460      		ori r24,lo8(4)
 845 04e6 00C0      		rjmp .L100
 846               	.L112:
 847               	.LSM98:
 848 04e8 8091 0000 		lds r24,next_target+1
 849 04ec 8860      		ori r24,lo8(8)
 850 04ee 00C0      		rjmp .L100
 851               	.L113:
 852               	.LSM99:
 853 04f0 8091 0000 		lds r24,next_target+1
 854 04f4 8061      		ori r24,lo8(16)
 855 04f6 00C0      		rjmp .L100
 856               	.L57:
 857               	.LSM100:
 858 04f8 8091 0000 		lds r24,next_target+1
 859 04fc 8062      		ori r24,lo8(32)
 860 04fe 00C0      		rjmp .L100
 861               	.L59:
 862               	.LSM101:
 863 0500 80E8      		ldi r24,lo8(-128)
 864 0502 8093 0000 		sts read_digit+4,r24
 865               	.LSM102:
 866 0506 1092 0000 		sts read_digit,__zero_reg__
 867 050a 1092 0000 		sts (read_digit)+1,__zero_reg__
 868 050e 1092 0000 		sts (read_digit)+2,__zero_reg__
 869 0512 1092 0000 		sts (read_digit)+3,__zero_reg__
 870 0516 00C0      		rjmp .L53
 871               	.L60:
 872               	.LSM103:
 873 0518 9091 0000 		lds r25,read_digit+4
 874 051c 892F      		mov r24,r25
 875 051e 8F77      		andi r24,lo8(127)
 876 0520 01F4      		brne .L53
 877               	.LSM104:
 878 0522 9078      		andi r25,lo8(-128)
 879 0524 9160      		ori r25,lo8(1)
 880               	.L101:
 881 0526 9093 0000 		sts read_digit+4,r25
 882 052a 00C0      		rjmp .L53
 883               	.L56:
 884               	.LSM105:
 885 052c 8FE3      		ldi r24,lo8(63)
 886 052e 0E94 0000 		call serial_writechar
 887               	.LSM106:
 888 0532 812F      		mov r24,r17
 889 0534 0E94 0000 		call serial_writechar
 890               	.LSM107:
 891 0538 8FE3      		ldi r24,lo8(63)
 892 053a 0E94 0000 		call serial_writechar
 893 053e 00C0      		rjmp .L53
 894               	.L49:
 895               	.LSM108:
 896 0540 8091 0000 		lds r24,next_target+1
 897 0544 85FF      		sbrs r24,5
 898 0546 00C0      		rjmp .L53
 899 0548 1932      		cpi r17,lo8(41)
 900 054a 01F4      		brne .L53
 901               	.LSM109:
 902 054c 8F7D      		andi r24,lo8(-33)
 903               	.L100:
 904 054e 8093 0000 		sts next_target+1,r24
 905               	.L53:
 906               	.LSM110:
 907 0552 8091 0000 		lds r24,next_target+1
 908 0556 83FD      		sbrc r24,3
 909 0558 00C0      		rjmp .L79
 910               	.LSM111:
 911 055a 8091 0000 		lds r24,next_target+42
 912 055e 8027      		eor r24,r16
 913 0560 8093 0000 		sts next_target+42,r24
 914               	.L79:
 915               	.LSM112:
 916 0564 1A30      		cpi r17,lo8(10)
 917 0566 01F0      		breq .L80
 918 0568 1D30      		cpi r17,lo8(13)
 919 056a 01F0      		breq .+2
 920 056c 00C0      		rjmp .L90
 921               	.L80:
 922               	.LSM113:
 923 056e 8091 0000 		lds r24,debug_flags
 924 0572 80FF      		sbrs r24,0
 925 0574 00C0      		rjmp .L82
 926               	.LSM114:
 927 0576 812F      		mov r24,r17
 928 0578 0E94 0000 		call serial_writechar
 929               	.L82:
 930               	.LSM115:
 931 057c 8091 0000 		lds r24,next_target
 932 0580 80FD      		sbrc r24,0
 933 0582 00C0      		rjmp .L83
 934 0584 82FD      		sbrc r24,2
 935 0586 00C0      		rjmp .L84
 936 0588 83FD      		sbrc r24,3
 937 058a 00C0      		rjmp .L84
 938 058c 84FD      		sbrc r24,4
 939 058e 00C0      		rjmp .L84
 940 0590 85FD      		sbrc r24,5
 941 0592 00C0      		rjmp .L84
 942 0594 86FF      		sbrs r24,6
 943 0596 00C0      		rjmp .L83
 944               	.L84:
 945               	.LSM116:
 946 0598 8091 0000 		lds r24,next_target
 947 059c 8160      		ori r24,lo8(1)
 948 059e 8093 0000 		sts next_target,r24
 949               	.LSM117:
 950 05a2 81E0      		ldi r24,lo8(1)
 951 05a4 8093 0000 		sts next_target+3,r24
 952               	.L83:
 953               	.LSM118:
 954 05a8 2091 0000 		lds r18,next_target+42
 955 05ac 8091 0000 		lds r24,next_target+41
 956 05b0 2817      		cp r18,r24
 957 05b2 01F0      		breq .L85
 958 05b4 8091 0000 		lds r24,next_target+1
 959 05b8 83FD      		sbrc r24,3
 960 05ba 00C0      		rjmp .L86
 961               	.L85:
 962               	.LSM119:
 963 05bc 80E0      		ldi r24,lo8(__c.1742)
 964 05be 90E0      		ldi r25,hi8(__c.1742)
 965 05c0 0E94 0000 		call serial_writestr_P
 966               	.LSM120:
 967 05c4 0E94 0000 		call process_gcode_command
 968               	.LSM121:
 969 05c8 8AE0      		ldi r24,lo8(10)
 970 05ca 0E94 0000 		call serial_writechar
 971               	.LSM122:
 972 05ce 8091 0000 		lds r24,next_target+1
 973 05d2 82FF      		sbrs r24,2
 974 05d4 00C0      		rjmp .L87
 975               	.LSM123:
 976 05d6 8091 0000 		lds r24,next_target+33
 977 05da 9091 0000 		lds r25,(next_target+33)+1
 978 05de A091 0000 		lds r26,(next_target+33)+2
 979 05e2 B091 0000 		lds r27,(next_target+33)+3
 980 05e6 0196      		adiw r24,1
 981 05e8 A11D      		adc r26,__zero_reg__
 982 05ea B11D      		adc r27,__zero_reg__
 983 05ec 8093 0000 		sts next_target+37,r24
 984 05f0 9093 0000 		sts (next_target+37)+1,r25
 985 05f4 A093 0000 		sts (next_target+37)+2,r26
 986 05f8 B093 0000 		sts (next_target+37)+3,r27
 987 05fc 00C0      		rjmp .L87
 988               	.L86:
 989               	.LSM124:
 990 05fe 8DB7      		in r24,__SP_L__
 991 0600 9EB7      		in r25,__SP_H__
 992 0602 0897      		sbiw r24,8
 993 0604 0FB6      		in __tmp_reg__,__SREG__
 994 0606 F894      		cli
 995 0608 9EBF      		out __SP_H__,r25
 996 060a 0FBE      		out __SREG__,__tmp_reg__
 997 060c 8DBF      		out __SP_L__,r24
 998 060e EDB7      		in r30,__SP_L__
 999 0610 FEB7      		in r31,__SP_H__
 1000 0612 3196      		adiw r30,1
 1001 0614 80E0      		ldi r24,lo8(__c.1744)
 1002 0616 90E0      		ldi r25,hi8(__c.1744)
 1003 0618 ADB7      		in r26,__SP_L__
 1004 061a BEB7      		in r27,__SP_H__
 1005 061c 1296      		adiw r26,1+1
 1006 061e 9C93      		st X,r25
 1007 0620 8E93      		st -X,r24
 1008 0622 1197      		sbiw r26,1
 1009 0624 8091 0000 		lds r24,next_target+37
 1010 0628 9091 0000 		lds r25,(next_target+37)+1
 1011 062c A091 0000 		lds r26,(next_target+37)+2
 1012 0630 B091 0000 		lds r27,(next_target+37)+3
 1013 0634 8283      		std Z+2,r24
 1014 0636 9383      		std Z+3,r25
 1015 0638 A483      		std Z+4,r26
 1016 063a B583      		std Z+5,r27
 1017 063c 2683      		std Z+6,r18
 1018 063e 1782      		std Z+7,__zero_reg__
 1019 0640 0E94 0000 		call sersendf_P
 1020 0644 8DB7      		in r24,__SP_L__
 1021 0646 9EB7      		in r25,__SP_H__
 1022 0648 0896      		adiw r24,8
 1023 064a 0FB6      		in __tmp_reg__,__SREG__
 1024 064c F894      		cli
 1025 064e 9EBF      		out __SP_H__,r25
 1026 0650 0FBE      		out __SREG__,__tmp_reg__
 1027 0652 8DBF      		out __SP_L__,r24
 1028               	.L87:
 1029               	.LSM125:
 1030 0654 1092 0000 		sts next_target+42,__zero_reg__
 1031 0658 1092 0000 		sts next_target+41,__zero_reg__
 1032 065c 8091 0000 		lds r24,next_target+1
 1033 0660 807C      		andi r24,lo8(-64)
 1034 0662 8093 0000 		sts next_target+1,r24
 1035 0666 1092 0000 		sts next_target,__zero_reg__
 1036               	.LSM126:
 1037 066a 86FF      		sbrs r24,6
 1038 066c 00C0      		rjmp .L88
 1039               	.LSM127:
 1040 066e 1092 0000 		sts next_target+13,__zero_reg__
 1041 0672 1092 0000 		sts (next_target+13)+1,__zero_reg__
 1042 0676 1092 0000 		sts (next_target+13)+2,__zero_reg__
 1043 067a 1092 0000 		sts (next_target+13)+3,__zero_reg__
 1044 067e 1092 0000 		sts next_target+9,__zero_reg__
 1045 0682 1092 0000 		sts (next_target+9)+1,__zero_reg__
 1046 0686 1092 0000 		sts (next_target+9)+2,__zero_reg__
 1047 068a 1092 0000 		sts (next_target+9)+3,__zero_reg__
 1048 068e 1092 0000 		sts next_target+5,__zero_reg__
 1049 0692 1092 0000 		sts (next_target+5)+1,__zero_reg__
 1050 0696 1092 0000 		sts (next_target+5)+2,__zero_reg__
 1051 069a 1092 0000 		sts (next_target+5)+3,__zero_reg__
 1052               	.L88:
 1053               	.LSM128:
 1054 069e 8091 0000 		lds r24,next_target+1
 1055 06a2 86FD      		sbrc r24,6
 1056 06a4 00C0      		rjmp .L89
 1057 06a6 87FF      		sbrs r24,7
 1058 06a8 00C0      		rjmp .L90
 1059               	.L89:
 1060               	.LSM129:
 1061 06aa 1092 0000 		sts next_target+17,__zero_reg__
 1062 06ae 1092 0000 		sts (next_target+17)+1,__zero_reg__
 1063 06b2 1092 0000 		sts (next_target+17)+2,__zero_reg__
 1064 06b6 1092 0000 		sts (next_target+17)+3,__zero_reg__
 1065               	.L90:
 1066               	/* epilogue start */
 1067               	.LSM130:
 1068 06ba 1F91      		pop r17
 1069               	.LVL28:
 1070 06bc 0F91      		pop r16
 1071               	.LVL29:
 1072 06be 0895      		ret
 1073               	.LFE5:
 1075               	.global	last_field
 1076               	.global	last_field
 1077               		.section .bss
 1080               	last_field:
 1081 0000 00        		.skip 1,0
 1082               		.section	.progmem.data,"a",@progbits
 1085               	__c.1912:
 1086 0000 7273 2000 		.string	"rs "
 1089               	__c.1744:
 1090 0004 7273 204E 		.string	"rs N%ld Expected checksum %d\n"
 1090      256C 6420 
 1090      4578 7065 
 1090      6374 6564 
 1090      2063 6865 
 1093               	__c.1742:
 1094 0022 6F6B 2000 		.string	"ok "
 1095               	.global	next_target
 1096               		.section	.bss,"aw",@nobits
 1099               	next_target:
 1100 0001 0000 0000 		.skip 43,0
 1100      0000 0000 
 1100      0000 0000 
 1100      0000 0000 
 1100      0000 0000 
 1101               	.global	read_digit
 1104               	read_digit:
 1105 002c 0000 0000 		.skip 5,0
 1105      00
 1154               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 gcode_parse.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:20     .text.decfloat_to_int:00000000 decfloat_to_int
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:156    .text.gcode_init:00000000 gcode_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:1099   .bss:00000001 next_target
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:173    .text.request_resend:00000000 request_resend
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:1085   .progmem.data:00000000 __c.1912
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:199    .text.gcode_parse_char:00000000 gcode_parse_char
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:1080   .bss:00000000 last_field
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:1104   .bss:0000002c read_digit
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:1093   .progmem.data:00000022 __c.1742
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccKY82y2.s:1089   .progmem.data:00000004 __c.1744

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__udivmodhi4
__mulsi3
powers
__udivmodsi4
__epilogue_restores__
serial_writestr_P
serwrite_uint32
serial_writechar
debug_flags
serwrite_int32
process_gcode_command
sersendf_P
