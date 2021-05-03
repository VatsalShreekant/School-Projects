/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: vshreeka
 *
 * Created on February 4, 2019, 1:42 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <string.h>


int main(int argc, char** argv) {
   pid_t pid;
   int status, a, b, c, j, numword, i;
   char * my_argv[500];
   char line[500];
   int boolean;
   while(1){
       printf("Your Command>\n");
       a=0, b=0, c=0, numword=1;
       boolean = 1;
       scanf(" %[^\n]", line);
       for(i = 0; line[i]!='\0'; i++){
            if(line[i]== ' '){
                numword++;
            }
        }

    for(j = 0; j<numword; j++){
            my_argv[j] = (char *) malloc(sizeof (char)*500);
        }

   for(a = 0; line[a]!= '\0'; a++){
       if(line[a]==' '){
               c++;
               b=0;
        }else{
           my_argv[c][b]= line[a];
            b++;    
           }   
        }
       
       if (my_argv[numword-1][strlen(my_argv[numword-1])-1] == '&'){
               boolean =0;
               my_argv[numword-1][strlen(my_argv[numword-1])-1] = '\0';
       }
          
   if ((pid = fork()) == 0) {
        //Child runs this
       my_argv[numword]= NULL;

        execvp(my_argv[0], my_argv);
        fprintf(stderr, "Should NEVER get here!\n");
        exit(1);
    }
    if(boolean){
       wait(&status);
    }
    printf("Hello from parent with child %d\n", pid);

}
   return (EXIT_SUCCESS);
}
