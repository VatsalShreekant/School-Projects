/**
 *
 * @author Your Name
 */
package coe318.lab3;
public class Counter {
    //Instance variables here
    private int base ,count;
    private int digit;
    Counter l; 
    public Counter(int modulus, Counter left) {
        base = modulus;
        l = left; 
    
      
        
    }


    /**
     * @return the modulus
     */
    public int getModulus() {
        return base;
    }

    /**
     * Returns the Counter to the left attached to this
     * Counter.  Returns null if there is no Counter
     * to the left.
     * @return the left
     */
    public Counter getLeft() {
       return l;
        
    }

    /**
     * @return the digit
     */
    public int getDigit() {
        return digit;
    }

    /**
     * @param digit the digit to set
     */
    public void setDigit(int digit) {
    }

    /**
     * Increment this counter.  If it rolls over,
     * its left Counter is also incremented if it
     * exists.
     */
    public void increment() 
    {
        digit++;        
        
        if(digit > (base - 1))
        {
            if(l!=null)
            {
                l.increment();
            }
            
            digit = 0;
                
        }
                
    
    }

    /** Return the count of this Counter combined
     * with any Counter to its left.
     *
     * @return the count
     */
    public int getCount() {
        if (l!=null){
            return (l.getDigit() *base) + digit;
            }
        else {
            return digit;
        }
        
            
        
    }

    /** Returns a String representation of the Counter's
     * total count (including its left neighbour).
     * @return the String representation
     */
    @Override
    public String toString() {
        //DO NOT MODIFY THIS CODE
        return "" + getCount();
    }

}
