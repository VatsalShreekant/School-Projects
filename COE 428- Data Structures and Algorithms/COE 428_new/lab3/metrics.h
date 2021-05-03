/* Copyright (C) 1999 Ken Clowes (kclowes@ee.ryerson.ca) */

#ifndef METRICS_H
#define METRICS_H

int myCompare(int, int);
void mySwap(int *, int *);
void myCopy(const int *, int *);
unsigned int getNumCompares();
unsigned int getNumCopies();
unsigned int getNumSwaps();

#endif /* #ifndef METRICS_H */
