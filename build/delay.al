   1               		.file	"delay.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.delay_us,"ax",@progbits
  19               	.global	delay_us
  21               	delay_us:
  22               	.LFB4:
  23               	.LSM0:
  24               	.LVL0:
  25               	/* prologue: function */
  26               	/* frame size = 0 */
  27 0000 00C0      		rjmp .L2
  28               	.LVL1:
  29               	.L3:
  30               	.LBB18:
  31               	.LBB19:
  32               	.LSM1:
  33 0002 EEEF      		ldi r30,lo8(-2)
  34 0004 FFEF      		ldi r31,hi8(-2)
  35               	/* #APP */
  36               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
  37 0006 3197      		1: sbiw r30,1
  38 0008 01F4      		brne 1b
  39               	 ;  0 "" 2
  40               	/* #NOAPP */
  41               	.LBE19:
  42               	.LBE18:
  43               	.LSM2:
  44 000a 8050      		subi r24,lo8(-(-16384))
  45 000c 9044      		sbci r25,hi8(-(-16384))
  46               	.L2:
  47               	.LSM3:
  48 000e 20E4      		ldi r18,hi8(16385)
  49 0010 8130      		cpi r24,lo8(16385)
  50 0012 9207      		cpc r25,r18
  51 0014 00F4      		brsh .L3
  52               	.LBB20:
  53               	.LBB21:
  54               	.LSM4:
  55 0016 A0E0      		ldi r26,lo8(0)
  56 0018 B0E0      		ldi r27,hi8(0)
  57               	.LVL2:
  58 001a 22E0      		ldi r18,2
  59 001c 880F      	1:	lsl r24
  60 001e 991F      		rol r25
  61 0020 AA1F      		rol r26
  62 0022 BB1F      		rol r27
  63 0024 2A95      		dec r18
  64 0026 01F4      		brne 1b
  65               	.LVL3:
  66               	/* #APP */
  67               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
  68 0028 0197      		1: sbiw r24,1
  69 002a 01F4      		brne 1b
  70               	 ;  0 "" 2
  71               	.LVL4:
  72               	/* epilogue start */
  73               	/* #NOAPP */
  74               	.LBE21:
  75               	.LBE20:
  76               	.LSM5:
  77 002c 0895      		ret
  78               	.LFE4:
  80               		.section	.text.delay_ms,"ax",@progbits
  81               	.global	delay_ms
  83               	delay_ms:
  84               	.LFB5:
  85               	.LSM6:
  86               	.LVL5:
  87               	/* prologue: function */
  88               	/* frame size = 0 */
  89 0000 9B01      		movw r18,r22
  90 0002 AC01      		movw r20,r24
  91               	.LVL6:
  92               	.L7:
  93               	.LSM7:
  94 0004 2234      		cpi r18,lo8(66)
  95 0006 3105      		cpc r19,__zero_reg__
  96 0008 4105      		cpc r20,__zero_reg__
  97 000a 5105      		cpc r21,__zero_reg__
  98 000c 00F0      		brlo .L6
  99               	.LBB22:
 100               	.LBB23:
 101               	.LBB24:
 102               	.LBB25:
 103               	.LSM8:
 104 000e 8EEF      		ldi r24,lo8(-2)
 105 0010 9FEF      		ldi r25,hi8(-2)
 106               	.LVL7:
 107 0012 FC01      		movw r30,r24
 108               	.LVL8:
 109               	/* #APP */
 110               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
 111 0014 3197      		1: sbiw r30,1
 112 0016 01F4      		brne 1b
 113               	 ;  0 "" 2
 114               	/* #NOAPP */
 115 0018 FC01      		movw r30,r24
 116               	.LVL9:
 117               	/* #APP */
 118               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
 119 001a 3197      		1: sbiw r30,1
 120 001c 01F4      		brne 1b
 121               	 ;  0 "" 2
 122               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
 123 001e 0197      		1: sbiw r24,1
 124 0020 01F4      		brne 1b
 125               	 ;  0 "" 2
 126               	.LVL10:
 127               	/* #NOAPP */
 128               	.LBE25:
 129               	.LBE24:
 130               	.LBB26:
 131               	.LBB27:
 132 0022 8CE9      		ldi r24,lo8(-2148)
 133 0024 97EF      		ldi r25,hi8(-2148)
 134               	.LVL11:
 135               	/* #APP */
 136               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
 137 0026 0197      		1: sbiw r24,1
 138 0028 01F4      		brne 1b
 139               	 ;  0 "" 2
 140               	/* #NOAPP */
 141               	.LBE27:
 142               	.LBE26:
 143               	.LBE23:
 144               	.LBE22:
 145               	.LSM9:
 146 002a 2154      		subi r18,lo8(-(-65))
 147 002c 3040      		sbci r19,hi8(-(-65))
 148 002e 4040      		sbci r20,hlo8(-(-65))
 149 0030 5040      		sbci r21,hhi8(-(-65))
 150 0032 00C0      		rjmp .L7
 151               	.LVL12:
 152               	.L6:
 153               	.LSM10:
 154 0034 CA01      		movw r24,r20
 155 0036 B901      		movw r22,r18
 156 0038 28EE      		ldi r18,lo8(1000)
 157 003a 33E0      		ldi r19,hi8(1000)
 158 003c 40E0      		ldi r20,hlo8(1000)
 159 003e 50E0      		ldi r21,hhi8(1000)
 160               	.LVL13:
 161 0040 0E94 0000 		call __mulsi3
 162 0044 00C0      		rjmp .L8
 163               	.LVL14:
 164               	.L9:
 165               	.LBB28:
 166               	.LBB29:
 167               	.LBB30:
 168               	.LBB31:
 169               	.LSM11:
 170 0046 8EEF      		ldi r24,lo8(-2)
 171 0048 9FEF      		ldi r25,hi8(-2)
 172               	.LVL15:
 173               	/* #APP */
 174               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
 175 004a 0197      		1: sbiw r24,1
 176 004c 01F4      		brne 1b
 177               	 ;  0 "" 2
 178               	/* #NOAPP */
 179               	.LBE31:
 180               	.LBE30:
 181               	.LSM12:
 182 004e 6050      		subi r22,lo8(-(-16384))
 183 0050 7044      		sbci r23,hi8(-(-16384))
 184               	.LVL16:
 185               	.L8:
 186               	.LSM13:
 187 0052 80E4      		ldi r24,hi8(16385)
 188 0054 6130      		cpi r22,lo8(16385)
 189 0056 7807      		cpc r23,r24
 190               	.LVL17:
 191 0058 00F4      		brsh .L9
 192               	.LBB32:
 193               	.LBB33:
 194               	.LSM14:
 195 005a CB01      		movw r24,r22
 196 005c A0E0      		ldi r26,lo8(0)
 197 005e B0E0      		ldi r27,hi8(0)
 198               	.LVL18:
 199 0060 32E0      		ldi r19,2
 200 0062 880F      	1:	lsl r24
 201 0064 991F      		rol r25
 202 0066 AA1F      		rol r26
 203 0068 BB1F      		rol r27
 204 006a 3A95      		dec r19
 205 006c 01F4      		brne 1b
 206               	.LVL19:
 207               	/* #APP */
 208               	 ;  105 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
 209 006e 0197      		1: sbiw r24,1
 210 0070 01F4      		brne 1b
 211               	 ;  0 "" 2
 212               	.LVL20:
 213               	/* epilogue start */
 214               	/* #NOAPP */
 215               	.LBE33:
 216               	.LBE32:
 217               	.LBE29:
 218               	.LBE28:
 219               	.LSM15:
 220 0072 0895      		ret
 221               	.LFE5:
 255               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 delay.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:21     .text.delay_us:00000000 delay_us
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccCP1Wb6.s:83     .text.delay_ms:00000000 delay_ms

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
__mulsi3
