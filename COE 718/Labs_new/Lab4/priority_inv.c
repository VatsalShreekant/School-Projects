/*----------------------------------------------------------------------------
 * CMSIS-RTOS 'main' function template
 *---------------------------------------------------------------------------*/

#define osObjectsPublic                     // define objects in main module
#include "osObjects.h"                      // RTOS object definitions
 #include "cmsis_os.h"                                           // CMSIS RTOS header file
#include <stdio.h>
#include <math.h>
#include "Board_LED.h"                  // ::Board Support:LED
#include "RTE_Components.h"             // Component selection

  
/*----------------------------------------------------------------------------
	CMSIS RTX Priority Inversion Example
	Priority Inversion = leave commented lines commented
	Priority Elevation = uncomment the 2 commented lines
	Anita Tino
*----------------------------------------------------------------------------*/

void P1 (void const *argument);
void P2 (void const *argument);
void P3 (void const *argument);

osThreadDef(P1, osPriorityHigh, 1, 0);
osThreadDef(P2, osPriorityNormal, 1, 0);
osThreadDef(P3, osPriorityBelowNormal, 1, 0);

osThreadId t_main,t_P1,t_P2,t_P3;

void delay(){ 
	long k, count = 0;
	for(k = 0; k < 100000; k++){
					count++;
			}
	}

void P1 (void const *argument) {
	for (;;) 
	{
		LED_On(0);
		delay(); //execute something, and after requires service from P3
//		osThreadSetPriority(t_P3, osPriorityHigh); //**solution uncomment
	
		osSignalSet(t_P3,0x01);						//call P3 to finish the task
		osSignalWait(0x02,osWaitForever);			//Error => priority inversion, P2 will run instead
		
	//	osThreadSetPriority(t_P3,osPriorityBelowNormal); //**solution uncomment
		LED_On(6);
		LED_Off(6);
	}
}

void P2 (void const *argument) {
	for (;;) 	{
		LED_On(1); 
		LED_Off(1); 
	}
}

void P3 (void const *argument) {
	for (;;) 	{
		delay(); //do something
		osSignalWait(0x01,osWaitForever);  
		LED_Off(0); //critical function to be requested by P1
		osSignalSet(t_P1,0x02);	 
	}
}

int main(void)
{    
	osKernelInitialize (); 
	LED_Initialize();
	t_main = osThreadGetId ();
	osThreadSetPriority(t_main,osPriorityHigh);
	t_P3 = osThreadCreate(osThread(P3), NULL);
	
	 osDelay(5);

	t_P2 = osThreadCreate(osThread(P2), NULL);
	
	osDelay(5);
	t_P1 = osThreadCreate(osThread(P1), NULL);
	
	osThreadTerminate(t_main);
	 osKernelStart ();    
	for (;;) {}
}

