/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528project;

/**
 *
 * @author Vatsal Shreekant
 *
 * OVERVIEW: The Account class behaves in a state pattern who's 
 * behavior changes depending on its current level(state). This class is a 
 * mutable class since it contains numerous mutable methods(setAmount,withdraw,
 * deposit)
*    The abstraction function is:
*    AF(c) = an account, c, such that
*    c.setAmount = amount
*    c.getAmount = amount
*    c.deposit = amount + deposit
*    c.withdraw = amount - withdraw
*    c.setLevel = l
*    c.getLevel = l
*   The rep invariant is:
*   c.setAmount >= 0 &amp;
*   c.getAmount >= 0 &amp;
*   c.deposit >= 0 &amp;
*   c.withdraw >= 0 &amp;
*   (c.getAmount - withdraw) >= 0 &amp;
*   c.setLevel =! null &amp;
*   c.getLevel =! null  
*
 */
public class Account{
   private int amount;
   private Level level;

    /**
     *
     * @param amount
     */
    public Account(int amount){
   this.amount = amount;
   }

    /**
     *
     * @param amount
     */
    public void setAmount(int amount) {
    //REQUIRES: An integer greater than 0
    //MODIFIES: initializes the amount
    //EFFECTS: returns the amount
            this.amount = amount;
    }

    /**
     *
     * @return
     */
    public int getAmount() {
    //EFFECTS: returns the account amount       
        return amount;
    }
   
    /**
     *
     * @param deposit
     */
    public void  deposit(int deposit){
    //REQUIRES: and integer greater than 0
    //MODIFIES: adds the deposit into the amount
    //EFFECTS: returns the amount plus the deposit    
        if(deposit < 1){
            throw new NullPointerException();
        }
        amount = amount + deposit;
    }
    
    /**
     *
     * @param withdraw
     */
    public void withdraw(int withdraw){
    //REQUIRES: an integer greater than 0    
    //MODIFIES: subtracts the withdrawal from the amount
    //EFFECTS: returns the amount minus the withdrawal
        if(withdraw < 1 || ((amount - withdraw)<0)){
            throw new NullPointerException();
        }
        amount = amount - withdraw;
    

    }
    
    /**
     *
     * @param l
     */
    public void setLevel(Level l){
    //REQUIRES: a level(siver,gold,platinum)    
    //MODIFIES: sets the current level of the account
    //EFFECTS: returns the account level
        level = l;
    }

    /**
     *
     * @return
     */
    public Level getLevel(){
    //EFFECTS: returns the account level dependent on the amount      
        if(amount< 10000){
            return level = new Silver();
        }
        if(amount >10000 && amount <20000){
        return level = new Gold();
        }
        return level = new Platinum();
    }
    
    /**
     *
     * @return
     */
    public boolean repOK(){
        // EFFECTS: Returns true if the rep invariant holds for this
        //          object; otherwise returns false
if(amount >= 0){
    return true;
}
  if (level != null){
      return true;
  }
    
    return false;

}

    @Override
    public String toString() {

        // EFFECTS: Returns a string that contains the amount after all 
        // methods are called
        return("Level: " + level + ", " + "Amount: " + amount);
        
    }

}