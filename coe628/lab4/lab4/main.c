/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: vshreeka, 500771363
 *
 * Created on February 11, 2019, 9:54 PM
 */

#include <stdlib.h>
#include <stdio.h>

char *cmd1[] = {"ls", 0}; //Output goes to pipe input
char *cmd2[] = {"/usr/bin/tr", "a-z", "A-Z", 0}; //Input comes from pipe output

int
main(int argc, char **argv) {
    int pid, status;
    int fd[2];

    pipe(fd); //Create a pipe; fd[0] is input, fd[1] is output

    switch (pid = fork()) {

        case 0: /* child */

            /* Using close/dup */
            close(0);
            dup(fd[0]);
            /* Preferred: use dup2*/
            //            dup2(fd[0], 0); //pipe input is now stdin for child
            close(fd[1]); //child does not use pipe output
            execvp(cmd2[0], cmd2); //child executes "tr" command
            perror(cmd2[0]); //SHOULD NOT GET HERE!
            exit(1);
            
        case -1://SHOULD NOT GET HERE (indicates fork failure)
            perror("fork");
            exit(1);
            
        default: /* parent */
            dup2(fd[1], 1);
            close(fd[0]); /* the parent does not need this end of the pipe */
            execvp(cmd1[0], cmd1);
            perror(cmd1[0]); //SHOULD NOT GET HERE (exec failure)
            break;


    }
    exit(0);
}
