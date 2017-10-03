;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Mon Oct 02 10:10:16 2017                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../source/DLOG_gen.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.4.LTS Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\DenisS\Desktop\FIR_filter_offline\FIR_filter_offline\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-$C$IR_1,16
	.field  	_dlog+0,32
	.bits	0,32			; _dlog._trig @ 0
	.bits	0,32			; _dlog._iptr1 @ 32
	.bits	0,32			; _dlog._iptr2 @ 64
	.bits	0,32			; _dlog._iptr3 @ 96
	.bits	0,32			; _dlog._iptr4 @ 128
	.bits	0,32			; _dlog._iptr5 @ 160
	.bits	0,32			; _dlog._iptr6 @ 192
	.bits	0,32			; _dlog._iptr7 @ 224
	.bits	0,32			; _dlog._iptr8 @ 256
	.xfloat	$strtod("0x0p+0")		; _dlog._trig_value @ 288
	.bits	1,16			; _dlog._prescalar @ 320
	.bits	0,16			; _dlog._skip_cntr @ 336
	.bits	0,16			; _dlog._write_ptr @ 352
	.bits	1000,16			; _dlog._write_length @ 368
	.bits	0,16			; _dlog._state @ 384
	.bits	0,16			; _dlog._slope @ 400
	.bits	1000,32			; _dlog._auto_time @ 416
	.bits	0,32			; _dlog._auto_cnt @ 448
	.bits	1000,32			; _dlog._holdoff_time @ 480
	.bits	0,32			; _dlog._holdoff_cnt @ 512
	.bits	0,16			; _dlog._mode @ 544
	.bits	0,16			; _dlog._sw_trigger @ 560
$C$IR_1:	.set	36

	.global	_dlog
_dlog:	.usect	".ebss",36,1,1
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("dlog")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_dlog")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _dlog]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$1, DW_AT_external

	.global	_DLOG_b_6
_DLOG_b_6:	.usect	".ebss",2000,1,1
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("DLOG_b_6")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_DLOG_b_6")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _DLOG_b_6]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$2, DW_AT_external

	.global	_DLOG_b_5
_DLOG_b_5:	.usect	".ebss",2000,1,1
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("DLOG_b_5")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_DLOG_b_5")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr _DLOG_b_5]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$3, DW_AT_external

	.global	_DLOG_b_8
_DLOG_b_8:	.usect	".ebss",2000,1,1
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("DLOG_b_8")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_DLOG_b_8")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr _DLOG_b_8]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$4, DW_AT_external

	.global	_DLOG_b_2
_DLOG_b_2:	.usect	".ebss",2000,1,1
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("DLOG_b_2")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_DLOG_b_2")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr _DLOG_b_2]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$5, DW_AT_external

	.global	_DLOG_b_1
_DLOG_b_1:	.usect	".ebss",2000,1,1
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("DLOG_b_1")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_DLOG_b_1")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _DLOG_b_1]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$6, DW_AT_external

	.global	_DLOG_b_4
_DLOG_b_4:	.usect	".ebss",2000,1,1
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("DLOG_b_4")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_DLOG_b_4")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr _DLOG_b_4]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$7, DW_AT_external

	.global	_DLOG_b_3
_DLOG_b_3:	.usect	".ebss",2000,1,1
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("DLOG_b_3")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_DLOG_b_3")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr _DLOG_b_3]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$8, DW_AT_external

	.global	_DLOG_b_7
_DLOG_b_7:	.usect	".ebss",2000,1,1
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("DLOG_b_7")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_DLOG_b_7")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr _DLOG_b_7]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$9, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\DenisS\\AppData\\Local\\Temp\\0384012 
	.sect	"ramfuncs:_DLOG_GEN_update"
	.clink
	.global	_DLOG_GEN_update

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("DLOG_GEN_update")
	.dwattr $C$DW$10, DW_AT_low_pc(_DLOG_GEN_update)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_DLOG_GEN_update")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../source/DLOG_gen.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x53)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../source/DLOG_gen.c",line 84,column 1,is_stmt,address _DLOG_GEN_update,isa 0

	.dwfde $C$DW$CIE, _DLOG_GEN_update
;----------------------------------------------------------------------
;  83 | void DLOG_GEN_update(void)                                             
;  85 | // èe delam v neprestanem naèinu, potem skozi spravljam vzorce         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DLOG_GEN_update              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_DLOG_GEN_update:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../source/DLOG_gen.c",line 86,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | if (dlog.mode == Continuous)                                           
;  88 |     // ce je vzorec za shranit, ga shranim                             
;----------------------------------------------------------------------
        MOVW      DP,#_dlog+34          ; [CPU_U] 
        MOV       AL,@_dlog+34          ; [CPU_] |86| 
        CMPB      AL,#4                 ; [CPU_] |86| 
        B         $C$L2,NEQ             ; [CPU_] |86| 
        ; branchcc occurs ; [] |86| 
	.dwpsn	file "../source/DLOG_gen.c",line 89,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | if (dlog.skip_cntr == 0)                                               
