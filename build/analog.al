   1               		.file	"analog.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.analog_init,"ax",@progbits
  19               	.global	analog_init
  21               	analog_init:
  22               	.LFB7:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	/* epilogue start */
  27               	.LSM1:
  28 0000 0895      		ret
  29               	.LFE7:
  31               		.section	.text.__vector_29,"ax",@progbits
  32               	.global	__vector_29
  34               	__vector_29:
  35               	.LFB8:
  36               	.LSM2:
  37 0000 7894      		sei
  38 0002 1F92      		push __zero_reg__
  39 0004 0F92      		push r0
  40 0006 0FB6      		in r0,__SREG__
  41 0008 0F92      		push r0
  42 000a 1124      		clr __zero_reg__
  43               	/* prologue: Interrupt */
  44               	/* frame size = 0 */
  45               	/* epilogue start */
  46               	.LSM3:
  47 000c 0F90      		pop r0
  48 000e 0FBE      		out __SREG__,r0
  49 0010 0F90      		pop r0
  50 0012 1F90      		pop __zero_reg__
  51 0014 1895      		reti
  52               	.LFE8:
  54               		.section	.text.analog_read,"ax",@progbits
  55               	.global	analog_read
  57               	analog_read:
  58               	.LFB9:
  59               	.LSM4:
  60               	.LVL0:
  61               	/* prologue: function */
  62               	/* frame size = 0 */
  63               	.LSM5:
  64 0000 80E0      		ldi r24,lo8(0)
  65 0002 90E0      		ldi r25,hi8(0)
  66               	.LVL1:
  67               	/* epilogue start */
  68 0004 0895      		ret
  69               	.LFE9:
 111               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 analog.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:21     .text.analog_init:00000000 analog_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:34     .text.__vector_29:00000000 __vector_29
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//cc0dos8r.s:57     .text.analog_read:00000000 analog_read

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
