   1               		.file	"dda_queue.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.queue_full,"ax",@progbits
  19               	.global	queue_full
  21               	queue_full:
  22               	.LFB8:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27               	.LSM2:
  28 0000 9091 0000 		lds r25,mb_tail
  29 0004 8091 0000 		lds r24,mb_head
  30 0008 292F      		mov r18,r25
  31 000a 30E0      		ldi r19,lo8(0)
  32 000c 482F      		mov r20,r24
  33 000e 50E0      		ldi r21,lo8(0)
  34 0010 8917      		cp r24,r25
  35 0012 00F4      		brsh .L2
  36               	.LSM3:
  37 0014 241B      		sub r18,r20
  38 0016 350B      		sbc r19,r21
  39 0018 2130      		cpi r18,1
  40 001a 3105      		cpc r19,__zero_reg__
  41 001c 01F4      		brne .L4
  42 001e 00C0      		rjmp .L3
  43               	.L2:
  44               	.LSM4:
  45 0020 295F      		subi r18,lo8(-(7))
  46 0022 3F4F      		sbci r19,hi8(-(7))
  47 0024 2417      		cp r18,r20
  48 0026 3507      		cpc r19,r21
  49 0028 01F0      		breq .L3
  50               	.L4:
  51 002a 80E0      		ldi r24,lo8(0)
  52 002c 0895      		ret
  53               	.L3:
  54 002e 8FEF      		ldi r24,lo8(-1)
  55               	.LSM5:
  56 0030 0895      		ret
  57               	.LFE8:
  59               		.section	.text.queue_empty,"ax",@progbits
  60               	.global	queue_empty
  62               	queue_empty:
  63               	.LFB9:
  64               	.LSM6:
  65               	/* prologue: function */
  66               	/* frame size = 0 */
  67               	.LBB19:
  68               	.LSM7:
  69 0000 4FB7      		in r20,__SREG__
  70               	.LVL0:
  71               	/* #APP */
  72               	 ;  54 "dda_queue.c" 1
  73 0002 F894      		cli
  74               	 ;  0 "" 2
  75               	.LSM8:
  76               	/* #NOAPP */
  77 0004 2091 0000 		lds r18,mb_tail
  78 0008 8091 0000 		lds r24,mb_head
  79 000c 2817      		cp r18,r24
  80 000e 01F4      		brne .L8
  81 0010 30E0      		ldi r19,lo8(0)
  82 0012 8BE6      		ldi r24,lo8(107)
  83 0014 90E0      		ldi r25,hi8(107)
  84 0016 289F      		mul r18,r24
  85 0018 F001      		movw r30,r0
  86 001a 299F      		mul r18,r25
  87 001c F00D      		add r31,r0
  88 001e 389F      		mul r19,r24
  89 0020 F00D      		add r31,r0
  90 0022 1124      		clr r1
  91 0024 E050      		subi r30,lo8(-(movebuffer+21))
  92 0026 F040      		sbci r31,hi8(-(movebuffer+21))
  93 0028 8081      		ld r24,Z
  94 002a 81FD      		sbrc r24,1
  95 002c 00C0      		rjmp .L8
  96 002e 8FEF      		ldi r24,lo8(-1)
  97               	.LVL1:
  98 0030 00C0      		rjmp .L9
  99               	.LVL2:
 100               	.L8:
 101 0032 80E0      		ldi r24,lo8(0)
 102               	.LVL3:
 103               	.L9:
 104               	.LSM9:
 105 0034 4FBF      		out __SREG__,r20
 106               	.LVL4:
 107               	/* epilogue start */
 108               	.LBE19:
 109               	.LSM10:
 110 0036 0895      		ret
 111               	.LFE9:
 113               		.section	.text.queue_current_movement,"ax",@progbits
 114               	.global	queue_current_movement
 116               	queue_current_movement:
 117               	.LFB10:
 118               	.LSM11:
 119               	/* prologue: function */
 120               	/* frame size = 0 */
 121               	.LBB20:
 122               	.LSM12:
 123 0000 2FB7      		in r18,__SREG__
 124               	.LVL5:
 125               	/* #APP */
 126               	 ;  65 "dda_queue.c" 1
 127 0002 F894      		cli
 128               	 ;  0 "" 2
 129               	.LSM13:
 130               	/* #NOAPP */
 131 0004 9091 0000 		lds r25,mb_tail
 132 0008 8BE6      		ldi r24,lo8(107)
 133 000a 989F      		mul r25,r24
 134 000c F001      		movw r30,r0
 135 000e 1124      		clr r1
 136               	.LVL6:
 137 0010 E050      		subi r30,lo8(-(movebuffer))
 138 0012 F040      		sbci r31,hi8(-(movebuffer))
 139               	.LSM14:
 140 0014 8589      		ldd r24,Z+21
 141 0016 81FF      		sbrs r24,1
 142 0018 00C0      		rjmp .L12
 143 001a 83FD      		sbrc r24,3
 144 001c 00C0      		rjmp .L12
 145 001e 80FF      		sbrs r24,0
 146 0020 00C0      		rjmp .L13
 147               	.L12:
 148 0022 E0E0      		ldi r30,lo8(0)
 149 0024 F0E0      		ldi r31,hi8(0)
 150               	.L13:
 151               	.LSM15:
 152 0026 2FBF      		out __SREG__,r18
 153               	.LBE20:
 154               	.LSM16:
 155 0028 CF01      		movw r24,r30
 156               	.LVL7:
 157               	/* epilogue start */
 158 002a 0895      		ret
 159               	.LFE10:
 161               		.section	.text.queue_flush,"ax",@progbits
 162               	.global	queue_flush
 164               	queue_flush:
 165               	.LFB15:
 166               	.LSM17:
 167               	/* prologue: function */
 168               	/* frame size = 0 */
 169               	.LSM18:
 170 0000 8091 0000 		lds r24,mb_head
 171 0004 8093 0000 		sts mb_tail,r24
 172               	.LSM19:
 173 0008 90E0      		ldi r25,lo8(0)
 174 000a 2BE6      		ldi r18,lo8(107)
 175 000c 30E0      		ldi r19,hi8(107)
 176 000e 829F      		mul r24,r18
 177 0010 F001      		movw r30,r0
 178 0012 839F      		mul r24,r19
 179 0014 F00D      		add r31,r0
 180 0016 929F      		mul r25,r18
 181 0018 F00D      		add r31,r0
 182 001a 1124      		clr r1
 183 001c E050      		subi r30,lo8(-(movebuffer+21))
 184 001e F040      		sbci r31,hi8(-(movebuffer+21))
 185 0020 8081      		ld r24,Z
 186 0022 8D7F      		andi r24,lo8(-3)
 187 0024 8083      		st Z,r24
 188               	/* epilogue start */
 189               	.LSM20:
 190 0026 0895      		ret
 191               	.LFE15:
 193               		.section	.text.queue_wait,"ax",@progbits
 194               	.global	queue_wait
 196               	queue_wait:
 197               	.LFB16:
 198               	.LSM21:
 199               	/* prologue: function */
 200               	/* frame size = 0 */
 201 0000 00C0      		rjmp .L18
 202               	.LVL8:
 203               	.L21:
 204               	.LSM22:
 205 0002 0E94 0000 		call clock
 206               	.LVL9:
 207               	.L18:
 208               	.LBB24:
 209               	.LBB25:
 210               	.LBB26:
 211               	.LSM23:
 212 0006 4FB7      		in r20,__SREG__
 213               	.LVL10:
 214               	/* #APP */
 215               	 ;  54 "dda_queue.c" 1
 216 0008 F894      		cli
 217               	 ;  0 "" 2
 218               	.LSM24:
 219               	/* #NOAPP */
 220 000a 2091 0000 		lds r18,mb_tail
 221 000e 8091 0000 		lds r24,mb_head
 222 0012 2817      		cp r18,r24
 223 0014 01F4      		brne .L19
 224 0016 30E0      		ldi r19,lo8(0)
 225 0018 8BE6      		ldi r24,lo8(107)
 226 001a 90E0      		ldi r25,hi8(107)
 227 001c 289F      		mul r18,r24
 228 001e F001      		movw r30,r0
 229 0020 299F      		mul r18,r25
 230 0022 F00D      		add r31,r0
 231 0024 389F      		mul r19,r24
 232 0026 F00D      		add r31,r0
 233 0028 1124      		clr r1
 234 002a E050      		subi r30,lo8(-(movebuffer+21))
 235 002c F040      		sbci r31,hi8(-(movebuffer+21))
 236 002e 8081      		ld r24,Z
 237 0030 81FD      		sbrc r24,1
 238 0032 00C0      		rjmp .L19
 239 0034 8FEF      		ldi r24,lo8(-1)
 240               	.LVL11:
 241 0036 00C0      		rjmp .L20
 242               	.LVL12:
 243               	.L19:
 244 0038 80E0      		ldi r24,lo8(0)
 245               	.LVL13:
 246               	.L20:
 247               	.LSM25:
 248 003a 4FBF      		out __SREG__,r20
 249               	.LBE26:
 250               	.LBE25:
 251               	.LBE24:
 252               	.LSM26:
 253 003c 8823      		tst r24
 254 003e 01F0      		breq .L21
 255               	/* epilogue start */
 256               	.LSM27:
 257 0040 0895      		ret
 258               	.LFE16:
 260               		.section	.text.print_queue,"ax",@progbits
 261               	.global	print_queue
 263               	print_queue:
 264               	.LFB14:
 265               	.LSM28:
 266               	/* prologue: function */
 267               	/* frame size = 0 */
 268               	.LSM29:
 269 0000 6091 0000 		lds r22,mb_tail
 270 0004 7091 0000 		lds r23,mb_head
 271               	.LBB33:
 272               	.LBB34:
 273               	.LSM30:
 274               	.LSM31:
 275 0008 9091 0000 		lds r25,mb_tail
 276 000c 8091 0000 		lds r24,mb_head
 277 0010 292F      		mov r18,r25
 278 0012 30E0      		ldi r19,lo8(0)
 279 0014 482F      		mov r20,r24
 280 0016 50E0      		ldi r21,lo8(0)
 281 0018 8917      		cp r24,r25
 282 001a 00F4      		brsh .L24
 283               	.LSM32:
 284 001c 241B      		sub r18,r20
 285 001e 350B      		sbc r19,r21
 286 0020 2130      		cpi r18,1
 287 0022 3105      		cpc r19,__zero_reg__
 288 0024 01F4      		brne .L26
 289 0026 00C0      		rjmp .L25
 290               	.L24:
 291               	.LSM33:
 292 0028 295F      		subi r18,lo8(-(7))
 293 002a 3F4F      		sbci r19,hi8(-(7))
 294 002c 2417      		cp r18,r20
 295 002e 3507      		cpc r19,r21
 296 0030 01F0      		breq .L25
 297               	.L26:
 298               	.LBE34:
 299               	.LBE33:
 300               	.LBB35:
 301               	.LBB36:
 302               	.LBB37:
 303               	.LSM34:
 304 0032 4FB7      		in r20,__SREG__
 305               	.LVL14:
 306               	/* #APP */
 307               	 ;  54 "dda_queue.c" 1
 308 0034 F894      		cli
 309               	 ;  0 "" 2
 310               	.LSM35:
 311               	/* #NOAPP */
 312 0036 2091 0000 		lds r18,mb_tail
 313 003a 8091 0000 		lds r24,mb_head
 314 003e 2817      		cp r18,r24
 315 0040 01F4      		brne .L27
 316 0042 30E0      		ldi r19,lo8(0)
 317 0044 8BE6      		ldi r24,lo8(107)
 318 0046 90E0      		ldi r25,hi8(107)
 319 0048 289F      		mul r18,r24
 320 004a F001      		movw r30,r0
 321 004c 299F      		mul r18,r25
 322 004e F00D      		add r31,r0
 323 0050 389F      		mul r19,r24
 324 0052 F00D      		add r31,r0
 325 0054 1124      		clr r1
 326 0056 E050      		subi r30,lo8(-(movebuffer+21))
 327 0058 F040      		sbci r31,hi8(-(movebuffer+21))
 328 005a 8081      		ld r24,Z
 329 005c 81FD      		sbrc r24,1
 330 005e 00C0      		rjmp .L27
 331 0060 8FEF      		ldi r24,lo8(-1)
 332               	.LVL15:
 333 0062 00C0      		rjmp .L28
 334               	.LVL16:
 335               	.L27:
 336 0064 80E0      		ldi r24,lo8(0)
 337               	.LVL17:
 338               	.L28:
 339               	.LSM36:
 340 0066 4FBF      		out __SREG__,r20
 341               	.LBE37:
 342               	.LBE36:
 343               	.LBE35:
 344               	.LSM37:
 345 0068 8823      		tst r24
 346 006a 01F4      		brne .L29
 347 006c 20E2      		ldi r18,lo8(32)
 348 006e 30E0      		ldi r19,hi8(32)
 349 0070 00C0      		rjmp .L30
 350               	.L29:
 351 0072 25E4      		ldi r18,lo8(69)
 352 0074 30E0      		ldi r19,hi8(69)
 353 0076 00C0      		rjmp .L30
 354               	.LVL18:
 355               	.L25:
 356 0078 26E4      		ldi r18,lo8(70)
 357 007a 30E0      		ldi r19,hi8(70)
 358               	.LVL19:
 359               	.L30:
 360 007c 8DB7      		in r24,__SP_L__
 361 007e 9EB7      		in r25,__SP_H__
 362               	.LVL20:
 363 0080 0897      		sbiw r24,8
 364 0082 0FB6      		in __tmp_reg__,__SREG__
 365 0084 F894      		cli
 366 0086 9EBF      		out __SP_H__,r25
 367 0088 0FBE      		out __SREG__,__tmp_reg__
 368 008a 8DBF      		out __SP_L__,r24
 369 008c EDB7      		in r30,__SP_L__
 370 008e FEB7      		in r31,__SP_H__
 371 0090 3196      		adiw r30,1
 372 0092 80E0      		ldi r24,lo8(__c.1725)
 373 0094 90E0      		ldi r25,hi8(__c.1725)
 374 0096 ADB7      		in r26,__SP_L__
 375 0098 BEB7      		in r27,__SP_H__
 376 009a 1296      		adiw r26,1+1
 377 009c 9C93      		st X,r25
 378 009e 8E93      		st -X,r24
 379 00a0 1197      		sbiw r26,1
 380 00a2 6283      		std Z+2,r22
 381 00a4 1382      		std Z+3,__zero_reg__
 382 00a6 7483      		std Z+4,r23
 383 00a8 1582      		std Z+5,__zero_reg__
 384 00aa 3783      		std Z+7,r19
 385 00ac 2683      		std Z+6,r18
 386 00ae 0E94 0000 		call sersendf_P
 387               	.LVL21:
 388 00b2 8DB7      		in r24,__SP_L__
 389 00b4 9EB7      		in r25,__SP_H__
 390 00b6 0896      		adiw r24,8
 391 00b8 0FB6      		in __tmp_reg__,__SREG__
 392 00ba F894      		cli
 393 00bc 9EBF      		out __SP_H__,r25
 394 00be 0FBE      		out __SREG__,__tmp_reg__
 395 00c0 8DBF      		out __SP_L__,r24
 396               	/* epilogue start */
 397               	.LSM38:
 398 00c2 0895      		ret
 399               	.LFE14:
 401               		.section	.text.next_move,"ax",@progbits
 402               	.global	next_move
 404               	next_move:
 405               	.LFB13:
 406               	.LSM39:
 407 0000 CF93      		push r28
 408 0002 DF93      		push r29
 409               	/* prologue: function */
 410               	/* frame size = 0 */
 411 0004 00C0      		rjmp .L40
 412               	.LVL22:
 413               	.L38:
 414               	.LBB43:
 415               	.LSM40:
 416 0006 842F      		mov r24,r20
 417               	.LVL23:
 418 0008 8F5F      		subi r24,lo8(-(1))
 419               	.LSM41:
 420 000a 8770      		andi r24,lo8(7)
 421               	.LSM42:
 422 000c 9BE6      		ldi r25,lo8(107)
 423 000e 899F      		mul r24,r25
 424 0010 E001      		movw r28,r0
 425 0012 1124      		clr r1
 426 0014 C050      		subi r28,lo8(-(movebuffer))
 427 0016 D040      		sbci r29,hi8(-(movebuffer))
 428               	.LSM43:
 429 0018 8093 0000 		sts mb_tail,r24
 430               	.LSM44:
 431 001c 8D89      		ldd r24,Y+21
 432               	.LVL24:
 433 001e 83FF      		sbrs r24,3
 434 0020 00C0      		rjmp .L34
 435               	.LSM45:
 436 0022 80E0      		ldi r24,lo8(__c.1711)
 437 0024 90E0      		ldi r25,hi8(__c.1711)
 438 0026 0E94 0000 		call serial_writestr_P
 439               	.LSM46:
 440 002a 8D89      		ldd r24,Y+21
 441 002c 8260      		ori r24,lo8(2)
 442 002e 8D8B      		std Y+21,r24
 443               	.LSM47:
 444 0030 60E0      		ldi r22,lo8(16000000)
 445 0032 74E2      		ldi r23,hi8(16000000)
 446 0034 84EF      		ldi r24,hlo8(16000000)
 447 0036 90E0      		ldi r25,hhi8(16000000)
 448 0038 0E94 0000 		call setTimer
 449 003c 00C0      		rjmp .L40
 450               	.L34:
 451               	.LSM48:
 452 003e CE01      		movw r24,r28
 453 0040 0E94 0000 		call dda_start
 454               	.L40:
 455               	.LBE43:
 456               	.LBB44:
 457               	.LBB45:
 458               	.LBB46:
 459               	.LSM49:
 460 0044 4FB7      		in r20,__SREG__
 461               	.LVL25:
 462               	/* #APP */
 463               	 ;  54 "dda_queue.c" 1
 464 0046 F894      		cli
 465               	 ;  0 "" 2
 466               	.LSM50:
 467               	/* #NOAPP */
 468 0048 2091 0000 		lds r18,mb_tail
 469 004c 8091 0000 		lds r24,mb_head
 470 0050 2817      		cp r18,r24
 471 0052 01F4      		brne .L35
 472 0054 30E0      		ldi r19,lo8(0)
 473 0056 8BE6      		ldi r24,lo8(107)
 474 0058 90E0      		ldi r25,hi8(107)
 475 005a 289F      		mul r18,r24
 476 005c F001      		movw r30,r0
 477 005e 299F      		mul r18,r25
 478 0060 F00D      		add r31,r0
 479 0062 389F      		mul r19,r24
 480 0064 F00D      		add r31,r0
 481 0066 1124      		clr r1
 482 0068 E050      		subi r30,lo8(-(movebuffer+21))
 483 006a F040      		sbci r31,hi8(-(movebuffer+21))
 484 006c 8081      		ld r24,Z
 485 006e 81FD      		sbrc r24,1
 486 0070 00C0      		rjmp .L35
 487 0072 8FEF      		ldi r24,lo8(-1)
 488               	.LVL26:
 489 0074 00C0      		rjmp .L36
 490               	.LVL27:
 491               	.L35:
 492 0076 80E0      		ldi r24,lo8(0)
 493               	.LVL28:
 494               	.L36:
 495               	.LSM51:
 496 0078 4FBF      		out __SREG__,r20
 497               	.LBE46:
 498               	.LBE45:
 499               	.LBE44:
 500               	.LSM52:
 501 007a 8823      		tst r24
 502 007c 01F4      		brne .L39
 503 007e 4091 0000 		lds r20,mb_tail
 504               	.LVL29:
 505 0082 242F      		mov r18,r20
 506 0084 30E0      		ldi r19,lo8(0)
 507 0086 8BE6      		ldi r24,lo8(107)
 508 0088 90E0      		ldi r25,hi8(107)
 509               	.LVL30:
 510 008a 289F      		mul r18,r24
 511 008c F001      		movw r30,r0
 512 008e 299F      		mul r18,r25
 513 0090 F00D      		add r31,r0
 514 0092 389F      		mul r19,r24
 515 0094 F00D      		add r31,r0
 516 0096 1124      		clr r1
 517 0098 E050      		subi r30,lo8(-(movebuffer+21))
 518 009a F040      		sbci r31,hi8(-(movebuffer+21))
 519 009c 8081      		ld r24,Z
 520 009e 81FF      		sbrs r24,1
 521 00a0 00C0      		rjmp .L38
 522               	.LVL31:
 523               	.L39:
 524               	/* epilogue start */
 525               	.LSM53:
 526 00a2 DF91      		pop r29
 527 00a4 CF91      		pop r28
 528               	.LVL32:
 529 00a6 0895      		ret
 530               	.LFE13:
 532               		.section	.text.enqueue_home,"ax",@progbits
 533               	.global	enqueue_home
 535               	enqueue_home:
 536               	.LFB12:
 537               	.LSM54:
 538               	.LVL33:
 539 0000 FF92      		push r15
 540 0002 0F93      		push r16
 541 0004 1F93      		push r17
 542 0006 CF93      		push r28
 543 0008 DF93      		push r29
 544               	/* prologue: function */
 545               	/* frame size = 0 */
 546 000a EC01      		movw r28,r24
 547 000c 062F      		mov r16,r22
 548 000e F42E      		mov r15,r20
 549               	.LVL34:
 550               	.L48:
 551               	.LBB50:
 552               	.LBB51:
 553               	.LSM55:
 554               	.LSM56:
 555 0010 8091 0000 		lds r24,mb_tail
 556 0014 9091 0000 		lds r25,mb_head
 557 0018 282F      		mov r18,r24
 558 001a 30E0      		ldi r19,lo8(0)
 559 001c 492F      		mov r20,r25
 560 001e 50E0      		ldi r21,lo8(0)
 561 0020 9817      		cp r25,r24
 562 0022 00F4      		brsh .L42
 563               	.LSM57:
 564 0024 241B      		sub r18,r20
 565 0026 350B      		sbc r19,r21
 566 0028 2130      		cpi r18,1
 567 002a 3105      		cpc r19,__zero_reg__
 568 002c 01F4      		brne .L44
 569 002e 00C0      		rjmp .L43
 570               	.L42:
 571               	.LSM58:
 572 0030 295F      		subi r18,lo8(-(7))
 573 0032 3F4F      		sbci r19,hi8(-(7))
 574 0034 2417      		cp r18,r20
 575 0036 3507      		cpc r19,r21
 576 0038 01F4      		brne .+2
 577 003a 00C0      		rjmp .L43
 578               	.L44:
 579               	.LBE51:
 580               	.LBE50:
 581               	.LSM59:
 582 003c 192F      		mov r17,r25
 583               	.LVL35:
 584 003e 1F5F      		subi r17,lo8(-(1))
 585               	.LSM60:
 586 0040 1770      		andi r17,lo8(7)
 587               	.LSM61:
 588 0042 8BE6      		ldi r24,lo8(107)
 589 0044 189F      		mul r17,r24
 590 0046 D001      		movw r26,r0
 591 0048 1124      		clr r1
 592               	.LVL36:
 593 004a A050      		subi r26,lo8(-(movebuffer))
 594 004c B040      		sbci r27,hi8(-(movebuffer))
 595               	.LSM62:
 596 004e 5696      		adiw r26,21+1
 597 0050 1C92      		st X,__zero_reg__
 598 0052 1E92      		st -X,__zero_reg__
 599 0054 5597      		sbiw r26,21
 600               	.LSM63:
 601 0056 2097      		sbiw r28,0
 602 0058 01F0      		breq .L45
 603               	.LSM64:
 604 005a FD01      		movw r30,r26
 605 005c E759      		subi r30,lo8(-(105))
 606 005e FF4F      		sbci r31,hi8(-(105))
 607 0060 0083      		st Z,r16
 608               	.LSM65:
 609 0062 FD01      		movw r30,r26
 610 0064 E659      		subi r30,lo8(-(106))
 611 0066 FF4F      		sbci r31,hi8(-(106))
 612 0068 F082      		st Z,r15
 613 006a 00C0      		rjmp .L46
 614               	.L45:
 615               	.LSM66:
 616 006c 5596      		adiw r26,21
 617 006e 8C91      		ld r24,X
 618 0070 5597      		sbiw r26,21
 619 0072 8860      		ori r24,lo8(8)
 620 0074 5596      		adiw r26,21
 621 0076 8C93      		st X,r24
 622 0078 5597      		sbiw r26,21
 623               	.L46:
 624               	.LSM67:
 625 007a CD01      		movw r24,r26
 626 007c BE01      		movw r22,r28
 627 007e 0E94 0000 		call dda_create
 628               	.LVL37:
 629               	.LSM68:
 630               	.LSM69:
 631 0082 1093 0000 		sts mb_head,r17
 632               	.LBB52:
 633               	.LSM70:
 634 0086 4FB7      		in r20,__SREG__
 635               	.LVL38:
 636               	/* #APP */
 637               	 ;  138 "dda_queue.c" 1
 638 0088 F894      		cli
 639               	 ;  0 "" 2
 640               	.LSM71:
 641               	/* #NOAPP */
 642 008a 8091 0000 		lds r24,mb_tail
 643 008e 90E0      		ldi r25,lo8(0)
 644 0090 2BE6      		ldi r18,lo8(107)
 645 0092 30E0      		ldi r19,hi8(107)
 646 0094 829F      		mul r24,r18
 647 0096 F001      		movw r30,r0
 648 0098 839F      		mul r24,r19
 649 009a F00D      		add r31,r0
 650 009c 929F      		mul r25,r18
 651 009e F00D      		add r31,r0
 652 00a0 1124      		clr r1
 653 00a2 E050      		subi r30,lo8(-(movebuffer+21))
 654 00a4 F040      		sbci r31,hi8(-(movebuffer+21))
 655 00a6 8081      		ld r24,Z
 656 00a8 8695      		lsr r24
 657 00aa 8170      		andi r24,lo8(1)
 658               	.LSM72:
 659 00ac 4FBF      		out __SREG__,r20
 660               	.LBE52:
 661               	.LSM73:
 662 00ae 8823      		tst r24
 663 00b0 01F4      		brne .L49
 664               	.LSM74:
 665 00b2 0E94 0000 		call next_move
 666               	.LVL39:
 667               	.LSM75:
 668               	/* #APP */
 669               	 ;  145 "dda_queue.c" 1
 670 00b6 7894      		sei
 671               	 ;  0 "" 2
 672               	/* #NOAPP */
 673 00b8 00C0      		rjmp .L49
 674               	.LVL40:
 675               	.L43:
 676               	.LSM76:
 677 00ba 84E6      		ldi r24,lo8(100)
 678 00bc 90E0      		ldi r25,hi8(100)
 679 00be 0E94 0000 		call delay_us
 680 00c2 00C0      		rjmp .L48
 681               	.LVL41:
 682               	.L49:
 683               	/* epilogue start */
 684               	.LSM77:
 685 00c4 CDB7      		in r28,__SP_L__
 686 00c6 DEB7      		in r29,__SP_H__
 687               	.LVL42:
 688 00c8 E5E0      		ldi r30, lo8(5)
 689 00ca 0C94 0000 		jmp __epilogue_restores__ + ((18 - 5) * 2)
 690               	.LFE12:
 692               		.section	.text.queue_step,"ax",@progbits
 693               	.global	queue_step
 695               	queue_step:
 696               	.LFB11:
 697               	.LSM78:
 698 0000 CF93      		push r28
 699 0002 DF93      		push r29
 700               	/* prologue: function */
 701               	/* frame size = 0 */
 702               	.LSM79:
 703 0004 9091 0000 		lds r25,mb_tail
 704 0008 8BE6      		ldi r24,lo8(107)
 705 000a 989F      		mul r25,r24
 706 000c E001      		movw r28,r0
 707 000e 1124      		clr r1
 708               	.LVL43:
 709 0010 C050      		subi r28,lo8(-(movebuffer))
 710 0012 D040      		sbci r29,hi8(-(movebuffer))
 711               	.LSM80:
 712 0014 8D89      		ldd r24,Y+21
 713 0016 81FF      		sbrs r24,1
 714 0018 00C0      		rjmp .L51
 715               	.LSM81:
 716 001a 83FF      		sbrs r24,3
 717 001c 00C0      		rjmp .L52
 718               	.LSM82:
 719 001e 60E0      		ldi r22,lo8(16000000)
 720 0020 74E2      		ldi r23,hi8(16000000)
 721 0022 84EF      		ldi r24,hlo8(16000000)
 722 0024 90E0      		ldi r25,hhi8(16000000)
 723 0026 0E94 0000 		call setTimer
 724               	.LSM83:
 725 002a 0E94 0000 		call temp_achieved
 726 002e 8823      		tst r24
 727 0030 01F0      		breq .L51
 728               	.LSM84:
 729 0032 8D89      		ldd r24,Y+21
 730 0034 897F      		andi r24,lo8(-7)
 731 0036 8D8B      		std Y+21,r24
 732               	.LSM85:
 733 0038 80E0      		ldi r24,lo8(__c.1678)
 734 003a 90E0      		ldi r25,hi8(__c.1678)
 735 003c 0E94 0000 		call serial_writestr_P
 736 0040 00C0      		rjmp .L51
 737               	.L52:
 738               	.LSM86:
 739 0042 CE01      		movw r24,r28
 740 0044 0E94 0000 		call dda_step
 741               	.L51:
 742               	.LSM87:
 743 0048 8D89      		ldd r24,Y+21
 744 004a 81FD      		sbrc r24,1
 745 004c 00C0      		rjmp .L54
 746               	.LSM88:
 747 004e 0E94 0000 		call next_move
 748               	.L54:
 749               	/* epilogue start */
 750               	.LSM89:
 751 0052 DF91      		pop r29
 752 0054 CF91      		pop r28
 753               	.LVL44:
 754 0056 0895      		ret
 755               	.LFE11:
 757               	.global	mb_head
 758               	.global	mb_head
 759               		.section .bss
 762               	mb_head:
 763 0000 00        		.skip 1,0
 764               	.global	mb_tail
 765               	.global	mb_tail
 768               	mb_tail:
 769 0001 00        		.skip 1,0
 770               		.section	.progmem.data,"a",@progbits
 773               	__c.1725:
 774 0000 5125 642F 		.string	"Q%d/%d%c"
 774      2564 2563 
 774      00
 777               	__c.1711:
 778 0009 5761 6974 		.string	"Waiting for target temp\n"
 778      696E 6720 
 778      666F 7220 
 778      7461 7267 
 778      6574 2074 
 781               	__c.1678:
 782 0022 5465 6D70 		.string	"Temp achieved\n"
 782      2061 6368 
 782      6965 7665 
 782      640A 00
 783               	.global	movebuffer
 784               		.section	.bss,"aw",@nobits
 787               	movebuffer:
 788 0002 0000 0000 		.skip 856,0
 788      0000 0000 
 788      0000 0000 
 788      0000 0000 
 788      0000 0000 
 877               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 dda_queue.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:21     .text.queue_full:00000000 queue_full
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:768    .bss:00000001 mb_tail
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:762    .bss:00000000 mb_head
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:62     .text.queue_empty:00000000 queue_empty
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:787    .bss:00000002 movebuffer
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:116    .text.queue_current_movement:00000000 queue_current_movement
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:164    .text.queue_flush:00000000 queue_flush
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:196    .text.queue_wait:00000000 queue_wait
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:263    .text.print_queue:00000000 print_queue
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:773    .progmem.data:00000000 __c.1725
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:404    .text.next_move:00000000 next_move
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:777    .progmem.data:00000009 __c.1711
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:535    .text.enqueue_home:00000000 enqueue_home
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:695    .text.queue_step:00000000 queue_step
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccz8dxPw.s:781    .progmem.data:00000022 __c.1678

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
clock
sersendf_P
serial_writestr_P
setTimer
dda_start
dda_create
delay_us
__epilogue_restores__
temp_achieved
dda_step