;  91 |     // spravim prvi kanal                                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+21          ; [CPU_] |89| 
        B         $C$L1,NEQ             ; [CPU_] |89| 
        ; branchcc occurs ; [] |89| 
	.dwpsn	file "../source/DLOG_gen.c",line 92,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | DLOG_b_1[dlog.write_ptr] = *(dlog.iptr1);                              
;  94 | #if DLOG_GEN_NR > 1                                                    
;  95 | // spravim drugi kanal                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+2         ; [CPU_] |92| 
        CLRC      SXM                   ; [CPU_] 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |92| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |92| 
        MOVL      XAR4,#_DLOG_b_1       ; [CPU_U] |92| 
        ADDL      XAR4,ACC              ; [CPU_] |92| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |92| 
	.dwpsn	file "../source/DLOG_gen.c",line 96,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | DLOG_b_2[dlog.write_ptr] = *(dlog.iptr2);                              
;  97 | #endif                                                                 
;  99 | #if DLOG_GEN_NR > 2                                                    
; 100 | // spravim tretji kanal                                                
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+4         ; [CPU_] |96| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |96| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |96| 
        MOVL      XAR4,#_DLOG_b_2       ; [CPU_U] |96| 
        ADDL      XAR4,ACC              ; [CPU_] |96| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |96| 
	.dwpsn	file "../source/DLOG_gen.c",line 101,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | DLOG_b_3[dlog.write_ptr] = *(dlog.iptr3);                              
; 102 | #endif                                                                 
; 104 | #if DLOG_GEN_NR > 3                                                    
; 105 | // spravim cetrti kanal                                                
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+6         ; [CPU_] |101| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |101| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |101| 
        MOVL      XAR4,#_DLOG_b_3       ; [CPU_U] |101| 
        ADDL      XAR4,ACC              ; [CPU_] |101| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |101| 
	.dwpsn	file "../source/DLOG_gen.c",line 106,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | DLOG_b_4[dlog.write_ptr] = *(dlog.iptr4);                              
; 107 | #endif                                                                 
; 109 | #if DLOG_GEN_NR > 4                                                    
; 110 | // spravim peti kanal                                                  
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+8         ; [CPU_] |106| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |106| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |106| 
        MOVL      XAR4,#_DLOG_b_4       ; [CPU_U] |106| 
        ADDL      XAR4,ACC              ; [CPU_] |106| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |106| 
	.dwpsn	file "../source/DLOG_gen.c",line 111,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | DLOG_b_5[dlog.write_ptr] = *(dlog.iptr5);                              
; 112 | #endif                                                                 
; 114 | #if DLOG_GEN_NR > 5                                                    
; 115 | // spravim sesti kanal                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+10        ; [CPU_] |111| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |111| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |111| 
        MOVL      XAR4,#_DLOG_b_5       ; [CPU_U] |111| 
        ADDL      XAR4,ACC              ; [CPU_] |111| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |111| 
	.dwpsn	file "../source/DLOG_gen.c",line 116,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | DLOG_b_6[dlog.write_ptr] = *(dlog.iptr6);                              
; 117 | #endif                                                                 
; 119 | #if DLOG_GEN_NR > 6                                                    
; 120 | // spravim sedmi kanal                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+12        ; [CPU_] |116| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |116| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |116| 
        MOVL      XAR4,#_DLOG_b_6       ; [CPU_U] |116| 
        ADDL      XAR4,ACC              ; [CPU_] |116| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |116| 
	.dwpsn	file "../source/DLOG_gen.c",line 121,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | DLOG_b_7[dlog.write_ptr] = *(dlog.iptr7);                              
; 122 | #endif                                                                 
; 124 | #if DLOG_GEN_NR > 7                                                    
; 125 | // spravim osmi kanal                                                  
;----------------------------------------------------------------------
        MOVL      XAR5,@_dlog+14        ; [CPU_] |121| 
        MOVL      XAR4,#_DLOG_b_7       ; [CPU_U] |121| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |121| 
        ADDL      XAR4,ACC              ; [CPU_] |121| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_] |121| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |121| 
	.dwpsn	file "../source/DLOG_gen.c",line 126,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | DLOG_b_8[dlog.write_ptr] = *(dlog.iptr8);                              
; 127 | #endif                                                                 
; 129 | // nastavim kazalec za bufferje                                        
;----------------------------------------------------------------------
        MOVL      XAR5,@_dlog+16        ; [CPU_] |126| 
        MOVL      XAR4,#_DLOG_b_8       ; [CPU_U] |126| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |126| 
        ADDL      XAR4,ACC              ; [CPU_] |126| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_] |126| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |126| 
	.dwpsn	file "../source/DLOG_gen.c",line 130,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | (dlog.write_ptr)++;                                                    
