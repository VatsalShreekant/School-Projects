#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Vatsal Shreekant, 500771363

//a=0, b=1, c=2, d=3, e=4, f=5, g=6, h=7

typedef struct state_machine
{
	char nom;
	struct state_machine* next_state_0;
	struct state_machine* next_state_1;
}state;



int a=0;
int b; 
state finite_state_machine[8];
state *current;


void initiate()
{
	while(a<8)
	{
		finite_state_machine[a].nom = 65 + a;
		a++;
	}

		finite_state_machine[0].next_state_0 = &finite_state_machine[2]; 
		finite_state_machine[0].next_state_1 = &finite_state_machine[7];

		finite_state_machine[1].next_state_0 = &finite_state_machine[0]; 
		finite_state_machine[1].next_state_1 = &finite_state_machine[6];

		finite_state_machine[2].next_state_0 = &finite_state_machine[5]; 
		finite_state_machine[2].next_state_1 = &finite_state_machine[0];

		finite_state_machine[3].next_state_0 = &finite_state_machine[7]; 
		finite_state_machine[3].next_state_1 = &finite_state_machine[1];

		finite_state_machine[4].next_state_0 = &finite_state_machine[6]; 
		finite_state_machine[4].next_state_1 = &finite_state_machine[3];

		finite_state_machine[5].next_state_0 = &finite_state_machine[5]; 
		finite_state_machine[5].next_state_1 = &finite_state_machine[4];

		finite_state_machine[6].next_state_0 = &finite_state_machine[3]; 
		finite_state_machine[6].next_state_1 = &finite_state_machine[2];

		finite_state_machine[7].next_state_0 = &finite_state_machine[1]; 
		finite_state_machine[7].next_state_1 = &finite_state_machine[5]; 	
	
}

void print_Command_State()
{
	for(b=0; b<8; b++)
	{
		printf("%c %c %c \n", finite_state_machine[b].nom, finite_state_machine[b].next_state_0->nom, finite_state_machine[b].next_state_1->nom);
	}
}


void change_Command_State(char input, char new)
{
	if(input == '1')
	{
		current->next_state_1 = &finite_state_machine[new-65];
	}
	if(input == '0')
	{
		current->next_state_0 = &finite_state_machine[new-65];
	}
}


void recursion()
{
	int garbage[8];
	for(a = 0; a<8; a++)
	{
		garbage[a] = 1;
	}

	if(not garbage).
	{
		garbage[(finite_state_machine[i].nom) - 65] = 0;
	}
}



int main(int argc, char * argv[])
{
	char input[10];
	current = finite_state_machine+6;
	initiate();
	printf("%c \n", current->nom);
	


    

	while (gets(input))
	{
		switch (input[0])
		{	
			case '0':
				current = current->next_state_0;
				printf("%c \n", current->nom);
				break;
			
			case '1':
				current = current->next_state_1;
				printf("%c \n", current->nom);
				break;

			case 'c':
				change_Command_State(input[2], input[4]);
				break;

			case 'p':
				print_Command_State();
				break;

			case 'Q':
				exit(0);
				break;
				default: printf("Incorrect input\n");
		}
	}
	exit(0);
}
/*
Your personalized state machine description for Lab 4 (coe 428) follows:

A C H
B A G
C F A
D H B
E G D
F F E
G D C
H B F

Your starting state is: G 

   Good luck!
*/
