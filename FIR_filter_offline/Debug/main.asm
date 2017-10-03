;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Tue Oct 03 12:41:12 2017                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../source/main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.4.LTS Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\DenisS\Desktop\FIR_filter_offline_pragma_v2\FIR_filter_offline\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_num_of_min_passed+0,32
	.bits	0,16			; _num_of_min_passed @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_i+0,32
	.bits	0,16			; _i @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_num_of_s_passed+0,32
	.bits	0,16			; _num_of_s_passed @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_temp3+0,32
	.xfloat	$strtod("0x0p+0")		; _temp3 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_temp2+0,32
	.xfloat	$strtod("0x0p+0")		; _temp2 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_xn+0,32
	.xfloat	$strtod("0x0p+0")		; _xn @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_yn+0,32
	.xfloat	$strtod("0x0p+0")		; _yn @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Rad2+0,32
	.xfloat	$strtod("0x0p+0")		; _Rad2 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_RadStep2+0,32
	.xfloat	$strtod("0x1.0966d8p+1")		; _RadStep2 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Rad+0,32
	.xfloat	$strtod("0x0p+0")		; _Rad @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_RadStep+0,32
	.xfloat	$strtod("0x1.015bfap-4")		; _RadStep @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_TIC_time_1+0,32
	.bits	0,32			; _TIC_time_1 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_TIC_time+0,32
	.bits	0,32			; _TIC_time @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_angle_from_0_to_1+0,32
	.xfloat	$strtod("0x0p+0")		; _angle_from_0_to_1 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_angle_50Hz+0,32
	.xfloat	$strtod("0x0p+0")		; _angle_50Hz @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_ref_angle+0,32
	.xfloat	$strtod("0x0p+0")		; _ref_angle @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_temp1+0,32
	.xfloat	$strtod("0x0p+0")		; _temp1 @ 0

	.sect	".cinit"
	.align	1
	.field  	-$C$IR_1,16
	.field  	_firFP+0,32
	.bits	0,32			; _firFP._coeff_ptr @ 0
	.bits	0,32			; _firFP._dbuffer_ptr @ 32
	.bits	0,16			; _firFP._cbindex @ 64
	.bits	50,16			; _firFP._order @ 80
	.xfloat	$strtod("0x0p+0")		; _firFP._input @ 96
	.xfloat	$strtod("0x0p+0")		; _firFP._output @ 128
	.bits	_FIR_FP_init,32		; _firFP._init @ 160
	.bits	_FIR_FP_calc,32		; _firFP._calc @ 192
$C$IR_1:	.set	14


$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("FIR_FP_calc")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_FIR_FP_calc")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("FIR_FP_init")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_FIR_FP_init")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$3)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("InitPieVectTable")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_InitPieVectTable")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("InitSysCtrl")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_InitSysCtrl")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("InitPieCtrl")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_InitPieCtrl")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7

	.global	_num_of_min_passed
_num_of_min_passed:	.usect	".ebss",1,1,0
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("num_of_min_passed")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_num_of_min_passed")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _num_of_min_passed]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_external

	.global	_i
_i:	.usect	".ebss",1,1,0
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("i")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _i]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_external

	.global	_num_of_s_passed
_num_of_s_passed:	.usect	".ebss",1,1,0
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("num_of_s_passed")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_num_of_s_passed")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr _num_of_s_passed]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_external

	.global	_temp3
_temp3:	.usect	".ebss",2,1,1
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("temp3")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_temp3")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _temp3]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$11, DW_AT_external

	.global	_temp2
_temp2:	.usect	".ebss",2,1,1
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("temp2")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_temp2")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _temp2]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$12, DW_AT_external

	.global	_xn
_xn:	.usect	".ebss",2,1,1
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("xn")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_xn")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr _xn]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$13, DW_AT_external

	.global	_yn
_yn:	.usect	".ebss",2,1,1
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("yn")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_yn")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr _yn]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$14, DW_AT_external

	.global	_Rad2
_Rad2:	.usect	".ebss",2,1,1
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("Rad2")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_Rad2")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr _Rad2]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_external

	.global	_RadStep2
_RadStep2:	.usect	".ebss",2,1,1
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("RadStep2")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_RadStep2")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr _RadStep2]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_external

	.global	_Rad
_Rad:	.usect	".ebss",2,1,1
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("Rad")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Rad")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr _Rad]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_external

	.global	_RadStep
_RadStep:	.usect	".ebss",2,1,1
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("RadStep")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_RadStep")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _RadStep]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$18, DW_AT_external

	.global	_TIC_time_1
_TIC_time_1:	.usect	".ebss",2,1,1
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("TIC_time_1")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_TIC_time_1")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _TIC_time_1]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$19, DW_AT_external

	.global	_TIC_time
_TIC_time:	.usect	".ebss",2,1,1
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("TIC_time")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_TIC_time")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _TIC_time]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$20, DW_AT_external

	.global	_angle_from_0_to_1
_angle_from_0_to_1:	.usect	".ebss",2,1,1
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("angle_from_0_to_1")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_angle_from_0_to_1")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _angle_from_0_to_1]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_external

	.global	_angle_50Hz
_angle_50Hz:	.usect	".ebss",2,1,1
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("angle_50Hz")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_angle_50Hz")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _angle_50Hz]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$22, DW_AT_external

	.global	_ref_angle
_ref_angle:	.usect	".ebss",2,1,1
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("ref_angle")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_ref_angle")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _ref_angle]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$23, DW_AT_external

	.global	_temp1