; 131 | // ce pridem do konca                                                  
;----------------------------------------------------------------------
        INC       @_dlog+22             ; [CPU_] |130| 
	.dwpsn	file "../source/DLOG_gen.c",line 132,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | if (dlog.write_ptr == dlog.write_length)                               
; 134 |     // pripravim za naslednjic                                         
;----------------------------------------------------------------------
        MOVZ      AR6,@_dlog+22         ; [CPU_] |132| 
        MOVU      ACC,@_dlog+23         ; [CPU_] |132| 
        CMPL      ACC,XAR6              ; [CPU_] |132| 
        B         $C$L1,NEQ             ; [CPU_] |132| 
        ; branchcc occurs ; [] |132| 
	.dwpsn	file "../source/DLOG_gen.c",line 135,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | dlog.write_ptr = 0;                                                    
; 138 | // za downsamplanje                                                    
;----------------------------------------------------------------------
        MOV       @_dlog+22,#0          ; [CPU_] |135| 
$C$L1:    
	.dwpsn	file "../source/DLOG_gen.c",line 139,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 139 | (dlog.skip_cntr)++;                                                    
;----------------------------------------------------------------------
        INC       @_dlog+21             ; [CPU_] |139| 
	.dwpsn	file "../source/DLOG_gen.c",line 140,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | if ((dlog.skip_cntr) >= (dlog.prescalar))                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+20          ; [CPU_] |140| 
        CMP       AL,@_dlog+21          ; [CPU_] |140| 
        B         $C$L15,HI             ; [CPU_] |140| 
        ; branchcc occurs ; [] |140| 
	.dwpsn	file "../source/DLOG_gen.c",line 142,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | dlog.skip_cntr = 0;                                                    
;----------------------------------------------------------------------
        MOV       @_dlog+21,#0          ; [CPU_] |142| 
	.dwpsn	file "../source/DLOG_gen.c",line 144,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 145 | else                                                                   
; 147 | // najprej pocakam da pripravim trigger                                
;----------------------------------------------------------------------
        B         $C$L15,UNC            ; [CPU_] |144| 
        ; branch occurs ; [] |144| 
$C$L2:    
	.dwpsn	file "../source/DLOG_gen.c",line 148,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | if ((dlog.state == Wait))                                              
; 150 |     // ce sem zaustavljen po uspesni single shot pretvorbi             
; 151 |     // cakam na uporabnika, da spremeni nacin ali pa na SW trigger     
;----------------------------------------------------------------------
        MOV       AL,@_dlog+24          ; [CPU_] |148| 
        B         $C$L7,NEQ             ; [CPU_] |148| 
        ; branchcc occurs ; [] |148| 
	.dwpsn	file "../source/DLOG_gen.c",line 152,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | if (dlog.mode == Stop)                                                 
; 154 |     // ce je sw triger potem kar sproži                                
;----------------------------------------------------------------------
        MOV       AL,@_dlog+34          ; [CPU_] |152| 
        CMPB      AL,#3                 ; [CPU_] |152| 
        B         $C$L3,NEQ             ; [CPU_] |152| 
        ; branchcc occurs ; [] |152| 
	.dwpsn	file "../source/DLOG_gen.c",line 155,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | if (dlog.sw_trigger != 0)                                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+35          ; [CPU_] |155| 
        B         $C$L7,EQ              ; [CPU_] |155| 
        ; branchcc occurs ; [] |155| 
	.dwpsn	file "../source/DLOG_gen.c",line 157,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 157 | dlog.state = Ready;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#1,UNC      ; [CPU_] |157| 
	.dwpsn	file "../source/DLOG_gen.c",line 158,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | dlog.mode = Single;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+34,#2,UNC      ; [CPU_] |158| 
	.dwpsn	file "../source/DLOG_gen.c",line 160,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | // sicer pa prozi triger ali pa triger vsaj pripravi                   
; 162 | else                                                                   
; 164 |     // Auto trigger in Auto mode                                       
;----------------------------------------------------------------------
        B         $C$L7,UNC             ; [CPU_] |160| 
        ; branch occurs ; [] |160| 
$C$L3:    
	.dwpsn	file "../source/DLOG_gen.c",line 165,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | if (dlog.mode == Auto)                                                 
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; [CPU_] |165| 
        B         $C$L4,NEQ             ; [CPU_] |165| 
        ; branchcc occurs ; [] |165| 
	.dwpsn	file "../source/DLOG_gen.c",line 167,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | dlog.auto_cnt = dlog.auto_cnt + 1;                                     
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_] |167| 
        ADDL      @_dlog+28,ACC         ; [CPU_] |167| 
	.dwpsn	file "../source/DLOG_gen.c",line 168,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 168 | if (dlog.auto_cnt == dlog.auto_time)                                   
