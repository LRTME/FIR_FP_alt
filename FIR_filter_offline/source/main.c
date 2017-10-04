/****************************************************************
* FILENAME:     main.h
* DESCRIPTION:  file with global define macros
* AUTHOR:       Denis Sušin
* START DATE:   1.10.2017
* VERSION:      1.0
*
* CHANGES :
* VERSION   DATE        WHO             DETAIL
* 1.0       1.10.2017   Denis Sušin     Initial version
*
****************************************************************/

#include	"main.h"

#define     FIR_NUM_OF_COEFF                129
#define     NUMBER_OF_PERIODS_IN_WINDOW     4

#define     SIGNAL_LENGTH                   NUMBER_OF_PERIODS_IN_WINDOW*FIR_NUM_OF_COEFF

// globalne spremenljivke


// spremenljivke za potrebe merjenja èasa
float           angle_from_0_to_1 = 0.0;
float           ref_angle = 0.0;
float           angle_50Hz = 0.0;
int             num_of_s_passed = 0;
int             num_of_min_passed = 0;

// indeksi
int             i = 0;

// zaèasne spremenljivke
float           temp1 = 0.0;
float           temp2 = 0.0;
float           temp3 = 0.0;








// spremenljivke za FIR filter iz FPU modula
float   xn = 0.0;               // zadnji vzorec vhodnega signala
float   yn = 0.0;               // zadnji vzorec izhodnega signala
float   sigIn[SIGNAL_LENGTH];   // buffer vhodnega signala
float   sigOut[SIGNAL_LENGTH];  // buffer izhodnega signala

// Create an Instance of FIRFILT_GEN module and place the object in "firfilt" section
#pragma DATA_SECTION(firFP, "firfilt")
FIR_FP  firFP = FIR_FP_DEFAULTS;
// Define the Delay buffer for the 50th order filterfilter and place it in "firldb" section
#pragma DATA_SECTION(dbuffer, "firldb")
#pragma DATA_ALIGN (dbuffer,0x400)
float dbuffer[FIR_NUM_OF_COEFF];
// Define Constant Co-efficient Array  and place the .constant section in ROM memory
#pragma DATA_SECTION(coeff, "coefffilt");
#pragma DATA_ALIGN (coeff,0x400)
// DCT filter
#if (FIR_NUM_OF_COEFF == 128)
    float const coeff[FIR_NUM_OF_COEFF] =                                                                      \
        { \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 1.0000000000000 \
        }; // 128 koeficientov
#endif
#if (FIR_NUM_OF_COEFF == 129)
    float const coeff[FIR_NUM_OF_COEFF] =                                                                      \
        { \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, 0.0000000000000, \
         0.0000000000000, 0.0000000000000, 1.0000000000000 \
        }; // 129 koeficientov
#endif
#if (FIR_NUM_OF_COEFF == 10)
    float const coeff[FIR_NUM_OF_COEFF] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0}; // 10 koeficientov
#endif







int main(void)
{

	// lokalne spremenljivke


	// Inicializacija

    // sistemske ure (PLL) in PIE (prekinitvena) tabela
    InitSysCtrl();
    DINT;
    InitPieCtrl();
    IER = 0x0000;
    IFR = 0x0000;
    InitPieVectTable();
    EINT;   // Enable Global interrupt INTM
    ERTM;   // Enable Global realtime interrupt DBGM

    TIC_init();
    TIC_init_1();








    // FIR filter offline


    for(i=0; i < SIGNAL_LENGTH; i++)
    {
        sigIn[i]=0;
        sigOut[i]=0;
    }

    /* FIR Generic Filter Initialisation    */
    firFP.order = FIR_NUM_OF_COEFF;
    firFP.dbuffer_ptr = dbuffer;
    firFP.coeff_ptr = (float *)coeff;
    firFP.init(&firFP);


    for(i=0; i < SIGNAL_LENGTH; i++)
    {

        // If sentence for breakpoint
        if(i > 127)
        {
            temp1 = 1.0;
        }

        // Test signal
        xn = xn + 1.0;

        // Calling FIR filter function
        sigIn[i] = xn;
        firFP.input = xn;
        firFP.calc(&firFP);
        yn = firFP.output;
        sigOut[i] = yn;
        Rad = Rad + RadStep;
        Rad2 = Rad2 + RadStep2;
    }





	// Program
	while(1)
	{
        // ustavimo štoparico 0
        TIC_stop();

	    // generiramo referenèni kot, ki se naj bi resetiral vsako sekundo - s pomoèjo timerja 0
		ref_angle = ref_angle + 1.0 * (float)TIC_time / CPU_FREQ;
		// generiramo še kot, ki se spreminja s frekvenco 50 Hz - za potrebe DCT reg.
        angle_50Hz = ref_angle + 50.0 * (float)TIC_time / CPU_FREQ;

		// zaženemo štoparico 0 za potrebe generiranja kota ref_angle
		TIC_start();

		// omejimo ref_angle med 0 in 1
		if(ref_angle > 1.0)
		{
			ref_angle = ref_angle - 1.0;
			num_of_s_passed = num_of_s_passed + 1;
		}
		else if(ref_angle < 0.0)
		{
			ref_angle = ref_angle + 1.0;
		}

		// izraèunamo koliko minut že teèe program
        if(num_of_s_passed > 59)
        {
            num_of_s_passed = 0;
            num_of_min_passed = num_of_min_passed + 1;
        }




	}
}
