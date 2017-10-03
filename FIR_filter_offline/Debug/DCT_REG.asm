;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Mon Oct 02 10:10:15 2017                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../source/DCT_REG.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.4.LTS Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\DenisS\Desktop\FIR_filter_offline\FIR_filter_offline\Debug")
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\DenisS\\AppData\\Local\\Temp\\0326412 
	.sect	"ramfuncs:_DCT_REG_CALC"
	.clink
	.global	_DCT_REG_CALC

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("DCT_REG_CALC")
	.dwattr $C$DW$1, DW_AT_low_pc(_DCT_REG_CALC)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_DCT_REG_CALC")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../source/DCT_REG.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../source/DCT_REG.c",line 26,column 1,is_stmt,address _DCT_REG_CALC,isa 0

	.dwfde $C$DW$CIE, _DCT_REG_CALC
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("v")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
;  25 | void DCT_REG_CALC (DCT_REG_float *v)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _DCT_REG_CALC                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_DCT_REG_CALC:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_U] 
	.dwcfi	cfa_offset, -6
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("v")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_v")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg20 -4]

;----------------------------------------------------------------------
;  27 | // lokalne spremenljivke                                               
;  34 | // program                                                             
;  36 | // omejitev bufferja                                                   
;----------------------------------------------------------------------
        MOVL      *-SP[4],XAR4          ; [CPU_] |26| 
	.dwpsn	file "../source/DCT_REG.c",line 37,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  37 | if (v->BufferHistoryLength > MAX_LENGTH_DCT_REG_BUFFER)                
;----------------------------------------------------------------------
        CMP       *+XAR4[6],#400        ; [CPU_] |37| 
        B         $C$L1,LEQ             ; [CPU_] |37| 
        ; branchcc occurs ; [] |37| 
	.dwpsn	file "../source/DCT_REG.c",line 39,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  39 | v->BufferHistoryLength = MAX_LENGTH_DCT_REG_BUFFER;                    
;----------------------------------------------------------------------
        MOV       *+XAR4[6],#400        ; [CPU_] |39| 
	.dwpsn	file "../source/DCT_REG.c",line 40,column 5,is_stmt,isa 0
        B         $C$L2,UNC             ; [CPU_] |40| 
        ; branch occurs ; [] |40| 
$C$L1:    
	.dwpsn	file "../source/DCT_REG.c",line 41,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
;  41 | else if (v->BufferHistoryLength < 1)                                   
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[6]          ; [CPU_] |41| 
        B         $C$L2,GT              ; [CPU_] |41| 
        ; branchcc occurs ; [] |41| 
	.dwpsn	file "../source/DCT_REG.c",line 43,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  43 | v->BufferHistoryLength = 1;                                            
;  49 | // izraèun trenutnega indeksa bufferja                                 
;----------------------------------------------------------------------
        MOVB      *+XAR4[6],#1,UNC      ; [CPU_] |43| 
$C$L2:    
	.dwpsn	file "../source/DCT_REG.c",line 50,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | v->i = (int)(v->SamplingSignal * v->BufferHistoryLength);              
;  57 | // èe se indeks spremeni, potem gre algoritem dalje (vsako periodo sign
;     | ala, ne pa vsako vzorèno periodo/interval)                             
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[4]          ; [CPU_] |50| 
        MOVL      XAR4,*-SP[4]          ; [CPU_] |50| 
        I16TOF32  R1H,*+XAR5[6]         ; [CPU_] |50| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_] |50| 
        MPYF32    R0H,R1H,R0H           ; [CPU_] |50| 
        NOP       ; [CPU_] 
        F32TOI16  R0H,R0H               ; [CPU_] |50| 
        NOP       ; [CPU_] 
        MOVL      XAR4,#836             ; [CPU_U] |50| 
        MOV32     XAR6,R0H              ; [CPU_] |50| 
        MOVL      ACC,XAR4              ; [CPU_] |50| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |50| 
        MOVL      XAR4,ACC              ; [CPU_] |50| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |50| 
	.dwpsn	file "../source/DCT_REG.c",line 58,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | if ((v->i != v->i_prev) || (v->i == 0 && v->i_prev == 0))              