;----------------------------------------------------------------------
        MOVL      ACC,@_dlog+26         ; [CPU_] |168| 
        CMPL      ACC,@_dlog+28         ; [CPU_] |168| 
        B         $C$L4,NEQ             ; [CPU_] |168| 
        ; branchcc occurs ; [] |168| 
	.dwpsn	file "../source/DLOG_gen.c",line 170,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 170 | dlog.state = Store;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#2,UNC      ; [CPU_] |170| 
	.dwpsn	file "../source/DLOG_gen.c",line 171,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | dlog.auto_cnt = 0;                                                     
; 174 | // ready trigger if positive slope (value is below trigg value)        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |171| 
        MOVL      @_dlog+28,ACC         ; [CPU_] |171| 
$C$L4:    
	.dwpsn	file "../source/DLOG_gen.c",line 175,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | if (dlog.slope == Positive)                                            
;----------------------------------------------------------------------
        MOV       AL,@_dlog+25          ; [CPU_] |175| 
        B         $C$L5,NEQ             ; [CPU_] |175| 
        ; branchcc occurs ; [] |175| 
	.dwpsn	file "../source/DLOG_gen.c",line 177,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | if(*(dlog.trig) < dlog.trig_value) dlog.state = Ready;                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog           ; [CPU_] |177| 
        MOV32     R0H,@_dlog+18         ; [CPU_] |177| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |177| 
        CMPF32    R1H,R0H               ; [CPU_] |177| 
        MOVST0    ZF, NF                ; [CPU_] |177| 
        B         $C$L6,GEQ             ; [CPU_] |177| 
        ; branchcc occurs ; [] |177| 
	.dwpsn	file "../source/DLOG_gen.c",line 177,column 52,is_stmt,isa 0
        MOVB      @_dlog+24,#1,UNC      ; [CPU_] |177| 
	.dwpsn	file "../source/DLOG_gen.c",line 178,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 179 | // ready trigger if negative slope (value is above trigg value)        
; 180 | else                                                                   
;----------------------------------------------------------------------
        B         $C$L6,UNC             ; [CPU_] |178| 
        ; branch occurs ; [] |178| 
$C$L5:    
	.dwpsn	file "../source/DLOG_gen.c",line 182,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | if(*(dlog.trig) > dlog.trig_value) dlog.state = Ready;                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog           ; [CPU_] |182| 
        MOV32     R0H,@_dlog+18         ; [CPU_] |182| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |182| 
        CMPF32    R1H,R0H               ; [CPU_] |182| 
        MOVST0    ZF, NF                ; [CPU_] |182| 
        B         $C$L6,LEQ             ; [CPU_] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../source/DLOG_gen.c",line 182,column 52,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | // ce je sw triger potem kar sproži                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#1,UNC      ; [CPU_] |182| 
$C$L6:    
	.dwpsn	file "../source/DLOG_gen.c",line 185,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | if (dlog.sw_trigger != 0)                                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+35          ; [CPU_] |185| 
        B         $C$L7,EQ              ; [CPU_] |185| 
        ; branchcc occurs ; [] |185| 
	.dwpsn	file "../source/DLOG_gen.c",line 187,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | dlog.state = Ready;                                                    
; 191 | // cakam na trigger                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#1,UNC      ; [CPU_] |187| 
$C$L7:    
	.dwpsn	file "../source/DLOG_gen.c",line 192,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | if (dlog.state == Ready)                                               
; 194 |     // Auto trigger in Auto mode                                       
;----------------------------------------------------------------------
        MOV       AL,@_dlog+24          ; [CPU_] |192| 
        CMPB      AL,#1                 ; [CPU_] |192| 
        B         $C$L11,NEQ            ; [CPU_] |192| 
        ; branchcc occurs ; [] |192| 
	.dwpsn	file "../source/DLOG_gen.c",line 195,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 195 | if (dlog.mode == Auto)                                                 
;----------------------------------------------------------------------
        MOV       AL,@_dlog+34          ; [CPU_] |195| 
        B         $C$L8,NEQ             ; [CPU_] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "../source/DLOG_gen.c",line 197,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | dlog.auto_cnt = dlog.auto_cnt + 1;                                     
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_] |197| 
        ADDL      @_dlog+28,ACC         ; [CPU_] |197| 
	.dwpsn	file "../source/DLOG_gen.c",line 198,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | if (dlog.auto_cnt == dlog.auto_time)                                   
