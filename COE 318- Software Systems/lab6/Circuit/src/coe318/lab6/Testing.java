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
public class Testing {
    public static void main(String[]args){
        Circuit cir = Circuit.getInstance();
                Node a = new Node();
                Node b = new Node();
                Node c = new Node();


                Resistor r1 = new Resistor(30.0, a, b);
                Resistor r2 = new Resistor(60.0, b, c);

                
System.out.println("Nodes ");
System.out.println(a);
System.out.println(b);
System.out.println(c);

System.out.println("Resistance");
System.out.println(r1);
System.out.println(r2);

System.out.println("Circuit");
cir.add(r1);
cir.add(r2);

System.out.println(cir);

    }
    
}
