/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab7;

/**
 *
 * @author vshreeka
 */
public class Voltage {
    private static int id = 1;
    private int res_id;
    private double res; 
    private Node [] nood = new Node[2];
    
    public Voltage (double resistance, Node node1, Node node2){
        
      /*      if (resistance < 0) {
      throw new IllegalArgumentException("Resistance can't be negative");
    }*/
    if(node1 == null || node2== null) {
      throw new IllegalArgumentException("Either of the nodes can't be null");
    }
        
        nood[0]= node1; 
        nood[1]= node2; 
        res = resistance; 
      
        res_id = id;
          id++;
        
    }
    
    public Node [] getNodes(){
      return  nood; 
        
    }
     @Override
    public String toString(){
        return "V " + res_id + " Node 1 " + nood[0] + " Node 2 " + nood[1] + " Voltage " + res; 
    }
}
