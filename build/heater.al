   1               		.file	"heater.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.heater_init,"ax",@progbits
  19               	.global	heater_init
  21               	heater_init:
  22               	.LFB13:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 23E0      		ldi r18,lo8(3)
  28 0002 24BD      		out 68-32,r18
  29               	.LSM2:
  30 0004 91E0      		ldi r25,lo8(1)
  31 0006 95BD      		out 69-32,r25
  32               	.LSM3:
  33 0008 85E0      		ldi r24,lo8(5)
  34 000a 85BD      		out 69-32,r24
  35               	.LSM4:
  36 000c 1092 6E00 		sts 110,__zero_reg__
  37               	.LSM5:
  38 0010 17BC      		out 71-32,__zero_reg__
  39               	.LSM6:
  40 0012 18BC      		out 72-32,__zero_reg__
  41               	.LSM7:
  42 0014 2093 B000 		sts 176,r18
  43               	.LSM8:
  44 0018 E1EB      		ldi r30,lo8(177)
  45 001a F0E0      		ldi r31,hi8(177)
  46 001c 9083      		st Z,r25
  47               	.LSM9:
  48 001e 87E0      		ldi r24,lo8(7)
  49 0020 8083      		st Z,r24
  50               	.LSM10:
  51 0022 1092 7000 		sts 112,__zero_reg__
  52               	.LSM11:
  53 0026 1092 B300 		sts 179,__zero_reg__
  54               	.LSM12:
  55 002a 1092 B400 		sts 180,__zero_reg__
  56               	.LSM13:
  57 002e 9093 9000 		sts 144,r25
  58               	.LSM14:
  59 0032 89E0      		ldi r24,lo8(9)
  60 0034 8093 9100 		sts 145,r24
  61               	.LSM15:
  62 0038 1092 7100 		sts 113,__zero_reg__
  63               	.LSM16:
  64 003c 1092 9900 		sts (152)+1,__zero_reg__
  65 0040 1092 9800 		sts 152,__zero_reg__
  66               	.LSM17:
  67 0044 1092 9B00 		sts (154)+1,__zero_reg__
  68 0048 1092 9A00 		sts 154,__zero_reg__
  69               	.LSM18:
  70 004c 9093 A000 		sts 160,r25
  71               	.LSM19:
  72 0050 8093 A100 		sts 161,r24
  73               	.LSM20:
  74 0054 1092 7200 		sts 114,__zero_reg__
  75               	.LSM21:
  76 0058 1092 A900 		sts (168)+1,__zero_reg__
  77 005c 1092 A800 		sts 168,__zero_reg__
  78               	.LSM22:
  79 0060 1092 AB00 		sts (170)+1,__zero_reg__
  80 0064 1092 AA00 		sts 170,__zero_reg__
  81               	.LSM23:
  82 0068 9093 2001 		sts 288,r25
  83               	.LSM24:
  84 006c 8093 2101 		sts 289,r24
  85               	.LSM25:
  86 0070 1092 7300 		sts 115,__zero_reg__
  87               	.LSM26:
  88 0074 1092 2901 		sts (296)+1,__zero_reg__
  89 0078 1092 2801 		sts 296,__zero_reg__
  90               	.LSM27:
  91 007c 1092 2B01 		sts (298)+1,__zero_reg__
  92 0080 1092 2A01 		sts 298,__zero_reg__
  93               	/* epilogue start */
  94               	.LSM28:
  95 0084 0895      		ret
  96               	.LFE13:
  98               		.section	.text.heater_tick,"ax",@progbits
  99               	.global	heater_tick
 101               	heater_tick:
 102               	.LFB14:
 103               	.LSM29:
 104               	.LVL0:
 105               	/* prologue: function */
 106               	/* frame size = 0 */
 107               	/* epilogue start */
 108               	.LSM30:
 109 0000 0895      		ret
 110               	.LFE14:
 112               		.section	.text.heater_set,"ax",@progbits
 113               	.global	heater_set
 115               	heater_set:
 116               	.LFB15:
 117               	.LSM31:
 118               	.LVL1:
 119               	/* prologue: function */
 120               	/* frame size = 0 */
 121               	/* epilogue start */
 122               	.LSM32:
 123 0000 0895      		ret
 124               	.LFE15:
 126               		.section	.text.heaters_all_zero,"ax",@progbits
 127               	.global	heaters_all_zero
 129               	heaters_all_zero:
 130               	.LFB16:
 131               	.LSM33:
 132               	/* prologue: function */
 133               	/* frame size = 0 */
 134               	.LSM34:
 135 0000 8FEF      		ldi r24,lo8(-1)
 136               	/* epilogue start */
 137 0002 0895      		ret
 138               	.LFE16:
 140               		.section	.text.heaters_all_off,"ax",@progbits
 141               	.global	heaters_all_off
 143               	heaters_all_off:
 144               	.LFB17:
 145               	.LSM35:
 146               	/* prologue: function */
 147               	/* frame size = 0 */
 148               	.LSM36:
 149 0000 8FEF      		ldi r24,lo8(-1)
 150               	/* epilogue start */
 151 0002 0895      		ret
 152               	.LFE17:
 154               		.section	.text.heater_print,"ax",@progbits
 155               	.global	heater_print
 157               	heater_print:
 158               	.LFB18:
 159               	.LSM37:
 160               	.LVL2:
 161 0000 4F92      		push r4
 162 0002 5F92      		push r5
 163 0004 6F92      		push r6
 164 0006 7F92      		push r7
 165 0008 8F92      		push r8
 166 000a 9F92      		push r9
 167 000c AF92      		push r10
 168 000e BF92      		push r11
 169 0010 CF92      		push r12
 170 0012 DF92      		push r13
 171 0014 EF92      		push r14
 172 0016 FF92      		push r15
 173 0018 0F93      		push r16
 174 001a 1F93      		push r17
 175               	/* prologue: function */
 176               	/* frame size = 0 */
 177 001c AC01      		movw r20,r24
 178               	.LVL3:
 179               	.LSM38:
 180 001e 80E0      		ldi r24,lo8(heaters_pid)
 181 0020 90E0      		ldi r25,hi8(heaters_pid)
 182 0022 9A01      		movw r18,r20
 183 0024 220F      		lsl r18
 184 0026 331F      		rol r19
 185               	.LVL4:
 186 0028 F901      		movw r30,r18
 187 002a A3E0      		ldi r26,3
 188 002c EE0F      	1:	lsl r30
 189 002e FF1F      		rol r31
 190 0030 AA95      		dec r26
 191 0032 01F4      		brne 1b
 192 0034 E21B      		sub r30,r18
 193 0036 F30B      		sbc r31,r19
 194 0038 E80F      		add r30,r24
 195 003a F91F      		adc r31,r25
 196 003c 4080      		ld r4,Z
 197 003e 5180      		ldd r5,Z+1
 198 0040 6280      		ldd r6,Z+2
 199 0042 7380      		ldd r7,Z+3
 200 0044 9A01      		movw r18,r20
 201 0046 220F      		lsl r18
 202 0048 331F      		rol r19
 203               	.LVL5:
 204 004a F901      		movw r30,r18
 205 004c 63E0      		ldi r22,3
 206 004e EE0F      	1:	lsl r30
 207 0050 FF1F      		rol r31
 208 0052 6A95      		dec r22
 209 0054 01F4      		brne 1b
 210 0056 E21B      		sub r30,r18
 211 0058 F30B      		sbc r31,r19
 212 005a E80F      		add r30,r24
 213 005c F91F      		adc r31,r25
 214 005e A480      		ldd r10,Z+4
 215 0060 B580      		ldd r11,Z+5
 216 0062 C680      		ldd r12,Z+6
 217 0064 D780      		ldd r13,Z+7
 218 0066 9A01      		movw r18,r20
 219 0068 220F      		lsl r18
 220 006a 331F      		rol r19
 221               	.LVL6:
 222 006c F901      		movw r30,r18
 223 006e 13E0      		ldi r17,3
 224 0070 EE0F      	1:	lsl r30
 225 0072 FF1F      		rol r31
 226 0074 1A95      		dec r17
 227 0076 01F4      		brne 1b
 228 0078 E21B      		sub r30,r18
 229 007a F30B      		sbc r31,r19
 230 007c E80F      		add r30,r24
 231 007e F91F      		adc r31,r25
 232 0080 E084      		ldd r14,Z+8
 233 0082 F184      		ldd r15,Z+9
 234 0084 0285      		ldd r16,Z+10
 235 0086 1385      		ldd r17,Z+11
 236 0088 9A01      		movw r18,r20
 237 008a 220F      		lsl r18
 238 008c 331F      		rol r19
 239               	.LVL7:
 240 008e F901      		movw r30,r18
 241 0090 A3E0      		ldi r26,3
 242 0092 EE0F      	1:	lsl r30
 243 0094 FF1F      		rol r31
 244 0096 AA95      		dec r26
 245 0098 01F4      		brne 1b
 246 009a E21B      		sub r30,r18
 247 009c F30B      		sbc r31,r19
 248 009e E80F      		add r30,r24
 249 00a0 F91F      		adc r31,r25
 250 00a2 8484      		ldd r8,Z+12
 251 00a4 9584      		ldd r9,Z+13
 252 00a6 9A01      		movw r18,r20
 253 00a8 220F      		lsl r18
 254 00aa 331F      		rol r19
 255               	.LVL8:
 256 00ac A901      		movw r20,r18
 257 00ae 63E0      		ldi r22,3
 258 00b0 440F      	1:	lsl r20
 259 00b2 551F      		rol r21
 260 00b4 6A95      		dec r22
 261 00b6 01F4      		brne 1b
 262 00b8 421B      		sub r20,r18
 263 00ba 530B      		sbc r21,r19
 264 00bc 840F      		add r24,r20
 265 00be 951F      		adc r25,r21
 266 00c0 6EE0      		ldi r22,lo8(14)
 267 00c2 70E0      		ldi r23,hi8(14)
 268 00c4 0E94 0000 		call crc_block
 269 00c8 2DB7      		in r18,__SP_L__
 270 00ca 3EB7      		in r19,__SP_H__
 271 00cc 2251      		subi r18,lo8(-(-18))
 272 00ce 3040      		sbci r19,hi8(-(-18))
 273 00d0 0FB6      		in __tmp_reg__,__SREG__
 274 00d2 F894      		cli
 275 00d4 3EBF      		out __SP_H__,r19
 276 00d6 0FBE      		out __SREG__,__tmp_reg__
 277 00d8 2DBF      		out __SP_L__,r18
 278 00da EDB7      		in r30,__SP_L__
 279 00dc FEB7      		in r31,__SP_H__
 280 00de 3196      		adiw r30,1
 281 00e0 20E0      		ldi r18,lo8(__c.1798)
 282 00e2 30E0      		ldi r19,hi8(__c.1798)
 283 00e4 ADB7      		in r26,__SP_L__
 284 00e6 BEB7      		in r27,__SP_H__
 285 00e8 1296      		adiw r26,1+1
 286 00ea 3C93      		st X,r19
 287 00ec 2E93      		st -X,r18
 288 00ee 1197      		sbiw r26,1
 289 00f0 4282      		std Z+2,r4
 290 00f2 5382      		std Z+3,r5
 291 00f4 6482      		std Z+4,r6
 292 00f6 7582      		std Z+5,r7
 293 00f8 A682      		std Z+6,r10
 294 00fa B782      		std Z+7,r11
 295 00fc C086      		std Z+8,r12
 296 00fe D186      		std Z+9,r13
 297 0100 E286      		std Z+10,r14
 298 0102 F386      		std Z+11,r15
 299 0104 0487      		std Z+12,r16
 300 0106 1587      		std Z+13,r17
 301 0108 9786      		std Z+15,r9
 302 010a 8686      		std Z+14,r8
 303 010c 918B      		std Z+17,r25
 304 010e 808B      		std Z+16,r24
 305 0110 0E94 0000 		call sersendf_P
 306 0114 2DB7      		in r18,__SP_L__
 307 0116 3EB7      		in r19,__SP_H__
 308 0118 2E5E      		subi r18,lo8(-(18))
 309 011a 3F4F      		sbci r19,hi8(-(18))
 310 011c 0FB6      		in __tmp_reg__,__SREG__
 311 011e F894      		cli
 312 0120 3EBF      		out __SP_H__,r19
 313 0122 0FBE      		out __SREG__,__tmp_reg__
 314 0124 2DBF      		out __SP_L__,r18
 315               	/* epilogue start */
 316               	.LSM39:
 317 0126 1F91      		pop r17
 318 0128 0F91      		pop r16
 319 012a FF90      		pop r15
 320 012c EF90      		pop r14
 321 012e DF90      		pop r13
 322 0130 CF90      		pop r12
 323 0132 BF90      		pop r11
 324 0134 AF90      		pop r10
 325 0136 9F90      		pop r9
 326 0138 8F90      		pop r8
 327 013a 7F90      		pop r7
 328 013c 6F90      		pop r6
 329 013e 5F90      		pop r5
 330 0140 4F90      		pop r4
 331 0142 0895      		ret
 332               	.LFE18:
 334               		.section	.progmem.data,"a",@progbits
 337               	__c.1798:
 338 0000 503A 256C 		.string	"P:%ld I:%ld D:%ld Ilim:%u crc:%u "
 338      6420 493A 
 338      256C 6420 
 338      443A 256C 
 338      6420 496C 
 339               		.comm heaters_pid,0,1
 340               		.comm heaters_runtime,0,1
 405               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 heater.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:21     .text.heater_init:00000000 heater_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:101    .text.heater_tick:00000000 heater_tick
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:115    .text.heater_set:00000000 heater_set
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:129    .text.heaters_all_zero:00000000 heaters_all_zero
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:143    .text.heaters_all_off:00000000 heaters_all_off
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:157    .text.heater_print:00000000 heater_print
                            *COM*:00000000 heaters_pid
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccQKeGA9.s:337    .progmem.data:00000000 __c.1798
                            *COM*:00000000 heaters_runtime

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
crc_block
sersendf_P