;  62 |     // manipuliranje z indeksi - zaradi circular bufferja              
;----------------------------------------------------------------------
        MOVL      XAR4,#837             ; [CPU_U] |58| 
        MOVL      ACC,XAR4              ; [CPU_] |58| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |58| 
        MOVL      XAR4,ACC              ; [CPU_] |58| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_] |58| 
        MOVL      XAR4,#836             ; [CPU_U] |58| 
        MOVL      ACC,XAR4              ; [CPU_] |58| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |58| 
        MOVL      XAR4,ACC              ; [CPU_] |58| 
        MOV       AL,AR6                ; [CPU_] |58| 
        CMP       AL,*+XAR4[0]          ; [CPU_] |58| 
        B         $C$L3,NEQ             ; [CPU_] |58| 
        ; branchcc occurs ; [] |58| 
        MOVL      XAR4,#836             ; [CPU_U] |58| 
        MOVL      ACC,XAR4              ; [CPU_] |58| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |58| 
        MOVL      XAR4,ACC              ; [CPU_] |58| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |58| 
        B         $C$L13,NEQ            ; [CPU_] |58| 
        ; branchcc occurs ; [] |58| 
        MOVL      XAR4,#837             ; [CPU_U] |58| 
        MOVL      ACC,XAR4              ; [CPU_] |58| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |58| 
        MOVL      XAR4,ACC              ; [CPU_] |58| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |58| 
        B         $C$L13,NEQ            ; [CPU_] |58| 
        ; branchcc occurs ; [] |58| 
$C$L3:    
	.dwpsn	file "../source/DCT_REG.c",line 63,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  63 | if (v->i > v->i_prev)                                                  
;  65 |     // indeks, ki kaže v preteklost (potrebujem za ponovno zakasnitev,
;     | ki je že kompenzirana z DCT filtrom)                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#837             ; [CPU_U] |63| 
        MOVL      ACC,XAR4              ; [CPU_] |63| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |63| 
        MOVL      XAR4,ACC              ; [CPU_] |63| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_] |63| 
        MOVL      XAR4,#836             ; [CPU_U] |63| 
        MOVL      ACC,XAR4              ; [CPU_] |63| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |63| 
        MOVL      XAR4,ACC              ; [CPU_] |63| 
        MOV       AL,AR6                ; [CPU_] |63| 
        CMP       AL,*+XAR4[0]          ; [CPU_] |63| 
        B         $C$L4,GEQ             ; [CPU_] |63| 
        ; branchcc occurs ; [] |63| 
	.dwpsn	file "../source/DCT_REG.c",line 66,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | v->index = v->i - v->k;                                                
;  68 |             // omejitve zaradi circular bufferja                       
;----------------------------------------------------------------------
        MOVL      XAR4,#820             ; [CPU_U] |66| 
        MOVL      XAR5,#836             ; [CPU_U] |66| 
        MOVL      ACC,XAR4              ; [CPU_] |66| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |66| 
        MOVL      XAR4,ACC              ; [CPU_] |66| 
        MOVL      ACC,XAR5              ; [CPU_] |66| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |66| 
        MOVL      XAR5,ACC              ; [CPU_] |66| 
        MOV       AL,*+XAR5[0]          ; [CPU_] |66| 
        SUB       AL,*+XAR4[0]          ; [CPU_] |66| 
        MOVZ      AR6,AL                ; [CPU_] |66| 
        MOVL      XAR4,#838             ; [CPU_U] |66| 
        MOVL      ACC,XAR4              ; [CPU_] |66| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |66| 
        MOVL      XAR4,ACC              ; [CPU_] |66| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |66| 
	.dwpsn	file "../source/DCT_REG.c",line 69,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | if (v->index < 0)                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#838             ; [CPU_U] |69| 
        MOVL      ACC,XAR4              ; [CPU_] |69| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |69| 
        MOVL      XAR4,ACC              ; [CPU_] |69| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |69| 
        B         $C$L5,GEQ             ; [CPU_] |69| 
        ; branchcc occurs ; [] |69| 
	.dwpsn	file "../source/DCT_REG.c",line 71,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | v->index = v->index + v->BufferHistoryLength;                          
;----------------------------------------------------------------------
        MOVL      XAR4,#838             ; [CPU_U] |71| 
        MOVL      XAR5,*-SP[4]          ; [CPU_] |71| 
        MOVL      ACC,XAR4              ; [CPU_] |71| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |71| 
        MOVL      XAR4,ACC              ; [CPU_] |71| 
        MOV       AL,*+XAR5[6]          ; [CPU_] |71| 
        ADD       AL,*+XAR4[0]          ; [CPU_] |71| 
        MOVZ      AR6,AL                ; [CPU_] |71| 
        MOVL      XAR4,#838             ; [CPU_U] |71| 
        MOVL      ACC,XAR4              ; [CPU_] |71| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |71| 
        MOVL      XAR4,ACC              ; [CPU_] |71| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |71| 
	.dwpsn	file "../source/DCT_REG.c",line 73,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | } // end of if (v->i > v->i_prev)                                      
