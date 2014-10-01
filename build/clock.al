   1               		.file	"clock.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.clock,"ax",@progbits
  19               	.global	clock
  21               	clock:
  22               	.LFB13:
  23               	.LSM0:
  24 0000 CF93      		push r28
  25 0002 DF93      		push r29
  26               	/* prologue: function */
  27               	/* frame size = 0 */
  28 0004 00C0      		rjmp .L2
  29               	.LVL0:
  30               	.L9:
  31               	.LBB11:
  32               	.LBB12:
  33               	.LSM1:
  34 0006 0E94 0000 		call temp_sensor_tick
  35               	.LVL1:
  36               	.LSM2:
  37 000a 0E94 0000 		call update_joint_servos
  38 000e 00C0      		rjmp .L3
  39               	.LVL2:
  40               	.L8:
  41               	.LBB13:
  42               	.LSM3:
  43 0010 0E94 0000 		call heaters_all_zero
  44               	.LVL3:
  45               	.LBB14:
  46 0014 8823      		tst r24
  47 0016 01F4      		brne .+2
  48 0018 00C0      		rjmp .L4
  49               	.LSM4:
  50 001a 8091 0000 		lds r24,psu_timeout
  51 001e 8937      		cpi r24,lo8(121)
  52 0020 00F0      		brlo .L5
  53               	.LSM5:
  54 0022 0E94 0000 		call power_off
  55 0026 00C0      		rjmp .L4
  56               	.L5:
  57               	.LBB15:
  58               	.LSM6:
  59 0028 9FB7      		in r25,__SREG__
  60               	.LVL4:
  61               	/* #APP */
  62               	 ;  31 "clock.c" 1
  63 002a F894      		cli
  64               	 ;  0 "" 2
  65               	.LSM7:
  66               	/* #NOAPP */
  67 002c 8091 0000 		lds r24,psu_timeout
  68 0030 8F5F      		subi r24,lo8(-(1))
  69 0032 8093 0000 		sts psu_timeout,r24
  70               	.LSM8:
  71 0036 9FBF      		out __SREG__,r25
  72 0038 00C0      		rjmp .L4
  73               	.L7:
  74               	.LBE15:
  75               	.LSM9:
  76 003a 8091 0000 		lds r24,debug_flags
  77 003e 86FF      		sbrs r24,6
  78 0040 00C0      		rjmp .L6
  79               	.LSM10:
  80 0042 0E94 0000 		call update_current_position
  81               	.LVL5:
  82               	.LSM11:
  83 0046 8DB7      		in r24,__SP_L__
  84 0048 9EB7      		in r25,__SP_H__
  85 004a 4697      		sbiw r24,22
  86 004c 0FB6      		in __tmp_reg__,__SREG__
  87 004e F894      		cli
  88 0050 9EBF      		out __SP_H__,r25
  89 0052 0FBE      		out __SREG__,__tmp_reg__
  90 0054 8DBF      		out __SP_L__,r24
  91 0056 EDB7      		in r30,__SP_L__
  92 0058 FEB7      		in r31,__SP_H__
  93 005a 3196      		adiw r30,1
  94               	.LBE14:
  95 005c 80E0      		ldi r24,lo8(__c.1627)
  96 005e 90E0      		ldi r25,hi8(__c.1627)
  97 0060 ADB7      		in r26,__SP_L__
  98 0062 BEB7      		in r27,__SP_H__
  99 0064 1296      		adiw r26,1+1
 100 0066 9C93      		st X,r25
 101 0068 8E93      		st -X,r24
 102 006a 1197      		sbiw r26,1
 103 006c 8091 0000 		lds r24,current_position
 104 0070 9091 0000 		lds r25,(current_position)+1
 105 0074 A091 0000 		lds r26,(current_position)+2
 106 0078 B091 0000 		lds r27,(current_position)+3
 107 007c 8283      		std Z+2,r24
 108 007e 9383      		std Z+3,r25
 109 0080 A483      		std Z+4,r26
 110 0082 B583      		std Z+5,r27
 111 0084 8091 0000 		lds r24,current_position+4
 112 0088 9091 0000 		lds r25,(current_position+4)+1
 113 008c A091 0000 		lds r26,(current_position+4)+2
 114 0090 B091 0000 		lds r27,(current_position+4)+3
 115 0094 8683      		std Z+6,r24
 116 0096 9783      		std Z+7,r25
 117 0098 A087      		std Z+8,r26
 118 009a B187      		std Z+9,r27
 119 009c 8091 0000 		lds r24,current_position+8
 120 00a0 9091 0000 		lds r25,(current_position+8)+1
 121 00a4 A091 0000 		lds r26,(current_position+8)+2
 122 00a8 B091 0000 		lds r27,(current_position+8)+3
 123 00ac 8287      		std Z+10,r24
 124 00ae 9387      		std Z+11,r25
 125 00b0 A487      		std Z+12,r26
 126 00b2 B587      		std Z+13,r27
 127 00b4 8091 0000 		lds r24,current_position+12
 128 00b8 9091 0000 		lds r25,(current_position+12)+1
 129 00bc A091 0000 		lds r26,(current_position+12)+2
 130 00c0 B091 0000 		lds r27,(current_position+12)+3
 131 00c4 8687      		std Z+14,r24
 132 00c6 9787      		std Z+15,r25
 133 00c8 A08B      		std Z+16,r26
 134 00ca B18B      		std Z+17,r27
 135 00cc 8091 0000 		lds r24,current_position+16
 136 00d0 9091 0000 		lds r25,(current_position+16)+1
 137 00d4 A091 0000 		lds r26,(current_position+16)+2
 138 00d8 B091 0000 		lds r27,(current_position+16)+3
 139 00dc 828B      		std Z+18,r24
 140 00de 938B      		std Z+19,r25
 141 00e0 A48B      		std Z+20,r26
 142 00e2 B58B      		std Z+21,r27
 143 00e4 0E94 0000 		call sersendf_P
 144               	.LBB16:
 145               	.LSM12:
 146 00e8 2091 0000 		lds r18,mb_tail
 147 00ec 30E0      		ldi r19,lo8(0)
 148 00ee 4DB7      		in r20,__SP_L__
 149 00f0 5EB7      		in r21,__SP_H__
 150 00f2 4F5F      		subi r20,lo8(-(1))
 151 00f4 5F4F      		sbci r21,hi8(-(1))
 152               	.LBE16:
 153 00f6 80E0      		ldi r24,lo8(__c.1629)
 154 00f8 90E0      		ldi r25,hi8(__c.1629)
 155 00fa CDB7      		in r28,__SP_L__
 156 00fc DEB7      		in r29,__SP_H__
 157 00fe 9A83      		std Y+2,r25
 158 0100 8983      		std Y+1,r24
 159 0102 8BE6      		ldi r24,lo8(107)
 160 0104 90E0      		ldi r25,hi8(107)
 161 0106 289F      		mul r18,r24
 162 0108 F001      		movw r30,r0
 163 010a 299F      		mul r18,r25
 164 010c F00D      		add r31,r0
 165 010e 389F      		mul r19,r24
 166 0110 F00D      		add r31,r0
 167 0112 1124      		clr r1
 168 0114 E050      		subi r30,lo8(-(movebuffer))
 169 0116 F040      		sbci r31,hi8(-(movebuffer))
 170 0118 8081      		ld r24,Z
 171 011a 9181      		ldd r25,Z+1
 172 011c A281      		ldd r26,Z+2
 173 011e B381      		ldd r27,Z+3
 174 0120 EA01      		movw r28,r20
 175 0122 8A83      		std Y+2,r24
 176 0124 9B83      		std Y+3,r25
 177 0126 AC83      		std Y+4,r26
 178 0128 BD83      		std Y+5,r27
 179 012a 8481      		ldd r24,Z+4
 180 012c 9581      		ldd r25,Z+5
 181 012e A681      		ldd r26,Z+6
 182 0130 B781      		ldd r27,Z+7
 183 0132 8E83      		std Y+6,r24
 184 0134 9F83      		std Y+7,r25
 185 0136 A887      		std Y+8,r26
 186 0138 B987      		std Y+9,r27
 187 013a 8085      		ldd r24,Z+8
 188 013c 9185      		ldd r25,Z+9
 189 013e A285      		ldd r26,Z+10
 190 0140 B385      		ldd r27,Z+11
 191 0142 8A87      		std Y+10,r24
 192 0144 9B87      		std Y+11,r25
 193 0146 AC87      		std Y+12,r26
 194 0148 BD87      		std Y+13,r27
 195 014a 8485      		ldd r24,Z+12
 196 014c 9585      		ldd r25,Z+13
 197 014e A685      		ldd r26,Z+14
 198 0150 B785      		ldd r27,Z+15
 199 0152 8E87      		std Y+14,r24
 200 0154 9F87      		std Y+15,r25
 201 0156 A88B      		std Y+16,r26
 202 0158 B98B      		std Y+17,r27
 203 015a 8089      		ldd r24,Z+16
 204 015c 9189      		ldd r25,Z+17
 205 015e A289      		ldd r26,Z+18
 206 0160 B389      		ldd r27,Z+19
 207 0162 FA01      		movw r30,r20
 208 0164 828B      		std Z+18,r24
 209 0166 938B      		std Z+19,r25
 210 0168 A48B      		std Z+20,r26
 211 016a B58B      		std Z+21,r27
 212 016c 0E94 0000 		call sersendf_P
 213               	.LBB17:
 214               	.LSM13:
 215 0170 8DB7      		in r24,__SP_L__
 216 0172 9EB7      		in r25,__SP_H__
 217 0174 4696      		adiw r24,22
 218 0176 0FB6      		in __tmp_reg__,__SREG__
 219 0178 F894      		cli
 220 017a 9EBF      		out __SP_H__,r25
 221 017c 0FBE      		out __SREG__,__tmp_reg__
 222 017e 8DBF      		out __SP_L__,r24
 223 0180 0E94 0000 		call print_queue
 224               	.LSM14:
 225 0184 8AE0      		ldi r24,lo8(10)
 226 0186 0E94 0000 		call serial_writechar
 227               	.LVL6:
 228               	.L6:
 229               	.LSM15:
 230 018a 1092 0000 		sts clock_flag_1s,__zero_reg__
 231               	.L4:
 232 018e 8091 0000 		lds r24,clock_flag_1s
 233 0192 8823      		tst r24
 234 0194 01F0      		breq .+2
 235 0196 00C0      		rjmp .L7
 236               	.LBE17:
 237               	.LBE13:
 238               	.LSM16:
 239 0198 1092 0000 		sts clock_flag_250ms,__zero_reg__
 240               	.L3:
 241 019c 8091 0000 		lds r24,clock_flag_250ms
 242 01a0 8823      		tst r24
 243 01a2 01F0      		breq .+2
 244 01a4 00C0      		rjmp .L8
 245               	.LBE12:
 246               	.LBE11:
 247               	.LSM17:
 248 01a6 1092 0000 		sts clock_flag_10ms,__zero_reg__
 249               	.L2:
 250 01aa 8091 0000 		lds r24,clock_flag_10ms
 251 01ae 8823      		tst r24
 252 01b0 01F0      		breq .+2
 253 01b2 00C0      		rjmp .L9
 254               	/* epilogue start */
 255               	.LSM18:
 256 01b4 DF91      		pop r29
 257 01b6 CF91      		pop r28
 258 01b8 0895      		ret
 259               	.LFE13:
 261               		.section	.progmem.data,"a",@progbits
 264               	__c.1629:
 265 0000 4473 743A 		.string	"Dst: %lq,%lq,%lq,%lq,%lu\n"
 265      2025 6C71 
 265      2C25 6C71 
 265      2C25 6C71 
 265      2C25 6C71 
 268               	__c.1627:
 269 001a 506F 733A 		.string	"Pos: %lq,%lq,%lq,%lq,%lu\n"
 269      2025 6C71 
 269      2C25 6C71 
 269      2C25 6C71 
 269      2C25 6C71 
 294               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 clock.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:21     .text.clock:00000000 clock
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:268    .progmem.data:0000001a __c.1627
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccLKOMJi.s:264    .progmem.data:00000000 __c.1629

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
temp_sensor_tick
update_joint_servos
heaters_all_zero
psu_timeout
power_off
debug_flags
update_current_position
current_position
sersendf_P
mb_tail
movebuffer
print_queue
serial_writechar
clock_flag_1s
clock_flag_250ms
clock_flag_10ms
