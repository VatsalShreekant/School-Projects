#include <stdlib.h>
#include <stdio.h>
#include "pri_queue.h"
/** @file pri_queue.c */
static Node_ptr_t head = NULL;

/**
 * Insert a Node into a priority queue.
 * @param priority
 * @param data
 * @author Vatsal Shreekant, 500771363
 */
void PQ_insert(int priority, char * data) {
    //debug mode for print debug
    int mode = 0;
    //new node initialization
    Node_ptr_t itemAddress, tmp, front;
    itemAddress = (Node_ptr_t) malloc(sizeof (struct node));
    itemAddress->priority = priority;
    itemAddress->data = data;
    itemAddress->next = NULL;

    if (mode)fprintf(stderr, "new item created, priority: %d\n"
            , itemAddress->priority);

    //case 1, if there is no head node
    if (head == NULL) {
        if (mode)fprintf(stderr, "entered case 1: no head node\n");
        head = itemAddress;
        if (mode)fprintf(stderr, "head added, priority: %d\n", head->priority);
    } else {
        tmp = head;
        if (mode)fprintf(stderr, "head exists, priority: %d\n", tmp->priority);
        //move to next node unless current node has lower priority or next node is NULL
        while (tmp->next != NULL && tmp->priority > itemAddress->priority) {
            front = tmp;
            tmp = tmp->next;
            if (mode)fprintf(stderr, "moved to next node, current node priority: %d"
                    ", previous priority: %d, inserting priority: %d\n"
                    , tmp->priority, front->priority, itemAddress->priority);
        }
        //case 2, new node replace head node
        if (tmp == head) {
            if (mode)fprintf(stderr, "entered case 2: replace head node\n");
            itemAddress->next = tmp;
            head = itemAddress;
            if (mode)fprintf(stderr, "swapped with head, new head priority: %d\n"
                    , head->priority);
        }
        //case 3, new node replace non-head node
        else {
            if (mode)fprintf(stderr, "entered case 3: replace non-head node\n");
            front->next = itemAddress;
            if (mode)fprintf(stderr, "previous node: %d is linked to current priority: %d\n"
                    , front->priority, front->next->priority);
            itemAddress->next = tmp;
            if (mode)fprintf(stderr, "current: %d is linked to the previously current priority: %d\n"
                    , itemAddress->priority, itemAddress->next->priority);
            
            if (mode)fprintf(stderr, "swapped with non-head node, current head priority: %d, "
                    "following node priority: %d\n"
                    , head->priority,head->next->priority);
        }
    }
}

/**
 * Delete and return the node with the highest priority.
 * @return The highest priority Node.
 */
Node_ptr_t PQ_delete() {
    head = head->next;
    return head;
}

/**
 * Do NOT modify this function.
 * @return A pointer to the head of the list.  (NULL if list is empty.)
 */
Node_ptr_t PQ_get_head() {
    return head;
}

/**
 * Do NOT modify this function.
 * @return the number of items in the queue
 */
int PQ_get_size() {
    int size = 0;
    Node_ptr_t tmp;
    for (tmp = head; tmp != NULL; tmp = tmp->next, size++)
        ;
    return size;
}