;----------------------------------------------------------------------
        B         $C$L5,UNC             ; [CPU_] |73| 
        ; branch occurs ; [] |73| 
$C$L4:    
	.dwpsn	file "../source/DCT_REG.c",line 74,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | else if (v->i < v->i_prev)                                             
;  76 |     // indeks, ki kaže v preteklost (potrebujem za ponovno zakasnitev,
;     | ki je že kompenzirana z DCT filtrom)                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#837             ; [CPU_U] |74| 
        MOVL      ACC,XAR4              ; [CPU_] |74| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |74| 
        MOVL      XAR4,ACC              ; [CPU_] |74| 
        MOVZ      AR6,*+XAR4[0]         ; [CPU_] |74| 
        MOVL      XAR4,#836             ; [CPU_U] |74| 
        MOVL      ACC,XAR4              ; [CPU_] |74| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |74| 
        MOVL      XAR4,ACC              ; [CPU_] |74| 
        MOV       AL,AR6                ; [CPU_] |74| 
        CMP       AL,*+XAR4[0]          ; [CPU_] |74| 
        B         $C$L5,LEQ             ; [CPU_] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../source/DCT_REG.c",line 77,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  77 | v->index = v->i + v->k;                                                
;  79 | // omejitve zaradi circular bufferja                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#836             ; [CPU_U] |77| 
        MOVL      XAR5,#820             ; [CPU_U] |77| 
        MOVL      ACC,XAR4              ; [CPU_] |77| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |77| 
        MOVL      XAR4,ACC              ; [CPU_] |77| 
        MOVL      ACC,XAR5              ; [CPU_] |77| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |77| 
        MOVL      XAR5,ACC              ; [CPU_] |77| 
        MOV       AL,*+XAR5[0]          ; [CPU_] |77| 
        ADD       AL,*+XAR4[0]          ; [CPU_] |77| 
        MOVZ      AR6,AL                ; [CPU_] |77| 
        MOVL      XAR4,#838             ; [CPU_U] |77| 
        MOVL      ACC,XAR4              ; [CPU_] |77| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |77| 
        MOVL      XAR4,ACC              ; [CPU_] |77| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |77| 
	.dwpsn	file "../source/DCT_REG.c",line 80,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
;  80 | if (v->index > (v->BufferHistoryLength - 1))                           
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_] |80| 
        MOVZ      AR6,*+XAR4[6]         ; [CPU_] |80| 
        MOVL      XAR4,#838             ; [CPU_U] |80| 
        MOVL      ACC,XAR4              ; [CPU_] |80| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |80| 
        MOVL      XAR4,ACC              ; [CPU_] |80| 
        SUBB      XAR6,#1               ; [CPU_U] |80| 
        MOV       AL,AR6                ; [CPU_] |80| 
        CMP       AL,*+XAR4[0]          ; [CPU_] |80| 
        B         $C$L5,GEQ             ; [CPU_] |80| 
        ; branchcc occurs ; [] |80| 
	.dwpsn	file "../source/DCT_REG.c",line 82,column 17,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | v->index = v->index - v->BufferHistoryLength;                          
;  84 | } // end of else if (v->i < v->i_prev)                                 
;  89 | // izraèunam trenutni error                                            
;----------------------------------------------------------------------
        MOVL      XAR4,#838             ; [CPU_U] |82| 
        MOVL      ACC,XAR4              ; [CPU_] |82| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |82| 
        MOVL      XAR4,ACC              ; [CPU_] |82| 
        MOVL      XAR5,*-SP[4]          ; [CPU_] |82| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |82| 
        MOVL      XAR4,#838             ; [CPU_U] |82| 
        SUB       AL,*+XAR5[6]          ; [CPU_] |82| 
        MOVZ      AR6,AL                ; [CPU_] |82| 
        MOVL      ACC,XAR4              ; [CPU_] |82| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |82| 
        MOVL      XAR4,ACC              ; [CPU_] |82| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |82| 
$C$L5:    
	.dwpsn	file "../source/DCT_REG.c",line 90,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
