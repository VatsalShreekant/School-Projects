/*----------------------------------------------------------------------------
 * COE 718 - Lab4 - Part 1
 * CMSIS-RTOS 'main' function template
 *---------------------------------------------------------------------------*/

#define osObjectsPublic                     // define objects in main module
#include "osObjects.h"                      // RTOS object definitions
#include "cmsis_os.h"                                           // CMSIS RTOS header file
#include <stdio.h>
#include <math.h>
#include "Board_LED.h"                  // ::Board Support:LED

int count = 0; // allows multiples of the counter value to be used
int flag  = 0; // used for ostimer stop / stop control
void delay(unsigned int); // custom function made for delay

void led_ThreadC (void const *argument); // thread function
void led_ThreadB (void const *argument); // thread function
void led_ThreadA (void const *argument);



osThreadDef (led_ThreadC, osPriorityNormal, 1, 0);                   // thread object
osThreadDef (led_ThreadB, osPriorityNormal, 1, 0);                   // thread object
osThreadDef (led_ThreadA, osPriorityNormal, 1, 0);  


/*###########################################################
	Virtual Timer declaration and call back method
############################################################*/


osThreadId T_led_ID1;
osThreadId T_led_ID2;	
osThreadId T_led_ID3;	

// Toggle the LED associated with the timer
void callback(void const *param){
	count = count + 1;
	}

osTimerDef(timer0_handle, callback);
osTimerDef(timer1_handle, callback);
osTimerDef(timer2_handle, callback);
	
//#############################################################


/*#############################################################
  Flash LED 0, signal to thread 2, wait for 3 to finish
*#############################################################*/
void led_ThreadC (void const *argument) {
	
	osTimerId timer_0 = osTimerCreate(osTimer(timer0_handle), osTimerPeriodic, NULL);
	osTimerStart(timer_0, 500);
	
	for (;;) {
		
		LED_On(3); //P2.2
		Delay(10);
		
		LED_Off(3); //P2.2
		osSignalSet	(T_led_ID1,0x03); //Repeat current thread if count < 4
		
		if (count == 4){ //Logic for next thread switch
			count = 0; //Reset timer counter
			flag = 1; //Trip for restarting the flag. This allows for subsequent thread to be initiated.
			
			osSignalSet	(T_led_ID2,0x01); //set next thread to run
			osTimerStop(timer_0); //Stop timer
			osSignalWait (0x03,osWaitForever); //Set current thread to wait
		}
		
		osSignalWait (0x03,osWaitForever); //Set current thread to wait
		
		if (flag == 1){
		osTimerStart(timer_0, 500); //Restart timer. The flag ensures this only happens once per thread switch
		flag = 0;
			
		}
	}
}

/*################################################################
  Flash LED 2, signal to thread 3, wait for thread 1 to finish
*################################################################*/
void led_ThreadB (void const *argument) {
	osTimerId timer_1 = osTimerCreate(osTimer(timer1_handle), osTimerPeriodic, NULL);
	osTimerStart(timer_1, 1000);
	
	for (;;) {
		
		LED_On(4); //P2.3
		Delay(10);
		
		LED_Off(4); //P2.3
		osSignalSet	(T_led_ID2,0x01); //Repeat current thread if count < 4
		
		if (count == 4){ //Logic for next thread switch
			count = 0; //Reset timer counter
			flag = 1; //Trip for restarting the flag. This allows for subsequent thread to be initiated.
			
			osTimerStop(timer_1); //Stop timer
			osSignalSet	(T_led_ID3,0x02); //set next thread to run
			osSignalWait (0x01,osWaitForever); //Set current thread to wait
		}
		
		osSignalWait (0x01,osWaitForever); //Set current thread to wait
		
		if (flag == 1){
		osTimerStart(timer_1, 1000); //Restart timer. The flag ensures this only happens once per thread switch
		flag = 0;
			
		}
	}
}


/*################################################################
  Flash LED 4, signal to thread 1, wait for thread 2 to finish
*################################################################*/
void led_ThreadA (void const *argument){
	osTimerId timer_2 = osTimerCreate(osTimer(timer2_handle), osTimerPeriodic, NULL);
	osTimerStart(timer_1, 2000);
	
	for (;;) {
		
		LED_On(5); //P2.4
		Delay(10);
		
		LED_Off(5); //P2.4
		osSignalSet	(T_led_ID3,0x02); //Repeat current thread if count < 4
		
		if (count == 2){ //Logic for next thread switch
			count = 0; //Reset timer counter
			flag = 1; //Trip for restarting the flag. This allows for subsequent thread to be initiated.
			
			osTimerStop(timer_2); //Stop timer
			osSignalSet	(T_led_ID1,0x03); //set next thread to run
			osSignalWait (0x02,osWaitForever); //Set current thread to wait
		}
		
		osSignalWait (0x02,osWaitForever); //Set current thread to wait
		
		if (flag == 1){
		osTimerStart(timer_2, 2000); //Restart timer. The flag ensures this only happens once per thread switch
		flag = 0;
			
		}
	}
}


/*###################################################################
  Create and start threads
 *###################################################################*/
int main (void) {
	osKernelInitialize (); 	
  LED_Initialize ();	

	
	//Signal and wait threads
	T_led_ID1 = osThreadCreate(osThread(led_ThreadC), NULL);
	T_led_ID2 = osThreadCreate(osThread(led_ThreadB), NULL);
  T_led_ID3 = osThreadCreate(osThread(led_ThreadA), NULL);
	 osKernelStart ();      
	osDelay(osWaitForever);               						
	
	for (;;);
}

void delay (unsigned int value){ //custom function made for LED delay
	unsigned int count1 = 0;
	unsigned int count2 = 0;
	
	for (count1 = 0; count1 < value; count1++){
		for (count2 = 0; count2 < count1; count2++){
		}
	}	
}
