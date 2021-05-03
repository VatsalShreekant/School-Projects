/* Copyright (C) 1999 Ken Clowes (kclowes@ee.ryerson.ca) */

/**
 * The metrics module provides utility functions to compare, swap
 * and copy ints.  The module tracks the number of times each operation
 * is performed and provides functions to obtain these numbers.
 * The primary use of the metrics module is to facilitate the
 * performance measurement and comparison of sorting algorithms.
 *
 * The module also includes a stand alone self-test main routine
 * allowing the automatic testing of its components.  The test executable
 * may be obtained by compiling this module with TEST_METRICS #defined.
 */
static unsigned int numCompares = 0;
static unsigned int numSwaps = 0;
static unsigned int numCopies = 0;

/**
 * myCompare compares two ints. The function returns an integer
 * greater than, equal to, or less than 0, if the first number
 * is greater than, equal to, or less than the second number
 * respectively.
 *
 * @param n1 The first number.
 * @param n2 The second number.  */
int myCompare(int n1, int n2)
{
  numCompares++;
  return (n1 - n2);
}

/**
 * mySwap interchanges two ints.
 *
 * Example:
 *    int a[] = {1, 2, 3, 4};
 *    mySwap(&a[0], &a[3]);
 *    printf("a[0] = %d; a[3] = %d\n", a[0], a[3]);
 * will produce the output:
 *    a[0] = 4; a[3] = 1
 *
 * @param ip1 A pointer to the first int.
 * @param ip2 A pointer to the second int.
 */
void mySwap(int * ip1, int * ip2)
{
  int tmp;
  numSwaps++;
  tmp = *ip1;
  *ip1 = *ip2;
  *ip2 = tmp;
  return;
}

/**
 * myCopy copies an int elsewhere.
 * @param ip1 A pointer to the int that is to be copied
 * @param ip2 A pointer of where to copy the first int to.
 */

void myCopy(const int * ip1, int * ip2)
{
  numCopies++;
  *ip2 = *ip1;
  return;
}

/**
 * getNumCompares returns the number of times myCompare was invoked.
 */
unsigned int getNumCompares()
{
  return numCompares;
}

/**
 * getNumCopies returns the number of times myCopy was invoked.
 */
unsigned int getNumCopies()
{
  return numCopies;
}

/**
 * getNumSwaps returns the number of times mySwap was invoked.
 */
unsigned int getNumSwaps()
{
  return numSwaps;
}

#ifdef TEST_METRICS
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
int main()
{
  int data[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int nTests = 0;
  int tmp1, tmp2;
  /* Ensure that the initial counts are all zero. */
  assert(getNumSwaps() == 0); nTests++;
  assert(getNumCompares() == 0); nTests++;
  assert(getNumCopies() == 0); nTests++;

  /* Test compare operations */
  assert(myCompare(5, 5) == 0); nTests++;
  assert(myCompare(12, 34) < 0); nTests++;
  assert(myCompare(-5, -10) > 0); nTests++;
  assert(myCompare(0xffffffff, 0) < 0); nTests++;
  assert(getNumCompares() == 4); nTests++;

  /* Test swap operations */
  tmp1 = data[2];
  tmp2 = data[3];
  assert(tmp1 != tmp2);
  mySwap(&data[2], &data[3]);
  assert((tmp1 == data[3]) && (tmp2 == data[2])); nTests++;
  mySwap(&data[2], &data[3]);
  assert((tmp1 == data[2]) && (tmp2 == data[3])); nTests++;
  assert(getNumSwaps() == 2); nTests++;

  /* Test copy operations */
  myCopy(data+5, &tmp1);
  assert(tmp1 == 6); nTests++;
  assert(tmp1 != tmp2);
  myCopy(&tmp1, &tmp2);
  assert(tmp2 == 6); nTests++;
  assert(getNumCopies() == 2); nTests++;

  printf("The metrics module passed all %d tests\n", nTests);
  exit(0);
}
#endif /* TEST_METRICS */
