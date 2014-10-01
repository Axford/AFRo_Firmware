   1               		.file	"gcode_process.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.process_gcode_command,"ax",@progbits
  19               	.global	process_gcode_command
  21               	process_gcode_command:
  22               	.LFB6:
  23               	.LSM0:
  24 0000 EF92      		push r14
  25 0002 FF92      		push r15
  26 0004 0F93      		push r16
  27 0006 1F93      		push r17
  28 0008 CF93      		push r28
  29 000a DF93      		push r29
  30               	/* prologue: function */
  31               	/* frame size = 0 */
  32               	.LSM1:
  33 000c 8091 0000 		lds r24,next_target+1
  34 0010 86FF      		sbrs r24,6
  35 0012 00C0      		rjmp .L2
  36               	.LSM2:
  37 0014 8091 0000 		lds r24,startpoint
  38 0018 9091 0000 		lds r25,(startpoint)+1
  39 001c A091 0000 		lds r26,(startpoint)+2
  40 0020 B091 0000 		lds r27,(startpoint)+3
  41 0024 2091 0000 		lds r18,next_target+5
  42 0028 3091 0000 		lds r19,(next_target+5)+1
  43 002c 4091 0000 		lds r20,(next_target+5)+2
  44 0030 5091 0000 		lds r21,(next_target+5)+3
  45 0034 820F      		add r24,r18
  46 0036 931F      		adc r25,r19
  47 0038 A41F      		adc r26,r20
  48 003a B51F      		adc r27,r21
  49 003c 8093 0000 		sts next_target+5,r24
  50 0040 9093 0000 		sts (next_target+5)+1,r25
  51 0044 A093 0000 		sts (next_target+5)+2,r26
  52 0048 B093 0000 		sts (next_target+5)+3,r27
  53               	.LSM3:
  54 004c 8091 0000 		lds r24,startpoint+4
  55 0050 9091 0000 		lds r25,(startpoint+4)+1
  56 0054 A091 0000 		lds r26,(startpoint+4)+2
  57 0058 B091 0000 		lds r27,(startpoint+4)+3
  58 005c 2091 0000 		lds r18,next_target+9
  59 0060 3091 0000 		lds r19,(next_target+9)+1
  60 0064 4091 0000 		lds r20,(next_target+9)+2
  61 0068 5091 0000 		lds r21,(next_target+9)+3
  62 006c 820F      		add r24,r18
  63 006e 931F      		adc r25,r19
  64 0070 A41F      		adc r26,r20
  65 0072 B51F      		adc r27,r21
  66 0074 8093 0000 		sts next_target+9,r24
  67 0078 9093 0000 		sts (next_target+9)+1,r25
  68 007c A093 0000 		sts (next_target+9)+2,r26
  69 0080 B093 0000 		sts (next_target+9)+3,r27
  70               	.LSM4:
  71 0084 8091 0000 		lds r24,startpoint+8
  72 0088 9091 0000 		lds r25,(startpoint+8)+1
  73 008c A091 0000 		lds r26,(startpoint+8)+2
  74 0090 B091 0000 		lds r27,(startpoint+8)+3
  75 0094 2091 0000 		lds r18,next_target+13
  76 0098 3091 0000 		lds r19,(next_target+13)+1
  77 009c 4091 0000 		lds r20,(next_target+13)+2
  78 00a0 5091 0000 		lds r21,(next_target+13)+3
  79 00a4 820F      		add r24,r18
  80 00a6 931F      		adc r25,r19
  81 00a8 A41F      		adc r26,r20
  82 00aa B51F      		adc r27,r21
  83 00ac 8093 0000 		sts next_target+13,r24
  84 00b0 9093 0000 		sts (next_target+13)+1,r25
  85 00b4 A093 0000 		sts (next_target+13)+2,r26
  86 00b8 B093 0000 		sts (next_target+13)+3,r27
  87 00bc 00C0      		rjmp .L3
  88               	.L2:
  89               	.LSM5:
  90 00be 87FF      		sbrs r24,7
  91 00c0 00C0      		rjmp .L4
  92               	.L3:
  93               	.LSM6:
  94 00c2 8091 0000 		lds r24,next_target+25
  95 00c6 8160      		ori r24,lo8(1)
  96 00c8 00C0      		rjmp .L71
  97               	.L4:
  98               	.LSM7:
  99 00ca 8091 0000 		lds r24,next_target+25
 100 00ce 8E7F      		andi r24,lo8(-2)
 101               	.L71:
 102 00d0 8093 0000 		sts next_target+25,r24
 103               	.LSM8:
 104 00d4 6091 0000 		lds r22,next_target+13
 105 00d8 7091 0000 		lds r23,(next_target+13)+1
 106 00dc 8091 0000 		lds r24,(next_target+13)+2
 107 00e0 9091 0000 		lds r25,(next_target+13)+3
 108 00e4 0E94 0000 		call __floatsisf
 109 00e8 20E0      		ldi r18,lo8(0x0)
 110 00ea 30E0      		ldi r19,hi8(0x0)
 111 00ec 40E0      		ldi r20,hlo8(0x0)
 112 00ee 50E0      		ldi r21,hhi8(0x0)
 113 00f0 0E94 0000 		call __ltsf2
 114 00f4 8823      		tst r24
 115 00f6 04F4      		brge .L6
 116               	.LSM9:
 117 00f8 1092 0000 		sts next_target+13,__zero_reg__
 118 00fc 1092 0000 		sts (next_target+13)+1,__zero_reg__
 119 0100 1092 0000 		sts (next_target+13)+2,__zero_reg__
 120 0104 1092 0000 		sts (next_target+13)+3,__zero_reg__
 121               	.L6:
 122               	.LSM10:
 123 0108 6091 0000 		lds r22,next_target+13
 124 010c 7091 0000 		lds r23,(next_target+13)+1
 125 0110 8091 0000 		lds r24,(next_target+13)+2
 126 0114 9091 0000 		lds r25,(next_target+13)+3
 127 0118 0E94 0000 		call __floatsisf
 128 011c 20E0      		ldi r18,lo8(0x47c35000)
 129 011e 30E5      		ldi r19,hi8(0x47c35000)
 130 0120 43EC      		ldi r20,hlo8(0x47c35000)
 131 0122 57E4      		ldi r21,hhi8(0x47c35000)
 132 0124 0E94 0000 		call __gtsf2
 133 0128 1816      		cp __zero_reg__,r24
 134 012a 04F4      		brge .L8
 135               	.LSM11:
 136 012c 80EA      		ldi r24,lo8(100000)
 137 012e 96E8      		ldi r25,hi8(100000)
 138 0130 A1E0      		ldi r26,hlo8(100000)
 139 0132 B0E0      		ldi r27,hhi8(100000)
 140 0134 8093 0000 		sts next_target+13,r24
 141 0138 9093 0000 		sts (next_target+13)+1,r25
 142 013c A093 0000 		sts (next_target+13)+2,r26
 143 0140 B093 0000 		sts (next_target+13)+3,r27
 144               	.L8:
 145               	.LSM12:
 146 0144 8091 0000 		lds r24,next_target+1
 147 0148 81FF      		sbrs r24,1
 148 014a 00C0      		rjmp .L10
 149               	.LSM13:
 150 014c 8091 0000 		lds r24,next_target+32
 151 0150 8093 0000 		sts next_tool,r24
 152               	.L10:
 153               	.LSM14:
 154 0154 8091 0000 		lds r24,next_target
 155 0158 80FF      		sbrs r24,0
 156 015a 00C0      		rjmp .L11
 157               	.LBB58:
 158               	.LSM15:
 159 015c 2091 0000 		lds r18,next_target+3
 160 0160 2C31      		cpi r18,lo8(28)
 161 0162 01F4      		brne .+2
 162 0164 00C0      		rjmp .L18
 163 0166 2D31      		cpi r18,lo8(29)
 164 0168 00F4      		brsh .L25
 165 016a 2430      		cpi r18,lo8(4)
 166 016c 01F4      		brne .+2
 167 016e 00C0      		rjmp .L15
 168 0170 2530      		cpi r18,lo8(5)
 169 0172 00F4      		brsh .L26
 170 0174 2223      		tst r18
 171 0176 01F0      		breq .L13
 172 0178 2130      		cpi r18,lo8(1)
 173 017a 01F0      		breq .+2
 174 017c 00C0      		rjmp .L12
 175 017e 00C0      		rjmp .L80
 176               	.L26:
 177 0180 2431      		cpi r18,lo8(20)
 178 0182 01F4      		brne .+2
 179 0184 00C0      		rjmp .L16
 180 0186 2531      		cpi r18,lo8(21)
 181 0188 01F0      		breq .+2
 182 018a 00C0      		rjmp .L12
 183 018c 00C0      		rjmp .L81
 184               	.L25:
 185 018e 2B35      		cpi r18,lo8(91)
 186 0190 01F4      		brne .+2
 187 0192 00C0      		rjmp .L21
 188 0194 2C35      		cpi r18,lo8(92)
 189 0196 00F4      		brsh .L27
 190 0198 2E31      		cpi r18,lo8(30)
 191 019a 01F4      		brne .+2
 192 019c 00C0      		rjmp .L19
 193 019e 2A35      		cpi r18,lo8(90)
 194 01a0 01F0      		breq .+2
 195 01a2 00C0      		rjmp .L12
 196 01a4 00C0      		rjmp .L82
 197               	.L27:
 198 01a6 213A      		cpi r18,lo8(-95)
 199 01a8 01F4      		brne .+2
 200 01aa 00C0      		rjmp .L23
 201 01ac 223A      		cpi r18,lo8(-94)
 202 01ae 01F4      		brne .+2
 203 01b0 00C0      		rjmp .L68
 204 01b2 2C35      		cpi r18,lo8(92)
 205 01b4 01F0      		breq .+2
 206 01b6 00C0      		rjmp .L12
 207 01b8 00C0      		rjmp .L83
 208               	.L13:
 209               	.LSM16:
 210 01ba E090 0000 		lds r14,next_target+21
 211 01be F090 0000 		lds r15,(next_target+21)+1
 212 01c2 0091 0000 		lds r16,(next_target+21)+2
 213 01c6 1091 0000 		lds r17,(next_target+21)+3
 214               	.LVL0:
 215               	.LSM17:
 216 01ca 88EE      		ldi r24,lo8(1000)
 217 01cc 93E0      		ldi r25,hi8(1000)
 218 01ce A0E0      		ldi r26,hlo8(1000)
 219 01d0 B0E0      		ldi r27,hhi8(1000)
 220 01d2 8093 0000 		sts next_target+21,r24
 221 01d6 9093 0000 		sts (next_target+21)+1,r25
 222 01da A093 0000 		sts (next_target+21)+2,r26
 223 01de B093 0000 		sts (next_target+21)+3,r27
 224               	.LBB59:
 225               	.LBB60:
 226               	.LSM18:
 227 01e2 80E0      		ldi r24,lo8(next_target+5)
 228 01e4 90E0      		ldi r25,hi8(next_target+5)
 229 01e6 60E0      		ldi r22,lo8(0)
 230 01e8 40E0      		ldi r20,lo8(0)
 231 01ea 0E94 0000 		call enqueue_home
 232               	.LBE60:
 233               	.LBE59:
 234               	.LSM19:
 235 01ee E092 0000 		sts next_target+21,r14
 236 01f2 F092 0000 		sts (next_target+21)+1,r15
 237 01f6 0093 0000 		sts (next_target+21)+2,r16
 238 01fa 1093 0000 		sts (next_target+21)+3,r17
 239 01fe 00C0      		rjmp .L68
 240               	.LVL1:
 241               	.L80:
 242               	.LBB61:
 243               	.LBB62:
 244               	.LSM20:
 245 0200 80E0      		ldi r24,lo8(next_target+5)
 246 0202 90E0      		ldi r25,hi8(next_target+5)
 247 0204 00C0      		rjmp .L74
 248               	.L15:
 249               	.LBE62:
 250               	.LBE61:
 251               	.LSM21:
 252 0206 0E94 0000 		call queue_wait
 253               	.LSM22:
 254 020a 8091 0000 		lds r24,next_target+1
 255 020e 80FD      		sbrc r24,0
 256 0210 00C0      		rjmp .L28
 257 0212 00C0      		rjmp .L68
 258               	.L29:
 259               	.LSM23:
 260 0214 0E94 0000 		call clock
 261               	.LSM24:
 262 0218 61E0      		ldi r22,lo8(1)
 263 021a 70E0      		ldi r23,hi8(1)
 264 021c 80E0      		ldi r24,hlo8(1)
 265 021e 90E0      		ldi r25,hhi8(1)
 266 0220 0E94 0000 		call delay_ms
 267               	.LSM25:
 268 0224 8091 0000 		lds r24,next_target+30
 269 0228 9091 0000 		lds r25,(next_target+30)+1
 270 022c 0197      		sbiw r24,1
 271 022e 9093 0000 		sts (next_target+30)+1,r25
 272 0232 8093 0000 		sts next_target+30,r24
 273               	.L28:
 274 0236 8091 0000 		lds r24,next_target+30
 275 023a 9091 0000 		lds r25,(next_target+30)+1
 276 023e 892B      		or r24,r25
 277 0240 01F4      		brne .L29
 278 0242 00C0      		rjmp .L68
 279               	.L16:
 280               	.LSM26:
 281 0244 8091 0000 		lds r24,next_target+2
 282 0248 8160      		ori r24,lo8(1)
 283 024a 00C0      		rjmp .L75
 284               	.L81:
 285               	.LSM27:
 286 024c 8091 0000 		lds r24,next_target+2
 287 0250 8E7F      		andi r24,lo8(-2)
 288               	.L75:
 289 0252 8093 0000 		sts next_target+2,r24
 290 0256 00C0      		rjmp .L68
 291               	.L19:
 292               	.LBB63:
 293               	.LBB64:
 294               	.LSM28:
 295 0258 80E0      		ldi r24,lo8(next_target+5)
 296 025a 90E0      		ldi r25,hi8(next_target+5)
 297 025c 60E0      		ldi r22,lo8(0)
 298 025e 40E0      		ldi r20,lo8(0)
 299 0260 0E94 0000 		call enqueue_home
 300               	.L18:
 301               	.LBE64:
 302               	.LBE63:
 303               	.LSM29:
 304 0264 0E94 0000 		call queue_wait
 305               	.LSM30:
 306 0268 8091 0000 		lds r24,next_target
 307 026c 982F      		mov r25,r24
 308 026e 9695      		lsr r25
 309 0270 9695      		lsr r25
 310 0272 9170      		andi r25,lo8(1)
 311               	.LSM31:
 312 0274 83FF      		sbrs r24,3
 313 0276 00C0      		rjmp .L30
 314 0278 91E0      		ldi r25,lo8(1)
 315               	.LVL2:
 316 027a 00C0      		rjmp .L31
 317               	.LVL3:
 318               	.L30:
 319 027c 892F      		mov r24,r25
 320 027e 9111      		cpse r25,__zero_reg__
 321 0280 81E0      		ldi r24,lo8(1)
 322               	.L32:
 323 0282 982F      		mov r25,r24
 324               	.LVL4:
 325               	.L31:
 326               	.LSM32:
 327 0284 8091 0000 		lds r24,next_target
 328 0288 84FD      		sbrc r24,4
 329 028a 00C0      		rjmp .L76
 330               	.L33:
 331               	.LSM33:
 332 028c 9923      		tst r25
 333 028e 01F0      		breq .+2
 334 0290 00C0      		rjmp .L68
 335               	.LSM34:
 336 0292 0E94 0000 		call home
 337               	.LVL5:
 338 0296 00C0      		rjmp .L68
 339               	.L82:
 340               	.LSM35:
 341 0298 8091 0000 		lds r24,next_target+1
 342 029c 8F7B      		andi r24,lo8(-65)
 343 029e 00C0      		rjmp .L77
 344               	.L21:
 345               	.LSM36:
 346 02a0 8091 0000 		lds r24,next_target+1
 347 02a4 8064      		ori r24,lo8(64)
 348               	.L77:
 349 02a6 8093 0000 		sts next_target+1,r24
 350 02aa 00C0      		rjmp .L68
 351               	.L83:
 352               	.LSM37:
 353 02ac 0E94 0000 		call queue_wait
 354               	.LSM38:
 355 02b0 8091 0000 		lds r24,next_target
 356 02b4 82FD      		sbrc r24,2
 357 02b6 00C0      		rjmp .L34
 358 02b8 90E0      		ldi r25,lo8(0)
 359               	.LVL6:
 360 02ba 00C0      		rjmp .L35
 361               	.LVL7:
 362               	.L34:
 363               	.LSM39:
 364 02bc 8091 0000 		lds r24,next_target+5
 365 02c0 9091 0000 		lds r25,(next_target+5)+1
 366 02c4 A091 0000 		lds r26,(next_target+5)+2
 367 02c8 B091 0000 		lds r27,(next_target+5)+3
 368 02cc 8093 0000 		sts startpoint,r24
 369 02d0 9093 0000 		sts (startpoint)+1,r25
 370 02d4 A093 0000 		sts (startpoint)+2,r26
 371 02d8 B093 0000 		sts (startpoint)+3,r27
 372 02dc 91E0      		ldi r25,lo8(1)
 373               	.LVL8:
 374               	.L35:
 375               	.LSM40:
 376 02de 8091 0000 		lds r24,next_target
 377 02e2 83FF      		sbrs r24,3
 378 02e4 00C0      		rjmp .L36
 379               	.LSM41:
 380 02e6 8091 0000 		lds r24,next_target+9
 381 02ea 9091 0000 		lds r25,(next_target+9)+1
 382 02ee A091 0000 		lds r26,(next_target+9)+2
 383 02f2 B091 0000 		lds r27,(next_target+9)+3
 384 02f6 8093 0000 		sts startpoint+4,r24
 385 02fa 9093 0000 		sts (startpoint+4)+1,r25
 386 02fe A093 0000 		sts (startpoint+4)+2,r26
 387 0302 B093 0000 		sts (startpoint+4)+3,r27
 388 0306 91E0      		ldi r25,lo8(1)
 389               	.L36:
 390               	.LSM42:
 391 0308 8091 0000 		lds r24,next_target
 392 030c 84FF      		sbrs r24,4
 393 030e 00C0      		rjmp .L37
 394               	.LSM43:
 395 0310 8091 0000 		lds r24,next_target+13
 396 0314 9091 0000 		lds r25,(next_target+13)+1
 397 0318 A091 0000 		lds r26,(next_target+13)+2
 398 031c B091 0000 		lds r27,(next_target+13)+3
 399 0320 8093 0000 		sts startpoint+8,r24
 400 0324 9093 0000 		sts (startpoint+8)+1,r25
 401 0328 A093 0000 		sts (startpoint+8)+2,r26
 402 032c B093 0000 		sts (startpoint+8)+3,r27
 403 0330 91E0      		ldi r25,lo8(1)
 404               	.L37:
 405               	.LSM44:
 406 0332 8091 0000 		lds r24,next_target
 407 0336 85FF      		sbrs r24,5
 408 0338 00C0      		rjmp .L38
 409               	.LSM45:
 410 033a 8091 0000 		lds r24,next_target+17
 411 033e 9091 0000 		lds r25,(next_target+17)+1
 412 0342 A091 0000 		lds r26,(next_target+17)+2
 413 0346 B091 0000 		lds r27,(next_target+17)+3
 414 034a 8093 0000 		sts startpoint+12,r24
 415 034e 9093 0000 		sts (startpoint+12)+1,r25
 416 0352 A093 0000 		sts (startpoint+12)+2,r26
 417 0356 B093 0000 		sts (startpoint+12)+3,r27
 418 035a 00C0      		rjmp .L39
 419               	.L38:
 420               	.LSM46:
 421 035c 9923      		tst r25
 422 035e 01F0      		breq .+2
 423 0360 00C0      		rjmp .L39
 424               	.LSM47:
 425 0362 1092 0000 		sts next_target+17,__zero_reg__
 426 0366 1092 0000 		sts (next_target+17)+1,__zero_reg__
 427 036a 1092 0000 		sts (next_target+17)+2,__zero_reg__
 428 036e 1092 0000 		sts (next_target+17)+3,__zero_reg__
 429 0372 1092 0000 		sts startpoint+12,__zero_reg__
 430 0376 1092 0000 		sts (startpoint+12)+1,__zero_reg__
 431 037a 1092 0000 		sts (startpoint+12)+2,__zero_reg__
 432 037e 1092 0000 		sts (startpoint+12)+3,__zero_reg__
 433 0382 1092 0000 		sts next_target+13,__zero_reg__
 434 0386 1092 0000 		sts (next_target+13)+1,__zero_reg__
 435 038a 1092 0000 		sts (next_target+13)+2,__zero_reg__
 436 038e 1092 0000 		sts (next_target+13)+3,__zero_reg__
 437 0392 1092 0000 		sts startpoint+8,__zero_reg__
 438 0396 1092 0000 		sts (startpoint+8)+1,__zero_reg__
 439 039a 1092 0000 		sts (startpoint+8)+2,__zero_reg__
 440 039e 1092 0000 		sts (startpoint+8)+3,__zero_reg__
 441 03a2 1092 0000 		sts next_target+9,__zero_reg__
 442 03a6 1092 0000 		sts (next_target+9)+1,__zero_reg__
 443 03aa 1092 0000 		sts (next_target+9)+2,__zero_reg__
 444 03ae 1092 0000 		sts (next_target+9)+3,__zero_reg__
 445 03b2 1092 0000 		sts startpoint+4,__zero_reg__
 446 03b6 1092 0000 		sts (startpoint+4)+1,__zero_reg__
 447 03ba 1092 0000 		sts (startpoint+4)+2,__zero_reg__
 448 03be 1092 0000 		sts (startpoint+4)+3,__zero_reg__
 449 03c2 1092 0000 		sts next_target+5,__zero_reg__
 450 03c6 1092 0000 		sts (next_target+5)+1,__zero_reg__
 451 03ca 1092 0000 		sts (next_target+5)+2,__zero_reg__
 452 03ce 1092 0000 		sts (next_target+5)+3,__zero_reg__
 453 03d2 1092 0000 		sts startpoint,__zero_reg__
 454 03d6 1092 0000 		sts (startpoint)+1,__zero_reg__
 455 03da 1092 0000 		sts (startpoint)+2,__zero_reg__
 456 03de 1092 0000 		sts (startpoint)+3,__zero_reg__
 457               	.L39:
 458               	.LSM48:
 459 03e2 0E94 0000 		call dda_new_startpoint
 460               	.LVL9:
 461 03e6 00C0      		rjmp .L68
 462               	.L23:
 463               	.LSM49:
 464 03e8 84FF      		sbrs r24,4
 465 03ea 00C0      		rjmp .L68
 466               	.LVL10:
 467               	.L76:
 468               	.LSM50:
 469 03ec 0E94 0000 		call home_z_negative
 470               	.LVL11:
 471 03f0 00C0      		rjmp .L68
 472               	.L12:
 473               	.LSM51:
 474 03f2 00D0      		rcall .
 475 03f4 0F92      		push __tmp_reg__
 476 03f6 EDB7      		in r30,__SP_L__
 477 03f8 FEB7      		in r31,__SP_H__
 478 03fa 3196      		adiw r30,1
 479 03fc 80E0      		ldi r24,lo8(__c.1749)
 480 03fe 90E0      		ldi r25,hi8(__c.1749)
 481 0400 00C0      		rjmp .L78
 482               	.L11:
 483               	.LBE58:
 484               	.LSM52:
 485 0402 81FF      		sbrs r24,1
 486 0404 00C0      		rjmp .L68
 487               	.LBB65:
 488               	.LSM53:
 489 0406 2091 0000 		lds r18,next_target+4
 490 040a 2936      		cpi r18,lo8(105)
 491 040c 01F4      		brne .+2
 492 040e 00C0      		rjmp .L48
 493 0410 2A36      		cpi r18,lo8(106)
 494 0412 00F4      		brsh .L57
 495 0414 2730      		cpi r18,lo8(7)
 496 0416 01F4      		brne .+2
 497 0418 00C0      		rjmp .L44
 498 041a 2830      		cpi r18,lo8(8)
 499 041c 00F4      		brsh .L58
 500 041e 2330      		cpi r18,lo8(3)
 501 0420 01F4      		brne .+2
 502 0422 00C0      		rjmp .L42
 503 0424 2430      		cpi r18,lo8(4)
 504 0426 00F4      		brsh .L59
 505 0428 2223      		tst r18
 506 042a 01F4      		brne .+2
 507 042c 00C0      		rjmp .L41
 508 042e 2230      		cpi r18,lo8(2)
 509 0430 01F0      		breq .+2
 510 0432 00C0      		rjmp .L40
 511 0434 00C0      		rjmp .L41
 512               	.L59:
 513 0436 2530      		cpi r18,lo8(5)
 514 0438 01F4      		brne .+2
 515 043a 00C0      		rjmp .L68
 516 043c 2630      		cpi r18,lo8(6)
 517 043e 01F0      		breq .+2
 518 0440 00C0      		rjmp .L40
 519 0442 00C0      		rjmp .L84
 520               	.L58:
 521 0444 2435      		cpi r18,lo8(84)
 522 0446 01F4      		brne .+2
 523 0448 00C0      		rjmp .L41
 524 044a 2535      		cpi r18,lo8(85)
 525 044c 00F4      		brsh .L60
 526 044e 2235      		cpi r18,lo8(82)
 527 0450 01F4      		brne .+2
 528 0452 00C0      		rjmp .L45
 529 0454 2335      		cpi r18,lo8(83)
 530 0456 01F0      		breq .+2
 531 0458 00C0      		rjmp .L40
 532 045a 00C0      		rjmp .L85
 533               	.L60:
 534 045c 2736      		cpi r18,lo8(103)
 535 045e 01F4      		brne .+2
 536 0460 00C0      		rjmp .L68
 537 0462 2836      		cpi r18,lo8(104)
 538 0464 00F0      		brlo .+2
 539 0466 00C0      		rjmp .L47
 540 0468 2536      		cpi r18,lo8(101)
 541 046a 01F0      		breq .+2
 542 046c 00C0      		rjmp .L40
 543 046e 00C0      		rjmp .L42
 544               	.L57:
 545 0470 2337      		cpi r18,lo8(115)
 546 0472 01F4      		brne .+2
 547 0474 00C0      		rjmp .L52
 548 0476 2437      		cpi r18,lo8(116)
 549 0478 00F4      		brsh .L61
 550 047a 2F36      		cpi r18,lo8(111)
 551 047c 01F4      		brne .+2
 552 047e 00C0      		rjmp .L49
 553 0480 2037      		cpi r18,lo8(112)
 554 0482 00F4      		brsh .L62
 555 0484 2A36      		cpi r18,lo8(106)
 556 0486 01F4      		brne .+2
 557 0488 00C0      		rjmp .L44
 558 048a 2E36      		cpi r18,lo8(110)
 559 048c 01F0      		breq .+2
 560 048e 00C0      		rjmp .L40
 561 0490 00C0      		rjmp .L68
 562               	.L62:
 563 0492 2037      		cpi r18,lo8(112)
 564 0494 01F0      		breq .L50
 565 0496 2237      		cpi r18,lo8(114)
 566 0498 01F0      		breq .+2
 567 049a 00C0      		rjmp .L40
 568 049c 00C0      		rjmp .L86
 569               	.L61:
 570 049e 2838      		cpi r18,lo8(-120)
 571 04a0 01F4      		brne .+2
 572 04a2 00C0      		rjmp .L68
 573 04a4 2938      		cpi r18,lo8(-119)
 574 04a6 00F4      		brsh .L63
 575 04a8 2437      		cpi r18,lo8(116)
 576 04aa 01F0      		breq .L79
 577 04ac 2737      		cpi r18,lo8(119)
 578 04ae 01F0      		breq .+2
 579 04b0 00C0      		rjmp .L40
 580 04b2 00C0      		rjmp .L87
 581               	.L63:
 582 04b4 203F      		cpi r18,lo8(-16)
 583 04b6 01F4      		brne .+2
 584 04b8 00C0      		rjmp .L55
 585 04ba 213F      		cpi r18,lo8(-15)
 586 04bc 01F4      		brne .+2
 587 04be 00C0      		rjmp .L56
 588 04c0 2C38      		cpi r18,lo8(-116)
 589 04c2 01F0      		breq .+2
 590 04c4 00C0      		rjmp .L40
 591 04c6 00C0      		rjmp .L68
 592               	.L41:
 593               	.LSM54:
 594 04c8 0E94 0000 		call queue_wait
 595               	.LSM55:
 596 04cc 0E94 0000 		call power_off
 597               	.LSM56:
 598 04d0 80E0      		ldi r24,lo8(__c.1756)
 599 04d2 90E0      		ldi r25,hi8(__c.1756)
 600 04d4 00C0      		rjmp .L73
 601               	.L50:
 602               	.LSM57:
 603 04d6 0E94 0000 		call timer_stop
 604               	.LSM58:
 605 04da 0E94 0000 		call queue_flush
 606               	.LSM59:
 607 04de 0E94 0000 		call power_off
 608               	.LSM60:
 609               	/* #APP */
 610               	 ;  381 "gcode_process.c" 1
 611 04e2 F894      		cli
 612               	 ;  0 "" 2
 613               	/* #NOAPP */
 614               	.L64:
 615 04e4 00C0      		rjmp .L64
 616               	.L84:
 617               	.LSM61:
 618 04e6 8091 0000 		lds r24,next_tool
 619 04ea 8093 0000 		sts tool,r24
 620 04ee 00C0      		rjmp .L68
 621               	.L45:
 622               	.LSM62:
 623 04f0 8091 0000 		lds r24,next_target+1
 624 04f4 8F77      		andi r24,lo8(127)
 625 04f6 00C0      		rjmp .L77
 626               	.L85:
 627               	.LSM63:
 628 04f8 8091 0000 		lds r24,next_target+1
 629 04fc 8068      		ori r24,lo8(-128)
 630 04fe 00C0      		rjmp .L77
 631               	.L42:
 632               	.LSM64:
 633 0500 0E94 0000 		call temp_achieved
 634 0504 8823      		tst r24
 635 0506 01F0      		breq .+2
 636 0508 00C0      		rjmp .L68
 637               	.L79:
 638               	.LBB66:
 639               	.LBB67:
 640               	.LSM65:
 641 050a 80E0      		ldi r24,lo8(0)
 642 050c 90E0      		ldi r25,hi8(0)
 643               	.L74:
 644 050e 60E0      		ldi r22,lo8(0)
 645 0510 40E0      		ldi r20,lo8(0)
 646 0512 0E94 0000 		call enqueue_home
 647 0516 00C0      		rjmp .L68
 648               	.L47:
 649               	.LBE67:
 650               	.LBE66:
 651               	.LSM66:
 652 0518 8091 0000 		lds r24,next_target
 653 051c 87FF      		sbrs r24,7
 654 051e 00C0      		rjmp .L68
 655               	.LSM67:
 656 0520 6091 0000 		lds r22,next_target+26
 657 0524 7091 0000 		lds r23,(next_target+26)+1
 658 0528 8091 0000 		lds r24,next_target+30
 659 052c 0E94 0000 		call temp_set
 660 0530 00C0      		rjmp .L68
 661               	.L48:
 662               	.LSM68:
 663 0532 8091 0000 		lds r24,next_target+1
 664 0536 80FD      		sbrc r24,0
 665 0538 00C0      		rjmp .L65
 666               	.LSM69:
 667 053a 81E0      		ldi r24,lo8(1)
 668 053c 90E0      		ldi r25,hi8(1)
 669 053e 9093 0000 		sts (next_target+30)+1,r25
 670 0542 8093 0000 		sts next_target+30,r24
 671               	.L65:
 672               	.LSM70:
 673 0546 8091 0000 		lds r24,next_target+30
 674 054a 0E94 0000 		call temp_print
 675 054e 00C0      		rjmp .L68
 676               	.L44:
 677               	.LSM71:
 678 0550 8091 0000 		lds r24,next_target
 679 0554 87FF      		sbrs r24,7
 680 0556 00C0      		rjmp .L68
 681               	.LSM72:
 682 0558 8091 0000 		lds r24,next_target+30
 683 055c 6091 0000 		lds r22,next_target+26
 684 0560 0E94 0000 		call heater_set
 685 0564 00C0      		rjmp .L68
 686               	.L49:
 687               	.LSM73:
 688 0566 87FF      		sbrs r24,7
 689 0568 00C0      		rjmp .L68
 690               	.LSM74:
 691 056a 8091 0000 		lds r24,next_target+26
 692               	.LVL12:
 693 056e 8093 0000 		sts debug_flags,r24
 694 0572 00C0      		rjmp .L68
 695               	.LVL13:
 696               	.L86:
 697               	.LSM75:
 698 0574 0E94 0000 		call update_current_position
 699               	.LSM76:
 700 0578 CDB7      		in r28,__SP_L__
 701 057a DEB7      		in r29,__SP_H__
 702 057c 6697      		sbiw r28,22
 703 057e 0FB6      		in __tmp_reg__,__SREG__
 704 0580 F894      		cli
 705 0582 DEBF      		out __SP_H__,r29
 706 0584 0FBE      		out __SREG__,__tmp_reg__
 707 0586 CDBF      		out __SP_L__,r28
 708 0588 EDB7      		in r30,__SP_L__
 709 058a FEB7      		in r31,__SP_H__
 710 058c 3196      		adiw r30,1
 711 058e 80E0      		ldi r24,lo8(__c.1775)
 712 0590 90E0      		ldi r25,hi8(__c.1775)
 713 0592 ADB7      		in r26,__SP_L__
 714 0594 BEB7      		in r27,__SP_H__
 715 0596 1296      		adiw r26,1+1
 716 0598 9C93      		st X,r25
 717 059a 8E93      		st -X,r24
 718 059c 1197      		sbiw r26,1
 719 059e 8091 0000 		lds r24,current_position
 720 05a2 9091 0000 		lds r25,(current_position)+1
 721 05a6 A091 0000 		lds r26,(current_position)+2
 722 05aa B091 0000 		lds r27,(current_position)+3
 723 05ae 8283      		std Z+2,r24
 724 05b0 9383      		std Z+3,r25
 725 05b2 A483      		std Z+4,r26
 726 05b4 B583      		std Z+5,r27
 727 05b6 8091 0000 		lds r24,current_position+4
 728 05ba 9091 0000 		lds r25,(current_position+4)+1
 729 05be A091 0000 		lds r26,(current_position+4)+2
 730 05c2 B091 0000 		lds r27,(current_position+4)+3
 731 05c6 8683      		std Z+6,r24
 732 05c8 9783      		std Z+7,r25
 733 05ca A087      		std Z+8,r26
 734 05cc B187      		std Z+9,r27
 735 05ce 8091 0000 		lds r24,current_position+8
 736 05d2 9091 0000 		lds r25,(current_position+8)+1
 737 05d6 A091 0000 		lds r26,(current_position+8)+2
 738 05da B091 0000 		lds r27,(current_position+8)+3
 739 05de 8287      		std Z+10,r24
 740 05e0 9387      		std Z+11,r25
 741 05e2 A487      		std Z+12,r26
 742 05e4 B587      		std Z+13,r27
 743 05e6 8091 0000 		lds r24,current_position+12
 744 05ea 9091 0000 		lds r25,(current_position+12)+1
 745 05ee A091 0000 		lds r26,(current_position+12)+2
 746 05f2 B091 0000 		lds r27,(current_position+12)+3
 747 05f6 8687      		std Z+14,r24
 748 05f8 9787      		std Z+15,r25
 749 05fa A08B      		std Z+16,r26
 750 05fc B18B      		std Z+17,r27
 751 05fe 8091 0000 		lds r24,current_position+16
 752 0602 9091 0000 		lds r25,(current_position+16)+1
 753 0606 A091 0000 		lds r26,(current_position+16)+2
 754 060a B091 0000 		lds r27,(current_position+16)+3
 755 060e 828B      		std Z+18,r24
 756 0610 938B      		std Z+19,r25
 757 0612 A48B      		std Z+20,r26
 758 0614 B58B      		std Z+21,r27
 759 0616 0E94 0000 		call sersendf_P
 760               	.LSM77:
 761 061a 8091 0000 		lds r24,debug_flags
 762 061e CDB7      		in r28,__SP_L__
 763 0620 DEB7      		in r29,__SP_H__
 764 0622 6696      		adiw r28,22
 765 0624 0FB6      		in __tmp_reg__,__SREG__
 766 0626 F894      		cli
 767 0628 DEBF      		out __SP_H__,r29
 768 062a 0FBE      		out __SREG__,__tmp_reg__
 769 062c CDBF      		out __SP_L__,r28
 770 062e 86FF      		sbrs r24,6
 771 0630 00C0      		rjmp .L68
 772               	.LSM78:
 773 0632 8091 0000 		lds r24,mb_tail
 774 0636 90E0      		ldi r25,lo8(0)
 775 0638 2BE6      		ldi r18,lo8(107)
 776 063a 30E0      		ldi r19,hi8(107)
 777 063c F901      		movw r30,r18
 778 063e 8E9F      		mul r24,r30
 779 0640 9001      		movw r18,r0
 780 0642 8F9F      		mul r24,r31
 781 0644 300D      		add r19,r0
 782 0646 9E9F      		mul r25,r30
 783 0648 300D      		add r19,r0
 784 064a 1124      		clr r1
 785 064c 2050      		subi r18,lo8(-(movebuffer))
 786 064e 3040      		sbci r19,hi8(-(movebuffer))
 787 0650 D901      		movw r26,r18
 788 0652 D396      		adiw r26,51
 789 0654 4D91      		ld r20,X+
 790 0656 5D91      		ld r21,X+
 791 0658 6D91      		ld r22,X+
 792 065a 7C91      		ld r23,X
 793 065c D697      		sbiw r26,51+3
 794 065e 6E97      		sbiw r28,30
 795 0660 0FB6      		in __tmp_reg__,__SREG__
 796 0662 F894      		cli
 797 0664 DEBF      		out __SP_H__,r29
 798 0666 0FBE      		out __SREG__,__tmp_reg__
 799 0668 CDBF      		out __SP_L__,r28
 800 066a EDB7      		in r30,__SP_L__
 801 066c FEB7      		in r31,__SP_H__
 802 066e 3196      		adiw r30,1
 803 0670 80E0      		ldi r24,lo8(__c.1777)
 804 0672 90E0      		ldi r25,hi8(__c.1777)
 805 0674 ADB7      		in r26,__SP_L__
 806 0676 BEB7      		in r27,__SP_H__
 807 0678 1296      		adiw r26,1+1
 808 067a 9C93      		st X,r25
 809 067c 8E93      		st -X,r24
 810 067e 1197      		sbiw r26,1
 811 0680 4283      		std Z+2,r20
 812 0682 5383      		std Z+3,r21
 813 0684 6483      		std Z+4,r22
 814 0686 7583      		std Z+5,r23
 815 0688 E901      		movw r28,r18
 816 068a 8881      		ld r24,Y
 817 068c 9981      		ldd r25,Y+1
 818 068e AA81      		ldd r26,Y+2
 819 0690 BB81      		ldd r27,Y+3
 820 0692 8683      		std Z+6,r24
 821 0694 9783      		std Z+7,r25
 822 0696 A087      		std Z+8,r26
 823 0698 B187      		std Z+9,r27
 824 069a 8C81      		ldd r24,Y+4
 825 069c 9D81      		ldd r25,Y+5
 826 069e AE81      		ldd r26,Y+6
 827 06a0 BF81      		ldd r27,Y+7
 828 06a2 8287      		std Z+10,r24
 829 06a4 9387      		std Z+11,r25
 830 06a6 A487      		std Z+12,r26
 831 06a8 B587      		std Z+13,r27
 832 06aa 8885      		ldd r24,Y+8
 833 06ac 9985      		ldd r25,Y+9
 834 06ae AA85      		ldd r26,Y+10
 835 06b0 BB85      		ldd r27,Y+11
 836 06b2 8687      		std Z+14,r24
 837 06b4 9787      		std Z+15,r25
 838 06b6 A08B      		std Z+16,r26
 839 06b8 B18B      		std Z+17,r27
 840 06ba 8C85      		ldd r24,Y+12
 841 06bc 9D85      		ldd r25,Y+13
 842 06be AE85      		ldd r26,Y+14
 843 06c0 BF85      		ldd r27,Y+15
 844 06c2 828B      		std Z+18,r24
 845 06c4 938B      		std Z+19,r25
 846 06c6 A48B      		std Z+20,r26
 847 06c8 B58B      		std Z+21,r27
 848 06ca 8889      		ldd r24,Y+16
 849 06cc 9989      		ldd r25,Y+17
 850 06ce AA89      		ldd r26,Y+18
 851 06d0 BB89      		ldd r27,Y+19
 852 06d2 868B      		std Z+22,r24
 853 06d4 978B      		std Z+23,r25
 854 06d6 A08F      		std Z+24,r26
 855 06d8 B18F      		std Z+25,r27
 856 06da 428F      		std Z+26,r20
 857 06dc 538F      		std Z+27,r21
 858 06de 648F      		std Z+28,r22
 859 06e0 758F      		std Z+29,r23
 860 06e2 0E94 0000 		call sersendf_P
 861               	.LSM79:
 862 06e6 EDB7      		in r30,__SP_L__
 863 06e8 FEB7      		in r31,__SP_H__
 864 06ea 7E96      		adiw r30,30
 865 06ec 0FB6      		in __tmp_reg__,__SREG__
 866 06ee F894      		cli
 867 06f0 FEBF      		out __SP_H__,r31
 868 06f2 0FBE      		out __SREG__,__tmp_reg__
 869 06f4 EDBF      		out __SP_L__,r30
 870 06f6 0E94 0000 		call print_queue
 871 06fa 00C0      		rjmp .L68
 872               	.L52:
 873               	.LSM80:
 874 06fc 2DB7      		in r18,__SP_L__
 875 06fe 3EB7      		in r19,__SP_H__
 876 0700 2850      		subi r18,lo8(-(-8))
 877 0702 3040      		sbci r19,hi8(-(-8))
 878 0704 0FB6      		in __tmp_reg__,__SREG__
 879 0706 F894      		cli
 880 0708 3EBF      		out __SP_H__,r19
 881 070a 0FBE      		out __SREG__,__tmp_reg__
 882 070c 2DBF      		out __SP_L__,r18
 883 070e EDB7      		in r30,__SP_L__
 884 0710 FEB7      		in r31,__SP_H__
 885 0712 3196      		adiw r30,1
 886 0714 80E0      		ldi r24,lo8(__c.1780)
 887 0716 90E0      		ldi r25,hi8(__c.1780)
 888 0718 ADB7      		in r26,__SP_L__
 889 071a BEB7      		in r27,__SP_H__
 890 071c 1296      		adiw r26,1+1
 891 071e 9C93      		st X,r25
 892 0720 8E93      		st -X,r24
 893 0722 1197      		sbiw r26,1
 894 0724 81E0      		ldi r24,lo8(1)
 895 0726 90E0      		ldi r25,hi8(1)
 896 0728 9383      		std Z+3,r25
 897 072a 8283      		std Z+2,r24
 898 072c 1582      		std Z+5,__zero_reg__
 899 072e 1482      		std Z+4,__zero_reg__
 900 0730 1782      		std Z+7,__zero_reg__
 901 0732 1682      		std Z+6,__zero_reg__
 902 0734 0E94 0000 		call sersendf_P
 903 0738 CDB7      		in r28,__SP_L__
 904 073a DEB7      		in r29,__SP_H__
 905 073c 2896      		adiw r28,8
 906 073e 0FB6      		in __tmp_reg__,__SREG__
 907 0740 F894      		cli
 908 0742 DEBF      		out __SP_H__,r29
 909 0744 0FBE      		out __SREG__,__tmp_reg__
 910 0746 CDBF      		out __SP_L__,r28
 911 0748 00C0      		rjmp .L68
 912               	.L87:
 913               	.LSM81:
 914 074a 0E94 0000 		call power_on
 915               	.LBB68:
 916               	.LBB69:
 917               	.LSM82:
 918 074e 759A      		sbi 46-32,5
 919               	.LBE69:
 920               	.LBE68:
 921               	.LSM83:
 922 0750 6AE0      		ldi r22,lo8(10)
 923 0752 70E0      		ldi r23,hi8(10)
 924 0754 80E0      		ldi r24,hlo8(10)
 925 0756 90E0      		ldi r25,hhi8(10)
 926 0758 0E94 0000 		call delay_ms
 927               	.LBB70:
 928               	.LSM84:
 929 075c 0F92      		push __tmp_reg__
 930 075e 0F92      		push __tmp_reg__
 931 0760 80E0      		ldi r24,lo8(__c.1790)
 932 0762 90E0      		ldi r25,hi8(__c.1790)
 933 0764 EDB7      		in r30,__SP_L__
 934 0766 FEB7      		in r31,__SP_H__
 935 0768 9283      		std Z+2,r25
 936 076a 8183      		std Z+1,r24
 937 076c 0E94 0000 		call sersendf_P
 938               	.LSM85:
 939 0770 0F90      		pop __tmp_reg__
 940 0772 0F90      		pop __tmp_reg__
 941 0774 6599      		sbic 44-32,5
 942 0776 00C0      		rjmp .L66
 943 0778 0F92      		push __tmp_reg__
 944 077a 0F92      		push __tmp_reg__
 945               	.LSM86:
 946 077c 80E0      		ldi r24,lo8(__c.1788)
 947 077e 90E0      		ldi r25,hi8(__c.1788)
 948 0780 ADB7      		in r26,__SP_L__
 949 0782 BEB7      		in r27,__SP_H__
 950 0784 1296      		adiw r26,1+1
 951 0786 9C93      		st X,r25
 952 0788 8E93      		st -X,r24
 953 078a 1197      		sbiw r26,1
 954 078c 00C0      		rjmp .L72
 955               	.L66:
 956               	.LSM87:
 957 078e 0F92      		push __tmp_reg__
 958 0790 0F92      		push __tmp_reg__
 959               	.LSM88:
 960 0792 80E0      		ldi r24,lo8(__c.1785)
 961 0794 90E0      		ldi r25,hi8(__c.1785)
 962 0796 CDB7      		in r28,__SP_L__
 963 0798 DEB7      		in r29,__SP_H__
 964 079a 9A83      		std Y+2,r25
 965 079c 8983      		std Y+1,r24
 966               	.L72:
 967 079e 0E94 0000 		call sersendf_P
 968 07a2 0F90      		pop __tmp_reg__
 969 07a4 0F90      		pop __tmp_reg__
 970               	.LBE70:
 971               	.LBB71:
 972               	.LBB72:
 973               	.LSM89:
 974 07a6 7598      		cbi 46-32,5
 975 07a8 00C0      		rjmp .L68
 976               	.L55:
 977               	.LBE72:
 978               	.LBE71:
 979               	.LSM90:
 980 07aa 8091 0000 		lds r24,debug_flags
 981 07ae 8E7F      		andi r24,lo8(-2)
 982 07b0 8093 0000 		sts debug_flags,r24
 983               	.LSM91:
 984 07b4 80E0      		ldi r24,lo8(__c.1795)
 985 07b6 90E0      		ldi r25,hi8(__c.1795)
 986 07b8 00C0      		rjmp .L73
 987               	.L56:
 988               	.LSM92:
 989 07ba 8091 0000 		lds r24,debug_flags
 990 07be 8160      		ori r24,lo8(1)
 991 07c0 8093 0000 		sts debug_flags,r24
 992               	.LSM93:
 993 07c4 80E0      		ldi r24,lo8(__c.1798)
 994 07c6 90E0      		ldi r25,hi8(__c.1798)
 995               	.L73:
 996 07c8 0E94 0000 		call serial_writestr_P
 997 07cc 00C0      		rjmp .L68
 998               	.L40:
 999               	.LSM94:
 1000 07ce 00D0      		rcall .
 1001 07d0 0F92      		push __tmp_reg__
 1002 07d2 EDB7      		in r30,__SP_L__
 1003 07d4 FEB7      		in r31,__SP_H__
 1004 07d6 3196      		adiw r30,1
 1005 07d8 80E0      		ldi r24,lo8(__c.1801)
 1006 07da 90E0      		ldi r25,hi8(__c.1801)
 1007               	.L78:
 1008 07dc ADB7      		in r26,__SP_L__
 1009 07de BEB7      		in r27,__SP_H__
 1010 07e0 1296      		adiw r26,1+1
 1011 07e2 9C93      		st X,r25
 1012 07e4 8E93      		st -X,r24
 1013 07e6 1197      		sbiw r26,1
 1014 07e8 2283      		std Z+2,r18
 1015 07ea 1382      		std Z+3,__zero_reg__
 1016 07ec 0E94 0000 		call sersendf_P
 1017 07f0 0F90      		pop __tmp_reg__
 1018 07f2 0F90      		pop __tmp_reg__
 1019 07f4 0F90      		pop __tmp_reg__
 1020 07f6 0F90      		pop __tmp_reg__
 1021               	.LVL14:
 1022               	.L68:
 1023               	/* epilogue start */
 1024               	.LBE65:
 1025               	.LSM95:
 1026 07f8 CDB7      		in r28,__SP_L__
 1027 07fa DEB7      		in r29,__SP_H__
 1028 07fc E6E0      		ldi r30, lo8(6)
 1029 07fe 0C94 0000 		jmp __epilogue_restores__ + ((18 - 6) * 2)
 1030               	.LFE6:
 1032               		.section	.progmem.data,"a",@progbits
 1035               	__c.1801:
 1036 0000 453A 2042 		.string	"E: Bad M-code %d"
 1036      6164 204D 
 1036      2D63 6F64 
 1036      6520 2564 
 1036      00
 1039               	__c.1798:
 1040 0011 4563 686F 		.string	"Echo on"
 1040      206F 6E00 
 1043               	__c.1795:
 1044 0019 4563 686F 		.string	"Echo off"
 1044      206F 6666 
 1044      00
 1047               	__c.1790:
 1048 0022 7A5F 6D69 		.string	"z_min:"
 1048      6E3A 00
 1051               	__c.1788:
 1052 0029 7472 6967 		.string	"triggered "
 1052      6765 7265 
 1052      6420 00
 1055               	__c.1785:
 1056 0034 6F70 656E 		.string	"open "
 1056      2000 
 1059               	__c.1780:
 1060 003a 4649 524D 		.ascii	"FIRMWARE_NAME:Teacup FIRMWARE_URL:http://github.com/traumflu"
 1060      5741 5245 
 1060      5F4E 414D 
 1060      453A 5465 
 1060      6163 7570 
 1061 0076 672F 5465 		.ascii	"g/Teacup_Firmware/ PROTOCOL_VERSION:1.0 MACHINE_TY"
 1061      6163 7570 
 1061      5F46 6972 
 1061      6D77 6172 
 1061      652F 2050 
 1062 00a8 5045 3A4D 		.string	"PE:Mendel EXTRUDER_COUNT:%d TEMP_SENSOR_COUNT:%d HEATER_COUNT:%d"
 1062      656E 6465 
 1062      6C20 4558 
 1062      5452 5544 
 1062      4552 5F43 
 1065               	__c.1777:
 1066 00e9 2C63 3A25 		.string	",c:%lu}\nEndpoint: X:%ld,Y:%ld,Z:%ld,E:%ld,F:%lu,c:%lu}"
 1066      6C75 7D0A 
 1066      456E 6470 
 1066      6F69 6E74 
 1066      3A20 583A 
 1069               	__c.1775:
 1070 0120 583A 256C 		.string	"X:%lq,Y:%lq,Z:%lq,E:%lq,F:%lu"
 1070      712C 593A 
 1070      256C 712C 
 1070      5A3A 256C 
 1070      712C 453A 
 1073               	__c.1756:
 1074 013e 0A73 746F 		.string	"\nstop\n"
 1074      700A 00
 1077               	__c.1749:
 1078 0145 453A 2042 		.string	"E: Bad G-code %d"
 1078      6164 2047 
 1078      2D63 6F64 
 1078      6520 2564 
 1078      00
 1079               		.comm tool,1,1
 1080               		.comm next_tool,1,1
 1105               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 gcode_process.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:21     .text.process_gcode_command:00000000 process_gcode_command
                            *COM*:00000001 next_tool
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1077   .progmem.data:00000145 __c.1749
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1073   .progmem.data:0000013e __c.1756
                            *COM*:00000001 tool
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1069   .progmem.data:00000120 __c.1775
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1065   .progmem.data:000000e9 __c.1777
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1059   .progmem.data:0000003a __c.1780
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1047   .progmem.data:00000022 __c.1790
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1051   .progmem.data:00000029 __c.1788
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1055   .progmem.data:00000034 __c.1785
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1043   .progmem.data:00000019 __c.1795
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1039   .progmem.data:00000011 __c.1798
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccFcNLPH.s:1035   .progmem.data:00000000 __c.1801

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
next_target
startpoint
__floatsisf
__ltsf2
__gtsf2
enqueue_home
queue_wait
clock
delay_ms
home
dda_new_startpoint
home_z_negative
power_off
timer_stop
queue_flush
temp_achieved
temp_set
temp_print
heater_set
debug_flags
update_current_position
current_position
sersendf_P
mb_tail
movebuffer
print_queue
power_on
serial_writestr_P
__epilogue_restores__
