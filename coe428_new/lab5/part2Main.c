#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
extern int pop();
extern void push(int);
extern int isEmpty();

int main(int argc, char * argv[])
{
 	int ch, poppd, value;
	char a[65];
	for(value=0; value<65; value++){
			a[value]=0;
		}// initialise
 	while ((ch = getchar()) != EOF) 
	{
		
    		if (!(isalpha(ch) || ch == '>' || ch == '<' || ch == '/'))
      		continue;
		else 
		{   
			if(ch=='<')
			{		
				ch=getchar();
				if(isalpha(ch))
				{
				
					push(ch);
					a[ch-65]++;					
				
				}
		
				else 
				{
					if(ch=='/')
				{
					poppd = pop();	
									}
				/*if(isEmpty()<0)
				{
					printf("Error\n");
					exit(1);
				}*/
				//if (poppd == getchar())
				//{
				//	value = ch -'A';
				//	a[value] = a[value]+1; 
				//	break;
				//}
				if(poppd!=getchar())
				{
				printf("Not Valid\n");
				exit(1);
				}
				
				}
			}

		}
		
		
  	}
	//if(isEmpty() !=(-1))
	//{
	//	printf("Not Valid\n");
	//	exit(1);
	//}

	//else
	//{	
	//	printf("Valid\n");
	//	exit(0);
	//}
	fprintf(stdout, "valid\n");	
for(value=0; value<65; value++){
		if(a[value]!=0)
			fprintf(stdout, "%c : %d\n",value+65, a[value]);
			
	}
exit(0);
}

