;  90 | v->Err = v->Ref - v->Fdb;                                              
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[4]          ; [CPU_] |90| 
        MOVL      XAR5,*-SP[4]          ; [CPU_] |90| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_] |90| 
        MOV32     R1H,*+XAR5[2]         ; [CPU_] |90| 
        MOVL      XAR4,#830             ; [CPU_U] |90| 
        SUBF32    R0H,R1H,R0H           ; [CPU_] |90| 
        MOVL      ACC,XAR4              ; [CPU_] |90| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |90| 
        MOVL      XAR4,ACC              ; [CPU_] |90| 
        MOV32     *+XAR4[0],R0H         ; [CPU_] |90| 
	.dwpsn	file "../source/DCT_REG.c",line 97,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | v->ErrSum = v->Kdct * v->Err;                                          
;----------------------------------------------------------------------
        MOVB      ACC,#8                ; [CPU_] |97| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |97| 
        MOVL      XAR4,ACC              ; [CPU_] |97| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_] |97| 
        MOVL      XAR4,#830             ; [CPU_U] |97| 
        MOVL      ACC,XAR4              ; [CPU_] |97| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |97| 
        MOVL      XAR4,ACC              ; [CPU_] |97| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |97| 
        MOVL      XAR4,#832             ; [CPU_U] |97| 
        MPYF32    R0H,R1H,R0H           ; [CPU_] |97| 
        MOVL      ACC,XAR4              ; [CPU_] |97| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |97| 
        MOVL      XAR4,ACC              ; [CPU_] |97| 
        MOV32     *+XAR4[0],R0H         ; [CPU_] |97| 
	.dwpsn	file "../source/DCT_REG.c",line 98,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | for (v->j = 0; v->j < 10; v->j++)                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#839             ; [CPU_U] |98| 
        MOVL      ACC,XAR4              ; [CPU_] |98| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |98| 
        MOVL      XAR4,ACC              ; [CPU_] |98| 
        MOV       *+XAR4[0],#0          ; [CPU_] |98| 
        SETC      SXM                   ; [CPU_] 
        B         $C$L8,UNC             ; [CPU_] |98| 
        ; branch occurs ; [] |98| 
$C$L6:    
	.dwpsn	file "../source/DCT_REG.c",line 100,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 100 | v->CircularBufferIndex = v->i - v->j; // predvidevam, da indeks i vedno
;     |  le narašèa                                                            
;----------------------------------------------------------------------
        MOVL      XAR4,#839             ; [CPU_U] |100| 
        MOVL      XAR5,#836             ; [CPU_U] |100| 
        MOVL      ACC,XAR4              ; [CPU_] |100| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |100| 
        MOVL      XAR4,ACC              ; [CPU_] |100| 
        MOVL      ACC,XAR5              ; [CPU_] |100| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |100| 
        MOVL      XAR5,ACC              ; [CPU_] |100| 
        MOV       AL,*+XAR5[0]          ; [CPU_] |100| 
        SUB       AL,*+XAR4[0]          ; [CPU_] |100| 
        MOVZ      AR6,AL                ; [CPU_] |100| 
        MOVL      XAR4,#840             ; [CPU_U] |100| 
        MOVL      ACC,XAR4              ; [CPU_] |100| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |100| 
        MOVL      XAR4,ACC              ; [CPU_] |100| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |100| 
	.dwpsn	file "../source/DCT_REG.c",line 101,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 101 | if (v->CircularBufferIndex < 0)                                        
;----------------------------------------------------------------------
        MOVL      XAR4,#840             ; [CPU_U] |101| 
        MOVL      ACC,XAR4              ; [CPU_] |101| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |101| 
        MOVL      XAR4,ACC              ; [CPU_] |101| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |101| 
        B         $C$L7,GEQ             ; [CPU_] |101| 
        ; branchcc occurs ; [] |101| 
	.dwpsn	file "../source/DCT_REG.c",line 103,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | v->CircularBufferIndex = v->CircularBufferIndex + v->BufferHistoryLengt
;     | h;                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#840             ; [CPU_U] |103| 
        MOVL      XAR5,*-SP[4]          ; [CPU_] |103| 
        MOVL      ACC,XAR4              ; [CPU_] |103| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |103| 
        MOVL      XAR4,ACC              ; [CPU_] |103| 
        MOV       AL,*+XAR5[6]          ; [CPU_] |103| 
        ADD       AL,*+XAR4[0]          ; [CPU_] |103| 
        MOVZ      AR6,AL                ; [CPU_] |103| 
        MOVL      XAR4,#840             ; [CPU_U] |103| 
        MOVL      ACC,XAR4              ; [CPU_] |103| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |103| 
        MOVL      XAR4,ACC              ; [CPU_] |103| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |103| 
