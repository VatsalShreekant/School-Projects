#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
extern int pop();
extern void push(int);
extern int isEmpty();

int main(int argc, char * argv[])
{
 	int ch, poppd;

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
				if (poppd == getchar())
				{
					break;
				}
				else
				{
				printf("Not Valid\n");
				exit(1);
				}
				
				}
			}

		}
		
		
  	}
	/*if(isEmpty() !=(-1))
	{
		printf("Not Valid\n");
		exit(1);
	}*/
	//else
	//{	
		printf("Valid\n");
		exit(0);
	//}
}

















