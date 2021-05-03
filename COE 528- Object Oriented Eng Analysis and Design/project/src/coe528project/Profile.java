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
public abstract class Profile {
    protected String username;
    protected String password;
    protected String role;

    public void setPass(String pass) {
        this.password = pass;
    }

    public String getPass() { 
        return password;
    }

    public String getRole() {   
        return role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public abstract void setRole();    
}