$C$L7:    
	.dwpsn	file "../source/DCT_REG.c",line 106,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | v->ErrSum = v->ErrSum + v->FIRCoeff[v->j] * v->ErrSumHistory[v->Circula
;     | rBufferIndex];                                                         
; 109 | // omejim trenutni error, da ne gre v nasièenje                        
;----------------------------------------------------------------------
        MOVL      XAR4,#839             ; [CPU_U] |106| 
        MOVL      ACC,XAR4              ; [CPU_] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |106| 
        MOVL      XAR4,ACC              ; [CPU_] |106| 
        MOV       ACC,*+XAR4[0] << 1    ; [CPU_] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |106| 
        MOVL      XAR4,ACC              ; [CPU_] |106| 
        MOVB      XAR0,#20              ; [CPU_] |106| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_] |106| 
        MOVL      XAR4,#840             ; [CPU_U] |106| 
        MOVL      ACC,XAR4              ; [CPU_] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |106| 
        MOVL      XAR4,ACC              ; [CPU_] |106| 
        MOV       ACC,*+XAR4[0] << 1    ; [CPU_] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |106| 
        ADD       ACC,#211 << 2         ; [CPU_] |106| 
        MOVL      XAR4,ACC              ; [CPU_] |106| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |106| 
        MOVL      XAR4,#832             ; [CPU_U] |106| 
        MOVL      ACC,XAR4              ; [CPU_] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |106| 
        MOVL      XAR4,ACC              ; [CPU_] |106| 

        MOV32     R1H,*+XAR4[0]         ; [CPU_] |106| 
||      MPYF32    R0H,R1H,R0H           ; [CPU_] |106| 

        MOVL      XAR4,#832             ; [CPU_U] |106| 
        ADDF32    R0H,R0H,R1H           ; [CPU_] |106| 
        MOVL      ACC,XAR4              ; [CPU_] |106| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |106| 
        MOVL      XAR4,ACC              ; [CPU_] |106| 
        MOV32     *+XAR4[0],R0H         ; [CPU_] |106| 
	.dwpsn	file "../source/DCT_REG.c",line 98,column 29,is_stmt,isa 0
        MOVL      XAR4,#839             ; [CPU_U] |98| 
        MOVL      ACC,XAR4              ; [CPU_] |98| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |98| 
        MOVL      XAR4,ACC              ; [CPU_] |98| 
        INC       *+XAR4[0]             ; [CPU_] |98| 
$C$L8:    
	.dwpsn	file "../source/DCT_REG.c",line 98,column 18,is_stmt,isa 0
        MOVL      XAR4,#839             ; [CPU_U] |98| 
        MOVL      ACC,XAR4              ; [CPU_] |98| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |98| 
        MOVL      XAR4,ACC              ; [CPU_] |98| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |98| 
        CMPB      AL,#10                ; [CPU_] |98| 
        B         $C$L6,LT              ; [CPU_] |98| 
        ; branchcc occurs ; [] |98| 
	.dwpsn	file "../source/DCT_REG.c",line 110,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 110 | v->ErrSum = (v->ErrSum > v->ErrSumMax)? v->ErrSumMax: v->ErrSum;       
;----------------------------------------------------------------------
        MOVL      XAR4,#822             ; [CPU_U] |110| 
        MOVL      ACC,XAR4              ; [CPU_] |110| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |110| 
        MOVL      XAR4,ACC              ; [CPU_] |110| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_] |110| 
        MOVL      XAR4,#832             ; [CPU_U] |110| 
        MOVL      ACC,XAR4              ; [CPU_] |110| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |110| 
        MOVL      XAR4,ACC              ; [CPU_] |110| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |110| 
        CMPF32    R1H,R0H               ; [CPU_] |110| 
        MOVST0    ZF, NF                ; [CPU_] |110| 
        B         $C$L9,LEQ             ; [CPU_] |110| 
        ; branchcc occurs ; [] |110| 
        MOVL      XAR4,#822             ; [CPU_U] |110| 
        MOVL      ACC,XAR4              ; [CPU_] |110| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |110| 
        MOVL      XAR4,ACC              ; [CPU_] |110| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |110| 
        B         $C$L10,UNC            ; [CPU_] |110| 
        ; branch occurs ; [] |110| 
$C$L9:    
        MOVL      XAR4,#832             ; [CPU_U] |110| 
        MOVL      ACC,XAR4              ; [CPU_] |110| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |110| 
        MOVL      XAR4,ACC              ; [CPU_] |110| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |110| 
