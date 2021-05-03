/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab4;

/**
 *
 * @author vshreeka
 Vatsal Shreekant 500771363
 */
public class Account {
    private String nm;
    private int num; 
    private double iB; 


    
   public Account(String name, int number, double initialBalance){
    
   nm = name; 
num = number ; 
iB = initialBalance ; 
    
}
   
   public String getName(){
       return nm;
   }
       public double getBalance(){
           return iB;
       }
       
       public int getNumber(){
           return num;
       }
           
      public boolean deposit(double amount){
           
           if(amount>0){
               iB = iB + (amount);
          return true;
           }
           else{
               return false;
           }
           
       }
       
      public boolean withdraw(double amount){
           if(amount<=0 || (amount)>iB){
               return false;
           }
           else {
               iB = iB - (amount);
               return true;
           }
       }
      
      
           @Override
    public String toString() {//DO NOT MODIFY
        return "(" + getName() + ", " + getNumber() + ", " +
                String.format("$%.2f", getBalance()) + ")";
    }
        
        
        
        
        
        
        
        
        
        
}
