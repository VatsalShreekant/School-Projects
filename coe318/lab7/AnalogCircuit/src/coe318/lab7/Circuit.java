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

import java.util.ArrayList;


public class Circuit {
 
    private static Circuit instance = null;
    
    
    /**
     * Turns the class into a singleton class.
     * 
     * @return A Circuit object.
     */
  
    public static Circuit getInstance() {
        if (instance == null) {
            instance = new  Circuit();
        }
        return instance;
    }
    
    private final ArrayList<Comp> comp;
    
    /**
     * Initializes the Array list of components.
     */
    private Circuit() {
        comp = new ArrayList<>();
    }
    
    /**
     * 
     * @param type = Character symbolizing the type of Component. 
     *               Can be either 'R' or 'V'.  
     * @param val = A double value for storing the Value of the component 
     * @param n1 = An integer alias for the +ve node.
     * @param n2 = An integer alias for the -ve node.
     */
    public void addComponent(char type, double val, int n1, int n2){
        Node node1 = new Node(n1);
        Node node2 = new Node(n2);
        if(type == 'r' || type == 'R'){
        comp.add(new Comp('R', val, node1, node2));
        } else if(type == 'v' || type == 'V'){
        comp.add(new Comp('V', val, node1, node2));
        }
    }
  
    public void spice(){
        System.out.println("ID\tNode 1\tNode 2\t Value");
        System.out.println("---------------------");
        
        if(!comp.isEmpty()){
            for(Comp component: comp){
                System.out.println(component);
            }
        } else {
            System.out.println("No Data Entered");
        }
        
        System.out.println("---------------------");
    }
    
    public boolean verifyInput(char typeTemp, int node1Temp, int node2Temp, double valueTemp, String inputTemp ){
        
        if(typeTemp != 'v' && typeTemp != 'V' && typeTemp != 'r' && typeTemp != 'R' && !"end".equalsIgnoreCase(inputTemp) &&!"spice".equalsIgnoreCase(inputTemp)) {
            System.out.println(" Please enter only 'v'(for Voltages) or 'r'(for Resistances) as the first character.");
            return false;
        }
        else if(node1Temp == node2Temp) {
            System.out.println(" The nodes cannot be same.");
            return false;
        }
        else if(( typeTemp == 'r' || typeTemp == 'R') && valueTemp <= 0) {
            System.out.println(" Resistance value cannot be negative or zero.");
            return false;
        }
        else if(( typeTemp == 'v' || typeTemp == 'V') && valueTemp == 0) {
            System.out.println(" Voltage value cannot be zero.");
            return false;
        }
        else {
            return true;
        }
    }
}