$C$L10:    
        MOVL      XAR4,#832             ; [CPU_U] |110| 
        MOVL      ACC,XAR4              ; [CPU_] |110| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |110| 
        MOVL      XAR4,ACC              ; [CPU_] |110| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |110| 
	.dwpsn	file "../source/DCT_REG.c",line 111,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | v->ErrSum = (v->ErrSum < v->ErrSumMin)? v->ErrSumMin: v->ErrSum;       
; 116 |         // zapišem trenutni akumuliran error v buffer (ponovno uvedem z
;     | akasnitev, ki je bila kompenzirana v DCT filtru)                       
;----------------------------------------------------------------------
        MOVL      XAR4,#824             ; [CPU_U] |111| 
        MOVL      ACC,XAR4              ; [CPU_] |111| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |111| 
        MOVL      XAR4,ACC              ; [CPU_] |111| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_] |111| 
        MOVL      XAR4,#832             ; [CPU_U] |111| 
        MOVL      ACC,XAR4              ; [CPU_] |111| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |111| 
        MOVL      XAR4,ACC              ; [CPU_] |111| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |111| 
        CMPF32    R1H,R0H               ; [CPU_] |111| 
        MOVST0    ZF, NF                ; [CPU_] |111| 
        B         $C$L11,GEQ            ; [CPU_] |111| 
        ; branchcc occurs ; [] |111| 
        MOVL      XAR4,#824             ; [CPU_U] |111| 
        MOVL      ACC,XAR4              ; [CPU_] |111| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |111| 
        MOVL      XAR4,ACC              ; [CPU_] |111| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |111| 
        B         $C$L12,UNC            ; [CPU_] |111| 
        ; branch occurs ; [] |111| 
$C$L11:    
        MOVL      XAR4,#832             ; [CPU_U] |111| 
        MOVL      ACC,XAR4              ; [CPU_] |111| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |111| 
        MOVL      XAR4,ACC              ; [CPU_] |111| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |111| 
$C$L12:    
        MOVL      XAR4,#832             ; [CPU_U] |111| 
        MOVL      ACC,XAR4              ; [CPU_] |111| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |111| 
        MOVL      XAR4,ACC              ; [CPU_] |111| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |111| 
	.dwpsn	file "../source/DCT_REG.c",line 117,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | v->ErrSumHistory[v->index] = v->ErrSum;                                
; 122 | // izraèunam korekcijo (upoštevana kompenzacija zakasnitve v DCT filtru
;     | )                                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#832             ; [CPU_U] |117| 
        MOVL      ACC,XAR4              ; [CPU_] |117| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |117| 
        MOVL      XAR4,ACC              ; [CPU_] |117| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |117| 
        MOVL      XAR4,#838             ; [CPU_U] |117| 
        MOVL      ACC,XAR4              ; [CPU_] |117| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |117| 
        MOVL      XAR4,ACC              ; [CPU_] |117| 
        SETC      SXM                   ; [CPU_] 
        MOV       ACC,*+XAR4[0] << 1    ; [CPU_] |117| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |117| 
        ADD       ACC,#211 << 2         ; [CPU_] |117| 
        MOVL      XAR4,ACC              ; [CPU_] |117| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |117| 
	.dwpsn	file "../source/DCT_REG.c",line 123,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | v->Correction = v->ErrSum;                                             
; 125 | // izraèunam izhod                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#832             ; [CPU_U] |123| 
        MOVL      ACC,XAR4              ; [CPU_] |123| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |123| 
        MOVL      XAR4,ACC              ; [CPU_] |123| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |123| 
        MOVL      XAR4,#834             ; [CPU_U] |123| 
        MOVL      ACC,XAR4              ; [CPU_] |123| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |123| 
        MOVL      XAR4,ACC              ; [CPU_] |123| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |123| 
	.dwpsn	file "../source/DCT_REG.c",line 126,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | v->Out = v->Correction;                                                
; 128 | // shranim vrednost indeksa i, ki bo v naslednjem ciklu prejšnji i     
;----------------------------------------------------------------------
        MOVL      XAR4,#834             ; [CPU_U] |126| 
        MOVL      ACC,XAR4              ; [CPU_] |126| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |126| 
        MOVL      XAR4,ACC              ; [CPU_] |126| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |126| 
        MOVL      XAR4,#842             ; [CPU_U] |126| 
        MOVL      ACC,XAR4              ; [CPU_] |126| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |126| 
        MOVL      XAR4,ACC              ; [CPU_] |126| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |126| 
	.dwpsn	file "../source/DCT_REG.c",line 129,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | v->i_prev = v->i;                                                      
