   1               		.file	"mendel.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.io_init,"ax",@progbits
  19               	.global	io_init
  21               	io_init:
  22               	.LFB6:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 85E8      		ldi r24,lo8(-123)
  28 0002 8093 6400 		sts 100,r24
  29               	.LSM2:
  30 0006 E5E6      		ldi r30,lo8(101)
  31 0008 F0E0      		ldi r31,hi8(101)
  32 000a 8081      		ld r24,Z
  33 000c 8660      		ori r24,lo8(6)
  34 000e 8083      		st Z,r24
  35               	.LSM3:
  36 0010 8081      		ld r24,Z
  37 0012 8260      		ori r24,lo8(2)
  38 0014 8083      		st Z,r24
  39               	.LSM4:
  40 0016 80E8      		ldi r24,lo8(-128)
  41 0018 80BF      		out 80-32,r24
  42               	.LSM5:
  43 001a 8898      		cbi 49-32,0
  44 001c 809A      		sbi 48-32,0
  45               	.LSM6:
  46 001e 8998      		cbi 49-32,1
  47 0020 819A      		sbi 48-32,1
  48               	.LSM7:
  49 0022 8E98      		cbi 49-32,6
  50 0024 869A      		sbi 48-32,6
  51               	.LSM8:
  52 0026 8F98      		cbi 49-32,7
  53 0028 879A      		sbi 48-32,7
  54               	.LSM9:
  55 002a 4198      		cbi 40-32,1
  56 002c 399A      		sbi 39-32,1
  57               	.LSM10:
  58 002e 4398      		cbi 40-32,3
  59 0030 3B9A      		sbi 39-32,3
  60               	.LSM11:
  61 0032 6D98      		cbi 45-32,5
  62               	.LSM12:
  63 0034 7598      		cbi 46-32,5
  64               	.LSM13:
  65 0036 1498      		cbi 34-32,4
  66 0038 0C9A      		sbi 33-32,4
  67               	.LSM14:
  68 003a 1698      		cbi 34-32,6
  69 003c 0E9A      		sbi 33-32,6
  70               	.LSM15:
  71 003e 5F98      		cbi 43-32,7
  72               	.LSM16:
  73 0040 579A      		sbi 42-32,7
  74               	.LSM17:
  75 0042 8A98      		cbi 49-32,2
  76               	.LSM18:
  77 0044 829A      		sbi 48-32,2
  78               	.LSM19:
  79 0046 4798      		cbi 40-32,7
  80               	.LSM20:
  81 0048 3F9A      		sbi 39-32,7
  82               	.LSM21:
  83 004a 1298      		cbi 34-32,2
  84               	.LSM22:
  85 004c 0A9A      		sbi 33-32,2
  86               	/* epilogue start */
  87               	.LSM23:
  88 004e 0895      		ret
  89               	.LFE6:
  91               		.section	.text.init,"ax",@progbits
  92               	.global	init
  94               	init:
  95               	.LFB7:
  96               	.LSM24:
  97               	/* prologue: function */
  98               	/* frame size = 0 */
  99               	.LSM25:
 100 0000 0E94 0000 		call serial_init
 101               	.LSM26:
 102 0004 0E94 0000 		call gcode_init
 103               	.LSM27:
 104 0008 0E94 0000 		call io_init
 105               	.LSM28:
 106 000c 0E94 0000 		call timer_init
 107               	.LSM29:
 108 0010 0E94 0000 		call dda_init
 109               	.LSM30:
 110 0014 0E94 0000 		call analog_init
 111               	.LSM31:
 112 0018 0E94 0000 		call temp_init
 113               	.LSM32:
 114               	/* #APP */
 115               	 ;  237 "mendel.c" 1
 116 001c 7894      		sei
 117               	 ;  0 "" 2
 118               	.LSM33:
 119               	/* #NOAPP */
 120 001e 82E0      		ldi r24,lo8(2)
 121 0020 8093 0000 		sts debug_flags,r24
 122               	.LSM34:
 123 0024 0E94 0000 		call joints_init
 124               	.LSM35:
 125 0028 80E0      		ldi r24,lo8(__c.1813)
 126 002a 90E0      		ldi r25,hi8(__c.1813)
 127 002c 0E94 0000 		call serial_writestr_P
 128               	/* epilogue start */
 129               	.LSM36:
 130 0030 0895      		ret
 131               	.LFE7:
 133               		.section	.text.main,"ax",@progbits
 134               	.global	main
 136               	main:
 137               	.LFB8:
 138               	.LSM37:
 139               	/* prologue: function */
 140               	/* frame size = 0 */
 141               	.LSM38:
 142 0000 0E94 0000 		call init
 143               	.L7:
 144               	.LSM39:
 145 0004 0E94 0000 		call queue_full
 146 0008 8823      		tst r24
 147 000a 01F4      		brne .L6
 148               	.LSM40:
 149 000c 0E94 0000 		call serial_rxchars
 150 0010 8823      		tst r24
 151 0012 01F0      		breq .L6
 152               	.LBB7:
 153               	.LSM41:
 154 0014 0E94 0000 		call serial_popchar
 155               	.LSM42:
 156 0018 0E94 0000 		call gcode_parse_char
 157               	.L6:
 158               	.LBE7:
 159               	.LSM43:
 160 001c 0E94 0000 		call clock
 161 0020 00C0      		rjmp .L7
 162               	.LFE8:
 164               		.section	.progmem.data,"a",@progbits
 167               	__c.1813:
 168 0000 7374 6172 		.string	"start\nok\n"
 168      740A 6F6B 
 168      0A00 
 169               		.comm err_codes,1,1
 210               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 mendel.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:21     .text.io_init:00000000 io_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:94     .text.init:00000000 init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:167    .progmem.data:00000000 __c.1813
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccizQMmO.s:136    .text.main:00000000 main
                            *COM*:00000001 err_codes

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
serial_init
gcode_init
timer_init
dda_init
analog_init
temp_init
debug_flags
joints_init
serial_writestr_P
queue_full
serial_rxchars
serial_popchar
gcode_parse_char
clock
