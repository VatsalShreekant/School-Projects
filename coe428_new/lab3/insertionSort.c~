#include "mySort.h"

void mySort(int array[], unsigned int first, unsigned int last)
   
	{
	int i, j,temp;
	int a = first+1; 
	for(myCopy(&a, &j); (myCompare(j,last)<=0); j++) 
		{
		myCopy(&array[j],&temp);
		i=j-1;

		while (  (myCompare(first , i)<=0) && (myCompare(temp , array[i])<0)   )
       			{
           		myCopy(&array[i],&array[i+1]);
           		i = i-1;
       			}

		myCopy(&temp, &array[i+1]);
		}

	}








/* {
	
	int i, j,temp;
	for(j=(first+1); j<last; j++) 
		{
		temp=array[j];		
		i=j-1;
		while (i>=first  &&   array[i]>temp)
       			{
           		array[i+1] = array[i];
           		i=i-1;
       			}

		array[i+1]=temp;
		}

	

    }


*/



/*void mySort(int d[], unsigned int n)
	{
	int i, j,temp;
	for(j=1; j<n; j++) 2
3
4
5
12
3
4
5
1


		{
		temp= d[j];
		i=j-1;

		while (i >= 0 && d[i] > temp)
       			{
           		d[i+1] = d[i];
           		i = i-1;
       			}

		d[i+1] = temp;
		}

	}
*/
