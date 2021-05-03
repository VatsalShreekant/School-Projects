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
public class Customer extends Profile{

    Account account;

    public Customer(String name, String password, Account account, int b) {
        super.setUsername(name);
        super.setPass(password);
        setRole();
        this.account = new Account(b);
        
    }
    
    public Account getBankAccount(){
        return account;
    }
    

    
    @Override
    public void setRole() {
        super.role = "Customer";
    }
    
}