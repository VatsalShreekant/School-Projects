/*----------------------------------------------------------------------------
 * CMSIS-RTOS 'main' function template
 *---------------------------------------------------------------------------*/

#define osObjectsPublic                     // define objects in main module
#include "osObjects.h"                      // RTOS object definitions
#include "cmsis_os.h"                        // CMSIS RTOS header file
#include <stdio.h>
#include <math.h>
#include "Board_LED.h"                  // ::Board Support:LED
#include "RTE_Components.h"             // Component selection
#include "Board_joystick.h"

#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000

int check =0; 

struct __FILE { int handle; /* Add whatever you need here */ };
FILE __stdout;
//FILE __stdin;

int fputc(int ch, FILE *f) {
  if (DEMCR & TRCENA) {
    while (ITM_Port32(0) == 0);
    ITM_Port8(0) = ch;
  }
  return(ch);
}



/*----------------------------------------------------------------------------
	CMSIS RTX Priority Inversion Example
*----------------------------------------------------------------------------*/


osMutexId  (uart_mutex_id); // Mutex ID
osMutexDef (uart_mutex);    // Declare mutex


void P1 (void const *argument);
void P2 (void const *argument);
void P3 (void const *argument);



//Different Priorities may cause priority inversion 
osThreadDef(P1, osPriorityHigh, 1, 0);
osThreadDef(P2, osPriorityNormal, 1, 0);
osThreadDef(P3, osPriorityBelowNormal, 1, 0);

osThreadId t_main,t_P1,t_P2,t_P3;

int main(void)
{    
	
	uint32_t joy ;    //declare joystick state variable 
	
	osKernelInitialize (); 
	LED_Initialize();
	Joystick_Initialize();
	
	t_main = osThreadGetId ();
	osThreadSetPriority(t_main,osPriorityBelowNormal);


  uart_mutex_id = osMutexCreate(osMutex(uart_mutex));
	
	osKernelStart ();   // starts thread switching  
	
	printf("Select Joystick LEFT, RIGHT, CENTER to illumate 3 different LEDs.\n");
	printf("Thread 3 turns LED ON, then switches to Thread 1 for LED strobe pattern...\n"); 
	printf("..then back to Thread 3 to turn LED off\n");
	
	
	
	
	for (;;) {
	

		
	joy = Joystick_GetState();    // Get the joystick state and assign it to a variable 
				
		switch(joy){
				
				case JOYSTICK_LEFT:
					printf("Joystick left\n"); 
					switch_LED_with_threads(6U);
					
					break;
				case JOYSTICK_CENTER:
					printf("Joystick center\n"); 
					switch_LED_with_threads(5U);
					
					break;
				case JOYSTICK_RIGHT:
					printf("Joystick right\n"); 
					switch_LED_with_threads(4U);
					
					break;
		}
			
			

	
	}
}



void delay(){ 
	long k, count = 0;
	for(k = 0; k < 16000000; k++){
					count++;
			}
	}

void P1 (void const *argument) {
	
	printf("Thread 1\n"); 
	
	for (;;) 
	{	
		LED_On(0);																
		delay();
		delay();		
		LED_Off(0);
		LED_On(0);
	  LED_On(1);
		LED_Off(1);
		delay();
		delay();
		delay();
		delay();
		delay();
		LED_On(1);
		LED_On(2);
		LED_Off(2);
		delay();
		LED_On(2);
		delay();
		delay();
		delay();
		delay();
		osSignalSet(t_P3,0x01);								  
		osSignalWait(0X02,osWaitForever);			  
			}
}																	 


void P2 (void const *argument) {	
	printf("thread 2\n"); 
		for (;;){
		osMutexWait(uart_mutex_id, osWaitForever);
			LED_On(2); 
			LED_On(1); 
			LED_On(0);
		  delay();
			delay();
			delay();
			LED_Off(1); 
			LED_Off(0); 
			LED_Off(2);
			delay();
			delay();
			delay();
			LED_On(0); 
			LED_On(2); 
			LED_On(1);
			delay();
			delay();
			delay();		
		  LED_Off(0); 
			LED_Off(1); 
			LED_Off(2);
			delay();
			delay(); 
			osMutexRelease(uart_mutex_id);
			osThreadTerminate(t_P3);							
			osThreadTerminate(t_P2);
			osThreadTerminate(t_P1); 
	}
}

void P3 (void const *argument) { 
	printf("Thread 3\n"); 
		for (;;) 	{
		osMutexWait(uart_mutex_id, osWaitForever);
		LED_On((uint32_t)argument); 
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		printf("LED ON Thread 3\n");
		osSignalWait(0x01,osWaitForever);  						
		printf("LED OFF Thread 3\n"); 																	
		LED_Off((uint32_t)argument); 
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
	  osSignalSet(t_P1,0x02);	
 		osMutexRelease(uart_mutex_id);
		}
}


void switch_LED_with_threads(uint32_t LED_NUMBER){					//Create new threads
		
	osThreadTerminate(t_P3);					// Reset old threads before creating new ones
	osThreadTerminate(t_P2);
	osThreadTerminate(t_P1); 

	
	
	t_P3 = osThreadCreate(osThread(P3), (void *)LED_NUMBER );			//Send LED number to illuminate 
	
	osDelay(500);

	t_P2 = osThreadCreate(osThread(P2), NULL);
	
	osDelay(100);
	
	t_P1 = osThreadCreate(osThread(P1), NULL);
	
	
	}


