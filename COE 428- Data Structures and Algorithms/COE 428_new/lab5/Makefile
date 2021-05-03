#;-*-Makefile-*-
CC = gcc
CFLAGS = -g -Wall

all: validateXML  countXMLsimpleTags countXML

validateXML: part1Main.o intStack.o
	gcc $(CFLAGS) -o  validateXML part1Main.o intStack.o

countXMLsimpleTags: part2Main.o intStack.o
	gcc $(CFLAGS) -o countXMLsimpleTags  part2Main.o intStack.o
  
countXML: part3Main.o stringStack.o stringHashTable.o
	gcc $(CFLAGS) -o countXML  part3Main.o stringStack.o stringHashTable.o

 
clean:
	rm -f *~ core a.out *.o countXML validateXML countXMLsimpleTags *.exe
