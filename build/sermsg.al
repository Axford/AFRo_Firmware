   1               		.file	"sermsg.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.serwrite_uint32_vf,"ax",@progbits
  19               	.global	serwrite_uint32_vf
  21               	serwrite_uint32_vf:
  22               	.LFB8:
  23               	.LSM0:
  24               	.LVL0:
  25 0000 CF92      		push r12
  26 0002 DF92      		push r13
  27 0004 EF92      		push r14
  28 0006 FF92      		push r15
  29 0008 0F93      		push r16
  30 000a 1F93      		push r17
  31               	/* prologue: function */
  32               	/* frame size = 0 */
  33 000c 7B01      		movw r14,r22
  34 000e 8C01      		movw r16,r24
  35 0010 C42E      		mov r12,r20
  36               	.LSM1:
  37 0012 E0E0      		ldi r30,lo8(powers+36)
  38 0014 F0E0      		ldi r31,hi8(powers+36)
  39 0016 29E0      		ldi r18,lo8(9)
  40               	.LVL1:
  41               	.L3:
  42               	.LSM2:
  43 0018 8081      		ld r24,Z
  44 001a 9181      		ldd r25,Z+1
  45 001c A281      		ldd r26,Z+2
  46 001e B381      		ldd r27,Z+3
  47 0020 E816      		cp r14,r24
  48 0022 F906      		cpc r15,r25
  49 0024 0A07      		cpc r16,r26
  50 0026 1B07      		cpc r17,r27
  51 0028 00F4      		brsh .L2
  52               	.LSM3:
  53 002a 2150      		subi r18,lo8(-(-1))
  54 002c 3497      		sbiw r30,4
  55 002e 2223      		tst r18
  56 0030 01F4      		brne .L3
  57               	.L2:
  58 0032 D22E      		mov r13,r18
  59 0034 2C15      		cp r18,r12
  60 0036 00F4      		brsh .L9
  61 0038 DC2C      		mov r13,r12
  62               	.LVL2:
  63               	.L9:
  64               	.LSM4:
  65 003a ED2D      		mov r30,r13
  66 003c F0E0      		ldi r31,lo8(0)
  67               	.LVL3:
  68 003e EE0F      		lsl r30
  69 0040 FF1F      		rol r31
  70 0042 EE0F      		lsl r30
  71 0044 FF1F      		rol r31
  72               	.LVL4:
  73 0046 E050      		subi r30,lo8(-(powers))
  74 0048 F040      		sbci r31,hi8(-(powers))
  75               	.LVL5:
  76 004a 2081      		ld r18,Z
  77 004c 3181      		ldd r19,Z+1
  78 004e 4281      		ldd r20,Z+2
  79 0050 5381      		ldd r21,Z+3
  80 0052 80E0      		ldi r24,lo8(0)
  81               	.LVL6:
  82 0054 00C0      		rjmp .L5
  83               	.L6:
  84 0056 E21A      		sub r14,r18
  85 0058 F30A      		sbc r15,r19
  86 005a 040B      		sbc r16,r20
  87 005c 150B      		sbc r17,r21
  88 005e 8F5F      		subi r24,lo8(-(1))
  89               	.LVL7:
  90               	.L5:
  91 0060 E216      		cp r14,r18
  92 0062 F306      		cpc r15,r19
  93 0064 0407      		cpc r16,r20
  94 0066 1507      		cpc r17,r21
  95 0068 00F4      		brsh .L6
  96               	.LSM5:
  97 006a 805D      		subi r24,lo8(-(48))
  98               	.LVL8:
  99 006c 0E94 0000 		call serial_writechar
 100               	.LVL9:
 101               	.LSM6:
 102 0070 DC14      		cp r13,r12
 103               	.LVL10:
 104 0072 01F4      		brne .L7
 105               	.LSM7:
 106 0074 8EE2      		ldi r24,lo8(46)
 107 0076 0E94 0000 		call serial_writechar
 108               	.L7:
 109               	.LSM8:
 110 007a DD20      		tst r13
 111 007c 01F0      		breq .L10
 112 007e DA94      		dec r13
 113 0080 00C0      		rjmp .L9
 114               	.L10:
 115               	/* epilogue start */
 116               	.LSM9:
 117 0082 1F91      		pop r17
 118 0084 0F91      		pop r16
 119 0086 FF90      		pop r15
 120 0088 EF90      		pop r14
 121               	.LVL11:
 122 008a DF90      		pop r13
 123               	.LVL12:
 124 008c CF90      		pop r12
 125               	.LVL13:
 126 008e 0895      		ret
 127               	.LFE8:
 129               		.section	.text.serwrite_int32_vf,"ax",@progbits
 130               	.global	serwrite_int32_vf
 132               	serwrite_int32_vf:
 133               	.LFB9:
 134               	.LSM10:
 135               	.LVL14:
 136 0000 DF92      		push r13
 137 0002 EF92      		push r14
 138 0004 FF92      		push r15
 139 0006 0F93      		push r16
 140 0008 1F93      		push r17
 141               	/* prologue: function */
 142               	/* frame size = 0 */
 143 000a 7B01      		movw r14,r22
 144 000c 8C01      		movw r16,r24
 145 000e D42E      		mov r13,r20
 146               	.LSM11:
 147 0010 97FF      		sbrs r25,7
 148 0012 00C0      		rjmp .L12
 149               	.LVL15:
 150               	.LSM12:
 151 0014 8DE2      		ldi r24,lo8(45)
 152 0016 0E94 0000 		call serial_writechar
 153               	.LVL16:
 154               	.LSM13:
 155 001a 1095      		com r17
 156 001c 0095      		com r16
 157 001e F094      		com r15
 158 0020 E094      		com r14
 159 0022 E11C      		adc r14,__zero_reg__
 160 0024 F11C      		adc r15,__zero_reg__
 161 0026 011D      		adc r16,__zero_reg__
 162 0028 111D      		adc r17,__zero_reg__
 163               	.LVL17:
 164               	.L12:
 165               	.LSM14:
 166 002a C801      		movw r24,r16
 167 002c B701      		movw r22,r14
 168 002e 4D2D      		mov r20,r13
 169 0030 0E94 0000 		call serwrite_uint32_vf
 170               	/* epilogue start */
 171               	.LSM15:
 172 0034 1F91      		pop r17
 173 0036 0F91      		pop r16
 174 0038 FF90      		pop r15
 175 003a EF90      		pop r14
 176               	.LVL18:
 177 003c DF90      		pop r13
 178               	.LVL19:
 179 003e 0895      		ret
 180               	.LFE9:
 182               		.section	.text.serwrite_uint32,"ax",@progbits
 183               	.global	serwrite_uint32
 185               	serwrite_uint32:
 186               	.LFB6:
 187               	.LSM16:
 188               	.LVL20:
 189 0000 DF92      		push r13
 190 0002 EF92      		push r14
 191 0004 FF92      		push r15
 192 0006 0F93      		push r16
 193 0008 1F93      		push r17
 194               	/* prologue: function */
 195               	/* frame size = 0 */
 196 000a 7B01      		movw r14,r22
 197 000c 8C01      		movw r16,r24
 198               	.LSM17:
 199 000e E0E0      		ldi r30,lo8(powers+36)
 200 0010 F0E0      		ldi r31,hi8(powers+36)
 201 0012 29E0      		ldi r18,lo8(9)
 202 0014 D22E      		mov r13,r18
 203               	.LVL21:
 204               	.L16:
 205               	.LSM18:
 206 0016 8081      		ld r24,Z
 207 0018 9181      		ldd r25,Z+1
 208 001a A281      		ldd r26,Z+2
 209 001c B381      		ldd r27,Z+3
 210 001e E816      		cp r14,r24
 211 0020 F906      		cpc r15,r25
 212 0022 0A07      		cpc r16,r26
 213 0024 1B07      		cpc r17,r27
 214 0026 00F4      		brsh .L15
 215               	.LSM19:
 216 0028 DA94      		dec r13
 217 002a 3497      		sbiw r30,4
 218 002c DD20      		tst r13
 219 002e 01F4      		brne .L16
 220               	.L15:
 221               	.LSM20:
 222 0030 ED2D      		mov r30,r13
 223 0032 F0E0      		ldi r31,lo8(0)
 224               	.LVL22:
 225 0034 EE0F      		lsl r30
 226 0036 FF1F      		rol r31
 227 0038 EE0F      		lsl r30
 228 003a FF1F      		rol r31
 229               	.LVL23:
 230 003c E050      		subi r30,lo8(-(powers))
 231 003e F040      		sbci r31,hi8(-(powers))
 232               	.LVL24:
 233 0040 2081      		ld r18,Z
 234 0042 3181      		ldd r19,Z+1
 235 0044 4281      		ldd r20,Z+2
 236 0046 5381      		ldd r21,Z+3
 237 0048 80E0      		ldi r24,lo8(0)
 238               	.LVL25:
 239 004a 00C0      		rjmp .L17
 240               	.L18:
 241 004c E21A      		sub r14,r18
 242 004e F30A      		sbc r15,r19
 243 0050 040B      		sbc r16,r20
 244 0052 150B      		sbc r17,r21
 245 0054 8F5F      		subi r24,lo8(-(1))
 246               	.LVL26:
 247               	.L17:
 248 0056 E216      		cp r14,r18
 249 0058 F306      		cpc r15,r19
 250 005a 0407      		cpc r16,r20
 251 005c 1507      		cpc r17,r21
 252 005e 00F4      		brsh .L18
 253               	.LSM21:
 254 0060 805D      		subi r24,lo8(-(48))
 255               	.LVL27:
 256 0062 0E94 0000 		call serial_writechar
 257               	.LVL28:
 258               	.LSM22:
 259 0066 DD20      		tst r13
 260               	.LVL29:
 261 0068 01F0      		breq .L20
 262 006a DA94      		dec r13
 263 006c 00C0      		rjmp .L15
 264               	.L20:
 265               	/* epilogue start */
 266               	.LSM23:
 267 006e 1F91      		pop r17
 268 0070 0F91      		pop r16
 269 0072 FF90      		pop r15
 270 0074 EF90      		pop r14
 271               	.LVL30:
 272 0076 DF90      		pop r13
 273               	.LVL31:
 274 0078 0895      		ret
 275               	.LFE6:
 277               		.section	.text.serwrite_int32,"ax",@progbits
 278               	.global	serwrite_int32
 280               	serwrite_int32:
 281               	.LFB7:
 282               	.LSM24:
 283               	.LVL32:
 284 0000 EF92      		push r14
 285 0002 FF92      		push r15
 286 0004 0F93      		push r16
 287 0006 1F93      		push r17
 288               	/* prologue: function */
 289               	/* frame size = 0 */
 290 0008 7B01      		movw r14,r22
 291 000a 8C01      		movw r16,r24
 292               	.LSM25:
 293 000c 97FF      		sbrs r25,7
 294 000e 00C0      		rjmp .L22
 295               	.LSM26:
 296 0010 8DE2      		ldi r24,lo8(45)
 297 0012 0E94 0000 		call serial_writechar
 298               	.LVL33:
 299               	.LSM27:
 300 0016 1095      		com r17
 301 0018 0095      		com r16
 302 001a F094      		com r15
 303 001c E094      		com r14
 304 001e E11C      		adc r14,__zero_reg__
 305 0020 F11C      		adc r15,__zero_reg__
 306 0022 011D      		adc r16,__zero_reg__
 307 0024 111D      		adc r17,__zero_reg__
 308               	.LVL34:
 309               	.L22:
 310               	.LSM28:
 311 0026 C801      		movw r24,r16
 312 0028 B701      		movw r22,r14
 313 002a 0E94 0000 		call serwrite_uint32
 314               	/* epilogue start */
 315               	.LSM29:
 316 002e 1F91      		pop r17
 317 0030 0F91      		pop r16
 318 0032 FF90      		pop r15
 319 0034 EF90      		pop r14
 320               	.LVL35:
 321 0036 0895      		ret
 322               	.LFE7:
 324               		.section	.text.serwrite_hex4,"ax",@progbits
 325               	.global	serwrite_hex4
 327               	serwrite_hex4:
 328               	.LFB2:
 329               	.LSM30:
 330               	.LVL36:
 331               	/* prologue: function */
 332               	/* frame size = 0 */
 333               	.LSM31:
 334 0000 8F70      		andi r24,lo8(15)
 335               	.LVL37:
 336               	.LSM32:
 337 0002 8A30      		cpi r24,lo8(10)
 338 0004 00F4      		brsh .L25
 339               	.LSM33:
 340 0006 805D      		subi r24,lo8(-(48))
 341               	.LVL38:
 342 0008 00C0      		rjmp .L28
 343               	.LVL39:
 344               	.L25:
 345               	.LSM34:
 346 000a 895C      		subi r24,lo8(-(55))
 347               	.LVL40:
 348               	.L28:
 349 000c 0E94 0000 		call serial_writechar
 350 0010 0895      		ret
 351               	.LFE2:
 353               		.section	.text.serwrite_hex8,"ax",@progbits
 354               	.global	serwrite_hex8
 356               	serwrite_hex8:
 357               	.LFB3:
 358               	.LSM35:
 359               	.LVL41:
 360 0000 1F93      		push r17
 361               	/* prologue: function */
 362               	/* frame size = 0 */
 363 0002 182F      		mov r17,r24
 364               	.LSM36:
 365 0004 8295      		swap r24
 366               	.LVL42:
 367 0006 8F70      		andi r24,lo8(15)
 368 0008 0E94 0000 		call serwrite_hex4
 369               	.LSM37:
 370 000c 812F      		mov r24,r17
 371 000e 8F70      		andi r24,lo8(15)
 372 0010 0E94 0000 		call serwrite_hex4
 373               	/* epilogue start */
 374               	.LSM38:
 375 0014 1F91      		pop r17
 376               	.LVL43:
 377 0016 0895      		ret
 378               	.LFE3:
 380               		.section	.text.serwrite_hex16,"ax",@progbits
 381               	.global	serwrite_hex16
 383               	serwrite_hex16:
 384               	.LFB4:
 385               	.LSM39:
 386               	.LVL44:
 387 0000 1F93      		push r17
 388               	/* prologue: function */
 389               	/* frame size = 0 */
 390 0002 182F      		mov r17,r24
 391               	.LSM40:
 392 0004 892F      		mov r24,r25
 393               	.LVL45:
 394 0006 0E94 0000 		call serwrite_hex8
 395               	.LVL46:
 396               	.LSM41:
 397 000a 812F      		mov r24,r17
 398 000c 0E94 0000 		call serwrite_hex8
 399               	/* epilogue start */
 400               	.LSM42:
 401 0010 1F91      		pop r17
 402               	.LVL47:
 403 0012 0895      		ret
 404               	.LFE4:
 406               		.section	.text.serwrite_hex32,"ax",@progbits
 407               	.global	serwrite_hex32
 409               	serwrite_hex32:
 410               	.LFB5:
 411               	.LSM43:
 412               	.LVL48:
 413 0000 EF92      		push r14
 414 0002 FF92      		push r15
 415 0004 0F93      		push r16
 416 0006 1F93      		push r17
 417               	/* prologue: function */
 418               	/* frame size = 0 */
 419 0008 7B01      		movw r14,r22
 420 000a 8C01      		movw r16,r24
 421               	.LSM44:
 422 000c AA27      		clr r26
 423 000e BB27      		clr r27
 424 0010 0E94 0000 		call serwrite_hex16
 425               	.LVL49:
 426               	.LSM45:
 427 0014 C701      		movw r24,r14
 428 0016 0E94 0000 		call serwrite_hex16
 429               	/* epilogue start */
 430               	.LSM46:
 431 001a 1F91      		pop r17
 432 001c 0F91      		pop r16
 433 001e FF90      		pop r15
 434 0020 EF90      		pop r14
 435               	.LVL50:
 436 0022 0895      		ret
 437               	.LFE5:
 439               	.global	powers
 440               		.data
 443               	powers:
 444 0000 01        		.byte	1
 445 0001 00        		.byte	0
 446 0002 00        		.byte	0
 447 0003 00        		.byte	0
 448 0004 0A        		.byte	10
 449 0005 00        		.byte	0
 450 0006 00        		.byte	0
 451 0007 00        		.byte	0
 452 0008 64        		.byte	100
 453 0009 00        		.byte	0
 454 000a 00        		.byte	0
 455 000b 00        		.byte	0
 456 000c E8        		.byte	-24
 457 000d 03        		.byte	3
 458 000e 00        		.byte	0
 459 000f 00        		.byte	0
 460 0010 10        		.byte	16
 461 0011 27        		.byte	39
 462 0012 00        		.byte	0
 463 0013 00        		.byte	0
 464 0014 A0        		.byte	-96
 465 0015 86        		.byte	-122
 466 0016 01        		.byte	1
 467 0017 00        		.byte	0
 468 0018 40        		.byte	64
 469 0019 42        		.byte	66
 470 001a 0F        		.byte	15
 471 001b 00        		.byte	0
 472 001c 80        		.byte	-128
 473 001d 96        		.byte	-106
 474 001e 98        		.byte	-104
 475 001f 00        		.byte	0
 476 0020 00        		.byte	0
 477 0021 E1        		.byte	-31
 478 0022 F5        		.byte	-11
 479 0023 05        		.byte	5
 480 0024 00        		.byte	0
 481 0025 CA        		.byte	-54
 482 0026 9A        		.byte	-102
 483 0027 3B        		.byte	59
 564               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 sermsg.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:21     .text.serwrite_uint32_vf:00000000 serwrite_uint32_vf
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:443    .data:00000000 powers
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:132    .text.serwrite_int32_vf:00000000 serwrite_int32_vf
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:185    .text.serwrite_uint32:00000000 serwrite_uint32
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:280    .text.serwrite_int32:00000000 serwrite_int32
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:327    .text.serwrite_hex4:00000000 serwrite_hex4
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:356    .text.serwrite_hex8:00000000 serwrite_hex8
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:383    .text.serwrite_hex16:00000000 serwrite_hex16
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccMihNB2.s:409    .text.serwrite_hex32:00000000 serwrite_hex32

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
serial_writechar
