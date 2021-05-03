/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab6;

/**
 *
 * @author vshreeka
 */
public class Node {
    private static int id = 0; 
    private int node_id; 
    
    public Node (){
        node_id = id; 
        id++;
    }
    
    @Override
  public String toString() {
      return "The node is " + node_id;
  }
}
