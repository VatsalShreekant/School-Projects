/*----------------------------------------------------------------------------
*      Lab 3: Scheduling Multithreaded Applications with RTX & uVision
*			 Vatsal Shreekant, student id: 500771363
 *---------------------------------------------------------------------------*/
#include <stdio.h>                                 
#include <ctype.h>                   
#include <string.h>    
#include <math.h>
#include "cmsis_os.h" 
#include "LPC17xx.H"           
#define ADDRESS(x) (*((volatile unsigned long *)(x)))
#define BitBand(x, y) 	ADDRESS(((unsigned long)(x) & 0xF0000000) | 0x02000000 |(((unsigned long)(x) & 0x000FFFFF) << 5) | ((y) << 2))
#define GPIO1_LED31 (*((volatile unsigned long*)0x233806FC))
#define GPIO2_LED2 (*((volatile unsigned long *) 0x23380A88))
#define __FI        1                   



double factor;
double var_A;
double var_B;
double var_C;
double var_D;
double var_E;
int myExponentialCalc(int, int);
void delay (unsigned int);
volatile unsigned long * GPIO2_LED4 ;



void threadA (void const *argument); 																					// thread function
void threadB (void const *argument); 
void threadC (void const *argument); 
void threadD (void const *argument); 
void threadE (void const *argument); 


osThreadId id_Thread_A, id_Thread_B, id_Thread_C, id_Thread_D, id_Thread_E; 	// thread id

osThreadDef (threadA, osPriorityAboveNormal, 1, 0); 													//priority #2
osThreadDef (threadB, osPriorityBelowNormal, 1, 0); 													//priority #3
osThreadDef (threadC, osPriorityHigh, 1, 0); 																	//priority #1
osThreadDef (threadD, osPriorityAboveNormal, 1, 0); 													//priority #2
osThreadDef (threadE, osPriorityBelowNormal, 1, 0); 													//priority #3


int Init_Thread (void) {

 id_Thread_A = osThreadCreate (osThread(threadA), NULL);   													// create threads
 id_Thread_B = osThreadCreate (osThread(threadB), NULL);
 id_Thread_C = osThreadCreate (osThread(threadC), NULL);
 id_Thread_D = osThreadCreate (osThread(threadD), NULL);
 id_Thread_E = osThreadCreate (osThread(threadE), NULL);
 
 if(!id_Thread_A) return(-1);
	
  return(0);
}


void threadA (void const *arg) {
 double x =0;
 int i = 0;
 
 for ( i=0; i<257; i++){ 
  x = x + (i + (i+2));
  var_A = x;
																												//Function that passes control to the next task of the same priority in the ready queue
	 
 }
   osDelay(1);	//delay(100);

}

void threadB (void const *arg) {
 double x =0;
 int i;
int factor = 1;
	

 for( i = 1; i<17; i++){
  factor = factor*i;
  x = x + ((double)(myExponentialCalc(2,i))/factor);
	 var_B = x;
	 
	 osDelay(1);																													//Function that passes control to the next task of the same priority in the ready queue

 }


}

void threadC (void const *arg) {
 double x =0;
 int n=0;


 for ( n=1; n<17; n++){
  x = x + (n+1)/n;
  var_C = x;
 }

}

void threadD (void const *arg) {

 double x=0;
 int m=0;
 factor=1;

 for ( m=0; m<6; m++){
  factor = factor*m;
  if(factor == 0){
   factor=1;
  }
  else{
   osDelay(1);																															//Function that passes control to the next task of the same priority in the ready queue
	 x = x + ((double)(myExponentialCalc(5, m)))/(double)factor;
   var_D = x;
	}
 }

}

void threadE(void const *arg) {
  double x=0;
	int p=0;
	int radius=1;

	

	
 for (p=1; p<13; p++){
  x = x + (3.14)*((double)(myExponentialCalc(radius,2)));
   var_E = x;
	 osDelay(1);																												//Function that passes control to the next task of the same priority in the ready queue

 }

}

int myExponentialCalc(int x, int n)
{
	int i;
	int number = 1; 
	
	for (i = 0; i < n; i++)
		number *=x;
		
	return(number);	
}

void delay (unsigned int value){
	unsigned int count1 = 0;
	unsigned int count2 = 0;
	
	for (count1 = 0; count1 < value; count1++){
		for (count2 = 0; count2 < count1; count2++){
		}
	}	
}	