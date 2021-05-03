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
public abstract class Level {

    public abstract void changeState(Account a);
    
    abstract void onlinePurchase(Account a,int cost);
    

}