_temp1:	.usect	".ebss",2,1,1
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("temp1")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_temp1")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr _temp1]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$24, DW_AT_external

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("CpuTimer0Regs")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_CpuTimer0Regs")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("CpuTimer1Regs")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_CpuTimer1Regs")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external

	.global	_firFP
_firFP:	.usect	"firfilt",14,1,1
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("firFP")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_firFP")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _firFP]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$27, DW_AT_external

	.global	_dbuffer
_dbuffer:	.usect	"firldb",258,1,10
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("dbuffer")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_dbuffer")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _dbuffer]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$28, DW_AT_external

	.global	_coeff
	.sect	"coefffilt"
	.align	1024
_coeff:
	.xfloat	$strtod("0x0p+0")		; _coeff[0] @ 0
	.xfloat	$strtod("0x0p+0")		; _coeff[1] @ 32
	.xfloat	$strtod("0x0p+0")		; _coeff[2] @ 64
	.xfloat	$strtod("0x0p+0")		; _coeff[3] @ 96
	.xfloat	$strtod("0x0p+0")		; _coeff[4] @ 128
	.xfloat	$strtod("0x0p+0")		; _coeff[5] @ 160
	.xfloat	$strtod("0x0p+0")		; _coeff[6] @ 192
	.xfloat	$strtod("0x0p+0")		; _coeff[7] @ 224
	.xfloat	$strtod("0x0p+0")		; _coeff[8] @ 256
	.xfloat	$strtod("0x0p+0")		; _coeff[9] @ 288
	.xfloat	$strtod("0x0p+0")		; _coeff[10] @ 320
	.xfloat	$strtod("0x0p+0")		; _coeff[11] @ 352
	.xfloat	$strtod("0x0p+0")		; _coeff[12] @ 384
	.xfloat	$strtod("0x0p+0")		; _coeff[13] @ 416
	.xfloat	$strtod("0x0p+0")		; _coeff[14] @ 448
	.xfloat	$strtod("0x0p+0")		; _coeff[15] @ 480
	.xfloat	$strtod("0x0p+0")		; _coeff[16] @ 512
	.xfloat	$strtod("0x0p+0")		; _coeff[17] @ 544
	.xfloat	$strtod("0x0p+0")		; _coeff[18] @ 576
	.xfloat	$strtod("0x0p+0")		; _coeff[19] @ 608
	.xfloat	$strtod("0x0p+0")		; _coeff[20] @ 640
	.xfloat	$strtod("0x0p+0")		; _coeff[21] @ 672
	.xfloat	$strtod("0x0p+0")		; _coeff[22] @ 704
	.xfloat	$strtod("0x0p+0")		; _coeff[23] @ 736
	.xfloat	$strtod("0x0p+0")		; _coeff[24] @ 768
	.xfloat	$strtod("0x0p+0")		; _coeff[25] @ 800
	.xfloat	$strtod("0x0p+0")		; _coeff[26] @ 832
	.xfloat	$strtod("0x0p+0")		; _coeff[27] @ 864
	.xfloat	$strtod("0x0p+0")		; _coeff[28] @ 896
	.xfloat	$strtod("0x0p+0")		; _coeff[29] @ 928
	.xfloat	$strtod("0x0p+0")		; _coeff[30] @ 960
	.xfloat	$strtod("0x0p+0")		; _coeff[31] @ 992
	.xfloat	$strtod("0x0p+0")		; _coeff[32] @ 1024
	.xfloat	$strtod("0x0p+0")		; _coeff[33] @ 1056
	.xfloat	$strtod("0x0p+0")		; _coeff[34] @ 1088
	.xfloat	$strtod("0x0p+0")		; _coeff[35] @ 1120
	.xfloat	$strtod("0x0p+0")		; _coeff[36] @ 1152
	.xfloat	$strtod("0x0p+0")		; _coeff[37] @ 1184
	.xfloat	$strtod("0x0p+0")		; _coeff[38] @ 1216
	.xfloat	$strtod("0x0p+0")		; _coeff[39] @ 1248
	.xfloat	$strtod("0x0p+0")		; _coeff[40] @ 1280
	.xfloat	$strtod("0x0p+0")		; _coeff[41] @ 1312
	.xfloat	$strtod("0x0p+0")		; _coeff[42] @ 1344
	.xfloat	$strtod("0x0p+0")		; _coeff[43] @ 1376
	.xfloat	$strtod("0x0p+0")		; _coeff[44] @ 1408
	.xfloat	$strtod("0x0p+0")		; _coeff[45] @ 1440
	.xfloat	$strtod("0x0p+0")		; _coeff[46] @ 1472
	.xfloat	$strtod("0x0p+0")		; _coeff[47] @ 1504
	.xfloat	$strtod("0x0p+0")		; _coeff[48] @ 1536
	.xfloat	$strtod("0x0p+0")		; _coeff[49] @ 1568
	.xfloat	$strtod("0x0p+0")		; _coeff[50] @ 1600
	.xfloat	$strtod("0x0p+0")		; _coeff[51] @ 1632
	.xfloat	$strtod("0x0p+0")		; _coeff[52] @ 1664
	.xfloat	$strtod("0x0p+0")		; _coeff[53] @ 1696
	.xfloat	$strtod("0x0p+0")		; _coeff[54] @ 1728
	.xfloat	$strtod("0x0p+0")		; _coeff[55] @ 1760
	.xfloat	$strtod("0x0p+0")		; _coeff[56] @ 1792
	.xfloat	$strtod("0x0p+0")		; _coeff[57] @ 1824
	.xfloat	$strtod("0x0p+0")		; _coeff[58] @ 1856
	.xfloat	$strtod("0x0p+0")		; _coeff[59] @ 1888
	.xfloat	$strtod("0x0p+0")		; _coeff[60] @ 1920
	.xfloat	$strtod("0x0p+0")		; _coeff[61] @ 1952
	.xfloat	$strtod("0x0p+0")		; _coeff[62] @ 1984
	.xfloat	$strtod("0x0p+0")		; _coeff[63] @ 2016
	.xfloat	$strtod("0x0p+0")		; _coeff[64] @ 2048
	.xfloat	$strtod("0x0p+0")		; _coeff[65] @ 2080
	.xfloat	$strtod("0x0p+0")		; _coeff[66] @ 2112
	.xfloat	$strtod("0x0p+0")		; _coeff[67] @ 2144
	.xfloat	$strtod("0x0p+0")		; _coeff[68] @ 2176
	.xfloat	$strtod("0x0p+0")		; _coeff[69] @ 2208
	.xfloat	$strtod("0x0p+0")		; _coeff[70] @ 2240
	.xfloat	$strtod("0x0p+0")		; _coeff[71] @ 2272
	.xfloat	$strtod("0x0p+0")		; _coeff[72] @ 2304
	.xfloat	$strtod("0x0p+0")		; _coeff[73] @ 2336
	.xfloat	$strtod("0x0p+0")		; _coeff[74] @ 2368
	.xfloat	$strtod("0x0p+0")		; _coeff[75] @ 2400
	.xfloat	$strtod("0x0p+0")		; _coeff[76] @ 2432
	.xfloat	$strtod("0x0p+0")		; _coeff[77] @ 2464
	.xfloat	$strtod("0x0p+0")		; _coeff[78] @ 2496
	.xfloat	$strtod("0x0p+0")		; _coeff[79] @ 2528
	.xfloat	$strtod("0x0p+0")		; _coeff[80] @ 2560
	.xfloat	$strtod("0x0p+0")		; _coeff[81] @ 2592
	.xfloat	$strtod("0x0p+0")		; _coeff[82] @ 2624
	.xfloat	$strtod("0x0p+0")		; _coeff[83] @ 2656
	.xfloat	$strtod("0x0p+0")		; _coeff[84] @ 2688
	.xfloat	$strtod("0x0p+0")		; _coeff[85] @ 2720
	.xfloat	$strtod("0x0p+0")		; _coeff[86] @ 2752
	.xfloat	$strtod("0x0p+0")		; _coeff[87] @ 2784
	.xfloat	$strtod("0x0p+0")		; _coeff[88] @ 2816
	.xfloat	$strtod("0x0p+0")		; _coeff[89] @ 2848
	.xfloat	$strtod("0x0p+0")		; _coeff[90] @ 2880
	.xfloat	$strtod("0x0p+0")		; _coeff[91] @ 2912
	.xfloat	$strtod("0x0p+0")		; _coeff[92] @ 2944
	.xfloat	$strtod("0x0p+0")		; _coeff[93] @ 2976
	.xfloat	$strtod("0x0p+0")		; _coeff[94] @ 3008
	.xfloat	$strtod("0x0p+0")		; _coeff[95] @ 3040
	.xfloat	$strtod("0x0p+0")		; _coeff[96] @ 3072
	.xfloat	$strtod("0x0p+0")		; _coeff[97] @ 3104
	.xfloat	$strtod("0x0p+0")		; _coeff[98] @ 3136
	.xfloat	$strtod("0x0p+0")		; _coeff[99] @ 3168
	.xfloat	$strtod("0x0p+0")		; _coeff[100] @ 3200
	.xfloat	$strtod("0x0p+0")		; _coeff[101] @ 3232
	.xfloat	$strtod("0x0p+0")		; _coeff[102] @ 3264
	.xfloat	$strtod("0x0p+0")		; _coeff[103] @ 3296
	.xfloat	$strtod("0x0p+0")		; _coeff[104] @ 3328
	.xfloat	$strtod("0x0p+0")		; _coeff[105] @ 3360
	.xfloat	$strtod("0x0p+0")		; _coeff[106] @ 3392
	.xfloat	$strtod("0x0p+0")		; _coeff[107] @ 3424
	.xfloat	$strtod("0x0p+0")		; _coeff[108] @ 3456
	.xfloat	$strtod("0x0p+0")		; _coeff[109] @ 3488
	.xfloat	$strtod("0x0p+0")		; _coeff[110] @ 3520
	.xfloat	$strtod("0x0p+0")		; _coeff[111] @ 3552
	.xfloat	$strtod("0x0p+0")		; _coeff[112] @ 3584
	.xfloat	$strtod("0x0p+0")		; _coeff[113] @ 3616
	.xfloat	$strtod("0x0p+0")		; _coeff[114] @ 3648
	.xfloat	$strtod("0x0p+0")		; _coeff[115] @ 3680
	.xfloat	$strtod("0x0p+0")		; _coeff[116] @ 3712
	.xfloat	$strtod("0x0p+0")		; _coeff[117] @ 3744
	.xfloat	$strtod("0x0p+0")		; _coeff[118] @ 3776
	.xfloat	$strtod("0x0p+0")		; _coeff[119] @ 3808
	.xfloat	$strtod("0x0p+0")		; _coeff[120] @ 3840
	.xfloat	$strtod("0x0p+0")		; _coeff[121] @ 3872
	.xfloat	$strtod("0x0p+0")		; _coeff[122] @ 3904
	.xfloat	$strtod("0x0p+0")		; _coeff[123] @ 3936
	.xfloat	$strtod("0x0p+0")		; _coeff[124] @ 3968
	.xfloat	$strtod("0x0p+0")		; _coeff[125] @ 4000
	.xfloat	$strtod("0x0p+0")		; _coeff[126] @ 4032
	.xfloat	$strtod("0x0p+0")		; _coeff[127] @ 4064
	.xfloat	$strtod("0x1p+0")		; _coeff[128] @ 4096

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("coeff")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_coeff")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _coeff]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$29, DW_AT_external

	.global	_sigOut
