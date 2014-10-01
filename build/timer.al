   1               		.file	"timer.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.unlikely,"ax",@progbits
  19               	.global	timer_init
  21               	timer_init:
  22               	.LFB10:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 1092 8000 		sts 128,__zero_reg__
  28               	.LSM2:
  29 0004 81E0      		ldi r24,lo8(1)
  30 0006 8093 8100 		sts 129,r24
  31               	.LSM3:
  32 000a 80E0      		ldi r24,lo8(32000)
  33 000c 9DE7      		ldi r25,hi8(32000)
  34 000e 9093 8B00 		sts (138)+1,r25
  35 0012 8093 8A00 		sts 138,r24
  36               	.LSM4:
  37 0016 84E0      		ldi r24,lo8(4)
  38 0018 8093 6F00 		sts 111,r24
  39               	/* epilogue start */
  40               	.LSM5:
  41 001c 0895      		ret
  42               	.LFE10:
  44               		.section	.text.setTimer,"ax",@progbits
  45               	.global	setTimer
  47               	setTimer:
  48               	.LFB11:
  49               	.LSM6:
  50               	.LVL0:
  51               	/* prologue: function */
  52               	/* frame size = 0 */
  53               	.LSM7:
  54               	/* #APP */
  55               	 ;  149 "timer.c" 1
  56 0000 F894      		cli
  57               	 ;  0 "" 2
  58               	.LSM8:
  59               	.LSM9:
  60               	/* #NOAPP */
  61 0002 2091 8800 		lds r18,136
  62 0006 3091 8900 		lds r19,(136)+1
  63               	.LVL1:
  64               	.LSM10:
  65 000a 6093 0000 		sts next_step_time,r22
  66 000e 7093 0000 		sts (next_step_time)+1,r23
  67 0012 8093 0000 		sts (next_step_time)+2,r24
  68 0016 9093 0000 		sts (next_step_time)+3,r25
  69               	.LSM11:
  70 001a 6030      		cpi r22,lo8(65536)
  71 001c 40E0      		ldi r20,hi8(65536)
  72 001e 7407      		cpc r23,r20
  73 0020 41E0      		ldi r20,hlo8(65536)
  74 0022 8407      		cpc r24,r20
  75 0024 40E0      		ldi r20,hhi8(65536)
  76 0026 9407      		cpc r25,r20
  77 0028 00F4      		brsh .L4
  78               	.LSM12:
  79 002a 260F      		add r18,r22
  80 002c 371F      		adc r19,r23
  81 002e 00C0      		rjmp .L6
  82               	.L4:
  83               	.LSM13:
  84 0030 6031      		cpi r22,lo8(75536)
  85 0032 47E2      		ldi r20,hi8(75536)
  86 0034 7407      		cpc r23,r20
  87 0036 41E0      		ldi r20,hlo8(75536)
  88 0038 8407      		cpc r24,r20
  89 003a 40E0      		ldi r20,hhi8(75536)
  90 003c 9407      		cpc r25,r20
  91 003e 00F4      		brsh .L6
  92               	.LSM14:
  93 0040 2051      		subi r18,lo8(-(-10000))
  94 0042 3742      		sbci r19,hi8(-(-10000))
  95 0044 3093 8900 		sts (136)+1,r19
  96 0048 2093 8800 		sts 136,r18
  97               	.LSM15:
  98 004c 605F      		subi r22,lo8(-(10000))
  99 004e 784D      		sbci r23,hi8(-(10000))
 100 0050 8F4F      		sbci r24,hlo8(-(10000))
 101 0052 9F4F      		sbci r25,hhi8(-(10000))
 102               	.LVL2:
 103 0054 6093 0000 		sts next_step_time,r22
 104 0058 7093 0000 		sts (next_step_time)+1,r23
 105 005c 8093 0000 		sts (next_step_time)+2,r24
 106 0060 9093 0000 		sts (next_step_time)+3,r25
 107 0064 00C0      		rjmp .L5
 108               	.L6:
 109               	.LSM16:
 110 0066 3093 8900 		sts (136)+1,r19
 111 006a 2093 8800 		sts 136,r18
 112               	.L5:
 113               	.LSM17:
 114 006e 8091 6F00 		lds r24,111
 115 0072 8260      		ori r24,lo8(2)
 116 0074 8093 6F00 		sts 111,r24
 117               	/* epilogue start */
 118               	.LSM18:
 119 0078 0895      		ret
 120               	.LFE11:
 122               		.section	.text.timer_stop,"ax",@progbits
 123               	.global	timer_stop
 125               	timer_stop:
 126               	.LFB12:
 127               	.LSM19:
 128               	/* prologue: function */
 129               	/* frame size = 0 */
 130               	.LSM20:
 131 0000 1092 6F00 		sts 111,__zero_reg__
 132               	/* epilogue start */
 133               	.LSM21:
 134 0004 0895      		ret
 135               	.LFE12:
 137               		.section	.text.__vector_17,"ax",@progbits
 138               	.global	__vector_17
 140               	__vector_17:
 141               	.LFB9:
 142               	.LSM22:
 143 0000 1F92      		push __zero_reg__
 144 0002 0F92      		push r0
 145 0004 0FB6      		in r0,__SREG__
 146 0006 0F92      		push r0
 147 0008 0BB6      		in r0,91-32
 148 000a 0F92      		push r0
 149 000c 1124      		clr __zero_reg__
 150 000e EF92      		push r14
 151 0010 FF92      		push r15
 152 0012 0F93      		push r16
 153 0014 1F93      		push r17
 154 0016 2F93      		push r18
 155 0018 3F93      		push r19
 156 001a 4F93      		push r20
 157 001c 5F93      		push r21
 158 001e 6F93      		push r22
 159 0020 7F93      		push r23
 160 0022 8F93      		push r24
 161 0024 9F93      		push r25
 162 0026 AF93      		push r26
 163 0028 BF93      		push r27
 164 002a EF93      		push r30
 165 002c FF93      		push r31
 166               	/* prologue: Signal */
 167               	/* frame size = 0 */
 168               	.LSM23:
 169 002e E090 0000 		lds r14,next_step_time
 170 0032 F090 0000 		lds r15,(next_step_time)+1
 171 0036 0091 0000 		lds r16,(next_step_time)+2
 172 003a 1091 0000 		lds r17,(next_step_time)+3
 173 003e 80E0      		ldi r24,lo8(65536)
 174 0040 E816      		cp r14,r24
 175 0042 80E0      		ldi r24,hi8(65536)
 176 0044 F806      		cpc r15,r24
 177 0046 81E0      		ldi r24,hlo8(65536)
 178 0048 0807      		cpc r16,r24
 179 004a 80E0      		ldi r24,hhi8(65536)
 180 004c 1807      		cpc r17,r24
 181 004e 00F4      		brsh .L11
 182               	.LSM24:
 183 0050 8091 6F00 		lds r24,111
 184 0054 8D7F      		andi r24,lo8(-3)
 185 0056 8093 6F00 		sts 111,r24
 186               	.LSM25:
 187 005a 0E94 0000 		call queue_step
 188 005e 00C0      		rjmp .L14
 189               	.L11:
 190               	.LSM26:
 191 0060 A801      		movw r20,r16
 192 0062 9701      		movw r18,r14
 193 0064 2050      		subi r18,lo8(-(-65536))
 194 0066 3040      		sbci r19,hi8(-(-65536))
 195 0068 4140      		sbci r20,hlo8(-(-65536))
 196 006a 5040      		sbci r21,hhi8(-(-65536))
 197 006c 2093 0000 		sts next_step_time,r18
 198 0070 3093 0000 		sts (next_step_time)+1,r19
 199 0074 4093 0000 		sts (next_step_time)+2,r20
 200 0078 5093 0000 		sts (next_step_time)+3,r21
 201               	.LSM27:
 202 007c 2030      		cpi r18,lo8(65536)
 203 007e 90E0      		ldi r25,hi8(65536)
 204 0080 3907      		cpc r19,r25
 205 0082 91E0      		ldi r25,hlo8(65536)
 206 0084 4907      		cpc r20,r25
 207 0086 90E0      		ldi r25,hhi8(65536)
 208 0088 5907      		cpc r21,r25
 209 008a 00F4      		brsh .L13
 210               	.LSM28:
 211 008c 8091 8800 		lds r24,136
 212 0090 9091 8900 		lds r25,(136)+1
 213 0094 820F      		add r24,r18
 214 0096 931F      		adc r25,r19
 215 0098 9093 8900 		sts (136)+1,r25
 216 009c 8093 8800 		sts 136,r24
 217 00a0 00C0      		rjmp .L14
 218               	.L13:
 219               	.LSM29:
 220 00a2 2051      		subi r18,lo8(75536)
 221 00a4 3742      		sbci r19,hi8(75536)
 222 00a6 4140      		sbci r20,hlo8(75536)
 223 00a8 5040      		sbci r21,hhi8(75536)
 224 00aa 00F4      		brsh .L14
 225               	.LSM30:
 226 00ac 8091 8800 		lds r24,136
 227 00b0 9091 8900 		lds r25,(136)+1
 228 00b4 8051      		subi r24,lo8(-(-10000))
 229 00b6 9742      		sbci r25,hi8(-(-10000))
 230 00b8 9093 8900 		sts (136)+1,r25
 231 00bc 8093 8800 		sts 136,r24
 232               	.LSM31:
 233 00c0 80E1      		ldi r24,lo8(-55536)
 234 00c2 97E2      		ldi r25,hi8(-55536)
 235 00c4 AFEF      		ldi r26,hlo8(-55536)
 236 00c6 BFEF      		ldi r27,hhi8(-55536)
 237 00c8 E80E      		add r14,r24
 238 00ca F91E      		adc r15,r25
 239 00cc 0A1F      		adc r16,r26
 240 00ce 1B1F      		adc r17,r27
 241 00d0 E092 0000 		sts next_step_time,r14
 242 00d4 F092 0000 		sts (next_step_time)+1,r15
 243 00d8 0093 0000 		sts (next_step_time)+2,r16
 244 00dc 1093 0000 		sts (next_step_time)+3,r17
 245               	.L14:
 246               	/* epilogue start */
 247               	.LSM32:
 248 00e0 FF91      		pop r31
 249 00e2 EF91      		pop r30
 250 00e4 BF91      		pop r27
 251 00e6 AF91      		pop r26
 252 00e8 9F91      		pop r25
 253 00ea 8F91      		pop r24
 254 00ec 7F91      		pop r23
 255 00ee 6F91      		pop r22
 256 00f0 5F91      		pop r21
 257 00f2 4F91      		pop r20
 258 00f4 3F91      		pop r19
 259 00f6 2F91      		pop r18
 260 00f8 1F91      		pop r17
 261 00fa 0F91      		pop r16
 262 00fc FF90      		pop r15
 263 00fe EF90      		pop r14
 264 0100 0F90      		pop r0
 265 0102 0BBE      		out 91-32,r0
 266 0104 0F90      		pop r0
 267 0106 0FBE      		out __SREG__,r0
 268 0108 0F90      		pop r0
 269 010a 1F90      		pop __zero_reg__
 270 010c 1895      		reti
 271               	.LFE9:
 273               		.section	.text.__vector_18,"ax",@progbits
 274               	.global	__vector_18
 276               	__vector_18:
 277               	.LFB8:
 278               	.LSM33:
 279 0000 1F92      		push __zero_reg__
 280 0002 0F92      		push r0
 281 0004 0FB6      		in r0,__SREG__
 282 0006 0F92      		push r0
 283 0008 0BB6      		in r0,91-32
 284 000a 0F92      		push r0
 285 000c 1124      		clr __zero_reg__
 286 000e 2F93      		push r18
 287 0010 3F93      		push r19
 288 0012 4F93      		push r20
 289 0014 5F93      		push r21
 290 0016 6F93      		push r22
 291 0018 7F93      		push r23
 292 001a 8F93      		push r24
 293 001c 9F93      		push r25
 294 001e AF93      		push r26
 295 0020 BF93      		push r27
 296 0022 EF93      		push r30
 297 0024 FF93      		push r31
 298               	/* prologue: Signal */
 299               	/* frame size = 0 */
 300               	.LSM34:
 301 0026 8091 8A00 		lds r24,138
 302 002a 9091 8B00 		lds r25,(138)+1
 303 002e 8050      		subi r24,lo8(-(32000))
 304 0030 9348      		sbci r25,hi8(-(32000))
 305 0032 9093 8B00 		sts (138)+1,r25
 306 0036 8093 8A00 		sts 138,r24
 307               	.LSM35:
 308 003a 9091 0000 		lds r25,clock_counter_10ms
 309 003e 892F      		mov r24,r25
 310 0040 8E5F      		subi r24,lo8(-(2))
 311 0042 8093 0000 		sts clock_counter_10ms,r24
 312               	.LSM36:
 313 0046 8A30      		cpi r24,lo8(10)
 314 0048 00F0      		brlo .L16
 315               	.LSM37:
 316 004a 9850      		subi r25,lo8(-(-8))
 317 004c 9093 0000 		sts clock_counter_10ms,r25
 318               	.LSM38:
 319 0050 91E0      		ldi r25,lo8(1)
 320 0052 9093 0000 		sts clock_flag_10ms,r25
 321               	.LSM39:
 322 0056 8091 0000 		lds r24,clock_counter_250ms
 323 005a 8F5F      		subi r24,lo8(-(1))
 324 005c 8093 0000 		sts clock_counter_250ms,r24
 325               	.LSM40:
 326 0060 8931      		cpi r24,lo8(25)
 327 0062 00F0      		brlo .L16
 328               	.LSM41:
 329 0064 1092 0000 		sts clock_counter_250ms,__zero_reg__
 330               	.LSM42:
 331 0068 9093 0000 		sts clock_flag_250ms,r25
 332               	.LSM43:
 333 006c 8091 0000 		lds r24,clock_counter_1s
 334 0070 8F5F      		subi r24,lo8(-(1))
 335 0072 8093 0000 		sts clock_counter_1s,r24
 336               	.LSM44:
 337 0076 8430      		cpi r24,lo8(4)
 338 0078 00F0      		brlo .L16
 339               	.LSM45:
 340 007a 1092 0000 		sts clock_counter_1s,__zero_reg__
 341               	.LSM46:
 342 007e 9093 0000 		sts clock_flag_1s,r25
 343               	.L16:
 344               	.LSM47:
 345 0082 0E94 0000 		call dda_clock
 346               	/* epilogue start */
 347               	.LSM48:
 348 0086 FF91      		pop r31
 349 0088 EF91      		pop r30
 350 008a BF91      		pop r27
 351 008c AF91      		pop r26
 352 008e 9F91      		pop r25
 353 0090 8F91      		pop r24
 354 0092 7F91      		pop r23
 355 0094 6F91      		pop r22
 356 0096 5F91      		pop r21
 357 0098 4F91      		pop r20
 358 009a 3F91      		pop r19
 359 009c 2F91      		pop r18
 360 009e 0F90      		pop r0
 361 00a0 0BBE      		out 91-32,r0
 362 00a2 0F90      		pop r0
 363 00a4 0FBE      		out __SREG__,r0
 364 00a6 0F90      		pop r0
 365 00a8 1F90      		pop __zero_reg__
 366 00aa 1895      		reti
 367               	.LFE8:
 369               	.global	clock_counter_10ms
 370               	.global	clock_counter_10ms
 371               		.section .bss
 374               	clock_counter_10ms:
 375 0000 00        		.skip 1,0
 376               	.global	clock_counter_250ms
 377               	.global	clock_counter_250ms
 380               	clock_counter_250ms:
 381 0001 00        		.skip 1,0
 382               	.global	clock_counter_1s
 383               	.global	clock_counter_1s
 386               	clock_counter_1s:
 387 0002 00        		.skip 1,0
 388               	.global	clock_flag_10ms
 389               	.global	clock_flag_10ms
 392               	clock_flag_10ms:
 393 0003 00        		.skip 1,0
 394               	.global	clock_flag_250ms
 395               	.global	clock_flag_250ms
 398               	clock_flag_250ms:
 399 0004 00        		.skip 1,0
 400               	.global	clock_flag_1s
 401               	.global	clock_flag_1s
 404               	clock_flag_1s:
 405 0005 00        		.skip 1,0
 406               		.comm next_step_time,4,1
 463               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 timer.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:21     .text.unlikely:00000000 timer_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:47     .text.setTimer:00000000 setTimer
                            *COM*:00000004 next_step_time
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:125    .text.timer_stop:00000000 timer_stop
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:140    .text.__vector_17:00000000 __vector_17
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:276    .text.__vector_18:00000000 __vector_18
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:374    .bss:00000000 clock_counter_10ms
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:392    .bss:00000003 clock_flag_10ms
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:380    .bss:00000001 clock_counter_250ms
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:398    .bss:00000004 clock_flag_250ms
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:386    .bss:00000002 clock_counter_1s
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccc1JcXj.s:404    .bss:00000005 clock_flag_1s

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
queue_step
dda_clock