; 134 | } // end of if (i != i_prev)                                           
; 139 | // omejim izhod                                                        
;----------------------------------------------------------------------
        MOVL      XAR4,#836             ; [CPU_U] |129| 
        MOVL      ACC,XAR4              ; [CPU_] |129| 
        MOVL      XAR4,#837             ; [CPU_U] |129| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |129| 
        MOVL      XAR7,ACC              ; [CPU_] |129| 
        MOVL      ACC,XAR4              ; [CPU_] |129| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |129| 
        MOVL      XAR4,ACC              ; [CPU_] |129| 
        MOV       AL,*XAR7              ; [CPU_] |129| 
        MOV       *+XAR4[0],AL          ; [CPU_] |129| 
$C$L13:    
	.dwpsn	file "../source/DCT_REG.c",line 140,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | v->Out = (v->Out > v->OutMax)? v->OutMax: v->Out;                      
;----------------------------------------------------------------------
        MOVL      XAR4,#826             ; [CPU_U] |140| 
        MOVL      ACC,XAR4              ; [CPU_] |140| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |140| 
        MOVL      XAR4,ACC              ; [CPU_] |140| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_] |140| 
        MOVL      XAR4,#842             ; [CPU_U] |140| 
        MOVL      ACC,XAR4              ; [CPU_] |140| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |140| 
        MOVL      XAR4,ACC              ; [CPU_] |140| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |140| 
        CMPF32    R1H,R0H               ; [CPU_] |140| 
        MOVST0    ZF, NF                ; [CPU_] |140| 
        B         $C$L14,LEQ            ; [CPU_] |140| 
        ; branchcc occurs ; [] |140| 
        MOVL      XAR4,#826             ; [CPU_U] |140| 
        MOVL      ACC,XAR4              ; [CPU_] |140| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |140| 
        MOVL      XAR4,ACC              ; [CPU_] |140| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |140| 
        B         $C$L15,UNC            ; [CPU_] |140| 
        ; branch occurs ; [] |140| 
$C$L14:    
        MOVL      XAR4,#842             ; [CPU_U] |140| 
        MOVL      ACC,XAR4              ; [CPU_] |140| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |140| 
        MOVL      XAR4,ACC              ; [CPU_] |140| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |140| 
$C$L15:    
        MOVL      XAR4,#842             ; [CPU_U] |140| 
        MOVL      ACC,XAR4              ; [CPU_] |140| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |140| 
        MOVL      XAR4,ACC              ; [CPU_] |140| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |140| 
	.dwpsn	file "../source/DCT_REG.c",line 141,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | v->Out = (v->Out < v->OutMin)? v->OutMin: v->Out;                      
;----------------------------------------------------------------------
        MOVL      XAR4,#828             ; [CPU_U] |141| 
        MOVL      ACC,XAR4              ; [CPU_] |141| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |141| 
        MOVL      XAR4,ACC              ; [CPU_] |141| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_] |141| 
        MOVL      XAR4,#842             ; [CPU_U] |141| 
        MOVL      ACC,XAR4              ; [CPU_] |141| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |141| 
        MOVL      XAR4,ACC              ; [CPU_] |141| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_] |141| 
        CMPF32    R1H,R0H               ; [CPU_] |141| 
        MOVST0    ZF, NF                ; [CPU_] |141| 
        B         $C$L16,GEQ            ; [CPU_] |141| 
        ; branchcc occurs ; [] |141| 
        MOVL      XAR4,#828             ; [CPU_U] |141| 
        MOVL      ACC,XAR4              ; [CPU_] |141| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |141| 
        MOVL      XAR4,ACC              ; [CPU_] |141| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |141| 
        B         $C$L17,UNC            ; [CPU_] |141| 
        ; branch occurs ; [] |141| 
$C$L16:    
        MOVL      XAR4,#842             ; [CPU_U] |141| 
        MOVL      ACC,XAR4              ; [CPU_] |141| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |141| 
        MOVL      XAR4,ACC              ; [CPU_] |141| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |141| 
$C$L17:    
        MOVL      XAR4,#842             ; [CPU_U] |141| 
        MOVL      ACC,XAR4              ; [CPU_] |141| 
        ADDL      ACC,*-SP[4]           ; [CPU_] |141| 
        MOVL      XAR4,ACC              ; [CPU_] |141| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |141| 
	.dwpsn	file "../source/DCT_REG.c",line 146,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | } // konec funkcije                                                    
