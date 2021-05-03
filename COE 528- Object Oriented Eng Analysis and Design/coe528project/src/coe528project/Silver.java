/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528project;

/**
 *
 * @author Vatsal Shreekant
 */
public class Silver extends Level{

    
    @Override
    public void changeState(Account a){
        if (a.getAmount() > 10000 && a.getAmount() < 20000) {
            a.setLevel(new Gold());
        }
        if (a.getAmount() > 20000){
            a.setLevel(new Platinum());
        }
       
    }
    
    @Override
    public void onlinePurchase(Account a,int cost){
        if ((cost >= 50) && (cost < a.getAmount())){
            a.withdraw(cost);
        }
        
     
        
    }
}
