/*#include <stdio.h>
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
		else {
			if(ch=='<')
			{
				printf("1\n");
				continue;
			}
			else {
				if(isalpha(ch))
				{
					printf("2\n");
					push(ch);
					continue;
				}
			
				else { 
					if(ch=='/')
					{
						printf("4\n");
						poppd = pop();	
					}
				}
			}	
		}

		if(isEmpty()<0)
		{
			printf("Error\n");
			exit(1);
		}
		else {
			if(poppd != ch)
			{
				printf("Not \n");
				exit(1);
			}
		}
  	}

	if(isEmpty < 0)
	{
		printf("Not Valid");
	}
	else
	{	
		printf("Valid\n");
		exit(0);
	}
}*/
