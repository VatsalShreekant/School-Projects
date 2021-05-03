/* time_server.c - main */

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
#include <strings.h>
#include <string.h>
#include <sys/stat.h>
#define length 100
/*------------------------------------------------------------------------
 * main - Iterative UDP server for TIME service
 *------------------------------------------------------------------------
 */
 
double filesize(FILE *fp){
 	int prev = ftell(fp);
 	fseek(fp, 0L, SEEK_END);
 	int sz = ftell(fp);
 	fseek(fp, prev, SEEK_SET);
 	return sz;
 	}
struct pdu{
	char type;
	char data[100];
};
int main(int argc, char *argv[])
{
	struct  sockaddr_in fsin;	/* the from address of a client	*/
	char	buf[100], rbuf[5];		/* "input" buffer; any size > 0	*/
	char    *pts,  *loc;
	int	sock;			/* server socket		*/
	time_t	now;			/* current time			*/
	int	alen;			/* from-address length		*/
	struct  sockaddr_in sin; /* an Internet endpoint address         */
        int     s, type;        /* socket descriptor and socket type    */
        FILE *file;
	int 	port=3000;
        int final;                                             

	switch(argc){
		case 1:
			break;
		case 2:
			port = atoi(argv[1]);
			break;
		default:
			fprintf(stderr, "Usage: %s [port]\n", argv[0]);
			exit(1);
	}

        memset(&sin, 0, sizeof(sin));
        sin.sin_family = AF_INET;
        sin.sin_addr.s_addr = INADDR_ANY;
        sin.sin_port = htons(port);
                                                                                                 
    /* Allocate a socket */
        s = socket(AF_INET, SOCK_DGRAM, 0);
        if (s < 0)
		fprintf(stderr, "can't creat socket\n");
                                                                                
    /* Bind the socket */
        if (bind(s, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		fprintf(stderr, "can't bind to %d port\n",port);
        listen(s, 5);	
	alen = sizeof(fsin);

	while (1) {
		char str1[200];
		memset(&buf, 0, sizeof(buf));
		if (recvfrom(s, buf, sizeof(buf), 0,
				(struct sockaddr *)&fsin, &alen) < 0)
			fprintf(stderr, "recvfrom error\n");
		
		strncpy(str1, buf+1, strlen(buf));
		//printf("%s\n", buf);
		file = fopen(str1, "r");
		if(file != NULL){
			struct pdu spudf;
			spudf.type = 'F';
			struct pdu spud;
			spud.type = 'D';
			
			int size = filesize(file);
			sprintf(rbuf, "%d", size);
			
			(void) sendto(s, rbuf, 5, 0, (struct sockaddr *)&fsin, sizeof(fsin));
			double group = size / 100.00;
			int value = ceil(group);
			if(value > 0)final = group*100 - (value-1)*100;
			int index = 0;
			loc = (char *) malloc(size);
			fread(loc, 1, size, file);
			for(int i = 0;i < value; i++){
				char temp[100];
			//	spud.data[100];
			if(i != value-1){
				strncpy(spud.data, loc + index, size - index);
				
				index += 100;
			
					(void) sendto(s, &spud, 101, 0, (struct sockaddr *)&fsin, sizeof(fsin));
			}
			else{
			strncpy(spudf.data, loc + index, size - index);
				(void) sendto(s, &spudf, final+1, 0, (struct sockaddr *)&fsin, sizeof(fsin));
				memset(spud.data, 0, sizeof(spud));
				memset(spudf.data, 0, sizeof(spudf));
				
				fclose(file);
			}
			}
			
			
		}
		else{
		//(void) time(&now);
        	//pts = ctime(&now);
        	struct pdu spude;
			spude.type = 'E';
			strcpy(spude.data, "Error file does not exist");
		(void) sendto(s, &spude, 26, 0,
			(struct sockaddr *)&fsin, sizeof(fsin));
		}
		//(void) time(&now);
        	//pts = ctime(&now);
        	
		//(void) sendto(s, pts, strlen(pts), 0,
		//	(struct sockaddr *)&fsin, sizeof(fsin));
	}
}
