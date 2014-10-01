   1               		.file	"home.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.home_x_negative,"ax",@progbits
  19               	.global	home_x_negative
  21               	home_x_negative:
  22               	.LFB9:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	/* epilogue start */
  27               	.LSM1:
  28 0000 0895      		ret
  29               	.LFE9:
  31               		.section	.text.home_x_positive,"ax",@progbits
  32               	.global	home_x_positive
  34               	home_x_positive:
  35               	.LFB10:
  36               	.LSM2:
  37               	/* prologue: function */
  38               	/* frame size = 0 */
  39               	/* epilogue start */
  40               	.LSM3:
  41 0000 0895      		ret
  42               	.LFE10:
  44               		.section	.text.home_y_negative,"ax",@progbits
  45               	.global	home_y_negative
  47               	home_y_negative:
  48               	.LFB11:
  49               	.LSM4:
  50               	/* prologue: function */
  51               	/* frame size = 0 */
  52               	/* epilogue start */
  53               	.LSM5:
  54 0000 0895      		ret
  55               	.LFE11:
  57               		.section	.text.home_y_positive,"ax",@progbits
  58               	.global	home_y_positive
  60               	home_y_positive:
  61               	.LFB12:
  62               	.LSM6:
  63               	/* prologue: function */
  64               	/* frame size = 0 */
  65               	/* epilogue start */
  66               	.LSM7:
  67 0000 0895      		ret
  68               	.LFE12:
  70               		.section	.text.home_z_positive,"ax",@progbits
  71               	.global	home_z_positive
  73               	home_z_positive:
  74               	.LFB14:
  75               	.LSM8:
  76               	/* prologue: function */
  77               	/* frame size = 0 */
  78               	/* epilogue start */
  79               	.LSM9:
  80 0000 0895      		ret
  81               	.LFE14:
  83               		.section	.text.home_z_negative,"ax",@progbits
  84               	.global	home_z_negative
  86               	home_z_negative:
  87               	.LFB13:
  88               	.LSM10:
  89 0000 A5E1      		ldi r26,lo8(21)
  90 0002 B0E0      		ldi r27,hi8(21)
  91 0004 E0E0      		ldi r30,lo8(gs(1f))
  92 0006 F0E0      		ldi r31,hi8(gs(1f))
  93 0008 0C94 0000 		jmp __prologue_saves__+((18 - 4) * 2)
  94               	1:
  95               	/* prologue: function */
  96               	/* frame size = 21 */
  97               	.LSM11:
  98 000c DE01      		movw r26,r28
  99 000e 1196      		adiw r26,1
 100 0010 E0E0      		ldi r30,lo8(startpoint)
 101 0012 F0E0      		ldi r31,hi8(startpoint)
 102 0014 85E1      		ldi r24,lo8(21)
 103               	.L12:
 104 0016 0190      		ld r0,Z+
 105 0018 0D92      		st X+,r0
 106 001a 8150      		subi r24,lo8(-(-1))
 107 001c 01F4      		brne .L12
 108               	.LSM12:
 109 001e 80EC      		ldi r24,lo8(-1000000)
 110 0020 9DEB      		ldi r25,hi8(-1000000)
 111 0022 A0EF      		ldi r26,hlo8(-1000000)
 112 0024 BFEF      		ldi r27,hhi8(-1000000)
 113 0026 8987      		std Y+9,r24
 114 0028 9A87      		std Y+10,r25
 115 002a AB87      		std Y+11,r26
 116 002c BC87      		std Y+12,r27
 117               	.LSM13:
 118 002e 80E5      		ldi r24,lo8(848)
 119 0030 93E0      		ldi r25,hi8(848)
 120 0032 A0E0      		ldi r26,hlo8(848)
 121 0034 B0E0      		ldi r27,hhi8(848)
 122 0036 898B      		std Y+17,r24
 123 0038 9A8B      		std Y+18,r25
 124 003a AB8B      		std Y+19,r26
 125 003c BC8B      		std Y+20,r27
 126               	.LSM14:
 127 003e 8E01      		movw r16,r28
 128 0040 0F5F      		subi r16,lo8(-(1))
 129 0042 1F4F      		sbci r17,hi8(-(1))
 130 0044 C801      		movw r24,r16
 131 0046 64E0      		ldi r22,lo8(4)
 132 0048 41E0      		ldi r20,lo8(1)
 133 004a 0E94 0000 		call enqueue_home
 134               	.LSM15:
 135 004e 80E4      		ldi r24,lo8(1000000)
 136 0050 92E4      		ldi r25,hi8(1000000)
 137 0052 AFE0      		ldi r26,hlo8(1000000)
 138 0054 B0E0      		ldi r27,hhi8(1000000)
 139 0056 8987      		std Y+9,r24
 140 0058 9A87      		std Y+10,r25
 141 005a AB87      		std Y+11,r26
 142 005c BC87      		std Y+12,r27
 143               	.LSM16:
 144 005e 8AE0      		ldi r24,lo8(10)
 145 0060 90E0      		ldi r25,hi8(10)
 146 0062 A0E0      		ldi r26,hlo8(10)
 147 0064 B0E0      		ldi r27,hhi8(10)
 148 0066 898B      		std Y+17,r24
 149 0068 9A8B      		std Y+18,r25
 150 006a AB8B      		std Y+19,r26
 151 006c BC8B      		std Y+20,r27
 152               	.LSM17:
 153 006e C801      		movw r24,r16
 154 0070 64E0      		ldi r22,lo8(4)
 155 0072 40E0      		ldi r20,lo8(0)
 156 0074 0E94 0000 		call enqueue_home
 157               	.LSM18:
 158 0078 0E94 0000 		call queue_wait
 159               	.LSM19:
 160 007c 1092 0000 		sts next_target+13,__zero_reg__
 161 0080 1092 0000 		sts (next_target+13)+1,__zero_reg__
 162 0084 1092 0000 		sts (next_target+13)+2,__zero_reg__
 163 0088 1092 0000 		sts (next_target+13)+3,__zero_reg__
 164 008c 1092 0000 		sts startpoint+8,__zero_reg__
 165 0090 1092 0000 		sts (startpoint+8)+1,__zero_reg__
 166 0094 1092 0000 		sts (startpoint+8)+2,__zero_reg__
 167 0098 1092 0000 		sts (startpoint+8)+3,__zero_reg__
 168               	.LSM20:
 169 009c 0E94 0000 		call dda_new_startpoint
 170               	/* epilogue start */
 171               	.LSM21:
 172 00a0 6596      		adiw r28,21
 173 00a2 E4E0      		ldi r30, lo8(4)
 174 00a4 0C94 0000 		jmp __epilogue_restores__ + ((18 - 4) * 2)
 175               	.LFE13:
 177               		.section	.text.home,"ax",@progbits
 178               	.global	home
 180               	home:
 181               	.LFB8:
 182               	.LSM22:
 183               	/* prologue: function */
 184               	/* frame size = 0 */
 185               	.LSM23:
 186 0000 0E94 0000 		call home_z_negative
 187               	/* epilogue start */
 188               	.LSM24:
 189 0004 0895      		ret
 190               	.LFE8:
 264               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 home.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:21     .text.home_x_negative:00000000 home_x_negative
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:34     .text.home_x_positive:00000000 home_x_positive
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:47     .text.home_y_negative:00000000 home_y_negative
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:60     .text.home_y_positive:00000000 home_y_positive
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:73     .text.home_z_positive:00000000 home_z_positive
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:86     .text.home_z_negative:00000000 home_z_negative
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccN2Xq2J.s:180    .text.home:00000000 home

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__prologue_saves__
startpoint
enqueue_home
queue_wait
next_target
dda_new_startpoint
__epilogue_restores__
