#include <stdlib.h>
#include <stdio.h>
#include "towers.h"
int main(int argc, char **argv)
{
    int n = 3;
    int from = 1;
    int dest = 2;
    int temp_x= 0;
    int temp_y= 0;
	
	


	if(argc==1)
	{
	}
	else if (argc==2) 
	{
		n = atoi(argv[1]);
	}
	else if ((argc==4)) 
	{
		temp_x= atoi(argv[2]);
		temp_y= atoi(argv[3]);

		if ((temp_x != temp_y) && (0<temp_x) && (temp_x<=3) && (0<temp_y) && (temp_y<=3))
		{
			n = atoi(argv[1]);
			from = temp_x;
			dest = temp_y;
		}
		else
		{
			fprintf(stderr, "Incorrect invocation \n");
			exit(1);
		}
	}
	else
	{
		fprintf(stderr, "Incorrect invocation \n");
		exit(1);
	}


	
    towers(n, from, dest);
    exit(0);
}

