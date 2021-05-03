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
//Semaphore counter
int sem = 0;
int sem2 = 0; 
int sem3 = 0;
int sem4 = 0;	


int counter; 
struct __FILE { int handle; /*printf() function*/ };
FILE __stdout;

int fputc(int ch, FILE *f) {
  if (DEMCR & TRCENA) {
    while (ITM_Port32(0) == 0);
    ITM_Port8(0) = ch;
  }
  return(ch);
}


int wait_P(int num){				 //WAIT
	int temp;
	if(num!=0){
		temp = num - 1;
		return (temp); 
	}else{
		while(num==0){
			counter=counter+1;
		}
			temp = num-1;
		return (temp);}
	}
int release_V(int num){    //RELEASE
		int temp; 
	 temp = num + 1; 
	 return (temp); 
}


void P1 (void const *argument);
void P2 (void const *argument);
void P3 (void const *argument);


osThreadDef(P1, osPriorityHigh, 1, 0);
osThreadDef(P2, osPriorityNormal, 1, 0);
osThreadDef(P3, osPriorityBelowNormal, 1, 0);

osThreadId t_main,t_P1,t_P2,t_P3;

void delay(){ 
	long k, count = 0;
	for(k = 0; k < 18000000; k++){
					count++;
			}
	}

	
int main(void)
{    
	
	uint32_t joy ;    //declare joystick state variable 
	
	osKernelInitialize (); 
	LED_Initialize();
	Joystick_Initialize();
	
	t_main = osThreadGetId ();
	
	osThreadSetPriority(t_main,osPriorityBelowNormal);


	osKernelStart ();   // starts thread switching  
	
	printf("Select Joystick LEFT, RIGHT, CENTER to illumate 3 different LEDs.\n");
	printf("Thread 3 turns LED ON, then switches to Thread 1 for LED strobe pattern...\n"); 
	printf("Thread 3 to turn LED off\n");
	
	
	for (;;) {
	
	if (check == 1){	
	//osSemaphoreWait (semaphore3, osWaitForever);
	 sem3 = wait_P(sem3);
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
	

		  //osSemaphoreRelease (semaphore4);
				sem4 = release_V(sem4); 
	}
}

	
void P1 (void const *argument) {
	
	printf("Thread 1\n"); 
	
	for (;;) 
	{
		//osSemaphoreWait(semaphore,osWaitForever); 
		sem = wait_P(sem); 
		
		LED_On(0);																// run LED strobe patttern
		delay();
		LED_Off(0);
		delay();
		LED_On(0);
		delay();
		LED_Off(0);
		delay();
	  LED_On(1);
		delay();
		LED_On(1);
		delay();
		delay();
		LED_On(1);
		delay();
		LED_Off(1);
		delay();
		LED_On(2);
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
	  //osSemaphoreWait (semaphore2, osWaitForever);		//Wait for free semaphore
		sem2 = wait_P(sem2); 
		  
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
		//osSemaphoreRelease (semaphore3); 
			sem3 = release_V(sem3); 
	
	
	}
}

void P3 (void const *argument) { 
	
	printf("Thread 3 \n");
	
	for (;;) 	{
		//osSemaphoreWait (semaphore4, osWaitForever);		
   sem4 = wait_P(sem4); 
		 

		LED_On((uint32_t)argument); 
		delay();
		delay();
		printf("Turn ON LED--Thread 3\n"); 
		//osSemaphoreRelease (semaphore);  							
		sem = release_V(sem);
		osSignalWait(0x01,osWaitForever);  						
		
		
		
		printf("Turn OFF LED--Thread 3\n"); 																	
		LED_Off((uint32_t)argument); 
		
		check = 0; 
		delay();
		delay();
		
	   osSignalSet(t_P1,0x02);	
		//osSemaphoreRelease (semaphore2);
			sem2 = release_V(sem2);
		
		
	}
}


void switch_LED_with_threads(uint32_t LED_NUMBER){
		
	osThreadTerminate(t_P3);
	osThreadTerminate(t_P2);
	osThreadTerminate(t_P1); 
		
	t_P3 = osThreadCreate(osThread(P3), (void *)LED_NUMBER );
	
	osDelay(2000);

	t_P2 = osThreadCreate(osThread(P2), NULL);
	
	osDelay(900);
	
	t_P1 = osThreadCreate(osThread(P1), NULL);
	
		
	}


