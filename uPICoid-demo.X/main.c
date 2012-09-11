/*!
 @file		main.c
 @brief		Demo application for the µPICoid rev.A0
 *			Display a Heartbeat with all the 3 color of the RGB led, using OC1,OC2 and OC3
 *			Use the Button to reset the color to White
			
 @version	0.1.1
 @note		nothing special
 
 @date		August 22th 2012
 @author	Laurence DV
*/

// ################## Includes ################## //
//Hardware
#include "PIC32MX2xx_config.h"						//Must be before stddef_megaxone because of some define
#include <hardware.h>

//Library
#include <peripheral/pic32_clock.h>
#include <peripheral/pic32_timer.h>
#include <peripheral/pic32_output_compare.h>
#include <peripheral/pic32_interrupt.h>
#include <peripheral/pic32_pps.h>
#include <soft/pic32_realtime.h>


//Microchip's
#include <stdlib.h>
//#include <plib.h>

//Definition
#include <definition/datatype_megaxone.h>
#include <definition/stddef_megaxone.h>

//Dev macro
#include <tool/splitvar_megaxone.h>
#include <tool/bitmanip_megaxone.h>
// ############################################## //


// ################## Defines ################### //
// --- Demo Functions --- //
#define LED_R_SYSTICK_INTERVAL	10
#define LED_G_SYSTICK_INTERVAL	15
#define LED_B_SYSTICK_INTERVAL	40
// ---------------------- //
// ############################################## //


// ################## Prototype ################# //

// ############################################## //


// ################## Variables ################# //
// System
U32 ledSTRed = 0;
U32 ledSTBlue = 0;
U32 ledSTGreen = 0;
U8 ledRed = 0;
U8 ledRedDir = 0;
U8 ledGreen = 0;
U8 ledGreenDir = 0;
U8 ledBlue = 0;
U8 ledBlueDir = 0;
extern U32 sysTick;
// ############################################## //


// ################ Main Program ################ //
int main(void)
{
	//* --------------- Init --------------- *//
	// INTOSC
    

	// Init the I/O state
	clearPIN(LED_B);
	clearPIN(LED_G);
	clearPIN(LED_R);
	outputPIN(LED_B);
	outputPIN(LED_G);
	outputPIN(LED_R);
	inputPIN(BTN);

	// Init Interrupt
	INTEnableSystemMultiVectoredInt();
	INTEnableInterrupts();

	// Init the PWM modules
	timerInit(OC_TIMER_ID,0);
	ocSetConfig(LED_R_OC_ID,OC_MODE_PWM|OC_TIMER_2);
	ocSetConfig(LED_G_OC_ID,OC_MODE_PWM|OC_TIMER_2);
	ocSetConfig(LED_B_OC_ID,OC_MODE_PWM|OC_TIMER_2);
	pwmSetPeriod(LED_R_OC_ID,1000);
	pwmSetPeriod(LED_G_OC_ID,1000);
	pwmSetPeriod(LED_B_OC_ID,1000);
	ocStart(LED_R_OC_ID);
	ocStart(LED_G_OC_ID);
	ocStart(LED_B_OC_ID);

	// Init the RT system for 1ms tick
	realTimeInit(1000);

	// Init the PPS
	//Unlock PPS
	ppsUnlock();
	ppsAttachOut(OC1,RPB7);
	ppsAttachOut(OC2,RPB8);
	ppsAttachOut(OC3,RPB9);
	ppsLock();
	//* ------------------------------------ *//
	
	//* ----------- Loop forever ----------- *//
	for (;;)
	{
		if (checkPIN(BTN))
		{
			ledRed = 0;
			ledRedDir = 1;
			ledBlue = 0;
			ledBlueDir = 1;
			ledGreen = 0;
			ledGreenDir = 1;
		}

		if ((sysTick - ledSTRed) >= LED_R_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledRed == 255)
				ledRedDir = 0;
			else if (ledRed == 0)
				ledRedDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledRedDir)
				ledRed++;
			else
				ledRed--;
			// -------------------- //

			pwmSetDuty(LED_R_OC_ID,ledRed,0xFF);

			ledSTRed = sysTick;
		}

		if ((sysTick - ledSTGreen) >= LED_G_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledGreen == 255)
				ledGreenDir = 0;
			else if (ledGreen == 0)
				ledGreenDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledGreenDir)
				ledGreen++;
			else
				ledGreen--;
			// -------------------- //

			pwmSetDuty(LED_G_OC_ID,ledGreen,0xFF);

			ledSTGreen = sysTick;
		}

		if ((sysTick - ledSTBlue) >= LED_B_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledBlue == 255)
				ledBlueDir = 0;
			else if (ledBlue == 0)
				ledBlueDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledBlueDir)
				ledBlue++;
			else
				ledBlue--;
			// -------------------- //

			pwmSetDuty(LED_B_OC_ID,ledBlue,0xFF);

			ledSTBlue = sysTick;
		}
	}
	//* ------------------------------------ *//
}
// ############################################## //


// ################ Sub-routine ################# //

// ############################################## //


// ################# Interrupt ################## //
void __ISR(RT_TIMER_VECTOR, IPL7SOFT) rtTimerISR(void)
{
	extern U32 sysTick;

	sysTick++;

	intFastClearFlag(RT_TIMER_INT_ID);
}
// ############################################## //
