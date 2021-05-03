/*----------------------------------------------------------------------------
	
	Designers Guide to the Cortex-M Family
	CMSIS RTOS Threads Example

*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------
  Include the microcontroller header for register defenitions and CMSIS core functions
	Include the CMSIS RTOS header for the RTOS API
 *---------------------------------------------------------------------------*/

#include "RTE_Components.h"
#include CMSIS_device_header
#include "cmsis_os2.h"
#include "Board_LED.h"
#define LED1_ON 1
#define LED1_OFF 0

static osThreadId_t app_THREAD, THREAD1, THREAD2, THREAD3;

static int counter1 = 0;
static int counter2 = 0;
static int counter3 = 0;

/*----------------------------------------------------------------------------
 This is Application thread
 *---------------------------------------------------------------------------*/
static void app_main (void *argument) {

	LED_Initialize ();
	app_THREAD = osThreadNew(main_thread1, NULL, &ThreadAttr_mainthread);
}

int main (void) {

  SystemCoreClockUpdate();
 	LED_Initialize ();
  osKernelInitialize();                 				// Initialize CMSIS-RTOS
  osThreadNew(app_main, NULL, &ThreadAttr_app_main);    				// Create application main thread
    osKernelStart();                    				// Start thread execution
  for(;;) {}
}
 



/*----------------------------------------------------------------------------
  Simple delay routine
 *---------------------------------------------------------------------------*/
static void delay ()
{
int i;

	for(i=0;i<1000000;i++){
		
	}
}


/*----------------------------------------------------------------------------
 Attribute main thread
 *---------------------------------------------------------------------------*/
static const osThreadAttr_t ThreadAttr_mainthread = {
	.name = "mainthread",
	.priority = osPriorityAboveNormal,	
};

/*----------------------------------------------------------------------------
 Attribute main thread app
 *---------------------------------------------------------------------------*/
static const osThreadAttr_t ThreadAttr_app_main = {
	.name = "app_main",	
};

/*----------------------------------------------------------------------------
 Create joinable threads off of main app thread
 *---------------------------------------------------------------------------*/
__NO_RETURN void main_thread1 (void *argument) {
  
	for (;;) {
		THREAD1 = osThreadNew(joinable_thread,(void *) 1U, &ThreadAttr_Jthread);         //Create worker thread to do some calculations               
		counter3 = (counter1*counter1)+counter2;
		delay();																																							// Do something else in parallel
		osThreadJoin(THREAD1);															// Wait for the worker thread to finish so you can use its results		
		THREAD2   = osThreadNew(joinable_thread,(void *) 0U, &ThreadAttr_Jthread);
		counter3 = (counter1/2)*counter2;
		osThreadJoin(THREAD2);
		THREAD3   = osThreadNew(joinable_thread,(void *) 2U, &ThreadAttr_Jthread);
		counter4 = (counter2*2)/counter1;
		osThreadJoin(THREAD2);
		delay();
	}
}

/*----------------------------------------------------------------------------
 Worker Thread - Created as joinable
 *---------------------------------------------------------------------------*/
static const osThreadAttr_t ThreadAttr_Jthread = {
	.name = "Joinable Thread",
	.attr_bits = osThreadJoinable,
	.priority = osPriorityAboveNormal,
};

static void joinable_thread (void *argument) {

		switch((uint32_t)argument) {
			case 2 :
				LED_On(0);
				delay();
				LED_Off(1);
				delay();
				LED_On(2);
				delay();
				LED_Off(3);
				delay();
				LED_On(4);
				delay();
				LED_Off(5);
				delay();
				LED_On(6);
				delay();
				LED_Off(7);
				delay();
				LED_On(8);
				delay();
				counter4 = counter4 +1;
				break;
			
			case 1 :
				LED_On(0);
				delay();
				LED_On(1);
				delay();
				LED_On(2);
				delay();
				LED_On(3);
				delay();
				LED_On(4);
				delay();
				LED_On(5);
				delay();
				LED_On(6);
				delay();
				LED_On(7);
				delay();
				LED_On(8);
				delay();
				counter1 = counter1 * 2;
				break;

			case 0 :
				LED_Off(8);
				delay();
				LED_Off(7);
				delay();
				LED_Off(6);
				delay();
				LED_Off(5);
				delay();
				LED_Off(4);
				delay();
				LED_Off(3);
				delay();
				LED_Off(2);
				delay();
				LED_Off(1);
				delay();
				counter2 = (counter2 + counter1)/10;
				break;
		}
	
		osThreadExit();
}