;----------------------------------------------------------------------
        MOVL      ACC,@_dlog+26         ; [CPU_] |198| 
        CMPL      ACC,@_dlog+28         ; [CPU_] |198| 
        B         $C$L8,NEQ             ; [CPU_] |198| 
        ; branchcc occurs ; [] |198| 
	.dwpsn	file "../source/DLOG_gen.c",line 200,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | dlog.state = Store;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#2,UNC      ; [CPU_] |200| 
	.dwpsn	file "../source/DLOG_gen.c",line 201,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | dlog.auto_cnt = 0;                                                     
; 205 | //  Check for positive slope trigger event                             
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |201| 
        MOVL      @_dlog+28,ACC         ; [CPU_] |201| 
$C$L8:    
	.dwpsn	file "../source/DLOG_gen.c",line 206,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 206 | if (dlog.slope == Positive)                                            
;----------------------------------------------------------------------
        MOV       AL,@_dlog+25          ; [CPU_] |206| 
        B         $C$L9,NEQ             ; [CPU_] |206| 
        ; branchcc occurs ; [] |206| 
	.dwpsn	file "../source/DLOG_gen.c",line 208,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | if(*(dlog.trig) >= dlog.trig_value)                                    
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog           ; [CPU_] |208| 
        MOV32     R0H,@_dlog+18         ; [CPU_] |208| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |208| 
        CMPF32    R1H,R0H               ; [CPU_] |208| 
        MOVST0    ZF, NF                ; [CPU_] |208| 
        B         $C$L10,LT             ; [CPU_] |208| 
        ; branchcc occurs ; [] |208| 
	.dwpsn	file "../source/DLOG_gen.c",line 210,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | dlog.state = Store;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#2,UNC      ; [CPU_] |210| 
	.dwpsn	file "../source/DLOG_gen.c",line 211,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 211 | dlog.auto_cnt = 0;                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |211| 
        MOVL      @_dlog+28,ACC         ; [CPU_] |211| 
	.dwpsn	file "../source/DLOG_gen.c",line 213,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | // check for negative slope trigger event                              
; 215 | else                                                                   
;----------------------------------------------------------------------
        B         $C$L10,UNC            ; [CPU_] |213| 
        ; branch occurs ; [] |213| 
$C$L9:    
	.dwpsn	file "../source/DLOG_gen.c",line 217,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | if(*(dlog.trig) <= dlog.trig_value)                                    
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog           ; [CPU_] |217| 
        MOV32     R0H,@_dlog+18         ; [CPU_] |217| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |217| 
        CMPF32    R1H,R0H               ; [CPU_] |217| 
        MOVST0    ZF, NF                ; [CPU_] |217| 
        B         $C$L10,GT             ; [CPU_] |217| 
        ; branchcc occurs ; [] |217| 
	.dwpsn	file "../source/DLOG_gen.c",line 219,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | dlog.state = Store;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#2,UNC      ; [CPU_] |219| 
	.dwpsn	file "../source/DLOG_gen.c",line 220,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | dlog.auto_cnt = 0;                                                     
; 225 | // ce pa je SW trigger pa kar sproži                                   
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |220| 
        MOVL      @_dlog+28,ACC         ; [CPU_] |220| 
$C$L10:    
	.dwpsn	file "../source/DLOG_gen.c",line 226,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 226 | if (dlog.sw_trigger != 0)                                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+35          ; [CPU_] |226| 
        B         $C$L11,EQ             ; [CPU_] |226| 
        ; branchcc occurs ; [] |226| 
	.dwpsn	file "../source/DLOG_gen.c",line 228,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | dlog.state = Store;                                                    
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#2,UNC      ; [CPU_] |228| 
	.dwpsn	file "../source/DLOG_gen.c",line 229,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 229 | dlog.auto_cnt = 0;                                                     
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |229| 
        MOVL      @_dlog+28,ACC         ; [CPU_] |229| 
	.dwpsn	file "../source/DLOG_gen.c",line 230,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | dlog.sw_trigger = 0;                                                   
; 233 | // ce delam, potem shranjujem v buffer                                 
;----------------------------------------------------------------------
        MOV       @_dlog+35,#0          ; [CPU_] |230| 
$C$L11:    
	.dwpsn	file "../source/DLOG_gen.c",line 234,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 234 | if (dlog.state == Store)                                               
; 236 |     // ce je vzorec za shranit, ga shranim                             
;----------------------------------------------------------------------
        MOV       AL,@_dlog+24          ; [CPU_] |234| 
        CMPB      AL,#2                 ; [CPU_] |234| 
        B         $C$L14,NEQ            ; [CPU_] |234| 
        ; branchcc occurs ; [] |234| 
	.dwpsn	file "../source/DLOG_gen.c",line 237,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 237 | if (dlog.skip_cntr == 0)                                               
; 239 |     // spravim prvi kanal                                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+21          ; [CPU_] |237| 
        B         $C$L13,NEQ            ; [CPU_] |237| 
        ; branchcc occurs ; [] |237| 
	.dwpsn	file "../source/DLOG_gen.c",line 240,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | DLOG_b_1[dlog.write_ptr] = *(dlog.iptr1);                              