_sigOut:	.usect	".ebss",1032,1,1
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("sigOut")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_sigOut")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _sigOut]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$30, DW_AT_external

	.global	_sigIn
_sigIn:	.usect	".ebss",1032,1,1
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("sigIn")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_sigIn")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _sigIn]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$31, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\DenisS\\AppData\\Local\\Temp\\0684012 
	.sect	".text:_main"
	.clink
	.global	_main

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("main")
	.dwattr $C$DW$32, DW_AT_low_pc(_main)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../source/main.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../source/main.c",line 140,column 1,is_stmt,address _main,isa 0

	.dwfde $C$DW$CIE, _main
;----------------------------------------------------------------------
; 139 | int main(void)                                                         
; 142 | // lokalne spremenljivke                                               
; 145 | // Inicializacija                                                      
; 147 | // sistemske ure (PLL) in PIE (prekinitvena) tabela                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _main                         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_main:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../source/main.c",line 148,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | InitSysCtrl();                                                         
;----------------------------------------------------------------------
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_InitSysCtrl")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #_InitSysCtrl         ; [CPU_] |148| 
        ; call occurs [#_InitSysCtrl] ; [] |148| 
	.dwpsn	file "../source/main.c",line 149,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | DINT;                                                                  
;----------------------------------------------------------------------
 setc INTM
	.dwpsn	file "../source/main.c",line 150,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | InitPieCtrl();                                                         
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_] 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_InitPieCtrl")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_InitPieCtrl         ; [CPU_] |150| 
        ; call occurs [#_InitPieCtrl] ; [] |150| 
	.dwpsn	file "../source/main.c",line 151,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | IER = 0x0000;                                                          
;----------------------------------------------------------------------
        AND       IER,#0x0000           ; [CPU_] |151| 
	.dwpsn	file "../source/main.c",line 152,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | IFR = 0x0000;                                                          
;----------------------------------------------------------------------
        AND       IFR,#0x0000           ; [CPU_] |152| 
	.dwpsn	file "../source/main.c",line 153,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | InitPieVectTable();                                                    
;----------------------------------------------------------------------
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_InitPieVectTable")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_InitPieVectTable    ; [CPU_] |153| 
        ; call occurs [#_InitPieVectTable] ; [] |153| 
	.dwpsn	file "../source/main.c",line 154,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 154 | EINT;   // Enable Global interrupt INTM                                
;----------------------------------------------------------------------
 clrc INTM
	.dwpsn	file "../source/main.c",line 155,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | ERTM;   // Enable Global realtime interrupt DBGM                       
;----------------------------------------------------------------------
 clrc DBGM
	.dwpsn	file "../source/main.c",line 157,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 157 | TIC_init();                                                            
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer0Regs+2  ; [CPU_U] 
        MOVB      ACC,#0                ; [CPU_] |157| 
        SUBB      ACC,#1                ; [CPU_] |157| 
        MOVL      @_CpuTimer0Regs+2,ACC ; [CPU_] |157| 
        MOV       @_CpuTimer0Regs+6,#0  ; [CPU_] |157| 
        MOV       @_CpuTimer0Regs+7,#0  ; [CPU_] |157| 
        AND       @_CpuTimer0Regs+4,#0xf7ff ; [CPU_] |157| 
        AND       @_CpuTimer0Regs+4,#0xfbff ; [CPU_] |157| 
        OR        @_CpuTimer0Regs+4,#0x0010 ; [CPU_] |157| 
        OR        @_CpuTimer0Regs+4,#0x0020 ; [CPU_] |157| 
	.dwpsn	file "../source/main.c",line 158,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | TIC_init_1();                                                          
; 167 | // FIR filter offline                                                  
; 169 | // Generate sample waveforms:                                          
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |158| 
        MOVW      DP,#_CpuTimer1Regs+2  ; [CPU_U] 
        SUBB      ACC,#1                ; [CPU_] |158| 
        MOVL      @_CpuTimer1Regs+2,ACC ; [CPU_] |158| 
        MOV       @_CpuTimer1Regs+6,#0  ; [CPU_] |158| 
        MOV       @_CpuTimer1Regs+7,#0  ; [CPU_] |158| 
        AND       @_CpuTimer1Regs+4,#0xf7ff ; [CPU_] |158| 
        AND       @_CpuTimer1Regs+4,#0xfbff ; [CPU_] |158| 
        OR        @_CpuTimer1Regs+4,#0x0010 ; [CPU_] |158| 
        OR        @_CpuTimer1Regs+4,#0x0020 ; [CPU_] |158| 
	.dwpsn	file "../source/main.c",line 170,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 170 | Rad = 0.0f;                                                            
;----------------------------------------------------------------------
        ZERO      R0H                   ; [CPU_] |170| 
        MOVW      DP,#_Rad              ; [CPU_U] 
        MOV32     @_Rad,R0H             ; [CPU_] |170| 
	.dwpsn	file "../source/main.c",line 172,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | for(i=0; i < SIGNAL_LENGTH; i++)                                       
;----------------------------------------------------------------------
        MOV       @_i,#0                ; [CPU_] |172| 
	.dwpsn	file "../source/main.c",line 172,column 14,is_stmt,isa 0
        CMP       @_i,#516              ; [CPU_] |172| 
        B         $C$L2,GEQ             ; [CPU_] |172| 
        ; branchcc occurs ; [] |172| 
        SETC      SXM                   ; [CPU_] 
$C$L1:    
	.dwpsn	file "../source/main.c",line 174,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | sigIn[i]=0;                                                            
;----------------------------------------------------------------------
        MOV       ACC,@_i << 1          ; [CPU_] |174| 
        MOVL      XAR4,#_sigIn          ; [CPU_U] |174| 
        ADDL      XAR4,ACC              ; [CPU_] |174| 
        MOV32     *+XAR4[0],R0H         ; [CPU_] |174| 
	.dwpsn	file "../source/main.c",line 175,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | sigOut[i]=0;                                                           
;----------------------------------------------------------------------
        MOV       ACC,@_i << 1          ; [CPU_] |175| 
        MOVL      XAR4,#_sigOut         ; [CPU_U] |175| 
        ADDL      XAR4,ACC              ; [CPU_] |175| 
        MOV32     *+XAR4[0],R0H         ; [CPU_] |175| 
	.dwpsn	file "../source/main.c",line 172,column 33,is_stmt,isa 0
        INC       @_i                   ; [CPU_] |172| 
	.dwpsn	file "../source/main.c",line 172,column 14,is_stmt,isa 0
        CMP       @_i,#516              ; [CPU_] |172| 
        B         $C$L1,LT              ; [CPU_] |172| 
        ; branchcc occurs ; [] |172| 
$C$L2:    
	.dwpsn	file "../source/main.c",line 179,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | firFP.order = FIR_NUM_OF_COEFF;                                        
;----------------------------------------------------------------------
        MOVW      DP,#_firFP+5          ; [CPU_U] 
        MOVB      @_firFP+5,#129,UNC    ; [CPU_] |179| 
	.dwpsn	file "../source/main.c",line 180,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | firFP.dbuffer_ptr = dbuffer;                                           
;----------------------------------------------------------------------
        MOVL      XAR4,#_dbuffer        ; [CPU_U] |180| 
        MOVL      @_firFP+2,XAR4        ; [CPU_] |180| 
	.dwpsn	file "../source/main.c",line 181,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | firFP.coeff_ptr = (float *)coeff;                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#_coeff          ; [CPU_U] |181| 
        MOVL      @_firFP,XAR4          ; [CPU_] |181| 
	.dwpsn	file "../source/main.c",line 182,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | firFP.init(&firFP);                                                    
;----------------------------------------------------------------------
        SPM       #0                    ; [CPU_] 
        MOVL      XAR7,@_firFP+10       ; [CPU_] |182| 
        MOVL      XAR4,#_firFP          ; [CPU_U] |182| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_call
	.dwattr $C$DW$36, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_] |182| 
        ; call occurs [XAR7] ; [] |182| 
	.dwpsn	file "../source/main.c",line 185,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | for(i=0; i < SIGNAL_LENGTH; i++)                                       
;----------------------------------------------------------------------
        MOVW      DP,#_i                ; [CPU_U] 
        MOV       @_i,#0                ; [CPU_] |185| 
	.dwpsn	file "../source/main.c",line 185,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | //xn = 0.5*sin(Rad) + 0.5*sin(Rad2); //Q15                             
;----------------------------------------------------------------------
        CMP       @_i,#516              ; [CPU_] |185| 
        B         $C$L5,GEQ             ; [CPU_] |185| 
        ; branchcc occurs ; [] |185| 
$C$L3:    
	.dwpsn	file "../source/main.c",line 200,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | if(i > 127)                                                            
;----------------------------------------------------------------------
        MOV       AL,@_i                ; [CPU_] |200| 
        CMPB      AL,#127               ; [CPU_] |200| 
        B         $C$L4,LEQ             ; [CPU_] |200| 
        ; branchcc occurs ; [] |200| 
	.dwpsn	file "../source/main.c",line 202,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | temp1 = 1.0;                                                           
;----------------------------------------------------------------------
        MOVIZ     R0H,#16256            ; [CPU_] |202| 
        MOV32     @_temp1,R0H           ; [CPU_] |202| 
$C$L4:    
	.dwpsn	file "../source/main.c",line 204,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | xn = xn + 1.0;                                                         
;----------------------------------------------------------------------
        MOV32     R0H,@_xn              ; [CPU_] |204| 
        ADDF32    R0H,R0H,#16256        ; [CPU_] |204| 
        NOP       ; [CPU_] 
        MOV32     @_xn,R0H              ; [CPU_] |204| 
	.dwpsn	file "../source/main.c",line 211,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | sigIn[i] = xn;                                                         
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_] 
        MOVL      XAR6,@_xn             ; [CPU_] |211| 
        MOVL      XAR4,#_sigIn          ; [CPU_U] |211| 
        MOV       ACC,@_i << 1          ; [CPU_] |211| 
        ADDL      XAR4,ACC              ; [CPU_] |211| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |211| 
	.dwpsn	file "../source/main.c",line 212,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 212 | firFP.input = xn;                                                      
