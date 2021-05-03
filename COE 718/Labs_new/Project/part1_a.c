/*----------------------------------------------------------------------------
 * Priority Inversion Final Project Semaphore Implementation 
 *---------------------------------------------------------------------------*/

#define osObjectsPublic                     // define objects in main module
#include "osObjects.h"                      // RTOS object definitions
#include "cmsis_os.h"                        // CMSIS RTOS header file
#include <stdio.h>
#include <math.h>
#include "Board_LED.h"                  // ::Board Support:LED
#include "RTE_Components.h"             // Component selection
#include "Board_joystick.h"


//Define printf() functionality 
#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000

int check =0; 

struct __FILE { int handle;};
FILE __stdout;

int fputc(int ch, FILE *f) {
  if (DEMCR & TRCENA) {
    while (ITM_Port32(0) == 0);
    ITM_Port8(0) = ch;
  }
  return(ch);
}


osSemaphoreId semaphore;                         // Semaphore ID
osSemaphoreDef(semaphore);                       // Semaphore definition

osSemaphoreId semaphore2;                         
osSemaphoreDef(semaphore2);                      

osSemaphoreId semaphore3;                         
osSemaphoreDef(semaphore3);                       

osSemaphoreId semaphore4;                        
osSemaphoreDef(semaphore4);                       


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
	
	osThreadSetPriority(t_main,osPriorityAboveNormal);
	semaphore = osSemaphoreCreate(osSemaphore(semaphore), 0);
	semaphore2 = osSemaphoreCreate(osSemaphore(semaphore2), 0);
	semaphore3 = osSemaphoreCreate(osSemaphore(semaphore3), 0);
	semaphore4 = osSemaphoreCreate(osSemaphore(semaphore4), 0);


	osKernelStart ();   // starts thread switching  
	
	printf("Select Joystick LEFT, RIGHT, CENTER to illumate 3 different LEDs.\n");
	printf("Thread 3 turns LED ON, then switches to Thread 1 for LED strobe pattern...\n"); 
	printf("..then back to Thread 3 to turn LED off\n");
	
	
	for (;;) {
	
	if (check == 1){	
	osSemaphoreWait (semaphore3, osWaitForever);
	 }
		

		
	joy = Joystick_GetState();    
				
		switch(joy){
				
				case JOYSTICK_LEFT:
					printf("Joystick left\n"); 
					switch_LED_with_threads(6U);
					check =1;
					break;
				case JOYSTICK_CENTER:
					printf("Joystick center\n"); 
					switch_LED_with_threads(5U);
					check =1;	
					break;
				case JOYSTICK_RIGHT:
					printf("Joystick right\n"); 
					switch_LED_with_threads(4U);
					check =1;	
					break;
		}
	

		  osSemaphoreRelease (semaphore4);

	}
}



void delay(){ 
	long k, count = 0;
	for(k = 0; k < 100000; k++){
					count++;
			}
	}

void P1 (void const *argument) {
		printf("Thread 1\n"); 
		for (;;) 
	{
		osSemaphoreWait(semaphore,osWaitForever); 
		LED_On(0);																// run LED strobe patttern
		delay(); 																	
		LED_Off(0);
	  LED_On(1);
		delay();
		LED_Off(1);
		LED_On(2);
		delay();
		LED_Off(2);
		LED_On(0);
		delay();
		LED_Off(0);
		LED_On(2);
		delay();
		delay();
		delay();
		delay();
		LED_Off(2);
		delay();
		osSignalSet(t_P3,0x01);								  
		osSignalWait(0X02,osWaitForever);			  
	}
}																	 

// thread 2 higher priority than Thread 1----Active every 700ms
void P2 (void const *argument) {	
	printf("Thread 2\n"); 
	for (;;){
	  osSemaphoreWait (semaphore2, osWaitForever);		//Wait for free semaphore

		  LED_On(0);
			LED_Off(0);		
			LED_On(1);
			LED_Off(1);
			LED_On(2);
			LED_Off(2);
		  delay();
			delay(); 
			delay();
			delay(); 
		  LED_On(0); 
			LED_On(1); 
			LED_On(2);
			delay();
			delay();
			delay(); 
			delay();
			delay();
			delay(); 
		osSemaphoreRelease (semaphore3); 
	}
}

void P3 (void const *argument) { 
	
	printf("Thread 3 \n");
	
	for (;;) 	{
		osSemaphoreWait (semaphore4, osWaitForever);		
 		LED_On((uint32_t)argument); 
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		printf("Turn ON LED--Thread 3\n"); 
		osSemaphoreRelease (semaphore);  							
		osSignalWait(0x01,osWaitForever);  						
		printf("Turn OFF LED--Thread 3\n"); 																	
		LED_Off((uint32_t)argument); 
		check = 0; 
		delay();
		delay();
		delay();
		delay();
		delay();
		delay();
		osSignalSet(t_P1,0x02);	
		osSemaphoreRelease (semaphore2);
	}
}


void switch_LED_with_threads(uint32_t LED_NUMBER){
		
	osThreadTerminate(t_P3);
	osThreadTerminate(t_P2);
	osThreadTerminate(t_P1); 
		
	t_P3 = osThreadCreate(osThread(P3), (void *)LED_NUMBER );
	
	osDelay(500);

	t_P2 = osThreadCreate(osThread(P2), NULL);
	
	osDelay(100);
	
	t_P1 = osThreadCreate(osThread(P1), NULL);
	
		
	}


