#include "mySort.h"
#include<stdlib.h>
#include<stdio.h>


void mySort(int array[], unsigned int first, unsigned int last)
{
    if(myCompare(first,last)<0)  
    {
	int m, v;
	v= first+(last-first)/2;
	myCopy(&v,&m);
 
        mySort(array, first, m);
        mySort(array, m+1, last);
 
        mergeImplement(array, first, m, last);
    }
}



void mergeImplement(int array[], int first, int m, int last)
{
    int k;
    int t1 = m - first + 1;
    int t2 =  last - m;
    int a=0;
    int b=0;
    int temp1[t1], temp2[t2];
 
    while(myCompare(a,t1)<0)
    {
	myCopy(&array[first + a], &temp1[a]);
	a++;
    }
    while(myCompare(b,t2)<0)
    {
	myCopy(&array[m + 1 + b], &temp2[b]);
	b++;
    }

    a = 0; 
    b = 0; 
    k = first; 

    while ((myCompare(a,t1)<0) && (myCompare(b,t2)<0))
    {
	if (myCompare(temp1[a],temp2[b]) <= 0)
	{
	myCopy(&temp1[a], &array[k]);
            a++;
        }
        else
        {
	myCopy(&temp2[b], &array[k]);
            b++;
        }
        k++;
    }
    while(myCompare(a,t1)<0)
    {
	myCopy(&temp1[a], &array[k]);
        a++;
        k++;
    }
    while(myCompare(b,t2)<0)
    {
	myCopy(&temp2[b], &array[k]);
        b++;
        k++;
    }
}
 

