package coe628.lab8;


/**
 * A <code>Semaphore</code> object implements a semaphore (invented by Edsger
 * Dijkstra).
 * <p>
 * A semaphore controls access to resources. The number of resources currently
 * available is the Semaphore <em>value</em>.
 * </p>
 *
 * @see <a href="http://en.wikipedia.org/wiki/Semaphore_(programming)">wikipedia
 * article</a>
 * @author Your Name
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
        if(value>=0)
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
        while(this.value<0){
            try{
                wait();
            }
            catch(InterruptedException e){}
        }
    }
                    
            }
        }
    }

}