;----------------------------------------------------------------------
        MOVL      ACC,@_xn              ; [CPU_] |212| 
        MOVW      DP,#_firFP+6          ; [CPU_U] 
        MOVL      @_firFP+6,ACC         ; [CPU_] |212| 
	.dwpsn	file "../source/main.c",line 213,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 213 | firFP.calc(&firFP);                                                    
;----------------------------------------------------------------------
        MOVL      XAR7,@_firFP+12       ; [CPU_] |213| 
        MOVL      XAR4,#_firFP          ; [CPU_U] |213| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_call
	.dwattr $C$DW$37, DW_AT_TI_indirect

        LCR       *XAR7                 ; [CPU_] |213| 
        ; call occurs [XAR7] ; [] |213| 
	.dwpsn	file "../source/main.c",line 214,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | yn = firFP.output;                                                     
;----------------------------------------------------------------------
        MOVW      DP,#_firFP+8          ; [CPU_U] 
        MOVL      ACC,@_firFP+8         ; [CPU_] |214| 
        MOVW      DP,#_yn               ; [CPU_U] 
        MOVL      @_yn,ACC              ; [CPU_] |214| 
	.dwpsn	file "../source/main.c",line 215,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | sigOut[i] = yn;                                                        
;----------------------------------------------------------------------
        SETC      SXM                   ; [CPU_] 
        MOVL      XAR6,@_yn             ; [CPU_] |215| 
        MOVL      XAR4,#_sigOut         ; [CPU_U] |215| 
        MOV       ACC,@_i << 1          ; [CPU_] |215| 
        ADDL      XAR4,ACC              ; [CPU_] |215| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |215| 
	.dwpsn	file "../source/main.c",line 216,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | Rad = Rad + RadStep;                                                   
