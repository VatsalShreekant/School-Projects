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
public class Comp {
    public static int r_id = 1, v_id = 1;
    
    private final double value;
    private final char type;
    private final int id;
    
    private final Node node[] = new Node[2];
    
    public Comp(char type, double value, Node node1, Node node2){
         
        if(type == 'R'){
            this.type = 'R';
            id = r_id++;
                
            node[0] = node1;
            node[1]= node2;
            this.value = value;
        } else {
            this.type = 'V'; 
            id = v_id++;
            
            if(value < 0){
                node[0] = node2;
                node[1]= node1;
                this.value = -value;
            } else{
                node[0] = node1;
                node[1]= node2;
                this.value = value;
            }
        }  
    }

    @Override
    public String toString() {
        if(type == 'R'){
            return "" + this.type + id + "\t" + node[0] + "\t" + node[1] + "\t " + value;
        }else {
            return "" + this.type + id + "\t" + node[0] + "\t" + node[1] + "\t DC " + value;
        }
    }
}
