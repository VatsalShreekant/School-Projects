#;-*-Makefile-*-
CFLAGS = -Wall -g
CC = gcc
all: insertionSort mergeSort

insertionSort: sortDriver.o metrics.o insertionSort.o
	gcc -o insertionSort sortDriver.o metrics.o insertionSort.o

mergeSort: sortDriver.o metrics.o mergeSort.o
	gcc -o mergeSort sortDriver.o metrics.o mergeSort.o

testMetrics: metrics.c
	gcc -o testMetrics -Wall -D TEST_METRICS metrics.c
	@-./testMetrics
	@-rm metrics.o core testMetrics 2> /dev/null

clean:
	-@rm -f *~ *.o a.out core insertionSort mergeSort *.exe