;----------------------------------------------------------------------
        SUBB      SP,#4                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../source/DCT_REG.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x92)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("DCT_REG_FLOAT_STRUCT")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x66c)
$C$DW$5	.dwtag  DW_TAG_member
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$5, DW_AT_name("SamplingSignal")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_SamplingSignal")
	.dwattr $C$DW$5, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$5, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$6	.dwtag  DW_TAG_member
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$6, DW_AT_name("Ref")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_Ref")
	.dwattr $C$DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$6, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$7	.dwtag  DW_TAG_member
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$7, DW_AT_name("Fdb")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_Fdb")
	.dwattr $C$DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$7, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$8	.dwtag  DW_TAG_member
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_name("BufferHistoryLength")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_BufferHistoryLength")
	.dwattr $C$DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$8, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$9	.dwtag  DW_TAG_member
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$9, DW_AT_name("Kdct")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_Kdct")
	.dwattr $C$DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$10	.dwtag  DW_TAG_member
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$10, DW_AT_name("Harmonics")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_Harmonics")
	.dwattr $C$DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$10, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$11	.dwtag  DW_TAG_member
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$11, DW_AT_name("FIRCoeff")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_FIRCoeff")
	.dwattr $C$DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$12, DW_AT_name("k")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x334]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$13, DW_AT_name("ErrSumMax")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ErrSumMax")
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x336]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$14, DW_AT_name("ErrSumMin")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ErrSumMin")
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x338]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_name("OutMax")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_OutMax")
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x33a]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_name("OutMin")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_OutMin")
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x33c]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_name("Err")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Err")
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x33e]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$18, DW_AT_name("ErrSum")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_ErrSum")
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x340]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$19, DW_AT_name("Correction")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_Correction")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x342]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_name("i")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x344]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$21, DW_AT_name("i_prev")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_i_prev")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x345]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_name("index")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x346]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_name("j")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x347]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_name("CircularBufferIndex")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_CircularBufferIndex")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x348]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$25, DW_AT_name("Out")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_Out")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x34a]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$26, DW_AT_name("ErrSumHistory")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_ErrSumHistory")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x34c]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("DCT_REG_float")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)

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


$C$DW$T$19	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x0a)
$C$DW$27	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$27, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$19

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


$C$DW$T$20	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x320)
$C$DW$28	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$28, DW_AT_upper_bound(0x18f)

	.dwendtag $C$DW$T$20

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

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("AL")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("AH")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg1]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("PL")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg2]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("PH")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg3]

$C$DW$33	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$33, DW_AT_name("SP")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg20]

$C$DW$34	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$34, DW_AT_name("XT")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg21]

$C$DW$35	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$35, DW_AT_name("T")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg22]

$C$DW$36	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$36, DW_AT_name("ST0")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg23]

$C$DW$37	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$37, DW_AT_name("ST1")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg24]

$C$DW$38	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$38, DW_AT_name("PC")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg25]

$C$DW$39	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$39, DW_AT_name("RPC")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg26]

$C$DW$40	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$40, DW_AT_name("FP")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg28]

$C$DW$41	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$41, DW_AT_name("DP")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg29]

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("SXM")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg30]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("PM")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg31]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("OVM")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_regx 0x20]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("PAGE0")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x21]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("AMODE")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x22]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("INTM")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x23]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("IFR")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x24]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("IER")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_regx 0x25]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("V")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_regx 0x26]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("VOL")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("AR0")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg4]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("XAR0")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg5]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("AR1")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg6]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("XAR1")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg7]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("AR2")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg8]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("XAR2")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg9]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("AR3")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg10]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("XAR3")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg11]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("AR4")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg12]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("XAR4")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg13]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("AR5")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg14]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("XAR5")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg15]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("AR6")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg16]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("XAR6")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg17]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("AR7")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg18]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("XAR7")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg19]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("R0HL")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("R0H")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2c]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("R1HL")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("R1H")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x30]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("R2HL")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x33]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("R2H")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x34]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("R3HL")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x37]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("R3H")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x38]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("R4HL")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("R4H")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("R5HL")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("R5H")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x40]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("R6HL")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x43]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("R6H")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x44]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("R7HL")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x47]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("R7H")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x48]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("RBL")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x49]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("RB")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("STFL")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x27]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("STF")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x28]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg27]

	.dwendtag $C$DW$CU

