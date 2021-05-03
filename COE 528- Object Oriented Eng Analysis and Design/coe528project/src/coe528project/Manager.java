/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528project;
import java.util.ArrayList;
/**
 *
 * @author Vatsal Shreekant
 */
public class Manager extends Profile{
    public Manager() {
        super.setUsername("admin");
        super.setPass("admin");        
        setRole();
    }

    
    @Override
    public void setRole() {
    super.role="Manager";
    }
}