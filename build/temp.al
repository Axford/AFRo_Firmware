   1               		.file	"temp.c"
   2               	__SREG__ = 0x3f
   3               	__SP_H__ = 0x3e
   4               	__SP_L__ = 0x3d
   5               	__CCP__  = 0x34
   6               	__tmp_reg__ = 0
   7               	__zero_reg__ = 1
   8               		.global __do_copy_data
   9               		.global __do_clear_bss
  17               	.Ltext0:
  18               		.section	.text.temp_init,"ax",@progbits
  19               	.global	temp_init
  21               	temp_init:
  22               	.LFB10:
  23               	.LSM0:
  24               	/* prologue: function */
  25               	/* frame size = 0 */
  26               	/* epilogue start */
  27               	.LSM1:
  28 0000 0895      		ret
  29               	.LFE10:
  31               		.section	.text.temp_achieved,"ax",@progbits
  32               	.global	temp_achieved
  34               	temp_achieved:
  35               	.LFB12:
  36               	.LSM2:
  37               	/* prologue: function */
  38               	/* frame size = 0 */
  39               	.LSM3:
  40 0000 8FEF      		ldi r24,lo8(-1)
  41               	/* epilogue start */
  42 0002 0895      		ret
  43               	.LFE12:
  45               		.section	.text.temp_set,"ax",@progbits
  46               	.global	temp_set
  48               	temp_set:
  49               	.LFB13:
  50               	.LSM4:
  51               	.LVL0:
  52               	/* prologue: function */
  53               	/* frame size = 0 */
  54               	/* epilogue start */
  55               	.LSM5:
  56 0000 0895      		ret
  57               	.LFE13:
  59               		.section	.text.temp_get,"ax",@progbits
  60               	.global	temp_get
  62               	temp_get:
  63               	.LFB14:
  64               	.LSM6:
  65               	.LVL1:
  66               	/* prologue: function */
  67               	/* frame size = 0 */
  68               	.LSM7:
  69 0000 80E0      		ldi r24,lo8(0)
  70 0002 90E0      		ldi r25,hi8(0)
  71               	.LVL2:
  72               	/* epilogue start */
  73 0004 0895      		ret
  74               	.LFE14:
  76               		.section	.text.temp_print,"ax",@progbits
  77               	.global	temp_print
  79               	temp_print:
  80               	.LFB16:
  81               	.LSM8:
  82               	.LVL3:
  83               	/* prologue: function */
  84               	/* frame size = 0 */
  85               	/* epilogue start */
  86               	.LSM9:
  87 0000 0895      		ret
  88               	.LFE16:
  90               		.section	.text.temp_sensor_tick,"ax",@progbits
  91               	.global	temp_sensor_tick
  93               	temp_sensor_tick:
  94               	.LFB11:
  95               	.LSM10:
  96               	/* prologue: function */
  97               	/* frame size = 0 */
  98               	.LSM11:
  99 0000 8091 0000 		lds r24,debug_flags
 100 0004 84FF      		sbrs r24,4
 101 0006 00C0      		rjmp .L13
 102               	.LSM12:
 103 0008 0F92      		push __tmp_reg__
 104 000a 0F92      		push __tmp_reg__
 105 000c 80E0      		ldi r24,lo8(__c.1622)
 106 000e 90E0      		ldi r25,hi8(__c.1622)
 107 0010 EDB7      		in r30,__SP_L__
 108 0012 FEB7      		in r31,__SP_H__
 109 0014 9283      		std Z+2,r25
 110 0016 8183      		std Z+1,r24
 111 0018 0E94 0000 		call sersendf_P
 112 001c 0F90      		pop __tmp_reg__
 113 001e 0F90      		pop __tmp_reg__
 114               	.L13:
 115 0020 0895      		ret
 116               	.LFE11:
 118               		.section	.progmem.data,"a",@progbits
 121               	__c.1622:
 122 0000 0A00      		.string	"\n"
 123               		.comm temp_sensors_runtime,0,1
 188               	.Letext0:
DEFINED SYMBOLS
                            *ABS*:00000000 temp.c
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:2      *ABS*:0000003f __SREG__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:3      *ABS*:0000003e __SP_H__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:4      *ABS*:0000003d __SP_L__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:5      *ABS*:00000034 __CCP__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:6      *ABS*:00000000 __tmp_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:7      *ABS*:00000001 __zero_reg__
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:21     .text.temp_init:00000000 temp_init
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:34     .text.temp_achieved:00000000 temp_achieved
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:48     .text.temp_set:00000000 temp_set
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:62     .text.temp_get:00000000 temp_get
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:79     .text.temp_print:00000000 temp_print
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:93     .text.temp_sensor_tick:00000000 temp_sensor_tick
/var/folders/sq/6s2xgbb90d9gfgmdsvpln_dr0000gn/T//ccBxArZq.s:121    .progmem.data:00000000 __c.1622
                            *COM*:00000000 temp_sensors_runtime

UNDEFINED SYMBOLS
__do_copy_data
__do_clear_bss
debug_flags
sersendf_P
