/**
 *
 * @author Parth Patel
 */
package coe318.lab3;
public class Counter {
    //Instance variables here
   private int count, digit;
   private Counter left;
   
    public Counter(int modulus, Counter left) {
        
        
        
        
        
    }


    /**
     * @return the modulus
     */
    public int getModulus() {
       return 1;
    }

    /**
     * Returns the Counter to the left attached to this
     * Counter.  Returns null if there is no Counter
     * to the left.
     * @return the left
     */
    public Counter getLeft() {
        return null;
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
        if(digit>3)
        {
            this.digit = 0;
        } 
        else 
        {
            this.digit = digit;
        }
            
        
    }

    /**
     * Increment this counter.  If it rolls over,
     * its left Counter is also incremented if it
     * exists.
     */
    public void increment() {
        digit++;
        if(left != null)
        {
            left.count++; 
        }
        
        //count = 0;
    
    }

    /** Return the count of this Counter combined
     * with any Counter to its left.
     *
     * @return the count
     */
    public int getCount() {
        return 1;
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