;----------------------------------------------------------------------
        MOV32     R0H,@_Rad             ; [CPU_] |216| 
        MOV32     R1H,@_RadStep         ; [CPU_] |216| 
        ADDF32    R0H,R0H,R1H           ; [CPU_] |216| 
        NOP       ; [CPU_] 
        MOV32     @_Rad,R0H             ; [CPU_] |216| 
	.dwpsn	file "../source/main.c",line 217,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | Rad2 = Rad2 + RadStep2;                                                
; 224 | // Program                                                             
;----------------------------------------------------------------------
        MOV32     R1H,@_RadStep2        ; [CPU_] |217| 
        MOV32     R0H,@_Rad2            ; [CPU_] |217| 
        ADDF32    R0H,R0H,R1H           ; [CPU_] |217| 
        NOP       ; [CPU_] 
        MOV32     @_Rad2,R0H            ; [CPU_] |217| 
	.dwpsn	file "../source/main.c",line 185,column 33,is_stmt,isa 0
        INC       @_i                   ; [CPU_] |185| 
	.dwpsn	file "../source/main.c",line 185,column 14,is_stmt,isa 0
        CMP       @_i,#516              ; [CPU_] |185| 
        B         $C$L3,LT              ; [CPU_] |185| 
        ; branchcc occurs ; [] |185| 
