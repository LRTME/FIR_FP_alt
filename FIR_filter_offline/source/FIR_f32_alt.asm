; Update from DenisS 4.10.2017
; WHICH REGISTERS ARE USED FOR WHAT?
; ASM   |   C
; XAR0  | at beginning input but then rewritten with order
; XAR1  | help at circular buffer (for "*+XAR6[AR1%++]" command)
; XAR4  | *FIR_FP_alt_handle
; XAR6  | *dbuffer_ptr
; XAR7  | *coeff_ptr
;
; TI File $Revision: /main/1 $
; Checkin $Date: January 6, 2011   18:11:18 $
; =============================================================================
;  This software is licensed for use with Texas Instruments C28x
;  family DSCs.  This license was provided to you prior to installing
;  the software.  You may review this license by consulting a copy of
;  the agreement in the doc directory of this library.
; ------------------------------------------------------------------------
;          Copyright (C) 2011-2012 Texas Instruments, Incorporated.
;                          All Rights Reserved.
;=========================================================================
; FILE:  FIR_f32.asm
;
; TITLE: Floating point FIR filter
;
; DESCRIPTION:
;
; 	This routine implements the non-recursive difference equation of an 
; 	all-zero filter(FIR), of order N. All the coefficients of all-zero 
; 	filter are assumed to be less than 1 in magnitude.	
;
; FUNCTIONS:
;
; 	void FIR_FP_alt_calc(FIR_FP_alt_handle)
;   
;	where FIR_FP_alt_handle is a pointer to a structure defined as:
;
;  	typedef struct { 
;   float *coeff_ptr;       /*  0 Pointer to Filter co-efficient array */
;   float *dbuffer_ptr;     /*  2 Delay buffer pointer                 */ 
;   int   cbindex;          /*  4 Circular Buffer Index                */
;   int   order;            /*  5 Order of the filter                  */
;   float input;            /*  6 Input data                           */
;   float output;           /*  8 Output data                          */ 
;   void  (*init)(void *)   /* 10 Pointer to init fun                  */  
;   void  (*calc)(void *);  /* 12 Pointer to the calculation function  */
;   }FIR_FP_alt;
;
; ALGORITHM:
;
; Difference Equation :
;
;       y(n)=H(0)*x(n)+H(1)*x(n-1)+H(2)*x(n-2)+....+H(N)*x(n-N)
;
;      where
;              y(n)=output sample of the filter at index n 
;              x(n)=input sample of the filter at index n 
;
; Transfer Function :
;                                  
;              Y(z)                -1        -2               -N+1       -N
;             ----- = h(0) + h(1) z  + h(2) z  + ... +h(N-1) z   + h(N) z    
;              X(z)
;
;     Network Diagram  : 
;
;     dbuffer[0]          dbuffer[1]    dbuffer[2]    dbuffer[N}
;     Input           -1  x(n-1)  -1    x(n-2)        x(n-N)
;   x(n) >------o----z---->-o----z---->-o---  - ->- - o
;               |           |           |             |
;               |           |           |             |
;               |           |           |             |
;               v H(0)      v H(1)      v H(2)        v H(N)  
;               |           |           |             |  
;               |           |           |             |        output
;               |---->-----(+)---->----(+)-- - -> -  (+)-----> y(n)    
;
;       Symbols Used :
;             H(0),H(1),H(2),...,H(N) : filter coefficients
;            x(n-1),x(n-2),...,x(n-N) : filter states
;                                x(n) : filter input 
;                                y(n) : filter output
; ###########################################################################
; $TI Release: C28x Floating Point Unit Library V1.31 $
; $Release Date: Sep 10, 2012 $
; ###########################################################################

; Module definition for external referance
                .def    _FIR_FP_alt_init
                .def    _FIR_FP_alt_calc


;===============================================================================
; Function: FIR_FP_alt_init() - Initialize the FIR_FP_alt handle and data buffer
;
; Input - FIR_FP_alt structure pointer
; Returns - void
;
; Implementation specifics:
;   Regs used: XAR - 4,6
;===============================================================================


_FIR_FP_alt_init:

            ZAPA
            MOVL    *+XAR4[6], ACC    ; XAR4->ouput, input=0
            ADDB    XAR4, #2          ; Only 0...7 Index allowed
            MOVL    *+XAR4[6], ACC    ; output=0

            MOVL    XAR6, *+XAR4[0]   ; XAR6=dbuffer_ptr            
            MOV     *+XAR4[2], #0     ; cbindex=0

            MOV     ACC, *+XAR4[3] << #1  ; AL = order*2 (for float)
            ADDB    AL, #1
            
            RPT     AL                ; order+1
            || MOV  *XAR6++, #0       ; zero the data buf.
            
            LRETR


