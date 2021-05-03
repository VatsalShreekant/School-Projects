/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab7;

/**
 *
 * @author vshreeka
 * @ID: 500771363
 */
public class Node {
    
    private final int node_id;
    
    public Node(int id){
        node_id = id;
    }
    
    @Override
    public String toString() {
       return "" + node_id;
    }
}
