/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe528.lab1;

/**
 *
 * @author Owner
 */

public class NonMember extends Passenger {

    public NonMember(int a, String n) {
        super(a, n);
    }

    @Override
    public double applyDiscount(double p) {
        if (age > 65) {
            p = (p *9)/10;
            return p;
        }
        return p;
    }

}