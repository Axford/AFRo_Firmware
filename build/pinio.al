   1               		.file	"pinio.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.power_on,"ax",@progbits
  19               	.global	power_on
  21               	power_on:
  22               	.LFB5:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	.LSM1:
  27 0000 8091 0000 		lds r24,ps_is_on
  28 0004 8823      		tst r24
  29 0006 01F4      		brne .L2
  30               	.LSM2:
  31 0008 81E0      		ldi r24,lo8(1)
  32 000a 8093 0000 		sts ps_is_on,r24
  33               	.L2:
  34               	.LSM3:
  35 000e 1092 0000 		sts psu_timeout,__zero_reg__
  36               	/* epilogue start */
  37               	.LSM4:
  38 0012 0895      		ret
  39               	.LFE5:
  41               		.section	.text.power_off,"ax",@progbits
  42               	.global	power_off
  44               	power_off:
  45               	.LFB6:
  46               	.LSM5:
  47               	/* prologue: function */
  48               	/* frame size = 0 */
  49               	.LSM6:
  50 0000 5F9A      		sbi 43-32,7
  51               	.LSM7:
  52 0002 8A9A      		sbi 49-32,2
  53               	.LSM8:
  54 0004 479A      		sbi 40-32,7
  55               	.LSM9:
  56 0006 129A      		sbi 34-32,2
  57               	.LSM10:
  58 0008 1092 0000 		sts ps_is_on,__zero_reg__
  59               	/* epilogue start */
  60               	.LSM11:
  61 000c 0895      		ret
  62               	.LFE6:
  64               	.global	psu_timeout
  65               	.global	psu_timeout
  66               		.section .bss
  69               	psu_timeout:
  70 0000 00        		.skip 1,0
  71               		.lcomm ps_is_on,1
 104               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 pinio.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:21     .text.power_on:00000000 power_on
                             .bss:00000001 ps_is_on
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:69     .bss:00000000 psu_timeout
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccjGLH7F.s:44     .text.power_off:00000000 power_off

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
