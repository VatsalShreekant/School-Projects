#;-*-Makefile-*-
PROG=simState
SRCS=${PROG}.c
OBJS=${PROG}.o
CC = gcc
CFLAGS = -g -Wall

all: ${PROG}

${PROG}: ${OBJS}
	gcc $(CFLAGS) -o ${PROG} ${OBJS}

.o: ${SRCS}


clean:
	rm -f *~ core a.out *.o ${PROG}