; 242 | #if DLOG_GEN_NR > 1                                                    
; 243 | // spravim drugi kanal                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+2         ; [CPU_] |240| 
        CLRC      SXM                   ; [CPU_] 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |240| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |240| 
        MOVL      XAR4,#_DLOG_b_1       ; [CPU_U] |240| 
        ADDL      XAR4,ACC              ; [CPU_] |240| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |240| 
	.dwpsn	file "../source/DLOG_gen.c",line 244,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | DLOG_b_2[dlog.write_ptr] = *(dlog.iptr2);                              
; 245 | #endif                                                                 
; 247 | #if DLOG_GEN_NR > 2                                                    
; 248 | // spravim tretji kanal                                                
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+4         ; [CPU_] |244| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |244| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |244| 
        MOVL      XAR4,#_DLOG_b_2       ; [CPU_U] |244| 
        ADDL      XAR4,ACC              ; [CPU_] |244| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |244| 
	.dwpsn	file "../source/DLOG_gen.c",line 249,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 249 | DLOG_b_3[dlog.write_ptr] = *(dlog.iptr3);                              
; 250 | #endif                                                                 
; 252 | #if DLOG_GEN_NR > 3                                                    
; 253 | // spravim cetrti kanal                                                
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+6         ; [CPU_] |249| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |249| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |249| 
        MOVL      XAR4,#_DLOG_b_3       ; [CPU_U] |249| 
        ADDL      XAR4,ACC              ; [CPU_] |249| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |249| 
	.dwpsn	file "../source/DLOG_gen.c",line 254,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | DLOG_b_4[dlog.write_ptr] = *(dlog.iptr4);                              
; 255 | #endif                                                                 
; 257 | #if DLOG_GEN_NR > 4                                                    
; 258 | // spravim peti kanal                                                  
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+8         ; [CPU_] |254| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |254| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |254| 
        MOVL      XAR4,#_DLOG_b_4       ; [CPU_U] |254| 
        ADDL      XAR4,ACC              ; [CPU_] |254| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |254| 
	.dwpsn	file "../source/DLOG_gen.c",line 259,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | DLOG_b_5[dlog.write_ptr] = *(dlog.iptr5);                              
; 260 | #endif                                                                 
; 262 | #if DLOG_GEN_NR > 5                                                    
; 263 | // spravim sesti kanal                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+10        ; [CPU_] |259| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |259| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |259| 
        MOVL      XAR4,#_DLOG_b_5       ; [CPU_U] |259| 
        ADDL      XAR4,ACC              ; [CPU_] |259| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |259| 
	.dwpsn	file "../source/DLOG_gen.c",line 264,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 264 | DLOG_b_6[dlog.write_ptr] = *(dlog.iptr6);                              
; 265 | #endif                                                                 
; 267 | #if DLOG_GEN_NR > 6                                                    
; 268 | // spravim sedmi kanal                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,@_dlog+12        ; [CPU_] |264| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |264| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |264| 
        MOVL      XAR4,#_DLOG_b_6       ; [CPU_U] |264| 
        ADDL      XAR4,ACC              ; [CPU_] |264| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |264| 
	.dwpsn	file "../source/DLOG_gen.c",line 269,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 269 | DLOG_b_7[dlog.write_ptr] = *(dlog.iptr7);                              
; 270 | #endif                                                                 
; 272 | #if DLOG_GEN_NR > 7                                                    
; 273 | // spravim osmi kanal                                                  
;----------------------------------------------------------------------
        MOVL      XAR5,@_dlog+14        ; [CPU_] |269| 
        MOVL      XAR4,#_DLOG_b_7       ; [CPU_U] |269| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |269| 
        ADDL      XAR4,ACC              ; [CPU_] |269| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_] |269| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |269| 
	.dwpsn	file "../source/DLOG_gen.c",line 274,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | DLOG_b_8[dlog.write_ptr] = *(dlog.iptr8);                              
; 275 | #endif                                                                 
; 277 | // nastavim kazalec za bufferje                                        
;----------------------------------------------------------------------
        MOVL      XAR5,@_dlog+16        ; [CPU_] |274| 
        MOVL      XAR4,#_DLOG_b_8       ; [CPU_U] |274| 
        MOV       ACC,@_dlog+22 << 1    ; [CPU_] |274| 
        ADDL      XAR4,ACC              ; [CPU_] |274| 
        MOVL      ACC,*+XAR5[0]         ; [CPU_] |274| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |274| 
	.dwpsn	file "../source/DLOG_gen.c",line 278,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 278 | (dlog.write_ptr)++;                                                    
