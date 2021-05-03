/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe628.lab9;

/**
 *
 * @author Vatsal Shreekant
 */
public class Semaphore {
    private int value;

    /**
     * Create a semaphore.
     * @param value The initial value of the Semaphore ( must be &ge; 0).
     */
    public Semaphore(int value) {
        this.value = value;
    }
    /**
     * Increment the number of available resources.  This method never blocks.
     * It may wakeup a Thread waiting for the Semaphore. Dijkstra called this
     * the <em>V</em> operation.  Many also call it <em>signal</em> or
     * <em>release</em>.
     */
    public synchronized void up() {
        this.value++;
        if (value >= 0)
            this.notify();
    }
    
    /**
     * Request a resource. If no resources are available, the calling Thread
     * block until a resource controlled by the Semaphore becomes available.
     *  Dijkstra called this
     * the <em>P</em> operation.  Many also call it <em>wait</em> or
     * <em>acquire</em>.
     */
    public synchronized void down() {
        this.value--;
        while(this.value < 0){
            try {
                wait();
            }
            catch(InterruptedException e) {}
        }
    }
}
