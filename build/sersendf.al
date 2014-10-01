   1               		.file	"sersendf.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.sersendf_P,"ax",@progbits
  19               	.global	sersendf_P
  21               	sersendf_P:
  22               	.LFB2:
  23               	.LSM0:
  24               	.LVL0:
  25 0000 A0E0      		ldi r26,lo8(0)
  26 0002 B0E0      		ldi r27,hi8(0)
  27 0004 E0E0      		ldi r30,lo8(gs(1f))
  28 0006 F0E0      		ldi r31,hi8(gs(1f))
  29 0008 0C94 0000 		jmp __prologue_saves__+((18 - 10) * 2)
  30               	1:
  31               	/* prologue: function */
  32               	/* frame size = 0 */
  33               	.LSM1:
  34 000c 90E1      		ldi r25,lo8(16)
  35 000e E92E      		mov r14,r25
  36 0010 F12C      		mov r15,__zero_reg__
  37               	.LVL1:
  38 0012 EC0E      		add r14,r28
  39 0014 FD1E      		adc r15,r29
  40 0016 8E85      		ldd r24,Y+14
  41 0018 9F85      		ldd r25,Y+15
  42               	.LVL2:
  43 001a FC01      		movw r30,r24
  44 001c 5F01      		movw r10,r30
  45 001e 00E0      		ldi r16,lo8(0)
  46               	.LVL3:
  47 0020 00C0      		rjmp .L2
  48               	.LVL4:
  49               	.L19:
  50               	.LSM2:
  51 0022 0023      		tst r16
  52 0024 01F4      		brne .+2
  53 0026 00C0      		rjmp .L3
  54               	.LSM3:
  55 0028 8137      		cpi r24,lo8(113)
  56 002a 01F4      		brne .+2
  57 002c 00C0      		rjmp .L8
  58 002e 8237      		cpi r24,lo8(114)
  59 0030 00F4      		brsh .L12
  60 0032 8436      		cpi r24,lo8(100)
  61 0034 01F0      		breq .L6
  62 0036 8C36      		cpi r24,lo8(108)
  63 0038 01F0      		breq .L7
  64 003a 8336      		cpi r24,lo8(99)
  65 003c 01F0      		breq .+2
  66 003e 00C0      		rjmp .L4
  67 0040 00C0      		rjmp .L26
  68               	.L12:
  69 0042 8537      		cpi r24,lo8(117)
  70 0044 01F0      		breq .L10
  71 0046 8837      		cpi r24,lo8(120)
  72 0048 01F4      		brne .+2
  73 004a 00C0      		rjmp .L11
  74 004c 8337      		cpi r24,lo8(115)
  75 004e 01F0      		breq .+2
  76 0050 00C0      		rjmp .L4
  77 0052 00C0      		rjmp .L27
  78               	.L7:
  79 0054 04E0      		ldi r16,lo8(4)
  80 0056 00C0      		rjmp .L13
  81               	.L27:
  82 0058 01E0      		ldi r16,lo8(1)
  83 005a 00C0      		rjmp .L13
  84               	.L10:
  85               	.LSM4:
  86 005c 0430      		cpi r16,lo8(4)
  87 005e 01F4      		brne .L14
  88               	.LSM5:
  89 0060 8701      		movw r16,r14
  90               	.LVL5:
  91 0062 0C5F      		subi r16,lo8(-(4))
  92 0064 1F4F      		sbci r17,hi8(-(4))
  93               	.LVL6:
  94 0066 F701      		movw r30,r14
  95 0068 6081      		ld r22,Z
  96 006a 7181      		ldd r23,Z+1
  97 006c 8281      		ldd r24,Z+2
  98 006e 9381      		ldd r25,Z+3
  99 0070 00C0      		rjmp .L24
 100               	.LVL7:
 101               	.L14:
 102               	.LSM6:
 103 0072 8701      		movw r16,r14
 104               	.LVL8:
 105 0074 0E5F      		subi r16,lo8(-(2))
 106 0076 1F4F      		sbci r17,hi8(-(2))
 107               	.LVL9:
 108 0078 F701      		movw r30,r14
 109 007a 6081      		ld r22,Z
 110 007c 7181      		ldd r23,Z+1
 111 007e 80E0      		ldi r24,lo8(0)
 112 0080 90E0      		ldi r25,hi8(0)
 113               	.LVL10:
 114               	.L24:
 115 0082 0E94 0000 		call serwrite_uint32
 116               	.LVL11:
 117 0086 00C0      		rjmp .L23
 118               	.LVL12:
 119               	.L6:
 120               	.LSM7:
 121 0088 0430      		cpi r16,lo8(4)
 122 008a 01F4      		brne .L15
 123               	.LSM8:
 124 008c 8701      		movw r16,r14
 125               	.LVL13:
 126 008e 0C5F      		subi r16,lo8(-(4))
 127 0090 1F4F      		sbci r17,hi8(-(4))
 128               	.LVL14:
 129 0092 F701      		movw r30,r14
 130 0094 6081      		ld r22,Z
 131 0096 7181      		ldd r23,Z+1
 132 0098 8281      		ldd r24,Z+2
 133 009a 9381      		ldd r25,Z+3
 134 009c 00C0      		rjmp .L25
 135               	.LVL15:
 136               	.L15:
 137               	.LSM9:
 138 009e 8701      		movw r16,r14
 139               	.LVL16:
 140 00a0 0E5F      		subi r16,lo8(-(2))
 141 00a2 1F4F      		sbci r17,hi8(-(2))
 142               	.LVL17:
 143 00a4 F701      		movw r30,r14
 144 00a6 6081      		ld r22,Z
 145 00a8 7181      		ldd r23,Z+1
 146 00aa 8827      		clr r24
 147 00ac 77FD      		sbrc r23,7
 148 00ae 8095      		com r24
 149 00b0 982F      		mov r25,r24
 150               	.LVL18:
 151               	.L25:
 152 00b2 0E94 0000 		call serwrite_int32
 153               	.LVL19:
 154 00b6 00C0      		rjmp .L23
 155               	.LVL20:
 156               	.L26:
 157               	.LSM10:
 158 00b8 8701      		movw r16,r14
 159               	.LVL21:
 160 00ba 0E5F      		subi r16,lo8(-(2))
 161 00bc 1F4F      		sbci r17,hi8(-(2))
 162               	.LVL22:
 163 00be F701      		movw r30,r14
 164 00c0 8081      		ld r24,Z
 165               	.LVL23:
 166 00c2 0E94 0000 		call serial_writechar
 167               	.LVL24:
 168               	.L23:
 169 00c6 7801      		movw r14,r16
 170 00c8 00C0      		rjmp .L21
 171               	.LVL25:
 172               	.L11:
 173               	.LSM11:
 174 00ca 80E0      		ldi r24,lo8(__c.1364)
 175 00cc 90E0      		ldi r25,hi8(__c.1364)
 176               	.LVL26:
 177 00ce 0E94 0000 		call serial_writestr_P
 178               	.LSM12:
 179 00d2 0430      		cpi r16,lo8(4)
 180 00d4 01F4      		brne .L16
 181               	.LSM13:
 182 00d6 8701      		movw r16,r14
 183               	.LVL27:
 184 00d8 0C5F      		subi r16,lo8(-(4))
 185 00da 1F4F      		sbci r17,hi8(-(4))
 186               	.LVL28:
 187 00dc F701      		movw r30,r14
 188 00de 6081      		ld r22,Z
 189 00e0 7181      		ldd r23,Z+1
 190 00e2 8281      		ldd r24,Z+2
 191 00e4 9381      		ldd r25,Z+3
 192 00e6 0E94 0000 		call serwrite_hex32
 193 00ea 00C0      		rjmp .L23
 194               	.LVL29:
 195               	.L16:
 196 00ec 82E0      		ldi r24,lo8(2)
 197 00ee C82E      		mov r12,r24
 198 00f0 D12C      		mov r13,__zero_reg__
 199               	.LVL30:
 200 00f2 CE0C      		add r12,r14
 201 00f4 DF1C      		adc r13,r15
 202               	.LSM14:
 203 00f6 0130      		cpi r16,lo8(1)
 204 00f8 01F4      		brne .L17
 205               	.LSM15:
 206 00fa F701      		movw r30,r14
 207 00fc 8081      		ld r24,Z
 208 00fe 0E94 0000 		call serwrite_hex8
 209 0102 00C0      		rjmp .L22
 210               	.LVL31:
 211               	.L17:
 212               	.LSM16:
 213 0104 F701      		movw r30,r14
 214 0106 8081      		ld r24,Z
 215 0108 9181      		ldd r25,Z+1
 216 010a 0E94 0000 		call serwrite_hex16
 217               	.LVL32:
 218               	.L22:
 219 010e 7601      		movw r14,r12
 220 0110 00C0      		rjmp .L21
 221               	.LVL33:
 222               	.L8:
 223               	.LSM17:
 224 0112 8701      		movw r16,r14
 225               	.LVL34:
 226 0114 0C5F      		subi r16,lo8(-(4))
 227 0116 1F4F      		sbci r17,hi8(-(4))
 228               	.LVL35:
 229 0118 F701      		movw r30,r14
 230 011a 6081      		ld r22,Z
 231 011c 7181      		ldd r23,Z+1
 232 011e 8281      		ldd r24,Z+2
 233 0120 9381      		ldd r25,Z+3
 234 0122 43E0      		ldi r20,lo8(3)
 235 0124 0E94 0000 		call serwrite_int32_vf
 236               	.LVL36:
 237 0128 00C0      		rjmp .L23
 238               	.LVL37:
 239               	.L4:
 240               	.LSM18:
 241 012a 0E94 0000 		call serial_writechar
 242               	.LVL38:
 243               	.L21:
 244 012e 00E0      		ldi r16,lo8(0)
 245 0130 00C0      		rjmp .L13
 246               	.LVL39:
 247               	.L3:
 248               	.LSM19:
 249 0132 8532      		cpi r24,lo8(37)
 250 0134 01F4      		brne .L18
 251 0136 02E0      		ldi r16,lo8(2)
 252 0138 00C0      		rjmp .L13
 253               	.L18:
 254               	.LSM20:
 255 013a 0E94 0000 		call serial_writechar
 256               	.LVL40:
 257               	.L13:
 258 013e 0894      		sec
 259 0140 A11C      		adc r10,__zero_reg__
 260 0142 B11C      		adc r11,__zero_reg__
 261               	.L2:
 262               	.LBB4:
 263               	.LSM21:
 264 0144 F501      		movw r30,r10
 265               	/* #APP */
 266               	 ;  112 "sersendf.c" 1
 267 0146 8491      		lpm r24, Z
 268               		
 269               	 ;  0 "" 2
 270               	/* #NOAPP */
 271               	.LBE4:
 272 0148 8823      		tst r24
 273 014a 01F0      		breq .+2
 274 014c 00C0      		rjmp .L19
 275               	/* epilogue start */
 276               	.LSM22:
 277 014e 2096      		adiw r28,0
 278 0150 EAE0      		ldi r30, lo8(10)
 279 0152 0C94 0000 		jmp __epilogue_restores__ + ((18 - 10) * 2)
 280               	.LFE2:
 282               		.section	.progmem.data,"a",@progbits
 285               	__c.1364:
 286 0000 3078 00   		.string	"0x"
 311               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 sersendf.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:21     .text.sersendf_P:00000000 sersendf_P
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc5dvgXq.s:285    .progmem.data:00000000 __c.1364

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__prologue_saves__
serwrite_uint32
serwrite_int32
serial_writechar
serial_writestr_P
serwrite_hex32
serwrite_hex8
serwrite_hex16
serwrite_int32_vf
__epilogue_restores__
