   1               		.file	"joints.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.update_joint_positions,"ax",@progbits
  19               	.global	update_joint_positions
  21               	update_joint_positions:
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
  33 000c 1091 0000 		lds r17,mb_tail
  34               	.LSM2:
  35 0010 0E94 0000 		call queue_empty
  36 0014 8823      		tst r24
  37 0016 01F0      		breq .L2
  38               	.LSM3:
  39 0018 8091 0000 		lds r24,startpoint
  40 001c 9091 0000 		lds r25,(startpoint)+1
  41 0020 A091 0000 		lds r26,(startpoint)+2
  42 0024 B091 0000 		lds r27,(startpoint)+3
  43 0028 8093 0000 		sts joint_positions,r24
  44 002c 9093 0000 		sts (joint_positions)+1,r25
  45 0030 A093 0000 		sts (joint_positions)+2,r26
  46 0034 B093 0000 		sts (joint_positions)+3,r27
  47               	.LSM4:
  48 0038 8091 0000 		lds r24,startpoint+4
  49 003c 9091 0000 		lds r25,(startpoint+4)+1
  50 0040 A091 0000 		lds r26,(startpoint+4)+2
  51 0044 B091 0000 		lds r27,(startpoint+4)+3
  52 0048 8093 0000 		sts joint_positions+4,r24
  53 004c 9093 0000 		sts (joint_positions+4)+1,r25
  54 0050 A093 0000 		sts (joint_positions+4)+2,r26
  55 0054 B093 0000 		sts (joint_positions+4)+3,r27
  56 0058 00C0      		rjmp .L7
  57               	.L2:
  58               	.LSM5:
  59 005a 8BE6      		ldi r24,lo8(107)
  60 005c 189F      		mul r17,r24
  61 005e E001      		movw r28,r0
  62 0060 1124      		clr r1
  63               	.LVL0:
  64 0062 C050      		subi r28,lo8(-(movebuffer))
  65 0064 D040      		sbci r29,hi8(-(movebuffer))
  66               	.LSM6:
  67 0066 8D89      		ldd r24,Y+21
  68 0068 81FF      		sbrs r24,1
  69 006a 00C0      		rjmp .L7
  70 006c E880      		ld r14,Y
  71 006e F980      		ldd r15,Y+1
  72 0070 0A81      		ldd r16,Y+2
  73 0072 1B81      		ldd r17,Y+3
  74               	.LSM7:
  75 0074 84FF      		sbrs r24,4
  76 0076 00C0      		rjmp .L4
  77               	.LSM8:
  78 0078 6091 0000 		lds r22,move_state+16
  79 007c 7091 0000 		lds r23,(move_state+16)+1
  80 0080 8091 0000 		lds r24,(move_state+16)+2
  81 0084 9091 0000 		lds r25,(move_state+16)+3
  82 0088 28EE      		ldi r18,lo8(1000)
  83 008a 33E0      		ldi r19,hi8(1000)
  84 008c 40E0      		ldi r20,hlo8(1000)
  85 008e 50E0      		ldi r21,hhi8(1000)
  86 0090 0E94 0000 		call __mulsi3
  87 0094 672F      		mov r22,r23
  88 0096 782F      		mov r23,r24
  89 0098 892F      		mov r24,r25
  90 009a 9927      		clr r25
  91 009c E61A      		sub r14,r22
  92 009e F70A      		sbc r15,r23
  93 00a0 080B      		sbc r16,r24
  94 00a2 190B      		sbc r17,r25
  95 00a4 E092 0000 		sts joint_positions,r14
  96 00a8 F092 0000 		sts (joint_positions)+1,r15
  97 00ac 0093 0000 		sts (joint_positions)+2,r16
  98 00b0 1093 0000 		sts (joint_positions)+3,r17
  99 00b4 00C0      		rjmp .L5
 100               	.L4:
 101               	.LSM9:
 102 00b6 6091 0000 		lds r22,move_state+16
 103 00ba 7091 0000 		lds r23,(move_state+16)+1
 104 00be 8091 0000 		lds r24,(move_state+16)+2
 105 00c2 9091 0000 		lds r25,(move_state+16)+3
 106 00c6 28EE      		ldi r18,lo8(1000)
 107 00c8 33E0      		ldi r19,hi8(1000)
 108 00ca 40E0      		ldi r20,hlo8(1000)
 109 00cc 50E0      		ldi r21,hhi8(1000)
 110 00ce 0E94 0000 		call __mulsi3
 111 00d2 672F      		mov r22,r23
 112 00d4 782F      		mov r23,r24
 113 00d6 892F      		mov r24,r25
 114 00d8 9927      		clr r25
 115 00da 6E0D      		add r22,r14
 116 00dc 7F1D      		adc r23,r15
 117 00de 801F      		adc r24,r16
 118 00e0 911F      		adc r25,r17
 119 00e2 6093 0000 		sts joint_positions,r22
 120 00e6 7093 0000 		sts (joint_positions)+1,r23
 121 00ea 8093 0000 		sts (joint_positions)+2,r24
 122 00ee 9093 0000 		sts (joint_positions)+3,r25
 123               	.L5:
 124               	.LSM10:
 125 00f2 8D89      		ldd r24,Y+21
 126 00f4 EC80      		ldd r14,Y+4
 127 00f6 FD80      		ldd r15,Y+5
 128 00f8 0E81      		ldd r16,Y+6
 129 00fa 1F81      		ldd r17,Y+7
 130 00fc 85FF      		sbrs r24,5
 131 00fe 00C0      		rjmp .L6
 132               	.LSM11:
 133 0100 6091 0000 		lds r22,move_state+20
 134 0104 7091 0000 		lds r23,(move_state+20)+1
 135 0108 8091 0000 		lds r24,(move_state+20)+2
 136 010c 9091 0000 		lds r25,(move_state+20)+3
 137 0110 28EE      		ldi r18,lo8(1000)
 138 0112 33E0      		ldi r19,hi8(1000)
 139 0114 40E0      		ldi r20,hlo8(1000)
 140 0116 50E0      		ldi r21,hhi8(1000)
 141 0118 0E94 0000 		call __mulsi3
 142 011c 672F      		mov r22,r23
 143 011e 782F      		mov r23,r24
 144 0120 892F      		mov r24,r25
 145 0122 9927      		clr r25
 146 0124 E61A      		sub r14,r22
 147 0126 F70A      		sbc r15,r23
 148 0128 080B      		sbc r16,r24
 149 012a 190B      		sbc r17,r25
 150 012c E092 0000 		sts joint_positions+4,r14
 151 0130 F092 0000 		sts (joint_positions+4)+1,r15
 152 0134 0093 0000 		sts (joint_positions+4)+2,r16
 153 0138 1093 0000 		sts (joint_positions+4)+3,r17
 154 013c 00C0      		rjmp .L7
 155               	.L6:
 156               	.LSM12:
 157 013e 6091 0000 		lds r22,move_state+20
 158 0142 7091 0000 		lds r23,(move_state+20)+1
 159 0146 8091 0000 		lds r24,(move_state+20)+2
 160 014a 9091 0000 		lds r25,(move_state+20)+3
 161 014e 28EE      		ldi r18,lo8(1000)
 162 0150 33E0      		ldi r19,hi8(1000)
 163 0152 40E0      		ldi r20,hlo8(1000)
 164 0154 50E0      		ldi r21,hhi8(1000)
 165 0156 0E94 0000 		call __mulsi3
 166 015a 672F      		mov r22,r23
 167 015c 782F      		mov r23,r24
 168 015e 892F      		mov r24,r25
 169 0160 9927      		clr r25
 170 0162 6E0D      		add r22,r14
 171 0164 7F1D      		adc r23,r15
 172 0166 801F      		adc r24,r16
 173 0168 911F      		adc r25,r17
 174 016a 6093 0000 		sts joint_positions+4,r22
 175 016e 7093 0000 		sts (joint_positions+4)+1,r23
 176 0172 8093 0000 		sts (joint_positions+4)+2,r24
 177 0176 9093 0000 		sts (joint_positions+4)+3,r25
 178               	.L7:
 179               	/* epilogue start */
 180               	.LSM13:
 181 017a CDB7      		in r28,__SP_L__
 182 017c DEB7      		in r29,__SP_H__
 183               	.LVL1:
 184 017e E6E0      		ldi r30, lo8(6)
 185 0180 0C94 0000 		jmp __epilogue_restores__ + ((18 - 6) * 2)
 186               	.LFE6:
 188               		.section	.text.update_joint_servos,"ax",@progbits
 189               	.global	update_joint_servos
 191               	update_joint_servos:
 192               	.LFB7:
 193               	.LSM14:
 194               	/* prologue: function */
 195               	/* frame size = 0 */
 196               	.LSM15:
 197 0000 8091 0000 		lds r24,jointsBusy
 198 0004 8823      		tst r24
 199 0006 01F0      		breq .+2
 200 0008 00C0      		rjmp .L14
 201               	.LSM16:
 202 000a 81E0      		ldi r24,lo8(1)
 203 000c 8093 0000 		sts jointsBusy,r24
 204               	.LSM17:
 205 0010 0E94 0000 		call update_joint_positions
 206               	.LSM18:
 207 0014 6091 0000 		lds r22,joint_positions
 208 0018 7091 0000 		lds r23,(joint_positions)+1
 209 001c 8091 0000 		lds r24,(joint_positions)+2
 210 0020 9091 0000 		lds r25,(joint_positions)+3
 211               	.LVL2:
 212               	.LSM19:
 213 0024 24E6      		ldi r18,lo8(100)
 214 0026 30E0      		ldi r19,hi8(100)
 215 0028 40E0      		ldi r20,hlo8(100)
 216 002a 50E0      		ldi r21,hhi8(100)
 217 002c 0E94 0000 		call __divmodsi4
 218               	.LVL3:
 219 0030 C901      		movw r24,r18
 220 0032 DA01      		movw r26,r20
 221 0034 9C01      		movw r18,r24
 222 0036 AD01      		movw r20,r26
 223               	.LVL4:
 224               	.LSM20:
 225 0038 57FF      		sbrs r21,7
 226 003a 00C0      		rjmp .L10
 227               	.LVL5:
 228 003c 20E0      		ldi r18,lo8(0)
 229 003e 30E0      		ldi r19,hi8(0)
 230 0040 40E0      		ldi r20,hlo8(0)
 231 0042 50E0      		ldi r21,hhi8(0)
 232 0044 00C0      		rjmp .L11
 233               	.LVL6:
 234               	.L10:
 235               	.LSM21:
 236 0046 2030      		cpi r18,lo8(1024)
 237 0048 84E0      		ldi r24,hi8(1024)
 238 004a 3807      		cpc r19,r24
 239 004c 80E0      		ldi r24,hlo8(1024)
 240 004e 4807      		cpc r20,r24
 241 0050 80E0      		ldi r24,hhi8(1024)
 242 0052 5807      		cpc r21,r24
 243 0054 04F0      		brlt .L11
 244 0056 2FEF      		ldi r18,lo8(1023)
 245 0058 33E0      		ldi r19,hi8(1023)
 246 005a 40E0      		ldi r20,hlo8(1023)
 247 005c 50E0      		ldi r21,hhi8(1023)
 248               	.L11:
 249               	.LSM22:
 250 005e 80E0      		ldi r24,lo8(shoulder)
 251 0060 90E0      		ldi r25,hi8(shoulder)
 252 0062 6EE1      		ldi r22,lo8(30)
 253 0064 A901      		movw r20,r18
 254 0066 20E0      		ldi r18,lo8(0)
 255               	.LVL7:
 256 0068 0E94 0000 		call AX12_writeInfo
 257               	.LSM23:
 258 006c 6091 0000 		lds r22,joint_positions+4
 259 0070 7091 0000 		lds r23,(joint_positions+4)+1
 260 0074 8091 0000 		lds r24,(joint_positions+4)+2
 261 0078 9091 0000 		lds r25,(joint_positions+4)+3
 262               	.LVL8:
 263               	.LSM24:
 264 007c 24E6      		ldi r18,lo8(100)
 265 007e 30E0      		ldi r19,hi8(100)
 266 0080 40E0      		ldi r20,hlo8(100)
 267 0082 50E0      		ldi r21,hhi8(100)
 268 0084 0E94 0000 		call __divmodsi4
 269               	.LVL9:
 270 0088 C901      		movw r24,r18
 271 008a DA01      		movw r26,r20
 272 008c 9C01      		movw r18,r24
 273 008e AD01      		movw r20,r26
 274               	.LVL10:
 275               	.LSM25:
 276 0090 57FF      		sbrs r21,7
 277 0092 00C0      		rjmp .L12
 278               	.LVL11:
 279 0094 20E0      		ldi r18,lo8(0)
 280 0096 30E0      		ldi r19,hi8(0)
 281 0098 40E0      		ldi r20,hlo8(0)
 282 009a 50E0      		ldi r21,hhi8(0)
 283 009c 00C0      		rjmp .L13
 284               	.LVL12:
 285               	.L12:
 286               	.LSM26:
 287 009e 2030      		cpi r18,lo8(1024)
 288 00a0 84E0      		ldi r24,hi8(1024)
 289 00a2 3807      		cpc r19,r24
 290 00a4 80E0      		ldi r24,hlo8(1024)
 291 00a6 4807      		cpc r20,r24
 292 00a8 80E0      		ldi r24,hhi8(1024)
 293 00aa 5807      		cpc r21,r24
 294 00ac 04F0      		brlt .L13
 295 00ae 2FEF      		ldi r18,lo8(1023)
 296 00b0 33E0      		ldi r19,hi8(1023)
 297 00b2 40E0      		ldi r20,hlo8(1023)
 298 00b4 50E0      		ldi r21,hhi8(1023)
 299               	.L13:
 300               	.LSM27:
 301 00b6 80E0      		ldi r24,lo8(elbow)
 302 00b8 90E0      		ldi r25,hi8(elbow)
 303 00ba 6EE1      		ldi r22,lo8(30)
 304 00bc A901      		movw r20,r18
 305 00be 20E0      		ldi r18,lo8(0)
 306               	.LVL13:
 307 00c0 0E94 0000 		call AX12_writeInfo
 308               	.LSM28:
 309 00c4 1092 0000 		sts jointsBusy,__zero_reg__
 310               	.L14:
 311 00c8 0895      		ret
 312               	.LFE7:
 314               		.section	.text.joints_init,"ax",@progbits
 315               	.global	joints_init
 317               	joints_init:
 318               	.LFB5:
 319               	.LSM29:
 320 0000 CF92      		push r12
 321 0002 DF92      		push r13
 322 0004 EF92      		push r14
 323 0006 FF92      		push r15
 324 0008 0F93      		push r16
 325 000a 1F93      		push r17
 326               	/* prologue: function */
 327               	/* frame size = 0 */
 328               	.LSM30:
 329 000c 60E4      		ldi r22,lo8(1000000)
 330 000e 72E4      		ldi r23,hi8(1000000)
 331 0010 8FE0      		ldi r24,hlo8(1000000)
 332 0012 90E0      		ldi r25,hhi8(1000000)
 333 0014 0E94 0000 		call AX12_init
 334               	.LSM31:
 335 0018 70E0      		ldi r23,lo8(shoulder)
 336 001a C72E      		mov r12,r23
 337 001c 70E0      		ldi r23,hi8(shoulder)
 338 001e D72E      		mov r13,r23
 339 0020 83E0      		ldi r24,lo8(3)
 340 0022 8093 0000 		sts shoulder,r24
 341               	.LSM32:
 342 0026 91E0      		ldi r25,lo8(1)
 343 0028 9093 0000 		sts shoulder+2,r25
 344               	.LSM33:
 345 002c 1092 0000 		sts shoulder+1,__zero_reg__
 346               	.LSM34:
 347 0030 00E0      		ldi r16,lo8(elbow)
 348 0032 10E0      		ldi r17,hi8(elbow)
 349 0034 82E0      		ldi r24,lo8(2)
 350 0036 8093 0000 		sts elbow,r24
 351               	.LSM35:
 352 003a 9093 0000 		sts elbow+2,r25
 353               	.LSM36:
 354 003e 1092 0000 		sts elbow+1,__zero_reg__
 355               	.LSM37:
 356 0042 60E0      		ldi r22,lo8(wrist)
 357 0044 E62E      		mov r14,r22
 358 0046 60E0      		ldi r22,hi8(wrist)
 359 0048 F62E      		mov r15,r22
 360 004a 9093 0000 		sts wrist,r25
 361               	.LSM38:
 362 004e 9093 0000 		sts wrist+2,r25
 363               	.LSM39:
 364 0052 1092 0000 		sts wrist+1,__zero_reg__
 365               	.LSM40:
 366 0056 C601      		movw r24,r12
 367 0058 60E2      		ldi r22,lo8(32)
 368 005a 48EC      		ldi r20,lo8(200)
 369 005c 50E0      		ldi r21,hi8(200)
 370 005e 20E0      		ldi r18,lo8(0)
 371 0060 0E94 0000 		call AX12_writeInfo
 372               	.LSM41:
 373 0064 C801      		movw r24,r16
 374 0066 60E2      		ldi r22,lo8(32)
 375 0068 48EC      		ldi r20,lo8(200)
 376 006a 50E0      		ldi r21,hi8(200)
 377 006c 20E0      		ldi r18,lo8(0)
 378 006e 0E94 0000 		call AX12_writeInfo
 379               	.LSM42:
 380 0072 C701      		movw r24,r14
 381 0074 60E2      		ldi r22,lo8(32)
 382 0076 48EC      		ldi r20,lo8(200)
 383 0078 50E0      		ldi r21,hi8(200)
 384 007a 20E0      		ldi r18,lo8(0)
 385 007c 0E94 0000 		call AX12_writeInfo
 386               	.LSM43:
 387 0080 C601      		movw r24,r12
 388 0082 62E2      		ldi r22,lo8(34)
 389 0084 44EF      		ldi r20,lo8(500)
 390 0086 51E0      		ldi r21,hi8(500)
 391 0088 20E0      		ldi r18,lo8(0)
 392 008a 0E94 0000 		call AX12_writeInfo
 393               	.LSM44:
 394 008e C801      		movw r24,r16
 395 0090 62E2      		ldi r22,lo8(34)
 396 0092 40E9      		ldi r20,lo8(400)
 397 0094 51E0      		ldi r21,hi8(400)
 398 0096 20E0      		ldi r18,lo8(0)
 399 0098 0E94 0000 		call AX12_writeInfo
 400               	.LSM45:
 401 009c C701      		movw r24,r14
 402 009e 62E2      		ldi r22,lo8(34)
 403 00a0 48EC      		ldi r20,lo8(200)
 404 00a2 50E0      		ldi r21,hi8(200)
 405 00a4 20E0      		ldi r18,lo8(0)
 406 00a6 0E94 0000 		call AX12_writeInfo
 407               	.LSM46:
 408 00aa C601      		movw r24,r12
 409 00ac 60E3      		ldi r22,lo8(48)
 410 00ae 4CE3      		ldi r20,lo8(60)
 411 00b0 50E0      		ldi r21,hi8(60)
 412 00b2 20E0      		ldi r18,lo8(0)
 413 00b4 0E94 0000 		call AX12_writeInfo
 414               	.LSM47:
 415 00b8 C801      		movw r24,r16
 416 00ba 60E3      		ldi r22,lo8(48)
 417 00bc 42E3      		ldi r20,lo8(50)
 418 00be 50E0      		ldi r21,hi8(50)
 419 00c0 20E0      		ldi r18,lo8(0)
 420 00c2 0E94 0000 		call AX12_writeInfo
 421               	.LSM48:
 422 00c6 C701      		movw r24,r14
 423 00c8 60E3      		ldi r22,lo8(48)
 424 00ca 48E2      		ldi r20,lo8(40)
 425 00cc 50E0      		ldi r21,hi8(40)
 426 00ce 20E0      		ldi r18,lo8(0)
 427 00d0 0E94 0000 		call AX12_writeInfo
 428               	.LSM49:
 429 00d4 C601      		movw r24,r12
 430 00d6 6AE1      		ldi r22,lo8(26)
 431 00d8 40E0      		ldi r20,lo8(0)
 432 00da 50E0      		ldi r21,hi8(0)
 433 00dc 20E0      		ldi r18,lo8(0)
 434 00de 0E94 0000 		call AX12_writeInfo
 435               	.LSM50:
 436 00e2 C801      		movw r24,r16
 437 00e4 6AE1      		ldi r22,lo8(26)
 438 00e6 40E0      		ldi r20,lo8(0)
 439 00e8 50E0      		ldi r21,hi8(0)
 440 00ea 20E0      		ldi r18,lo8(0)
 441 00ec 0E94 0000 		call AX12_writeInfo
 442               	.LSM51:
 443 00f0 C701      		movw r24,r14
 444 00f2 6AE1      		ldi r22,lo8(26)
 445 00f4 40E0      		ldi r20,lo8(0)
 446 00f6 50E0      		ldi r21,hi8(0)
 447 00f8 20E0      		ldi r18,lo8(0)
 448 00fa 0E94 0000 		call AX12_writeInfo
 449               	.LSM52:
 450 00fe C601      		movw r24,r12
 451 0100 6BE1      		ldi r22,lo8(27)
 452 0102 40E0      		ldi r20,lo8(0)
 453 0104 50E0      		ldi r21,hi8(0)
 454 0106 20E0      		ldi r18,lo8(0)
 455 0108 0E94 0000 		call AX12_writeInfo
 456               	.LSM53:
 457 010c C801      		movw r24,r16
 458 010e 6BE1      		ldi r22,lo8(27)
 459 0110 40E0      		ldi r20,lo8(0)
 460 0112 50E0      		ldi r21,hi8(0)
 461 0114 20E0      		ldi r18,lo8(0)
 462 0116 0E94 0000 		call AX12_writeInfo
 463               	.LSM54:
 464 011a C701      		movw r24,r14
 465 011c 6BE1      		ldi r22,lo8(27)
 466 011e 40E0      		ldi r20,lo8(0)
 467 0120 50E0      		ldi r21,hi8(0)
 468 0122 20E0      		ldi r18,lo8(0)
 469 0124 0E94 0000 		call AX12_writeInfo
 470               	.LSM55:
 471 0128 C601      		movw r24,r12
 472 012a 6CE1      		ldi r22,lo8(28)
 473 012c 40E4      		ldi r20,lo8(64)
 474 012e 50E0      		ldi r21,hi8(64)
 475 0130 20E0      		ldi r18,lo8(0)
 476 0132 0E94 0000 		call AX12_writeInfo
 477               	.LSM56:
 478 0136 C801      		movw r24,r16
 479 0138 6CE1      		ldi r22,lo8(28)
 480 013a 40E2      		ldi r20,lo8(32)
 481 013c 50E0      		ldi r21,hi8(32)
 482 013e 20E0      		ldi r18,lo8(0)
 483 0140 0E94 0000 		call AX12_writeInfo
 484               	.LSM57:
 485 0144 C701      		movw r24,r14
 486 0146 6CE1      		ldi r22,lo8(28)
 487 0148 40E1      		ldi r20,lo8(16)
 488 014a 50E0      		ldi r21,hi8(16)
 489 014c 20E0      		ldi r18,lo8(0)
 490 014e 0E94 0000 		call AX12_writeInfo
 491               	.LSM58:
 492 0152 C601      		movw r24,r12
 493 0154 6DE1      		ldi r22,lo8(29)
 494 0156 40E4      		ldi r20,lo8(64)
 495 0158 50E0      		ldi r21,hi8(64)
 496 015a 20E0      		ldi r18,lo8(0)
 497 015c 0E94 0000 		call AX12_writeInfo
 498               	.LSM59:
 499 0160 C801      		movw r24,r16
 500 0162 6DE1      		ldi r22,lo8(29)
 501 0164 40E2      		ldi r20,lo8(32)
 502 0166 50E0      		ldi r21,hi8(32)
 503 0168 20E0      		ldi r18,lo8(0)
 504 016a 0E94 0000 		call AX12_writeInfo
 505               	.LSM60:
 506 016e C701      		movw r24,r14
 507 0170 6DE1      		ldi r22,lo8(29)
 508 0172 40E1      		ldi r20,lo8(16)
 509 0174 50E0      		ldi r21,hi8(16)
 510 0176 20E0      		ldi r18,lo8(0)
 511 0178 0E94 0000 		call AX12_writeInfo
 512               	/* epilogue start */
 513               	.LSM61:
 514 017c 1F91      		pop r17
 515 017e 0F91      		pop r16
 516 0180 FF90      		pop r15
 517 0182 EF90      		pop r14
 518 0184 DF90      		pop r13
 519 0186 CF90      		pop r12
 520 0188 0895      		ret
 521               	.LFE5:
 523               	.global	jointsBusy
 524               	.global	jointsBusy
 525               		.section .bss
 528               	jointsBusy:
 529 0000 00        		.skip 1,0
 530               		.comm shoulder,3,1
 531               		.comm elbow,3,1
 532               		.comm wrist,3,1
 533               		.comm joint_positions,21,1
 574               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 joints.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:21     .text.update_joint_positions:00000000 update_joint_positions
                            *COM*:00000015 joint_positions
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:191    .text.update_joint_servos:00000000 update_joint_servos
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:528    .bss:00000000 jointsBusy
                            *COM*:00000003 shoulder
                            *COM*:00000003 elbow
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccErZRDP.s:317    .text.joints_init:00000000 joints_init
                            *COM*:00000003 wrist

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
mb_tail
queue_empty
startpoint
movebuffer
move_state
__mulsi3
__epilogue_restores__
__divmodsi4
AX12_writeInfo
AX12_init