$C$L5:    
	.dwpsn	file "../source/main.c",line 225,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | while(1)                                                               
; 227 | // ustavimo štoparico 0                                                
;----------------------------------------------------------------------
$C$L6:    
	.dwpsn	file "../source/main.c",line 228,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | TIC_stop();                                                            
; 230 |     // generiramo referenèni kot, ki se naj bi resetiral vsako sekundo
;     | - s pomoèjo timerja 0                                                  
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer0Regs+4  ; [CPU_U] 
        OR        @_CpuTimer0Regs+4,#0x0010 ; [CPU_] |228| 
        MOVL      ACC,@_CpuTimer0Regs   ; [CPU_] |228| 
        MOVW      DP,#_TIC_time         ; [CPU_U] 
        SUBL      @_TIC_time,ACC        ; [CPU_] |228| 
	.dwpsn	file "../source/main.c",line 231,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | ref_angle = ref_angle + 1.0 * (float)TIC_time / CPU_FREQ;              
; 232 | // generiramo še kot, ki se spreminja s frekvenco 50 Hz - za potrebe DC
;     | T reg.                                                                 
;----------------------------------------------------------------------
        UI32TOF32 R1H,@_TIC_time        ; [CPU_] |231| 
        NOP       ; [CPU_] 
        MPYF32    R1H,R1H,#16256        ; [CPU_] |231| 
        MOVIZ     R0H,#19774            ; [CPU_] |231| 
        MOVXI     R0H,#48160            ; [CPU_] |231| 
        DIVF32    R1H,R1H,R0H           ; [CPU_] |231| 
        NOP       ; [CPU_] 
        NOP       ; [CPU_] 
        NOP       ; [CPU_] 
        MOV32     R3H,@_ref_angle       ; [CPU_] |231| 
        ADDF32    R0H,R1H,R3H           ; [CPU_] |231| 
        NOP       ; [CPU_] 
        MOV32     @_ref_angle,R0H       ; [CPU_] |231| 
	.dwpsn	file "../source/main.c",line 233,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | angle_50Hz = ref_angle + 50.0 * (float)TIC_time / CPU_FREQ;            