;===============================================================================
; Function: FIR_FP_alt_calc() - Compute the FIR out-put for the next sample.
;
; Input - FIR_FP_alt structure pointer
; Returns - void
;
; Description: Input from FIR_FP_alt is stored in the input buffer and output is
;       returned through the FIR_FP_alt structure.
;
; Implementation specifics:
;   Regs used: XAR - 0,1,4,6,7 
;              RH  - 2,3,6,7
;===============================================================================

_FIR_FP_alt_calc:

        ; Context Save
        MOV32   R0H, R6H            ; Store R 6,7 on R 0,1
        MOV32   R1H, R7H
        PUSH    XAR1

        ; XAR7=coeff_ptr. Adjusting base ptr (+2) to index beyond 7
        MOVL    XAR7, *XAR4++           ; XAR7 = coeff_ptr; offset of XAR4 is 2
        MOVL    XAR6, *+XAR4[0]         ; XAR6 = &dbuffer_ptr[cbindex]

        ; Set length of circular buffer ie. (2*num_elements) in XAR1 (high word)
        MOV	    AH,   *+XAR4[3]			; ACC  = [order : 0]
        LSL		AH,   #1				; ACC =  [2*order : 0]
	    MOV     AL,   *+XAR4[2]         ; ACC  = [order*2 : cbindex]
    	MOVL    XAR1, ACC               ; XAR1 = [order*2 : cbindex]


        ;; Set length of circular buffer ie. (2*num_elements) -
        ;ZAPA
        ;ADD     ACC, *+XAR4[3] << 1     ; ACC = 0 + order*2		; if(order == 8) ACC=16
        ;MOVZ    AR1, AL											; XAR1 = 16
        ;;MOV		AR1, #62
        ;SUBB	XAR1,#2											; XAR1 = 14

        ; Set length of circular buffer ie. (2*num_elements) in XAR1 (high word)
        ;ZAPA
		;MOVL	XAR1, @ACC				; ACC = 0
		;ADD     ACC, *+XAR4[3] << 1    	; ACC = 0 + order*2		; if(order == 8) ACC=16
		;SUBB	ACC,#2					; ACC = 14
    	;MOV     AH, AL  				; AH = AL
		;MOVL	XAR1, @ACC				; AR1H = order*2





		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	    .lp_amode
	    SETC      AMODE                              ; C2xLP addressing mode to allow
	                                                 ; *+XAR6[AR1%++]

        ; fir->dbuffer_ptr[cb_idx] = fir->input;
        MOVL    XAR0, *+XAR4[4]     ; XAR0 = input
        MOVL    *+XAR6[AR1%++], XAR0      ; Store input into dbuf
        MOVL    *+XAR4[0], XAR6     ; Update dbuffer_ptr (used as cbindex)

        MOVZ    AR0, *+XAR4[3]      ; AR0=order 				; if(order == 8) XAR0 = 8
        ;MOV		AR0,#31
        SUBB	XAR0,#1											; XAR0 = 7

        ; FIR: perform convolution
        ZERO    R2H
        ZERO    R3H
        ZERO    R6H
        ZERO    R7H

        RPT     AR0					; do MAC32 (XAR0 + 1) times	;if(XAR0 == 7) do MAC32 8 times
        || MACF32    R7H, R3H, *+XAR6[AR1%++], *XAR7++


    	.c28_amode
    	CLRC      AMODE                              ; Back to C28x addressing mode
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




        ADDF32  R6H, R6H, R2H       ; Epilogue additions		; add last even and last odd product
        ADDF32  R7H, R7H, R3H									; add odd and even partial sum

        ; NOP. Restore context in the delay slots.
        POP     XAR1 

        ADDF32  R7H, R7H, R6H

        ; NOP. Restore context in the delay slots.
        MOV32   R6H, R0H

        MOV32   *+XAR4[6], R7H       ; fir->output = res;
        
        ; Restore context.
        MOV32   R7H, R1H

        LRETR      
;--------------------------------------------------------------------------
;            Copyright (c) 2011-2012 Texas Instruments, Incorporated.
;                           All Rights Reserved.
;===========================================================================
;===========================================================================
; End of File.
;===========================================================================

