/*----------------------------------------------------------------------------
 * COE 718 - Lab4 - Part 2
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

int main(void)
{    
	osKernelInitialize (); 
	LED_Initialize();
	t_main = osThreadGetId ();
	osThreadSetPriority(t_main,osPriorityHigh);
	semaphore = osSemaphoreCreate(osSemaphore(semaphore), 10);
	
	t_P3 = osThreadCreate(osThread(P3), NULL);
	
	 osDelay(500);

	t_P2 = osThreadCreate(osThread(P2), NULL);
	
	osDelay(100);
	t_P1 = osThreadCreate(osThread(P1), NULL);
	
	osThreadTerminate(t_main);
	 osKernelStart ();    
	for (;;) {}
}


int flag = 0;

osSemaphoreId semaphore; //Semaphore ID
osSemaphoreDef(semaphore); //Semaphore definition

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
	
	int32_t val;
	
	for (;;) 
	{
		osSemaphoreWait (semaphore, osWaitForever); //Wait for the semaphore
		LED_On(0);
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		osSignalSet(t_P3,0x01); //Call P3 to finish the task
		osSignalWait(0x02, osWaitForever); //On recieving the Error for priority inversion, P2 will run instead, but is blocked by semaphore
		LED_On(6);
		LED_Off(6);
		osSemaphoreRelease(semaphore); //Return the token back to the semaphore
	}
}

void P2 (void const *argument) {
		
	int32_t val;
	
	for (;;) 	{
		osDelay(700); //Pass control to other tasks for 700 ms
		val = osSemaphoreWait(semaphore,1); //Wait 1ms for free semaphore
		
		if(val>9){ //if no time out, semaphore was acquired
			LED_On(1); // free to run
			LED_Off(1);
			osSemaphoreRelease(semaphore); //Return the token back to the semaphore
		
		}
	}
}

void P3 (void const *argument) {
	for (;;) 
	{
		osSemaphoreWait (semaphore, osWaitForever); //Wait for the semaphore
		LED_On(0);
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		
		osSignalWait(0x01, osWaitForever); //On recieving the Error for priority inversion, P2 will run instead, but is blocked by semaphore
		LED_Off(6);
		osSignalSet(t_P1,0x02); //Call P3 to finish the task
			
		osSemaphoreRelease(semaphore); //Return the token back to the semaphore
	}
}