; 235 |         // zaženemo štoparico 0 za potrebe generiranja kota ref_angle  
;----------------------------------------------------------------------
        UI32TOF32 R1H,@_TIC_time        ; [CPU_] |233| 
        NOP       ; [CPU_] 
        MPYF32    R1H,R1H,#16968        ; [CPU_] |233| 
        MOVIZ     R0H,#19774            ; [CPU_] |233| 
        MOVXI     R0H,#48160            ; [CPU_] |233| 
        DIVF32    R1H,R1H,R0H           ; [CPU_] |233| 
        NOP       ; [CPU_] 
        NOP       ; [CPU_] 
        NOP       ; [CPU_] 
        MOV32     R2H,@_ref_angle       ; [CPU_] |233| 
        ADDF32    R0H,R1H,R2H           ; [CPU_] |233| 
        NOP       ; [CPU_] 
        MOV32     @_angle_50Hz,R0H      ; [CPU_] |233| 
	.dwpsn	file "../source/main.c",line 236,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | TIC_start();                                                           
; 238 | // omejimo ref_angle med 0 in 1                                        
;----------------------------------------------------------------------
        MOVW      DP,#_CpuTimer0Regs+4  ; [CPU_U] 
        OR        @_CpuTimer0Regs+4,#0x0020 ; [CPU_] |236| 
        AND       @_CpuTimer0Regs+4,#0xffef ; [CPU_] |236| 
        MOVL      ACC,@_CpuTimer0Regs   ; [CPU_] |236| 
        MOVW      DP,#_TIC_time         ; [CPU_U] 
        MOVL      @_TIC_time,ACC        ; [CPU_] |236| 
	.dwpsn	file "../source/main.c",line 239,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 239 | if(ref_angle > 1.0)                                                    
;----------------------------------------------------------------------
        MOV32     R0H,@_ref_angle       ; [CPU_] |239| 
        CMPF32    R0H,#16256            ; [CPU_] |239| 
        MOVST0    ZF, NF                ; [CPU_] |239| 
        B         $C$L7,LEQ             ; [CPU_] |239| 
        ; branchcc occurs ; [] |239| 
	.dwpsn	file "../source/main.c",line 241,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 241 | ref_angle = ref_angle - 1.0;                                           
;----------------------------------------------------------------------
        ADDF32    R0H,R0H,#49024        ; [CPU_] |241| 
        NOP       ; [CPU_] 
        MOV32     @_ref_angle,R0H       ; [CPU_] |241| 
	.dwpsn	file "../source/main.c",line 242,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 242 | num_of_s_passed = num_of_s_passed + 1;                                 
;----------------------------------------------------------------------
        INC       @_num_of_s_passed     ; [CPU_] |242| 
	.dwpsn	file "../source/main.c",line 243,column 3,is_stmt,isa 0
        B         $C$L8,UNC             ; [CPU_] |243| 
        ; branch occurs ; [] |243| 
$C$L7:    
	.dwpsn	file "../source/main.c",line 244,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | else if(ref_angle < 0.0)                                               
;----------------------------------------------------------------------
        CMPF32    R0H,#0                ; [CPU_] |244| 
        MOVST0    ZF, NF                ; [CPU_] |244| 
        B         $C$L8,GEQ             ; [CPU_] |244| 
        ; branchcc occurs ; [] |244| 
	.dwpsn	file "../source/main.c",line 246,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | ref_angle = ref_angle + 1.0;                                           
; 249 | // izraèunamo koliko minut že teèe program                             
;----------------------------------------------------------------------
        ADDF32    R0H,R0H,#16256        ; [CPU_] |246| 
        NOP       ; [CPU_] 
        MOV32     @_ref_angle,R0H       ; [CPU_] |246| 
$C$L8:    
	.dwpsn	file "../source/main.c",line 250,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | if(num_of_s_passed > 59)                                               
;----------------------------------------------------------------------
        MOV       AL,@_num_of_s_passed  ; [CPU_] |250| 
        CMPB      AL,#59                ; [CPU_] |250| 
        B         $C$L6,LEQ             ; [CPU_] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "../source/main.c",line 252,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | num_of_s_passed = 0;                                                   
;----------------------------------------------------------------------
        MOV       @_num_of_s_passed,#0  ; [CPU_] |252| 
	.dwpsn	file "../source/main.c",line 253,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | num_of_min_passed = num_of_min_passed + 1;                             
;----------------------------------------------------------------------
        INC       @_num_of_min_passed   ; [CPU_] |253| 
	.dwpsn	file "../source/main.c",line 225,column 8,is_stmt,isa 0
        B         $C$L6,UNC             ; [CPU_] |225| 
        ; branch occurs ; [] |225| 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../source/main.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x104)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_FIR_FP_calc
	.global	_FIR_FP_init
	.global	_InitPieVectTable
	.global	_InitSysCtrl
	.global	_InitPieCtrl
	.global	_CpuTimer0Regs
	.global	_CpuTimer1Regs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x0e)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("coeff_ptr")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_coeff_ptr")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("dbuffer_ptr")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_dbuffer_ptr")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_name("cbindex")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_cbindex")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_name("order")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_order")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$42, DW_AT_name("input")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_input")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$43, DW_AT_name("output")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$44, DW_AT_name("init")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_init")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_name("calc")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_calc")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("FIR_FP")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x08)
$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$46, DW_AT_name("TIM")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$47, DW_AT_name("PRD")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$48, DW_AT_name("TCR")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$49, DW_AT_name("rsvd1")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$50, DW_AT_name("TPR")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$51, DW_AT_name("TPRH")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24

$C$DW$52	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$24)

