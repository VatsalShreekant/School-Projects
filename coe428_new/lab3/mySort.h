/* Copyright (C) 1999 Ken Clowes (kclowes@ee.ryerson.ca) */

#ifndef MYSORT_H
#define MYSORT_H
#include "metrics.h"

/* The restriction to testing your sort algorithms to collections
 * of no more than one hundred thousand elements is encapsulated
 * with the following "#define":
 */
#define MAX_SIZE_N_TO_SORT 100000

/* prototype for "sort" function */
void mySort(int data[], unsigned int first, unsigned int last);
#endif /* #ifndef MYSORT_H */
