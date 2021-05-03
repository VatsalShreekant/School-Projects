/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab6;
import java.util.ArrayList;

/**
 *
 * @author vshreeka
 */
public class Circuit{
   // private double res;
private static Circuit instance = null;
  public static Circuit getInstance() {
    if (instance == null) {
       instance = new  Circuit();
    }
    return instance;
  }
      private ArrayList<Resistor> res;

  private Circuit() { 
      res = new ArrayList<>();
}
 public void add(Resistor r){
     res.add(r);
 }
 
  @Override
  public String toString(){
      String str = new String(); 
      for (int i=0; i<res.size(); i++){
          str = str + res.get(i) + "\n";
          }
      return str;
      }
  }

