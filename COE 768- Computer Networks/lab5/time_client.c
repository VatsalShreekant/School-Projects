/* time_client.c - main */

#include <sys/types.h>

#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <stdio.h>
#include <sys/socket.h>                                                                            
#include <netinet/in.h>
#include <arpa/inet.h>
                                                                             
#include <netdb.h>
#include <math.h>

#include <sys/stat.h>

#define	BUFSIZE 64

#define	MSG		"Any Message \n"


/*------------------------------------------------------------------------
 * main - UDP client for TIME service that prints the resulting time
 *------------------------------------------------------------------------
 */
 double filesize(FILE *fp){
	int prev = ftell(fp);
	fseek(fp, 0L, SEEK_END);
	int sz = ftell(fp);
	fseek(fp, prev, SEEK_SET);
	return sz;
	}
 
int main(int argc, char **argv)
{
	char	*host = "localhost", *str1;
	int	port = 3000;
	char	now[100];		/* 32-bit integer to hold time	*/ 
	char buffer[5];
	FILE *file;
	char *loc, str[25];
	struct hostent	*phe;	/* pointer to host information entry	*/
	struct sockaddr_in sin;	/* an Internet endpoint address		*/
	struct pdu {
		char type;
		char data[100];
		};
	int	s, n, type, final;	/* socket descriptor and socket type	*/

	switch (argc) {
	case 1:
		break;
	case 2:
		host = argv[1];
	case 3:
		host = argv[1];
		port = atoi(argv[2]);
		break;
	default:
		fprintf(stderr, "usage: UDPtime [host [port]]\n");
		exit(1);
	}

	memset(&sin, 0, sizeof(sin));
        sin.sin_family = AF_INET;                                                                
        sin.sin_port = htons(port);
                                                                                        
    /* Map host name to IP address, allowing for dotted decimal */
        if ( phe = gethostbyname(host) ){
                memcpy(&sin.sin_addr, phe->h_addr, phe->h_length);
        }
        else if ( (sin.sin_addr.s_addr = inet_addr(host)) == INADDR_NONE )
		fprintf(stderr, "Can't get host entry \n");
                                                                                
    /* Allocate a socket */
        s = socket(AF_INET, SOCK_DGRAM, 0);
        if (s < 0)
		fprintf(stderr, "Can't create socket \n");
	
                                                                                
    /* Connect the socket */
        if (connect(s, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		fprintf(stderr, "Can't connect to %s %s \n", host, "Time");


	//(void) write(s, MSG, strlen(MSG));

	/* Read the time */
	
	struct pdu spud;
	spud.type = 'C';
	while(1){
	printf("Enter a file name then click enter or enter 'Exit' to exit the program. \n");
	scanf("%s", spud.data);
	if(strstr(spud.data, "Exit") != NULL)exit(0);
	write(s, &spud, strlen(spud.data)+1);
	n = read(s, buffer, 26);
	if ((n < 0)||(strstr(buffer, "Error") != NULL)){
	if (n < 0){ fprintf(stderr, "Read failed\n");
	printf("------------------------------------------------------- \n");}
	if(strstr(buffer, "Error") != NULL){ printf("Error file does not exist \n");
	printf("------------------------------------------------------- \n");}
	}	
	else{	
		
	int size = atoi(buffer);
	double group = size / 100.000;
	int value = ceil(group);
	if(value > 0) final = group*100 - (value-1)*100;
	int j = 0;
	loc = (char *) malloc(1000);
	for(int i = 0; i < value;i++){
		//printf("%d \n", j);
		char temp[100];
		int index = 0;
		index = read(s, temp, 101);
		if(j = 0) memmove(temp, temp+5, strlen(temp));
		memmove(temp, temp+1, strlen(temp));
		strcat(loc, temp);
		j = j + index;
		//bzero(temp, 100);
	}
	//strcpy(str1, loc);
	file = fopen(spud.data, "w");
	fwrite(loc, 1, size, file);
	free(loc);
	fclose(file);
	printf("File transfer of '%s' has completed successfully \n", spud.data);
	printf("------------------------------------------------------- \n");
		}
	//write(1, now, n);
	//exit(0);
	
	}
}
