   1               		.file	"crc.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.crc_block,"ax",@progbits
  19               	.global	crc_block
  21               	crc_block:
  22               	.LFB6:
  23               	.LSM0:
  24               	.LVL0:
  25               	/* prologue: function */
  26               	/* frame size = 0 */
  27 0000 FC01      		movw r30,r24
  28               	.LSM1:
  29 0002 2DEE      		ldi r18,lo8(-275)
  30 0004 3EEF      		ldi r19,hi8(-275)
  31               	.LVL1:
  32 0006 00C0      		rjmp .L2
  33               	.LVL2:
  34               	.L3:
  35               	.LBB4:
  36               	.LBB5:
  37               	.LSM2:
  38 0008 8191      		ld r24,Z+
  39               	.LVL3:
  40               	/* #APP */
  41               	 ;  116 "/Applications/Arduino 2.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/
  42 000a 2827      		eor r18,r24
  43 000c 822F      		mov r24,r18
  44 000e 8295      		swap r24
  45 0010 8227      		eor r24,r18
  46 0012 082E      		mov __tmp_reg__,r24
  47 0014 8695      		lsr r24
  48 0016 8695      		lsr r24
  49 0018 8025      		eor r24,__tmp_reg__
  50 001a 082E      		mov __tmp_reg__,r24
  51 001c 8695      		lsr r24
  52 001e 8025      		eor r24,__tmp_reg__
  53 0020 8770      		andi r24,0x07
  54 0022 022E      		mov __tmp_reg__,r18
  55 0024 232F      		mov r18,r19
  56 0026 8695      		lsr r24
  57 0028 0794      		ror __tmp_reg__
  58 002a 8795      		ror r24
  59 002c 302D      		mov r19,__tmp_reg__
  60 002e 2827      		eor r18,r24
  61 0030 0694      		lsr __tmp_reg__
  62 0032 8795      		ror r24
  63 0034 3025      		eor r19,__tmp_reg__
  64 0036 2827      		eor r18,r24
  65               	 ;  0 "" 2
  66               	.LVL4:
  67               	/* #NOAPP */
  68               	.LBE5:
  69               	.LBE4:
  70               	.LSM3:
  71 0038 6150      		subi r22,lo8(-(-1))
  72 003a 7040      		sbci r23,hi8(-(-1))
  73               	.LVL5:
  74               	.L2:
  75 003c 6115      		cp r22,__zero_reg__
  76 003e 7105      		cpc r23,__zero_reg__
  77 0040 01F4      		brne .L3
  78               	.LSM4:
  79 0042 C901      		movw r24,r18
  80               	.LVL6:
  81               	/* epilogue start */
  82 0044 0895      		ret
  83               	.LFE6:
 109               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 crc.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cccyrmmo.s:21     .text.crc_block:00000000 crc_block

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
