/****************************************************************
* FILENAME:     2837x_lnk_RAM.cmd             
* DESCRIPTION:  device linker command file 
* AUTHOR:       Mitja Nemec
* START DATE:   7.7.2015
* VERSION:      1.0
*
* NOTES: based upon DSP28377D CPU1 Header Files V1.00
*
****************************************************************/


MEMORY
{
PAGE 0 :

    RESET_M     : origin = 0x00000000,    length = 0x00000002     	/* RESET_M is used for the "boot to SARAM" bootloader mode   */
    P_M0        : origin = 0x00000122,    length = 0x000002DE       /* on-chip RAM block M0 */
    P_M1        : origin = 0x00000400,    length = 0x00000400       /* on-chip RAM block M1 */
    
    P_LS05      : origin = 0x00008000,    length = 0x00003000       /* on-chip RAM block Local Shared 0-5 */

    P_D01       : origin = 0x0000B000,    length = 0x00001000       /* on-chip RAM block D0-1 */
    
    P_GS05      : origin = 0x0000C000,    length = 0x00006000       /* on-chip RAM block Global Shared 0-5 */

    RESET_F     : origin = 0x00080000,    length = 0x00000002

    /* Flash sectors */
    P_FA        : origin = 0x00080002,    length = 0x00001FFE       /* on-chip Flash */
    P_FB        : origin = 0x00082000,    length = 0x00002000       /* on-chip Flash */
    P_FC        : origin = 0x00084000,    length = 0x00002000       /* on-chip Flash */
    P_FD        : origin = 0x00086000,    length = 0x00002000       /* on-chip Flash */
    P_FE        : origin = 0x00088000,    length = 0x00008000       /* on-chip Flash */
    P_FF        : origin = 0x00090000,    length = 0x00008000       /* on-chip Flash */
    P_FG        : origin = 0x00098000,    length = 0x00008000       /* on-chip Flash */
    P_FH        : origin = 0x000A0000,    length = 0x00008000       /* on-chip Flash */
    P_FI        : origin = 0x000A8000,    length = 0x00008000       /* on-chip Flash */
    P_FJ        : origin = 0x000B0000,    length = 0x00008000       /* on-chip Flash */
    P_FK        : origin = 0x000B8000,    length = 0x00002000       /* on-chip Flash */
    P_FL        : origin = 0x000BA000,    length = 0x00002000       /* on-chip Flash */
    P_FM        : origin = 0x000BC000,    length = 0x00002000       /* on-chip Flash */
    P_FN        : origin = 0x000BE000,    length = 0x00002000       /* on-chip Flash */
   
PAGE 1 :

    BOOT_RSVD   : origin = 0x00000002,    length = 0x00000120       /* Part of M0, BOOT rom will use this for stack */
    D_M0        : origin = 0x00000122,    length = 0x000002DE       /* on-chip RAM block M0 */
    D_M1        : origin = 0x00000400,    length = 0x00000400       /* on-chip RAM block M1 */
    
    D_GS613     : origin = 0x00012000,    length = 0x00008000       /* on-chip RAM block Global Shared 6-15 */
    D_GS14      : origin = 0x0001A000,    length = 0x00001000       /* on-chip RAM block Global Shared 6-15 */
    D_GS15      : origin = 0x0001B000,    length = 0x00001000       /* on-chip RAM block Global Shared 6-15 */

    CPU2TOCPU1RAM   : origin = 0x0003F800,    length = 0x00000400
    CPU1TOCPU2RAM   : origin = 0x0003FC00,    length = 0x00000400
}

SECTIONS
{

/* VARIABLES */
    .bss: >>        D_GS613  	PAGE = 1
    .ebss: >>       D_GS613  	PAGE = 1
    firfilt > 		D_GS613    	PAGE = 1
   	firldb  > 		D_GS14    	PAGE = 1
   	coefffilt > 	D_GS15    	PAGE = 1

/* CODE */
    .text: >>       P_LS05 | P_D01 | P_GS05    PAGE = 0, ALIGN(4)
	ramfuncs:       {
/*                        rts2800_fpu32_fast_supplement.lib<atan2_f32.obj>(.text)
                        rts2800_fpu32_fast_supplement.lib<div_f32.obj>(.text)
                        rts2800_fpu32_fast_supplement.lib<cos_f32.obj>(.text)
                        rts2800_fpu32_fast_supplement.lib<sin_f32.obj>(.text)
                        rts2800_fpu32_fast_supplement.lib<sqrt_f32.obj>(.text)
                        rts2800_fpu32.lib<l_div.obj>(.text)
                        *(ramfuncs)
*/                        *(.TI.ramfunc)
                    }
                    LOAD = P_LS05 | P_D01 | P_GS05,
                    LOAD_START(_RamfuncsLoadStart),
                    LOAD_SIZE(_RamfuncsLoadSize),
                    LOAD_END(_RamfuncsLoadEnd),
                    RUN_START(_RamfuncsRunStart),
                    RUN_SIZE(_RamfuncsRunSize),
                    RUN_END(_RamfuncsRunEnd),
                    PAGE = 0, ALIGN(4)

/* STACK */
    .stack: >       D_M1,
                    RUN_START(_stack_start),
                    RUN_END(_stack_end),       
                    PAGE = 1
                    
/* HEAP */  
    .sysmem: >>     D_GS613  PAGE = 1
    .esysmem: >>    D_GS613  PAGE = 1

/* CONSTANTS */
    .econst: >>     D_GS613  PAGE = 1
    .const: >>      D_GS613  PAGE = 1

/* STARTUP CODE */
    codestart >     RESET_M         			PAGE = 0
    .reset: >>      P_LS05 | P_D01 | P_GS05,    PAGE = 0
    .cinit: >       P_D01 | P_GS05,    			PAGE = 0

/* COMPILER GENERATED CODE */
    .pinit: >>      P_LS05 | P_D01 | P_GS05,    PAGE = 0
    .switch: >>     P_LS05 | P_D01 | P_GS05,    PAGE = 0


   .reset: >        RESET_F,                	PAGE = 0, TYPE = DSECT /* not used, */


/* The following section definitions are required when using the IPC API Drivers */ 
/*    GROUP : > CPU1TOCPU2RAM, PAGE = 1
    {
        PUTBUFFER 
        PUTWRITEIDX 
        GETREADIDX 
    }
    
    GROUP : > CPU2TOCPU1RAM, PAGE = 1
    {
        GETBUFFER :    TYPE = DSECT
        GETWRITEIDX :  TYPE = DSECT
        PUTREADIDX :   TYPE = DSECT
    }  
*/
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
