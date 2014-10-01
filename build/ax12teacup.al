   1               		.file	"ax12teacup.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.AX12_setTX,"ax",@progbits
  19               	.global	AX12_setTX
  21               	AX12_setTX:
  22               	.LFB2:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 E9EC      		ldi r30,lo8(201)
  28 0002 F0E0      		ldi r31,hi8(201)
  29 0004 8081      		ld r24,Z
  30 0006 8F77      		andi r24,lo8(127)
  31 0008 8083      		st Z,r24
  32               	.LSM2:
  33 000a 8081      		ld r24,Z
  34 000c 8F7E      		andi r24,lo8(-17)
  35 000e 8083      		st Z,r24
  36               	.LSM3:
  37 0010 8081      		ld r24,Z
  38 0012 8860      		ori r24,lo8(8)
  39 0014 8083      		st Z,r24
  40               	/* epilogue start */
  41               	.LSM4:
  42 0016 0895      		ret
  43               	.LFE2:
  45               		.section	.text.AX12_setRX,"ax",@progbits
  46               	.global	AX12_setRX
  48               	AX12_setRX:
  49               	.LFB3:
  50               	.LSM5:
  51               	/* prologue: function */
  52               	/* frame size = 0 */
  53               	.LSM6:
  54 0000 EEE6      		ldi r30,lo8(110)
  55 0002 F0E0      		ldi r31,hi8(110)
  56 0004 8081      		ld r24,Z
  57 0006 8E7F      		andi r24,lo8(-2)
  58 0008 8083      		st Z,r24
  59               	.LSM7:
  60 000a E9EC      		ldi r30,lo8(201)
  61 000c F0E0      		ldi r31,hi8(201)
  62 000e 8081      		ld r24,Z
  63 0010 877F      		andi r24,lo8(-9)
  64 0012 8083      		st Z,r24
  65               	.LSM8:
  66 0014 8081      		ld r24,Z
  67 0016 8061      		ori r24,lo8(16)
  68 0018 8083      		st Z,r24
  69               	.LSM9:
  70 001a 8081      		ld r24,Z
  71 001c 8068      		ori r24,lo8(-128)
  72 001e 8083      		st Z,r24
  73               	.LSM10:
  74 0020 1092 0000 		sts AX12_ax_rx_Pointer,__zero_reg__
  75               	/* epilogue start */
  76               	.LSM11:
  77 0024 0895      		ret
  78               	.LFE3:
  80               		.section	.text.AX12_setNone,"ax",@progbits
  81               	.global	AX12_setNone
  83               	AX12_setNone:
  84               	.LFB4:
  85               	.LSM12:
  86               	/* prologue: function */
  87               	/* frame size = 0 */
  88               	.LSM13:
  89 0000 E9EC      		ldi r30,lo8(201)
  90 0002 F0E0      		ldi r31,hi8(201)
  91 0004 8081      		ld r24,Z
  92 0006 8F77      		andi r24,lo8(127)
  93 0008 8083      		st Z,r24
  94               	.LSM14:
  95 000a 8081      		ld r24,Z
  96 000c 8F7E      		andi r24,lo8(-17)
  97 000e 8083      		st Z,r24
  98               	.LSM15:
  99 0010 8081      		ld r24,Z
 100 0012 877F      		andi r24,lo8(-9)
 101 0014 8083      		st Z,r24
 102               	.LSM16:
 103 0016 EEE6      		ldi r30,lo8(110)
 104 0018 F0E0      		ldi r31,hi8(110)
 105 001a 8081      		ld r24,Z
 106 001c 8160      		ori r24,lo8(1)
 107 001e 8083      		st Z,r24
 108               	/* epilogue start */
 109               	.LSM17:
 110 0020 0895      		ret
 111               	.LFE4:
 113               		.section	.text.AX12_writeByte,"ax",@progbits
 114               	.global	AX12_writeByte
 116               	AX12_writeByte:
 117               	.LFB5:
 118               	.LSM18:
 119               	.LVL0:
 120               	/* prologue: function */
 121               	/* frame size = 0 */
 122 0000 982F      		mov r25,r24
 123               	.LVL1:
 124               	.L8:
 125               	.LSM19:
 126 0002 8091 C800 		lds r24,200
 127 0006 85FF      		sbrs r24,5
 128 0008 00C0      		rjmp .L8
 129               	.LSM20:
 130 000a 9093 CE00 		sts 206,r25
 131               	.LSM21:
 132 000e 892F      		mov r24,r25
 133               	/* epilogue start */
 134 0010 0895      		ret
 135               	.LFE5:
 137               		.section	.text.__vector_36,"ax",@progbits
 138               	.global	__vector_36
 140               	__vector_36:
 141               	.LFB6:
 142               	.LSM22:
 143 0000 1F92      		push __zero_reg__
 144 0002 0F92      		push r0
 145 0004 0FB6      		in r0,__SREG__
 146 0006 0F92      		push r0
 147 0008 0BB6      		in r0,91-32
 148 000a 0F92      		push r0
 149 000c 1124      		clr __zero_reg__
 150 000e 8F93      		push r24
 151 0010 9F93      		push r25
 152 0012 EF93      		push r30
 153 0014 FF93      		push r31
 154               	/* prologue: Signal */
 155               	/* frame size = 0 */
 156               	.LSM23:
 157 0016 8091 0000 		lds r24,AX12_ax_rx_Pointer
 158 001a 9091 CE00 		lds r25,206
 159 001e E0E0      		ldi r30,lo8(AX12_ax_rx_buffer)
 160 0020 F0E0      		ldi r31,hi8(AX12_ax_rx_buffer)
 161 0022 E80F      		add r30,r24
 162 0024 F11D      		adc r31,__zero_reg__
 163 0026 9083      		st Z,r25
 164 0028 8F5F      		subi r24,lo8(-(1))
 165 002a 8093 0000 		sts AX12_ax_rx_Pointer,r24
 166               	/* epilogue start */
 167               	.LSM24:
 168 002e FF91      		pop r31
 169 0030 EF91      		pop r30
 170 0032 9F91      		pop r25
 171 0034 8F91      		pop r24
 172 0036 0F90      		pop r0
 173 0038 0BBE      		out 91-32,r0
 174 003a 0F90      		pop r0
 175 003c 0FBE      		out __SREG__,r0
 176 003e 0F90      		pop r0
 177 0040 1F90      		pop __zero_reg__
 178 0042 1895      		reti
 179               	.LFE6:
 181               		.section	.text.AX12_init,"ax",@progbits
 182               	.global	AX12_init
 184               	AX12_init:
 185               	.LFB7:
 186               	.LSM25:
 187               	.LVL2:
 188               	/* prologue: function */
 189               	/* frame size = 0 */
 190 0000 9B01      		movw r18,r22
 191 0002 AC01      		movw r20,r24
 192               	.LSM26:
 193 0004 83E0      		ldi r24,3
 194 0006 220F      	1:	lsl r18
 195 0008 331F      		rol r19
 196 000a 441F      		rol r20
 197 000c 551F      		rol r21
 198 000e 8A95      		dec r24
 199 0010 01F4      		brne 1b
 200               	.LVL3:
 201 0012 60E0      		ldi r22,lo8(16000000)
 202 0014 74E2      		ldi r23,hi8(16000000)
 203 0016 84EF      		ldi r24,hlo8(16000000)
 204 0018 90E0      		ldi r25,hhi8(16000000)
 205 001a 0E94 0000 		call __divmodsi4
 206               	.LVL4:
 207 001e 2150      		subi r18,lo8(-(-1))
 208 0020 3040      		sbci r19,hi8(-(-1))
 209               	.LVL5:
 210               	.LSM27:
 211 0022 E8EC      		ldi r30,lo8(200)
 212 0024 F0E0      		ldi r31,hi8(200)
 213 0026 8081      		ld r24,Z
 214 0028 8260      		ori r24,lo8(2)
 215 002a 8083      		st Z,r24
 216               	.LSM28:
 217 002c 3093 CD00 		sts 205,r19
 218               	.LVL6:
 219               	.LSM29:
 220 0030 2093 CC00 		sts 204,r18
 221               	.LSM30:
 222 0034 1092 0000 		sts AX12_ax_rx_Pointer,__zero_reg__
 223               	.LBB33:
 224               	.LBB34:
 225               	.LSM31:
 226 0038 E9EC      		ldi r30,lo8(201)
 227 003a F0E0      		ldi r31,hi8(201)
 228 003c 8081      		ld r24,Z
 229 003e 8F77      		andi r24,lo8(127)
 230 0040 8083      		st Z,r24
 231               	.LSM32:
 232 0042 8081      		ld r24,Z
 233 0044 8F7E      		andi r24,lo8(-17)
 234 0046 8083      		st Z,r24
 235               	.LSM33:
 236 0048 8081      		ld r24,Z
 237 004a 877F      		andi r24,lo8(-9)
 238 004c 8083      		st Z,r24
 239               	.LSM34:
 240 004e EEE6      		ldi r30,lo8(110)
 241 0050 F0E0      		ldi r31,hi8(110)
 242 0052 8081      		ld r24,Z
 243 0054 8160      		ori r24,lo8(1)
 244 0056 8083      		st Z,r24
 245               	/* epilogue start */
 246               	.LBE34:
 247               	.LBE33:
 248               	.LSM35:
 249 0058 0895      		ret
 250               	.LFE7:
 252               		.section	.text.AX12_sendPacket,"ax",@progbits
 253               	.global	AX12_sendPacket
 255               	AX12_sendPacket:
 256               	.LFB8:
 257               	.LSM36:
 258               	.LVL7:
 259               	/* prologue: function */
 260               	/* frame size = 0 */
 261 0000 582F      		mov r21,r24
 262 0002 942F      		mov r25,r20
 263               	.LBB35:
 264               	.LBB36:
 265               	.LSM37:
 266 0004 8091 C900 		lds r24,201
 267               	.LVL8:
 268 0008 8F77      		andi r24,lo8(127)
 269 000a 8093 C900 		sts 201,r24
 270               	.LSM38:
 271 000e 8091 C900 		lds r24,201
 272 0012 8F7E      		andi r24,lo8(-17)
 273 0014 8093 C900 		sts 201,r24
 274               	.LSM39:
 275 0018 8091 C900 		lds r24,201
 276 001c 8860      		ori r24,lo8(8)
 277 001e 8093 C900 		sts 201,r24
 278               	.LVL9:
 279               	.L15:
 280               	.LBE36:
 281               	.LBE35:
 282               	.LBB37:
 283               	.LBB38:
 284               	.LSM40:
 285 0022 8091 C800 		lds r24,200
 286 0026 85FF      		sbrs r24,5
 287 0028 00C0      		rjmp .L15
 288               	.LSM41:
 289 002a 8FEF      		ldi r24,lo8(-1)
 290 002c 8093 CE00 		sts 206,r24
 291               	.L16:
 292               	.LBE38:
 293               	.LBE37:
 294               	.LBB39:
 295               	.LBB40:
 296               	.LSM42:
 297 0030 8091 C800 		lds r24,200
 298 0034 85FF      		sbrs r24,5
 299 0036 00C0      		rjmp .L16
 300               	.LSM43:
 301 0038 8FEF      		ldi r24,lo8(-1)
 302 003a 8093 CE00 		sts 206,r24
 303               	.L17:
 304               	.LBE40:
 305               	.LBE39:
 306               	.LBB41:
 307               	.LBB42:
 308               	.LSM44:
 309 003e 8091 C800 		lds r24,200
 310 0042 85FF      		sbrs r24,5
 311 0044 00C0      		rjmp .L17
 312               	.LSM45:
 313 0046 5093 CE00 		sts 206,r21
 314               	.LBE42:
 315               	.LBE41:
 316               	.LSM46:
 317 004a 462F      		mov r20,r22
 318 004c 4E5F      		subi r20,lo8(-(2))
 319               	.L18:
 320               	.LBB43:
 321               	.LBB44:
 322               	.LSM47:
 323 004e 8091 C800 		lds r24,200
 324 0052 85FF      		sbrs r24,5
 325 0054 00C0      		rjmp .L18
 326               	.LSM48:
 327 0056 4093 CE00 		sts 206,r20
 328               	.L19:
 329               	.LBE44:
 330               	.LBE43:
 331               	.LBB45:
 332               	.LBB46:
 333               	.LSM49:
 334 005a 8091 C800 		lds r24,200
 335 005e 85FF      		sbrs r24,5
 336 0060 00C0      		rjmp .L19
 337               	.LSM50:
 338 0062 9093 CE00 		sts 206,r25
 339               	.LBE46:
 340               	.LBE45:
 341               	.LSM51:
 342 0066 490F      		add r20,r25
 343               	.LVL10:
 344               	.LSM52:
 345 0068 450F      		add r20,r21
 346 006a F901      		movw r30,r18
 347               	.LVL11:
 348 006c 90E0      		ldi r25,lo8(0)
 349               	.LVL12:
 350 006e 00C0      		rjmp .L20
 351               	.L22:
 352               	.LBB47:
 353               	.LSM53:
 354 0070 2081      		ld r18,Z
 355               	.L21:
 356               	.LBB48:
 357               	.LBB49:
 358               	.LSM54:
 359 0072 8091 C800 		lds r24,200
 360 0076 85FF      		sbrs r24,5
 361 0078 00C0      		rjmp .L21
 362               	.LSM55:
 363 007a 2093 CE00 		sts 206,r18
 364               	.LBE49:
 365               	.LBE48:
 366               	.LSM56:
 367 007e 420F      		add r20,r18
 368               	.LSM57:
 369 0080 9F5F      		subi r25,lo8(-(1))
 370 0082 3196      		adiw r30,1
 371               	.L20:
 372 0084 9617      		cp r25,r22
 373 0086 00F0      		brlo .L22
 374               	.L23:
 375               	.LBE47:
 376               	.LBB50:
 377               	.LBB51:
 378               	.LSM58:
 379 0088 8091 C800 		lds r24,200
 380 008c 85FF      		sbrs r24,5
 381 008e 00C0      		rjmp .L23
 382               	.LBE51:
 383               	.LBE50:
 384               	.LSM59:
 385 0090 4095      		com r20
 386               	.LBB53:
 387               	.LBB52:
 388               	.LSM60:
 389 0092 4093 CE00 		sts 206,r20
 390               	.LBE52:
 391               	.LBE53:
 392               	.LBB54:
 393               	.LBB55:
 394               	.LSM61:
 395 0096 8091 6E00 		lds r24,110
 396 009a 8E7F      		andi r24,lo8(-2)
 397 009c 8093 6E00 		sts 110,r24
 398               	.LSM62:
 399 00a0 8091 C900 		lds r24,201
 400 00a4 877F      		andi r24,lo8(-9)
 401 00a6 8093 C900 		sts 201,r24
 402               	.LSM63:
 403 00aa 8091 C900 		lds r24,201
 404 00ae 8061      		ori r24,lo8(16)
 405 00b0 8093 C900 		sts 201,r24
 406               	.LSM64:
 407 00b4 8091 C900 		lds r24,201
 408 00b8 8068      		ori r24,lo8(-128)
 409 00ba 8093 C900 		sts 201,r24
 410               	.LSM65:
 411 00be 1092 0000 		sts AX12_ax_rx_Pointer,__zero_reg__
 412               	/* epilogue start */
 413               	.LBE55:
 414               	.LBE54:
 415               	.LSM66:
 416 00c2 0895      		ret
 417               	.LFE8:
 419               		.section	.text.AX12_readPacket,"ax",@progbits
 420               	.global	AX12_readPacket
 422               	AX12_readPacket:
 423               	.LFB9:
 424               	.LSM67:
 425 0000 1F93      		push r17
 426               	/* prologue: function */
 427               	/* frame size = 0 */
 428               	.LSM68:
 429 0002 70E0      		ldi r23,lo8(0)
 430               	.LVL13:
 431 0004 60E0      		ldi r22,lo8(0)
 432               	.LVL14:
 433 0006 00C0      		rjmp .L41
 434               	.L29:
 435 0008 4F5F      		subi r20,lo8(-(1))
 436 000a 5F4F      		sbci r21,hi8(-(1))
 437               	.LSM69:
 438 000c 84E0      		ldi r24,hi8(1102)
 439 000e 4E34      		cpi r20,lo8(1102)
 440 0010 5807      		cpc r21,r24
 441 0012 01F4      		brne .L28
 442 0014 00C0      		rjmp .L27
 443               	.L41:
 444 0016 40E0      		ldi r20,lo8(0)
 445 0018 50E0      		ldi r21,hi8(0)
 446               	.L28:
 447               	.LSM70:
 448 001a E72F      		mov r30,r23
 449 001c F0E0      		ldi r31,lo8(0)
 450 001e 8091 0000 		lds r24,AX12_ax_rx_Pointer
 451 0022 9F01      		movw r18,r30
 452 0024 260F      		add r18,r22
 453 0026 311D      		adc r19,__zero_reg__
 454 0028 90E0      		ldi r25,lo8(0)
 455 002a 2817      		cp r18,r24
 456 002c 3907      		cpc r19,r25
 457 002e 01F0      		breq .L29
 458 0030 00C0      		rjmp .L44
 459               	.L45:
 460               	.LSM71:
 461 0032 E050      		subi r30,lo8(-(AX12_ax_rx_buffer))
 462 0034 F040      		sbci r31,hi8(-(AX12_ax_rx_buffer))
 463 0036 8081      		ld r24,Z
 464 0038 8F3F      		cpi r24,lo8(-1)
 465 003a 01F0      		breq .L31
 466 003c 7F5F      		subi r23,lo8(-(1))
 467 003e 00C0      		rjmp .L41
 468               	.L31:
 469               	.LSM72:
 470 0040 6F5F      		subi r22,lo8(-(1))
 471               	.LSM73:
 472 0042 6D30      		cpi r22,lo8(13)
 473 0044 00F0      		brlo .L41
 474               	.L27:
 475               	.LBB56:
 476               	.LBB57:
 477               	.LSM74:
 478 0046 8091 C900 		lds r24,201
 479 004a 8F77      		andi r24,lo8(127)
 480 004c 8093 C900 		sts 201,r24
 481               	.LSM75:
 482 0050 8091 C900 		lds r24,201
 483 0054 8F7E      		andi r24,lo8(-17)
 484 0056 8093 C900 		sts 201,r24
 485               	.LSM76:
 486 005a 8091 C900 		lds r24,201
 487 005e 877F      		andi r24,lo8(-9)
 488 0060 8093 C900 		sts 201,r24
 489               	.LSM77:
 490 0064 8091 6E00 		lds r24,110
 491 0068 8160      		ori r24,lo8(1)
 492 006a 8093 6E00 		sts 110,r24
 493 006e 90E0      		ldi r25,lo8(0)
 494               	.LVL15:
 495               	.L32:
 496               	.LBE57:
 497               	.LBE56:
 498               	.LSM78:
 499 0070 9F5F      		subi r25,lo8(-(1))
 500 0072 192F      		mov r17,r25
 501               	.LVL16:
 502 0074 170F      		add r17,r23
 503 0076 262F      		mov r18,r22
 504 0078 291B      		sub r18,r25
 505               	.LVL17:
 506               	.LSM79:
 507 007a 412F      		mov r20,r17
 508 007c 50E0      		ldi r21,lo8(0)
 509 007e FA01      		movw r30,r20
 510 0080 E050      		subi r30,lo8(-(AX12_ax_rx_buffer))
 511 0082 F040      		sbci r31,hi8(-(AX12_ax_rx_buffer))
 512 0084 8081      		ld r24,Z
 513 0086 8F3F      		cpi r24,lo8(-1)
 514 0088 01F0      		breq .L32
 515               	.LSM80:
 516 008a 9230      		cpi r25,lo8(2)
 517 008c 00F0      		brlo .L33
 518 008e 90E0      		ldi r25,lo8(0)
 519               	.L33:
 520               	.LSM81:
 521 0090 DA01      		movw r26,r20
 522 0092 1196      		adiw r26,1
 523 0094 FD01      		movw r30,r26
 524 0096 E050      		subi r30,lo8(-(AX12_ax_rx_buffer))
 525 0098 F040      		sbci r31,hi8(-(AX12_ax_rx_buffer))
 526 009a 7081      		ld r23,Z
 527               	.LVL18:
 528 009c 7E5F      		subi r23,lo8(-(2))
 529               	.LSM82:
 530 009e 2713      		cpse r18,r23
 531 00a0 9E5F      		subi r25,lo8(-(2))
 532               	.L34:
 533 00a2 9A01      		movw r18,r20
 534               	.LVL19:
 535 00a4 60E0      		ldi r22,lo8(0)
 536               	.LVL20:
 537 00a6 00C0      		rjmp .L35
 538               	.L36:
 539               	.LBB58:
 540               	.LSM83:
 541 00a8 F901      		movw r30,r18
 542 00aa E050      		subi r30,lo8(-(AX12_ax_rx_buffer))
 543 00ac F040      		sbci r31,hi8(-(AX12_ax_rx_buffer))
 544 00ae 8081      		ld r24,Z
 545 00b0 680F      		add r22,r24
 546 00b2 2F5F      		subi r18,lo8(-(1))
 547 00b4 3F4F      		sbci r19,hi8(-(1))
 548               	.L35:
 549               	.LSM84:
 550 00b6 822F      		mov r24,r18
 551 00b8 841B      		sub r24,r20
 552 00ba 8717      		cp r24,r23
 553 00bc 00F0      		brlo .L36
 554               	.LBE58:
 555               	.LSM85:
 556 00be 6F3F      		cpi r22,lo8(-1)
 557 00c0 01F0      		breq .L37
 558 00c2 9C5F      		subi r25,lo8(-(4))
 559               	.L37:
 560               	.LSM86:
 561 00c4 A050      		subi r26,lo8(-(AX12_ax_rx_buffer))
 562 00c6 B040      		sbci r27,hi8(-(AX12_ax_rx_buffer))
 563 00c8 9C93      		st X,r25
 564               	.LSM87:
 565 00ca 812F      		mov r24,r17
 566               	/* epilogue start */
 567 00cc 1F91      		pop r17
 568               	.LVL21:
 569 00ce 0895      		ret
 570               	.LVL22:
 571               	.L44:
 572               	.LSM88:
 573 00d0 6623      		tst r22
 574 00d2 01F0      		breq .+2
 575 00d4 00C0      		rjmp .L31
 576 00d6 00C0      		rjmp .L45
 577               	.LFE9:
 579               		.section	.text.sign2bin,"ax",@progbits
 580               	.global	sign2bin
 582               	sign2bin:
 583               	.LFB17:
 584               	.LSM89:
 585               	.LVL23:
 586               	/* prologue: function */
 587               	/* frame size = 0 */
 588               	.LSM90:
 589 0000 20E0      		ldi r18,lo8(0)
 590 0002 1816      		cp __zero_reg__,r24
 591 0004 1906      		cpc __zero_reg__,r25
 592 0006 04F4      		brge .L47
 593 0008 21E0      		ldi r18,lo8(1)
 594               	.L47:
 595               	.LSM91:
 596 000a 822F      		mov r24,r18
 597               	.LVL24:
 598               	/* epilogue start */
 599 000c 0895      		ret
 600               	.LFE17:
 602               		.section	.text.bin2sign,"ax",@progbits
 603               	.global	bin2sign
 605               	bin2sign:
 606               	.LFB18:
 607               	.LSM92:
 608               	.LVL25:
 609               	/* prologue: function */
 610               	/* frame size = 0 */
 611               	.LSM93:
 612 0000 880F      		lsl r24
 613               	.LVL26:
 614               	.LSM94:
 615 0002 8150      		subi r24,lo8(-(-1))
 616               	/* epilogue start */
 617 0004 0895      		ret
 618               	.LFE18:
 620               		.section	.text.makeInt,"ax",@progbits
 621               	.global	makeInt
 623               	makeInt:
 624               	.LFB19:
 625               	.LSM95:
 626               	.LVL27:
 627               	/* prologue: function */
 628               	/* frame size = 0 */
 629 0000 FC01      		movw r30,r24
 630 0002 2081      		ld r18,Z
 631               	.LSM96:
 632 0004 6230      		cpi r22,lo8(2)
 633 0006 00F0      		brlo .L52
 634               	.LVL28:
 635               	.LSM97:
 636 0008 9181      		ldd r25,Z+1
 637 000a 80E0      		ldi r24,lo8(0)
 638 000c 30E0      		ldi r19,lo8(0)
 639 000e 282B      		or r18,r24
 640 0010 392B      		or r19,r25
 641 0012 00C0      		rjmp .L53
 642               	.LVL29:
 643               	.L52:
 644               	.LSM98:
 645 0014 30E0      		ldi r19,lo8(0)
 646               	.L53:
 647               	.LSM99:
 648 0016 C901      		movw r24,r18
 649               	/* epilogue start */
 650 0018 0895      		ret
 651               	.LFE19:
 653               		.section	.text.lengthRead,"ax",@progbits
 654               	.global	lengthRead
 656               	lengthRead:
 657               	.LFB20:
 658               	.LSM100:
 659               	.LVL30:
 660               	/* prologue: function */
 661               	/* frame size = 0 */
 662               	.LSM101:
 663 0000 E82F      		mov r30,r24
 664 0002 F0E0      		ldi r31,lo8(0)
 665               	.LVL31:
 666 0004 E133      		cpi r30,49
 667 0006 F105      		cpc r31,__zero_reg__
 668 0008 00F4      		brsh .L56
 669               	.LVL32:
 670 000a E050      		subi r30,lo8(-(gs(.L59)))
 671 000c F040      		sbci r31,hi8(-(gs(.L59)))
 672               	.LVL33:
 673 000e 0C94 0000 		jmp __tablejump2__
 674               	.LVL34:
 675               		.data
 676               		.section .progmem.gcc_sw_table, "a", @progbits
 677               		.p2align 1
 678               	.L59:
 679               		.data
 680               		.section .progmem.gcc_sw_table, "a", @progbits
 681               		.p2align 1
 682 0000 0000      		.word gs(.L57)
 683 0002 0000      		.word gs(.L56)
 684 0004 0000      		.word gs(.L58)
 685 0006 0000      		.word gs(.L58)
 686 0008 0000      		.word gs(.L58)
 687 000a 0000      		.word gs(.L58)
 688 000c 0000      		.word gs(.L57)
 689 000e 0000      		.word gs(.L56)
 690 0010 0000      		.word gs(.L57)
 691 0012 0000      		.word gs(.L56)
 692 0014 0000      		.word gs(.L56)
 693 0016 0000      		.word gs(.L58)
 694 0018 0000      		.word gs(.L58)
 695 001a 0000      		.word gs(.L58)
 696 001c 0000      		.word gs(.L57)
 697 001e 0000      		.word gs(.L56)
 698 0020 0000      		.word gs(.L58)
 699 0022 0000      		.word gs(.L58)
 700 0024 0000      		.word gs(.L58)
 701 0026 0000      		.word gs(.L58)
 702 0028 0000      		.word gs(.L57)
 703 002a 0000      		.word gs(.L56)
 704 002c 0000      		.word gs(.L57)
 705 002e 0000      		.word gs(.L56)
 706 0030 0000      		.word gs(.L58)
 707 0032 0000      		.word gs(.L58)
 708 0034 0000      		.word gs(.L58)
 709 0036 0000      		.word gs(.L58)
 710 0038 0000      		.word gs(.L58)
 711 003a 0000      		.word gs(.L58)
 712 003c 0000      		.word gs(.L57)
 713 003e 0000      		.word gs(.L56)
 714 0040 0000      		.word gs(.L57)
 715 0042 0000      		.word gs(.L56)
 716 0044 0000      		.word gs(.L57)
 717 0046 0000      		.word gs(.L56)
 718 0048 0000      		.word gs(.L57)
 719 004a 0000      		.word gs(.L56)
 720 004c 0000      		.word gs(.L57)
 721 004e 0000      		.word gs(.L56)
 722 0050 0000      		.word gs(.L57)
 723 0052 0000      		.word gs(.L56)
 724 0054 0000      		.word gs(.L58)
 725 0056 0000      		.word gs(.L58)
 726 0058 0000      		.word gs(.L58)
 727 005a 0000      		.word gs(.L56)
 728 005c 0000      		.word gs(.L58)
 729 005e 0000      		.word gs(.L58)
 730 0060 0000      		.word gs(.L57)
 731               		.section	.text.lengthRead
 732               	.L58:
 733 0012 81E0      		ldi r24,lo8(1)
 734               	.LVL35:
 735 0014 0895      		ret
 736               	.LVL36:
 737               	.L56:
 738 0016 80E0      		ldi r24,lo8(0)
 739               	.LVL37:
 740 0018 0895      		ret
 741               	.LVL38:
 742               	.L57:
 743 001a 82E0      		ldi r24,lo8(2)
 744               	.LVL39:
 745               	.LVL40:
 746               	.LSM102:
 747 001c 0895      		ret
 748               	.LFE20:
 750               		.section	.text.lengthWrite,"ax",@progbits
 751               	.global	lengthWrite
 753               	lengthWrite:
 754               	.LFB21:
 755               	.LSM103:
 756               	.LVL41:
 757               	/* prologue: function */
 758               	/* frame size = 0 */
 759               	.LSM104:
 760 0000 90E0      		ldi r25,lo8(0)
 761               	.LVL42:
 762 0002 FC01      		movw r30,r24
 763               	.LVL43:
 764 0004 3397      		sbiw r30,3
 765 0006 EE32      		cpi r30,46
 766 0008 F105      		cpc r31,__zero_reg__
 767 000a 00F4      		brsh .L63
 768 000c E050      		subi r30,lo8(-(gs(.L66)))
 769 000e F040      		sbci r31,hi8(-(gs(.L66)))
 770 0010 0C94 0000 		jmp __tablejump2__
 771               		.data
 772               		.section .progmem.gcc_sw_table, "a", @progbits
 773               		.p2align 1
 774               	.L66:
 775               		.data
 776               		.section .progmem.gcc_sw_table, "a", @progbits
 777               		.p2align 1
 778 0062 0000      		.word gs(.L64)
 779 0064 0000      		.word gs(.L64)
 780 0066 0000      		.word gs(.L64)
 781 0068 0000      		.word gs(.L65)
 782 006a 0000      		.word gs(.L63)
 783 006c 0000      		.word gs(.L65)
 784 006e 0000      		.word gs(.L63)
 785 0070 0000      		.word gs(.L63)
 786 0072 0000      		.word gs(.L64)
 787 0074 0000      		.word gs(.L64)
 788 0076 0000      		.word gs(.L64)
 789 0078 0000      		.word gs(.L65)
 790 007a 0000      		.word gs(.L63)
 791 007c 0000      		.word gs(.L64)
 792 007e 0000      		.word gs(.L64)
 793 0080 0000      		.word gs(.L64)
 794 0082 0000      		.word gs(.L64)
 795 0084 0000      		.word gs(.L63)
 796 0086 0000      		.word gs(.L63)
 797 0088 0000      		.word gs(.L63)
 798 008a 0000      		.word gs(.L63)
 799 008c 0000      		.word gs(.L64)
 800 008e 0000      		.word gs(.L64)
 801 0090 0000      		.word gs(.L64)
 802 0092 0000      		.word gs(.L64)
 803 0094 0000      		.word gs(.L64)
 804 0096 0000      		.word gs(.L64)
 805 0098 0000      		.word gs(.L65)
 806 009a 0000      		.word gs(.L63)
 807 009c 0000      		.word gs(.L65)
 808 009e 0000      		.word gs(.L63)
 809 00a0 0000      		.word gs(.L65)
 810 00a2 0000      		.word gs(.L63)
 811 00a4 0000      		.word gs(.L63)
 812 00a6 0000      		.word gs(.L63)
 813 00a8 0000      		.word gs(.L63)
 814 00aa 0000      		.word gs(.L63)
 815 00ac 0000      		.word gs(.L63)
 816 00ae 0000      		.word gs(.L63)
 817 00b0 0000      		.word gs(.L63)
 818 00b2 0000      		.word gs(.L63)
 819 00b4 0000      		.word gs(.L64)
 820 00b6 0000      		.word gs(.L63)
 821 00b8 0000      		.word gs(.L63)
 822 00ba 0000      		.word gs(.L64)
 823 00bc 0000      		.word gs(.L65)
 824               		.section	.text.lengthWrite
 825               	.L64:
 826 0014 81E0      		ldi r24,lo8(1)
 827               	.LVL44:
 828 0016 0895      		ret
 829               	.LVL45:
 830               	.L63:
 831 0018 80E0      		ldi r24,lo8(0)
 832               	.LVL46:
 833 001a 0895      		ret
 834               	.LVL47:
 835               	.L65:
 836 001c 82E0      		ldi r24,lo8(2)
 837               	.LVL48:
 838               	.LVL49:
 839               	.LSM105:
 840 001e 0895      		ret
 841               	.LFE21:
 843               		.section	.text.AX12_returnData,"ax",@progbits
 844               	.global	AX12_returnData
 846               	AX12_returnData:
 847               	.LFB22:
 848               	.LSM106:
 849               	.LVL50:
 850 0000 CF93      		push r28
 851 0002 DF93      		push r29
 852               	/* prologue: function */
 853               	/* frame size = 0 */
 854 0004 EC01      		movw r28,r24
 855               	.LSM107:
 856 0006 8A81      		ldd r24,Y+2
 857               	.LVL51:
 858 0008 8617      		cp r24,r22
 859 000a 00F0      		brlo .L70
 860               	.LBB62:
 861               	.LSM108:
 862 000c 0E94 0000 		call AX12_readPacket
 863               	.LVL52:
 864 0010 482F      		mov r20,r24
 865               	.LVL53:
 866               	.LSM109:
 867 0012 E82F      		mov r30,r24
 868 0014 F0E0      		ldi r31,lo8(0)
 869 0016 DF01      		movw r26,r30
 870 0018 A050      		subi r26,lo8(-(AX12_ax_rx_buffer))
 871 001a B040      		sbci r27,hi8(-(AX12_ax_rx_buffer))
 872 001c 9C91      		ld r25,X
 873               	.LVL54:
 874               	.LSM110:
 875 001e DF01      		movw r26,r30
 876 0020 A050      		subi r26,lo8(-(AX12_ax_rx_buffer+1))
 877 0022 B040      		sbci r27,hi8(-(AX12_ax_rx_buffer+1))
 878 0024 6C91      		ld r22,X
 879               	.LVL55:
 880               	.LSM111:
 881 0026 E050      		subi r30,lo8(-(AX12_ax_rx_buffer+2))
 882 0028 F040      		sbci r31,hi8(-(AX12_ax_rx_buffer+2))
 883 002a E081      		ld r30,Z
 884               	.LVL56:
 885               	.LSM112:
 886 002c 8881      		ld r24,Y
 887 002e 9817      		cp r25,r24
 888 0030 01F4      		brne .L71
 889 0032 20E0      		ldi r18,lo8(0)
 890 0034 30E0      		ldi r19,hi8(0)
 891 0036 00C0      		rjmp .L72
 892               	.L71:
 893 0038 20E0      		ldi r18,lo8(1024)
 894 003a 34E0      		ldi r19,hi8(1024)
 895               	.L72:
 896 003c A62F      		mov r26,r22
 897 003e B0E0      		ldi r27,lo8(0)
 898 0040 B695      		lsr r27
 899 0042 BA2F      		mov r27,r26
 900 0044 AA27      		clr r26
 901 0046 B795      		ror r27
 902 0048 A795      		ror r26
 903               	.LVL57:
 904 004a 8E2F      		mov r24,r30
 905 004c 90E0      		ldi r25,lo8(0)
 906               	.LVL58:
 907 004e A82B      		or r26,r24
 908 0050 B92B      		or r27,r25
 909 0052 A22B      		or r26,r18
 910 0054 B32B      		or r27,r19
 911               	.LSM113:
 912 0056 E42F      		mov r30,r20
 913               	.LVL59:
 914 0058 F0E0      		ldi r31,lo8(0)
 915 005a E050      		subi r30,lo8(-(AX12_ax_rx_buffer+3))
 916 005c F040      		sbci r31,hi8(-(AX12_ax_rx_buffer+3))
 917 005e 00C0      		rjmp .L73
 918               	.LVL60:
 919               	.L70:
 920               	.LBE62:
 921               	.LBB63:
 922               	.LBB64:
 923               	.LSM114:
 924 0060 8091 C900 		lds r24,201
 925 0064 8F77      		andi r24,lo8(127)
 926 0066 8093 C900 		sts 201,r24
 927               	.LSM115:
 928 006a 8091 C900 		lds r24,201
 929 006e 8F7E      		andi r24,lo8(-17)
 930 0070 8093 C900 		sts 201,r24
 931               	.LSM116:
 932 0074 8091 C900 		lds r24,201
 933 0078 877F      		andi r24,lo8(-9)
 934 007a 8093 C900 		sts 201,r24
 935               	.LSM117:
 936 007e 8091 6E00 		lds r24,110
 937 0082 8160      		ori r24,lo8(1)
 938 0084 8093 6E00 		sts 110,r24
 939 0088 E0E0      		ldi r30,lo8(0)
 940 008a F0E0      		ldi r31,hi8(0)
 941 008c AFEF      		ldi r26,lo8(-1)
 942 008e BFEF      		ldi r27,hi8(-1)
 943               	.LVL61:
 944               	.L73:
 945               	.LBE64:
 946               	.LBE63:
 947               	.LSM118:
 948 0090 BD01      		movw r22,r26
 949               	.LVL62:
 950 0092 CF01      		movw r24,r30
 951               	.LVL63:
 952               	/* epilogue start */
 953 0094 DF91      		pop r29
 954 0096 CF91      		pop r28
 955               	.LVL64:
 956 0098 0895      		ret
 957               	.LFE22:
 959               		.section	.text.AX12_readData,"ax",@progbits
 960               	.global	AX12_readData
 962               	AX12_readData:
 963               	.LFB13:
 964               	.LSM119:
 965               	.LVL65:
 966 0000 A2E0      		ldi r26,lo8(2)
 967 0002 B0E0      		ldi r27,hi8(2)
 968 0004 E0E0      		ldi r30,lo8(gs(1f))
 969 0006 F0E0      		ldi r31,hi8(gs(1f))
 970 0008 0C94 0000 		jmp __prologue_saves__+((18 - 4) * 2)
 971               	1:
 972               	/* prologue: function */
 973               	/* frame size = 2 */
 974 000c 8C01      		movw r16,r24
 975               	.LSM120:
 976 000e 6983      		std Y+1,r22
 977 0010 4A83      		std Y+2,r20
 978               	.LSM121:
 979 0012 FC01      		movw r30,r24
 980 0014 8081      		ld r24,Z
 981               	.LVL66:
 982 0016 62E0      		ldi r22,lo8(2)
 983               	.LVL67:
 984 0018 42E0      		ldi r20,lo8(2)
 985               	.LVL68:
 986 001a 9E01      		movw r18,r28
 987 001c 2F5F      		subi r18,lo8(-(1))
 988 001e 3F4F      		sbci r19,hi8(-(1))
 989 0020 0E94 0000 		call AX12_sendPacket
 990               	.LSM122:
 991 0024 C801      		movw r24,r16
 992 0026 61E0      		ldi r22,lo8(1)
 993 0028 0E94 0000 		call AX12_returnData
 994               	/* epilogue start */
 995               	.LSM123:
 996 002c 2296      		adiw r28,2
 997 002e E4E0      		ldi r30, lo8(4)
 998 0030 0C94 0000 		jmp __epilogue_restores__ + ((18 - 4) * 2)
 999               	.LFE13:
 1001               		.section	.text.AX12_action,"ax",@progbits
 1002               	.global	AX12_action
 1004               	AX12_action:
 1005               	.LFB12:
 1006               	.LSM124:
 1007               	.LVL69:
 1008 0000 0F93      		push r16
 1009 0002 1F93      		push r17
 1010               	/* prologue: function */
 1011               	/* frame size = 0 */
 1012 0004 8C01      		movw r16,r24
 1013               	.LSM125:
 1014 0006 FC01      		movw r30,r24
 1015 0008 8081      		ld r24,Z
 1016               	.LVL70:
 1017 000a 60E0      		ldi r22,lo8(0)
 1018 000c 45E0      		ldi r20,lo8(5)
 1019 000e 20E0      		ldi r18,lo8(0)
 1020 0010 30E0      		ldi r19,hi8(0)
 1021 0012 0E94 0000 		call AX12_sendPacket
 1022               	.LSM126:
 1023 0016 C801      		movw r24,r16
 1024 0018 62E0      		ldi r22,lo8(2)
 1025 001a 0E94 0000 		call AX12_returnData
 1026 001e CB01      		movw r24,r22
 1027               	/* epilogue start */
 1028               	.LSM127:
 1029 0020 1F91      		pop r17
 1030 0022 0F91      		pop r16
 1031               	.LVL71:
 1032 0024 0895      		ret
 1033               	.LFE12:
 1035               		.section	.text.AX12_reset,"ax",@progbits
 1036               	.global	AX12_reset
 1038               	AX12_reset:
 1039               	.LFB11:
 1040               	.LSM128:
 1041               	.LVL72:
 1042 0000 0F93      		push r16
 1043 0002 1F93      		push r17
 1044               	/* prologue: function */
 1045               	/* frame size = 0 */
 1046 0004 8C01      		movw r16,r24
 1047               	.LSM129:
 1048 0006 FC01      		movw r30,r24
 1049 0008 8081      		ld r24,Z
 1050               	.LVL73:
 1051 000a 60E0      		ldi r22,lo8(0)
 1052 000c 46E0      		ldi r20,lo8(6)
 1053 000e 20E0      		ldi r18,lo8(0)
 1054 0010 30E0      		ldi r19,hi8(0)
 1055 0012 0E94 0000 		call AX12_sendPacket
 1056               	.LSM130:
 1057 0016 C801      		movw r24,r16
 1058 0018 62E0      		ldi r22,lo8(2)
 1059 001a 0E94 0000 		call AX12_returnData
 1060 001e CB01      		movw r24,r22
 1061               	/* epilogue start */
 1062               	.LSM131:
 1063 0020 1F91      		pop r17
 1064 0022 0F91      		pop r16
 1065               	.LVL74:
 1066 0024 0895      		ret
 1067               	.LFE11:
 1069               		.section	.text.AX12_ping,"ax",@progbits
 1070               	.global	AX12_ping
 1072               	AX12_ping:
 1073               	.LFB10:
 1074               	.LSM132:
 1075               	.LVL75:
 1076 0000 0F93      		push r16
 1077 0002 1F93      		push r17
 1078               	/* prologue: function */
 1079               	/* frame size = 0 */
 1080 0004 8C01      		movw r16,r24
 1081               	.LSM133:
 1082 0006 FC01      		movw r30,r24
 1083 0008 8081      		ld r24,Z
 1084               	.LVL76:
 1085 000a 60E0      		ldi r22,lo8(0)
 1086 000c 41E0      		ldi r20,lo8(1)
 1087 000e 20E0      		ldi r18,lo8(0)
 1088 0010 30E0      		ldi r19,hi8(0)
 1089 0012 0E94 0000 		call AX12_sendPacket
 1090               	.LSM134:
 1091 0016 C801      		movw r24,r16
 1092 0018 60E0      		ldi r22,lo8(0)
 1093 001a 0E94 0000 		call AX12_returnData
 1094 001e CB01      		movw r24,r22
 1095               	/* epilogue start */
 1096               	.LSM135:
 1097 0020 1F91      		pop r17
 1098 0022 0F91      		pop r16
 1099               	.LVL77:
 1100 0024 0895      		ret
 1101               	.LFE10:
 1103               		.section	.text.AX12_processValue,"ax",@progbits
 1104               	.global	AX12_processValue
 1106               	AX12_processValue:
 1107               	.LFB23:
 1108               	.LSM136:
 1109               	.LVL78:
 1110               	/* prologue: function */
 1111               	/* frame size = 0 */
 1112 0000 DC01      		movw r26,r24
 1113 0002 FA01      		movw r30,r20
 1114               	.LSM137:
 1115 0004 6432      		cpi r22,lo8(36)
 1116 0006 01F0      		breq .L85
 1117               	.LVL79:
 1118 0008 6532      		cpi r22,lo8(37)
 1119 000a 00F4      		brsh .L87
 1120 000c 6E31      		cpi r22,lo8(30)
 1121 000e 01F4      		brne .L89
 1122 0010 00C0      		rjmp .L85
 1123               	.L87:
 1124 0012 6632      		cpi r22,lo8(38)
 1125 0014 01F0      		breq .L86
 1126 0016 6832      		cpi r22,lo8(40)
 1127 0018 01F4      		brne .L89
 1128 001a 00C0      		rjmp .L86
 1129               	.L85:
 1130               	.LSM138:
 1131 001c 1196      		adiw r26,1
 1132 001e 8C91      		ld r24,X
 1133 0020 8823      		tst r24
 1134 0022 01F0      		breq .L89
 1135 0024 8FEF      		ldi r24,lo8(1023)
 1136 0026 93E0      		ldi r25,hi8(1023)
 1137 0028 2081      		ld r18,Z
 1138 002a 3181      		ldd r19,Z+1
 1139 002c 821B      		sub r24,r18
 1140 002e 930B      		sbc r25,r19
 1141 0030 9183      		std Z+1,r25
 1142 0032 8083      		st Z,r24
 1143 0034 0895      		ret
 1144               	.LVL80:
 1145               	.L86:
 1146               	.LSM139:
 1147 0036 2081      		ld r18,Z
 1148 0038 3181      		ldd r19,Z+1
 1149 003a 90E0      		ldi r25,lo8(0)
 1150 003c 44E0      		ldi r20,hi8(1024)
 1151 003e 2030      		cpi r18,lo8(1024)
 1152 0040 3407      		cpc r19,r20
 1153 0042 04F0      		brlt .L88
 1154 0044 91E0      		ldi r25,lo8(1)
 1155               	.L88:
 1156 0046 1196      		adiw r26,1
 1157 0048 8C91      		ld r24,X
 1158 004a 9827      		eor r25,r24
 1159 004c 990F      		lsl r25
 1160 004e 9150      		subi r25,lo8(-(-1))
 1161 0050 892F      		mov r24,r25
 1162 0052 90E0      		ldi r25,lo8(0)
 1163 0054 3370      		andi r19,hi8(1023)
 1164 0056 AC01      		movw r20,r24
 1165 0058 429F      		mul r20,r18
 1166 005a C001      		movw r24,r0
 1167 005c 439F      		mul r20,r19
 1168 005e 900D      		add r25,r0
 1169 0060 529F      		mul r21,r18
 1170 0062 900D      		add r25,r0
 1171 0064 1124      		clr r1
 1172 0066 9183      		std Z+1,r25
 1173 0068 8083      		st Z,r24
 1174               	.LVL81:
 1175               	.L89:
 1176 006a 0895      		ret
 1177               	.LFE23:
 1179               		.section	.text.AX12_readInfo,"ax",@progbits
 1180               	.global	AX12_readInfo
 1182               	AX12_readInfo:
 1183               	.LFB15:
 1184               	.LSM140:
 1185               	.LVL82:
 1186 0000 A4E0      		ldi r26,lo8(4)
 1187 0002 B0E0      		ldi r27,hi8(4)
 1188 0004 E0E0      		ldi r30,lo8(gs(1f))
 1189 0006 F0E0      		ldi r31,hi8(gs(1f))
 1190 0008 0C94 0000 		jmp __prologue_saves__+((18 - 6) * 2)
 1191               	1:
 1192               	/* prologue: function */
 1193               	/* frame size = 4 */
 1194 000c 7C01      		movw r14,r24
 1195 000e 062F      		mov r16,r22
 1196               	.LSM141:
 1197 0010 862F      		mov r24,r22
 1198               	.LVL83:
 1199 0012 0E94 0000 		call lengthRead
 1200               	.LVL84:
 1201 0016 182F      		mov r17,r24
 1202               	.LVL85:
 1203               	.LSM142:
 1204 0018 8EEF      		ldi r24,lo8(-2)
 1205 001a 9FEF      		ldi r25,hi8(-2)
 1206 001c 9A83      		std Y+2,r25
 1207 001e 8983      		std Y+1,r24
 1208               	.LSM143:
 1209 0020 1123      		tst r17
 1210 0022 01F0      		breq .L96
 1211               	.L91:
 1212               	.LSM144:
 1213 0024 C701      		movw r24,r14
 1214 0026 602F      		mov r22,r16
 1215 0028 412F      		mov r20,r17
 1216 002a 0E94 0000 		call AX12_readData
 1217 002e FC01      		movw r30,r24
 1218               	.LVL86:
 1219               	.LSM145:
 1220 0030 7A83      		std Y+2,r23
 1221 0032 6983      		std Y+1,r22
 1222               	.LVL87:
 1223 0034 2081      		ld r18,Z
 1224               	.LBB67:
 1225               	.LBB68:
 1226               	.LSM146:
 1227 0036 1130      		cpi r17,lo8(1)
 1228 0038 01F0      		breq .L93
 1229               	.LSM147:
 1230 003a 9181      		ldd r25,Z+1
 1231 003c 80E0      		ldi r24,lo8(0)
 1232               	.LVL88:
 1233 003e 30E0      		ldi r19,lo8(0)
 1234 0040 282B      		or r18,r24
 1235 0042 392B      		or r19,r25
 1236 0044 00C0      		rjmp .L94
 1237               	.LVL89:
 1238               	.L93:
 1239               	.LSM148:
 1240 0046 30E0      		ldi r19,lo8(0)
 1241               	.L94:
 1242               	.LBE68:
 1243               	.LBE67:
 1244               	.LSM149:
 1245 0048 3C83      		std Y+4,r19
 1246 004a 2B83      		std Y+3,r18
 1247               	.LSM150:
 1248 004c C701      		movw r24,r14
 1249               	.LVL90:
 1250 004e 602F      		mov r22,r16
 1251               	.LVL91:
 1252 0050 AE01      		movw r20,r28
 1253 0052 4D5F      		subi r20,lo8(-(3))
 1254 0054 5F4F      		sbci r21,hi8(-(3))
 1255 0056 0E94 0000 		call AX12_processValue
 1256               	.L96:
 1257               	.LSM151:
 1258 005a 6981      		ldd r22,Y+1
 1259 005c 7A81      		ldd r23,Y+2
 1260 005e 8B81      		ldd r24,Y+3
 1261 0060 9C81      		ldd r25,Y+4
 1262               	/* epilogue start */
 1263               	.LSM152:
 1264 0062 2496      		adiw r28,4
 1265 0064 E6E0      		ldi r30, lo8(6)
 1266 0066 0C94 0000 		jmp __epilogue_restores__ + ((18 - 6) * 2)
 1267               	.LFE15:
 1269               		.section	.text.AX12_writeData,"ax",@progbits
 1270               	.global	AX12_writeData
 1272               	AX12_writeData:
 1273               	.LFB14:
 1274               	.LSM153:
 1275               	.LVL92:
 1276 0000 A0E0      		ldi r26,lo8(0)
 1277 0002 B0E0      		ldi r27,hi8(0)
 1278 0004 E0E0      		ldi r30,lo8(gs(1f))
 1279 0006 F0E0      		ldi r31,hi8(gs(1f))
 1280 0008 0C94 0000 		jmp __prologue_saves__+((18 - 11) * 2)
 1281               	1:
 1282               	/* prologue: function */
 1283               	/* frame size = 0 */
 1284 000c 6C01      		movw r12,r24
 1285 000e 962E      		mov r9,r22
 1286 0010 142F      		mov r17,r20
 1287               	.LSM154:
 1288 0012 ADB6      		in r10,__SP_L__
 1289 0014 BEB6      		in r11,__SP_H__
 1290               	.LSM155:
 1291 0016 842F      		mov r24,r20
 1292               	.LVL93:
 1293 0018 90E0      		ldi r25,lo8(0)
 1294               	.LVL94:
 1295 001a 0196      		adiw r24,1
 1296               	.LVL95:
 1297 001c 4DB7      		in r20,__SP_L__
 1298 001e 5EB7      		in r21,__SP_H__
 1299 0020 481B      		sub r20,r24
 1300 0022 590B      		sbc r21,r25
 1301 0024 0FB6      		in __tmp_reg__,__SREG__
 1302 0026 F894      		cli
 1303 0028 5EBF      		out __SP_H__,r21
 1304 002a 0FBE      		out __SREG__,__tmp_reg__
 1305 002c 4DBF      		out __SP_L__,r20
 1306 002e EDB6      		in r14,__SP_L__
 1307 0030 FEB6      		in r15,__SP_H__
 1308 0032 0894      		sec
 1309 0034 E11C      		adc r14,__zero_reg__
 1310 0036 F11C      		adc r15,__zero_reg__
 1311               	.LSM156:
 1312 0038 EDB7      		in r30,__SP_L__
 1313 003a FEB7      		in r31,__SP_H__
 1314 003c 6183      		std Z+1,r22
 1315               	.LSM157:
 1316 003e A701      		movw r20,r14
 1317 0040 4F5F      		subi r20,lo8(-(1))
 1318 0042 5F4F      		sbci r21,hi8(-(1))
 1319 0044 CA01      		movw r24,r20
 1320               	.LVL96:
 1321 0046 B901      		movw r22,r18
 1322               	.LVL97:
 1323 0048 412F      		mov r20,r17
 1324               	.LVL98:
 1325 004a 50E0      		ldi r21,lo8(0)
 1326 004c 0E94 0000 		call memcpy
 1327               	.LVL99:
 1328 0050 612F      		mov r22,r17
 1329 0052 6F5F      		subi r22,lo8(-(1))
 1330               	.LSM158:
 1331 0054 0023      		tst r16
 1332 0056 01F0      		breq .L99
 1333               	.LSM159:
 1334 0058 F601      		movw r30,r12
 1335 005a 8081      		ld r24,Z
 1336 005c 44E0      		ldi r20,lo8(4)
 1337 005e 00C0      		rjmp .L103
 1338               	.L99:
 1339               	.LSM160:
 1340 0060 F601      		movw r30,r12
 1341 0062 8081      		ld r24,Z
 1342 0064 43E0      		ldi r20,lo8(3)
 1343               	.L103:
 1344 0066 9701      		movw r18,r14
 1345 0068 0E94 0000 		call AX12_sendPacket
 1346               	.LSM161:
 1347 006c C601      		movw r24,r12
 1348 006e 62E0      		ldi r22,lo8(2)
 1349 0070 0E94 0000 		call AX12_returnData
 1350 0074 072F      		mov r16,r23
 1351               	.LVL100:
 1352 0076 162F      		mov r17,r22
 1353               	.LVL101:
 1354               	.LSM162:
 1355 0078 F6E1      		ldi r31,lo8(22)
 1356 007a F915      		cp r31,r9
 1357 007c 00F0      		brlo .L101
 1358 007e 65E0      		ldi r22,lo8(5)
 1359 0080 70E0      		ldi r23,hi8(5)
 1360 0082 80E0      		ldi r24,hlo8(5)
 1361 0084 90E0      		ldi r25,hhi8(5)
 1362 0086 0E94 0000 		call delay_ms
 1363               	.L101:
 1364               	.LSM163:
 1365 008a 812F      		mov r24,r17
 1366 008c 902F      		mov r25,r16
 1367 008e 0FB6      		in __tmp_reg__,__SREG__
 1368 0090 F894      		cli
 1369 0092 BEBE      		out __SP_H__,r11
 1370 0094 0FBE      		out __SREG__,__tmp_reg__
 1371 0096 ADBE      		out __SP_L__,r10
 1372               	/* epilogue start */
 1373 0098 2096      		adiw r28,0
 1374 009a EBE0      		ldi r30, lo8(11)
 1375 009c 0C94 0000 		jmp __epilogue_restores__ + ((18 - 11) * 2)
 1376               	.LFE14:
 1378               		.section	.text.AX12_writeInfo,"ax",@progbits
 1379               	.global	AX12_writeInfo
 1381               	AX12_writeInfo:
 1382               	.LFB16:
 1383               	.LSM164:
 1384               	.LVL102:
 1385 0000 A2E0      		ldi r26,lo8(2)
 1386 0002 B0E0      		ldi r27,hi8(2)
 1387 0004 E0E0      		ldi r30,lo8(gs(1f))
 1388 0006 F0E0      		ldi r31,hi8(gs(1f))
 1389 0008 0C94 0000 		jmp __prologue_saves__+((18 - 9) * 2)
 1390               	1:
 1391               	/* prologue: function */
 1392               	/* frame size = 2 */
 1393 000c 7C01      		movw r14,r24
 1394 000e 062F      		mov r16,r22
 1395 0010 5A83      		std Y+2,r21
 1396 0012 4983      		std Y+1,r20
 1397 0014 B22E      		mov r11,r18
 1398               	.LSM165:
 1399 0016 CDB6      		in r12,__SP_L__
 1400 0018 DEB6      		in r13,__SP_H__
 1401               	.LSM166:
 1402 001a 862F      		mov r24,r22
 1403               	.LVL103:
 1404 001c 0E94 0000 		call lengthWrite
 1405               	.LVL104:
 1406 0020 182F      		mov r17,r24
 1407               	.LVL105:
 1408               	.LSM167:
 1409 0022 8823      		tst r24
 1410 0024 01F4      		brne .L105
 1411               	.LVL106:
 1412 0026 2EEF      		ldi r18,lo8(-2)
 1413 0028 3FEF      		ldi r19,hi8(-2)
 1414 002a 00C0      		rjmp .L106
 1415               	.L105:
 1416               	.LSM168:
 1417 002c C701      		movw r24,r14
 1418               	.LVL107:
 1419 002e 602F      		mov r22,r16
 1420 0030 AE01      		movw r20,r28
 1421 0032 4F5F      		subi r20,lo8(-(1))
 1422 0034 5F4F      		sbci r21,hi8(-(1))
 1423 0036 0E94 0000 		call AX12_processValue
 1424               	.LSM169:
 1425 003a 8DB7      		in r24,__SP_L__
 1426 003c 9EB7      		in r25,__SP_H__
 1427 003e 811B      		sub r24,r17
 1428 0040 9109      		sbc r25,__zero_reg__
 1429 0042 0FB6      		in __tmp_reg__,__SREG__
 1430 0044 F894      		cli
 1431 0046 9EBF      		out __SP_H__,r25
 1432 0048 0FBE      		out __SREG__,__tmp_reg__
 1433 004a 8DBF      		out __SP_L__,r24
 1434 004c EDB7      		in r30,__SP_L__
 1435 004e FEB7      		in r31,__SP_H__
 1436 0050 3196      		adiw r30,1
 1437               	.LSM170:
 1438 0052 8981      		ldd r24,Y+1
 1439 0054 9A81      		ldd r25,Y+2
 1440 0056 ADB7      		in r26,__SP_L__
 1441 0058 BEB7      		in r27,__SP_H__
 1442 005a 1196      		adiw r26,1
 1443 005c 8C93      		st X,r24
 1444               	.LSM171:
 1445 005e 1130      		cpi r17,lo8(1)
 1446 0060 01F0      		breq .L107
 1447 0062 892F      		mov r24,r25
 1448 0064 990F      		lsl r25
 1449 0066 990B      		sbc r25,r25
 1450 0068 8183      		std Z+1,r24
 1451               	.L107:
 1452               	.LSM172:
 1453 006a C701      		movw r24,r14
 1454 006c 602F      		mov r22,r16
 1455 006e 412F      		mov r20,r17
 1456 0070 9F01      		movw r18,r30
 1457 0072 0B2D      		mov r16,r11
 1458               	.LVL108:
 1459 0074 0E94 0000 		call AX12_writeData
 1460 0078 9C01      		movw r18,r24
 1461               	.LVL109:
 1462               	.L106:
 1463               	.LSM173:
 1464 007a C901      		movw r24,r18
 1465 007c 0FB6      		in __tmp_reg__,__SREG__
 1466 007e F894      		cli
 1467 0080 DEBE      		out __SP_H__,r13
 1468 0082 0FBE      		out __SREG__,__tmp_reg__
 1469 0084 CDBE      		out __SP_L__,r12
 1470               	/* epilogue start */
 1471 0086 2296      		adiw r28,2
 1472 0088 E9E0      		ldi r30, lo8(9)
 1473 008a 0C94 0000 		jmp __epilogue_restores__ + ((18 - 9) * 2)
 1474               	.LFE16:
 1476               		.comm AX12_ax_rx_buffer,32,1
 1477               		.comm AX12_ax_rx_Pointer,1,1
 1670               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 ax12teacup.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:21     .text.AX12_setTX:00000000 AX12_setTX
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:48     .text.AX12_setRX:00000000 AX12_setRX
                            *COM*:00000001 AX12_ax_rx_Pointer
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:83     .text.AX12_setNone:00000000 AX12_setNone
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:116    .text.AX12_writeByte:00000000 AX12_writeByte
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:140    .text.__vector_36:00000000 __vector_36
                            *COM*:00000020 AX12_ax_rx_buffer
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:184    .text.AX12_init:00000000 AX12_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:255    .text.AX12_sendPacket:00000000 AX12_sendPacket
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:422    .text.AX12_readPacket:00000000 AX12_readPacket
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:582    .text.sign2bin:00000000 sign2bin
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:605    .text.bin2sign:00000000 bin2sign
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:623    .text.makeInt:00000000 makeInt
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:656    .text.lengthRead:00000000 lengthRead
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:753    .text.lengthWrite:00000000 lengthWrite
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:846    .text.AX12_returnData:00000000 AX12_returnData
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:962    .text.AX12_readData:00000000 AX12_readData
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1004   .text.AX12_action:00000000 AX12_action
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1038   .text.AX12_reset:00000000 AX12_reset
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1072   .text.AX12_ping:00000000 AX12_ping
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1106   .text.AX12_processValue:00000000 AX12_processValue
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1182   .text.AX12_readInfo:00000000 AX12_readInfo
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1272   .text.AX12_writeData:00000000 AX12_writeData
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccaRZ3LC.s:1381   .text.AX12_writeInfo:00000000 AX12_writeInfo

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__divmodsi4
__tablejump2__
__prologue_saves__
__epilogue_restores__
memcpy
delay_ms
