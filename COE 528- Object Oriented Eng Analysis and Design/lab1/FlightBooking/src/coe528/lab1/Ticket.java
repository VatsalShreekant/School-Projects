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
public class Ticket {
    

    private Flight flight;
    private Passenger passenger;
    private double price;
    private int number;
    private static int count = 0;

    public Ticket(Flight f, Passenger pa, double pr) {
        count++;
        flight = f;
        passenger = pa;
        price = pr;
        number = count;


    }

    @Override
    public String toString() {
        String one = passenger.getName() + ", Flight " + flight.getFlightNumber();
        String two = ", " + flight.getOrigin() + " to " + flight.getDestination();
        String three = ", " + flight.getDepartureTime();
        String four = ", original price: " + flight.getPrice() + "$";
        String five = ", ticket price: " + price + "$";
        return one + two + three + four + five;
    }

    public Flight getFlight() {
        return flight;
    }
    public void setFlight(Flight F) {
        flight=F;
    }
     public Passenger getPassenger() {
        return passenger;
    }
    public void setPassenger(Passenger P) {
        passenger=P;
    }
     public double getPrice() {
        return price;
    }
    public void setPrice(double P) {
        price=P;
    }
     public int getNumber() {
        return number;
    }
    public void setNumber(int n) {
        number=n;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int n) {
        count=n;
    }
    
    
}