; 279 | // ce pridem do konca                                                  
;----------------------------------------------------------------------
        INC       @_dlog+22             ; [CPU_] |278| 
	.dwpsn	file "../source/DLOG_gen.c",line 280,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | if (dlog.write_ptr == dlog.write_length)                               
; 282 |     // pripravim za naslednjic                                         
;----------------------------------------------------------------------
        MOVZ      AR6,@_dlog+22         ; [CPU_] |280| 
        MOVU      ACC,@_dlog+23         ; [CPU_] |280| 
        CMPL      ACC,XAR6              ; [CPU_] |280| 
        B         $C$L13,NEQ            ; [CPU_] |280| 
        ; branchcc occurs ; [] |280| 
	.dwpsn	file "../source/DLOG_gen.c",line 283,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 283 | dlog.write_ptr = 0;                                                    
;----------------------------------------------------------------------
        MOV       @_dlog+22,#0          ; [CPU_] |283| 
	.dwpsn	file "../source/DLOG_gen.c",line 284,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 284 | dlog.skip_cntr = 0;                                                    
; 285 | // grem v holdoff                                                      
;----------------------------------------------------------------------
        MOV       @_dlog+21,#0          ; [CPU_] |284| 
	.dwpsn	file "../source/DLOG_gen.c",line 286,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | if (dlog.mode != Single)                                               
;----------------------------------------------------------------------
        MOV       AL,@_dlog+34          ; [CPU_] |286| 
        CMPB      AL,#2                 ; [CPU_] |286| 
        B         $C$L12,EQ             ; [CPU_] |286| 
        ; branchcc occurs ; [] |286| 
	.dwpsn	file "../source/DLOG_gen.c",line 288,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | dlog.state = Holdoff;                                                  
;----------------------------------------------------------------------
        MOVB      @_dlog+24,#3,UNC      ; [CPU_] |288| 
	.dwpsn	file "../source/DLOG_gen.c",line 289,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | dlog.holdoff_cnt = 0;                                                  
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |289| 
        MOVL      @_dlog+32,ACC         ; [CPU_] |289| 
	.dwpsn	file "../source/DLOG_gen.c",line 290,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | // ustavim v primeru single - shota                                    
; 292 | else                                                                   
;----------------------------------------------------------------------
        B         $C$L13,UNC            ; [CPU_] |290| 
        ; branch occurs ; [] |290| 
$C$L12:    
	.dwpsn	file "../source/DLOG_gen.c",line 294,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | dlog.mode = Stop;                                                      
;----------------------------------------------------------------------
        MOVB      @_dlog+34,#3,UNC      ; [CPU_] |294| 
	.dwpsn	file "../source/DLOG_gen.c",line 295,column 21,is_stmt,isa 0
;----------------------------------------------------------------------
; 295 | dlog.state = Wait;                                                     
; 300 | // za downsamplanje                                                    
;----------------------------------------------------------------------
        MOV       @_dlog+24,#0          ; [CPU_] |295| 
$C$L13:    
	.dwpsn	file "../source/DLOG_gen.c",line 301,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | (dlog.skip_cntr)++;                                                    
;----------------------------------------------------------------------
        INC       @_dlog+21             ; [CPU_] |301| 
	.dwpsn	file "../source/DLOG_gen.c",line 302,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | if ((dlog.skip_cntr) >= (dlog.prescalar))                              
;----------------------------------------------------------------------
        MOV       AL,@_dlog+20          ; [CPU_] |302| 
        CMP       AL,@_dlog+21          ; [CPU_] |302| 
        B         $C$L14,HI             ; [CPU_] |302| 
        ; branchcc occurs ; [] |302| 
	.dwpsn	file "../source/DLOG_gen.c",line 304,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 304 | dlog.skip_cntr = 0;                                                    
; 308 | // preden pripravim nov trigger pocakam                                
;----------------------------------------------------------------------
        MOV       @_dlog+21,#0          ; [CPU_] |304| 
$C$L14:    
	.dwpsn	file "../source/DLOG_gen.c",line 309,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | if (dlog.state == Holdoff)                                             
;----------------------------------------------------------------------
        MOV       AL,@_dlog+24          ; [CPU_] |309| 
        CMPB      AL,#3                 ; [CPU_] |309| 
        B         $C$L15,NEQ            ; [CPU_] |309| 
        ; branchcc occurs ; [] |309| 
	.dwpsn	file "../source/DLOG_gen.c",line 311,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 311 | dlog.holdoff_cnt = dlog.holdoff_cnt + 1;                               
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_] |311| 
        ADDL      @_dlog+32,ACC         ; [CPU_] |311| 
	.dwpsn	file "../source/DLOG_gen.c",line 312,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | if (dlog.holdoff_cnt == dlog.holdoff_time)                             
