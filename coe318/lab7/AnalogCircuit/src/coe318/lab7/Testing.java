/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab7;

/**
 *
 * @author vshreeka
 */

import java.util.Scanner;


public class Testing {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Circuit circuit = Circuit.getInstance();
        Scanner user = new Scanner(System.in);

        char typeTemp;
        int node1Temp = 0, node2Temp = 1;
        double valueTemp = 1;
        String input;
        Scanner s;

     
        do{
            System.out.print("Next Command    :");
            
            input = user.nextLine();
            s = new Scanner(input).useDelimiter("\\s");
            typeTemp = s.next().charAt(0); 
            if(s.hasNextInt()){
                node1Temp = s.nextInt();  
                node2Temp = s.nextInt();  
                valueTemp = s.nextDouble();
            }  
          
            if(circuit.verifyInput(typeTemp, node1Temp, node2Temp, valueTemp, input)){
                
                if( typeTemp == 'r' || typeTemp == 'R' || typeTemp == 'v' || typeTemp == 'V') {
                    circuit.addComponent(typeTemp, valueTemp, node1Temp, node2Temp);
                }
                else if( "spice".equalsIgnoreCase(input)) {
                    circuit.spice();
                }
                else if("end".equalsIgnoreCase(input)){
                    System.out.println(" ALL DONE"); 
                }
                
            }
        }while( !"end".equalsIgnoreCase(input));
    }
}