$C$DW$T$38	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$52)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("PRD_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_name("LSW")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$53, DW_AT_bit_size(0x10)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$54, DW_AT_name("MSW")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$54, DW_AT_bit_size(0x10)
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$55, DW_AT_name("all")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$56, DW_AT_name("bit")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_name("rsvd1")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$57, DW_AT_bit_size(0x04)
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$58, DW_AT_name("TSS")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_name("TRB")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$60, DW_AT_name("rsvd2")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$60, DW_AT_bit_size(0x04)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$61, DW_AT_name("SOFT")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$62, DW_AT_name("FREE")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$63, DW_AT_name("rsvd3")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$63, DW_AT_bit_size(0x02)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$64, DW_AT_name("TIE")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$65, DW_AT_name("TIF")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$66, DW_AT_name("all")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$67, DW_AT_name("bit")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("TIM_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$68, DW_AT_name("LSW")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$68, DW_AT_bit_size(0x10)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$69, DW_AT_name("MSW")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$69, DW_AT_bit_size(0x10)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$70, DW_AT_name("all")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$71, DW_AT_name("bit")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$72, DW_AT_name("TDDRH")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$72, DW_AT_bit_size(0x08)
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_name("PSCH")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$73, DW_AT_bit_size(0x08)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$74, DW_AT_name("all")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$75, DW_AT_name("bit")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$76, DW_AT_name("TDDR")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$76, DW_AT_bit_size(0x08)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$77, DW_AT_name("PSC")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$77, DW_AT_bit_size(0x08)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$78, DW_AT_name("all")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$79, DW_AT_name("bit")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)


$C$DW$T$20	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$3)

	.dwendtag $C$DW$T$20

$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("Uint16")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("Uint32")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$81	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$13)

$C$DW$T$51	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$81)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)


$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x408)
$C$DW$82	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$82, DW_AT_upper_bound(0x203)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x102)
$C$DW$83	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$83, DW_AT_upper_bound(0x80)

	.dwendtag $C$DW$T$53

$C$DW$84	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$16)

$C$DW$T$54	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$84)


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x102)
$C$DW$85	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$85, DW_AT_upper_bound(0x80)

	.dwendtag $C$DW$T$55

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	undefined, 26
	.dwcfi	same_value, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	same_value, 59
	.dwcfi	same_value, 60
	.dwcfi	same_value, 63
	.dwcfi	same_value, 64
	.dwcfi	same_value, 67
	.dwcfi	same_value, 68
	.dwcfi	same_value, 71
	.dwcfi	same_value, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 27
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("AL")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("AH")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg1]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("PL")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg2]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("PH")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg3]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("SP")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg20]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("XT")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg21]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("T")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg22]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("ST0")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg23]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("ST1")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg24]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("PC")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg25]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("RPC")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg26]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("FP")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg28]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("DP")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg29]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("SXM")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg30]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("PM")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg31]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("OVM")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x20]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("PAGE0")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x21]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("AMODE")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x22]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("INTM")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x23]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("IFR")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x24]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("IER")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x25]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("V")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x26]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("VOL")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("AR0")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg4]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("XAR0")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg5]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("AR1")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg6]

$C$DW$113	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$113, DW_AT_name("XAR1")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg7]

$C$DW$114	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$114, DW_AT_name("AR2")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg8]

$C$DW$115	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$115, DW_AT_name("XAR2")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg9]

$C$DW$116	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$116, DW_AT_name("AR3")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg10]

$C$DW$117	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$117, DW_AT_name("XAR3")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg11]

$C$DW$118	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$118, DW_AT_name("AR4")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg12]

$C$DW$119	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$119, DW_AT_name("XAR4")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg13]

$C$DW$120	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$120, DW_AT_name("AR5")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg14]

$C$DW$121	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$121, DW_AT_name("XAR5")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg15]

$C$DW$122	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$122, DW_AT_name("AR6")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg16]

$C$DW$123	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$123, DW_AT_name("XAR6")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg17]

$C$DW$124	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$124, DW_AT_name("AR7")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg18]

$C$DW$125	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$125, DW_AT_name("XAR7")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg19]

$C$DW$126	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$126, DW_AT_name("R0HL")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$127	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$127, DW_AT_name("R0H")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x2c]

$C$DW$128	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$128, DW_AT_name("R1HL")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$129	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$129, DW_AT_name("R1H")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x30]

$C$DW$130	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$130, DW_AT_name("R2HL")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x33]

$C$DW$131	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$131, DW_AT_name("R2H")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x34]

$C$DW$132	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$132, DW_AT_name("R3HL")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x37]

$C$DW$133	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$133, DW_AT_name("R3H")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x38]

$C$DW$134	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$134, DW_AT_name("R4HL")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$135	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$135, DW_AT_name("R4H")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$136	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$136, DW_AT_name("R5HL")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$137	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$137, DW_AT_name("R5H")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x40]

$C$DW$138	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$138, DW_AT_name("R6HL")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x43]

$C$DW$139	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$139, DW_AT_name("R6H")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x44]

$C$DW$140	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$140, DW_AT_name("R7HL")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x47]

$C$DW$141	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$141, DW_AT_name("R7H")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x48]

$C$DW$142	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$142, DW_AT_name("RBL")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x49]

$C$DW$143	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$143, DW_AT_name("RB")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$144	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$144, DW_AT_name("STFL")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x27]

$C$DW$145	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$145, DW_AT_name("STF")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x28]

$C$DW$146	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$146, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg27]

	.dwendtag $C$DW$CU