;----------------------------------------------------------------------
        MOVL      ACC,@_dlog+30         ; [CPU_] |312| 
        CMPL      ACC,@_dlog+32         ; [CPU_] |312| 
        B         $C$L15,NEQ            ; [CPU_] |312| 
        ; branchcc occurs ; [] |312| 
	.dwpsn	file "../source/DLOG_gen.c",line 314,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 314 | dlog.state = Wait;                                                     
;----------------------------------------------------------------------
        MOV       @_dlog+24,#0          ; [CPU_] |314| 
	.dwpsn	file "../source/DLOG_gen.c",line 318,column 1,is_stmt,isa 0
$C$L15:    
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../source/DLOG_gen.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("DLOG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x24)
$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$12, DW_AT_name("trig")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_trig")
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$13, DW_AT_name("iptr1")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_iptr1")
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$14, DW_AT_name("iptr2")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_iptr2")
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_name("iptr3")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_iptr3")
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_name("iptr4")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_iptr4")
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_name("iptr5")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_iptr5")
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_name("iptr6")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_iptr6")
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_name("iptr7")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_iptr7")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_name("iptr8")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_iptr8")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_name("trig_value")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_trig_value")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$22, DW_AT_name("prescalar")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_prescalar")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$23, DW_AT_name("skip_cntr")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_skip_cntr")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$24, DW_AT_name("write_ptr")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_write_ptr")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$25, DW_AT_name("write_length")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_write_length")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$26, DW_AT_name("state")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_state")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$27, DW_AT_name("slope")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_slope")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$28, DW_AT_name("auto_time")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_auto_time")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$29, DW_AT_name("auto_cnt")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_auto_cnt")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$30, DW_AT_name("holdoff_time")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_holdoff_time")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$31, DW_AT_name("holdoff_cnt")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_holdoff_cnt")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$32, DW_AT_name("mode")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$33, DW_AT_name("sw_trigger")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_sw_trigger")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_name("DLOG_MODE")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$34	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$34, DW_AT_name("Auto")
	.dwattr $C$DW$34, DW_AT_const_value(0x00)

$C$DW$35	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$35, DW_AT_name("Normal")
	.dwattr $C$DW$35, DW_AT_const_value(0x01)

$C$DW$36	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$36, DW_AT_name("Single")
	.dwattr $C$DW$36, DW_AT_const_value(0x02)

$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("Stop")
	.dwattr $C$DW$37, DW_AT_const_value(0x03)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("Continuous")
	.dwattr $C$DW$38, DW_AT_const_value(0x04)

	.dwendtag $C$DW$T$22


$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_name("DLOG_SLOPE")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("Positive")
	.dwattr $C$DW$39, DW_AT_const_value(0x00)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("Negative")
	.dwattr $C$DW$40, DW_AT_const_value(0x01)

	.dwendtag $C$DW$T$21


$C$DW$T$20	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$20, DW_AT_name("DLOG_STATE")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("Wait")
	.dwattr $C$DW$41, DW_AT_const_value(0x00)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("Ready")
	.dwattr $C$DW$42, DW_AT_const_value(0x01)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("Store")
	.dwattr $C$DW$43, DW_AT_const_value(0x02)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("Holdoff")
	.dwattr $C$DW$44, DW_AT_const_value(0x03)

	.dwendtag $C$DW$T$20

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

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

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

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


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x7d0)
$C$DW$45	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$45, DW_AT_upper_bound(0x3e7)

	.dwendtag $C$DW$T$25

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

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("AL")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("AH")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg1]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("PL")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg2]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("PH")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg3]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("SP")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg20]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("XT")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg21]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("T")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg22]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("ST0")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg23]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("ST1")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg24]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("PC")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg25]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("RPC")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg26]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("FP")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg28]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("DP")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg29]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("SXM")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg30]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("PM")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg31]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("OVM")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x20]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("PAGE0")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x21]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("AMODE")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x22]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("INTM")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x23]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("IFR")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x24]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("IER")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x25]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("V")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x26]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("VOL")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("AR0")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg4]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("XAR0")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg5]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("AR1")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg6]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("XAR1")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg7]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("AR2")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg8]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("XAR2")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg9]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("AR3")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg10]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("XAR3")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg11]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("AR4")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("XAR4")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg13]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("AR5")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg14]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("XAR5")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg15]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("AR6")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg16]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("XAR6")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg17]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("AR7")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg18]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("XAR7")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg19]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("R0HL")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("R0H")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x2c]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("R1HL")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("R1H")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x30]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("R2HL")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x33]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("R2H")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x34]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("R3HL")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x37]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("R3H")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x38]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("R4HL")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("R4H")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("R5HL")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("R5H")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x40]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("R6HL")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x43]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("R6H")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x44]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("R7HL")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x47]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("R7H")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x48]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("RBL")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x49]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("RB")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("STFL")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x27]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("STF")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x28]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg27]

	.dwendtag $C$DW$CU

