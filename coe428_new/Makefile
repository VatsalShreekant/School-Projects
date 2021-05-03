#;-*-Makefile-*-
CC = gcc
CFLAGS = -g -Wall

all: heap

heap: main.o intHeap.o intStack.o
	gcc $(CFLAGS) -o heap main.o intHeap.o intStack.o

clean:
	rm -f *~  *.exe *.o *.obj
