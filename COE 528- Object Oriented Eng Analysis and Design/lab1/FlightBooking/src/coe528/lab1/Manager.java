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

import java.util.*;
import java.util.Scanner;


public class Manager {

    List<Flight> flights;
    List<Ticket> tickets;

    public Manager() {
        flights = new ArrayList<Flight>();
        tickets = new ArrayList<Ticket>();

    }

    public void createFlights() {
        int FN, c;
        double op;
        String origin, destination, dt;
        Scanner scan1 = new Scanner(System.in);
        Scanner scan2 = new Scanner(System.in);
        Scanner scan3 = new Scanner(System.in);
        System.out.println("Enter flight Number");
        FN = scan1.nextInt();
        System.out.println("Enter flight origin");
        origin = scan2.nextLine();
        System.out.println("Enter flight destination");
        destination = scan2.nextLine();
        System.out.println("Enter flight departure time and date");
        dt = scan2.nextLine();
        System.out.println("Enter flight capacity");
        c = scan1.nextInt();
        System.out.println("Enter original price of ticket");
        op = scan3.nextDouble();
        Flight F = new Flight(FN, origin, destination, dt, c, op);
        flights.add(F);
        System.out.println("The following flight has been created:");
        System.out.println(F);

    }

    public void displayAvailableFlights(String origin, String destination) {
        int size, seats;
        boolean flag = true;
        String o, d;
        size = flights.size();
        for (int i = 0; i < size; i++) {
            o = flights.get(i).getOrigin();
            d = flights.get(i).getDestination();
            seats = flights.get(i).getNumberOfSeatsleft();
            if ((o.equals(origin) == true) && (d.equals(destination) == true) && seats > 0) {
                if (flag == true) {
                    System.out.println("List of available flights:");
                    flag = false;
                }
                System.out.println(flights.get(i));
            }
        }
        if (flag == true) {
            System.out.println("no available flights");
        }



    }

    public Flight getFlight(int flightNumber) {
        int size = flights.size();
        for (int i = 0; i < size; i++) {
            if (flights.get(i).getFlightNumber() == flightNumber) {
                return flights.get(i);
            }

        }
        return null;
    }

    public void bookSeat(int flightNumber, Passenger p) {
        int size = flights.size();
        boolean flag = false;
        int index = 0, seats;
        for (int i = 0; i < size; i++) {
            if (flights.get(i).getFlightNumber() == flightNumber) {
                flag = true;
                index = i;
                break;
            }

        }
        double price;
        seats = flights.get(index).getNumberOfSeatsleft();
        if (flag == true && (seats > 0)) {
            flights.get(index).bookASeat();
            price = p.applyDiscount(flights.get(index).getPrice());
            Ticket a = new Ticket(flights.get(index), p, price);
            tickets.add(a);
            System.out.println("you have succesfully booked a seat for flight " + flightNumber);
            System.out.println("ticket: " + a);



        } else {
            if (flag == true && seats == 0) {
                System.out.println("The Flight " + flightNumber + " is full you cannot book a ticket for this flight");

            } else if (flag == false) {
                System.out.println("The Flight " + flightNumber + " cdoes not exist");
            }
        }

    }

    public static void main(String[] args) {
        Manager M = new Manager();
        Flight F;
        Passenger P;
        Scanner scan1 = new Scanner(System.in);
        Scanner scan2 = new Scanner(System.in);
        String input, destination, origin, name;
        int FN, age, years;
        boolean flag = false;

        while (flag != true) {
            System.out.println("Enter c if you would like to create a flight (creatFlight method)");
            System.out.println("Enter d if you would like to display all flights (displayAvailableFlights method)");
            System.out.println("Enter g if you would like to get information on a flight (getFlight method)");
            System.out.println("Enter b if you would like to book a seat (bookSeat method)");
            System.out.println("Enter t if you would like to terminate the program");
            input = scan1.nextLine();
            switch (input) {
                case "c":
                    M.createFlights();
                    break;
                case "d":
                    System.out.println("Enter flight origin");
                    origin = scan1.nextLine();
                    System.out.println("Enter flight destination");
                    destination = scan1.nextLine();
                    M.displayAvailableFlights(origin, destination);
                    break;
                case "g":
                    System.out.println("Enter Flight number");
                    FN = scan2.nextInt();
                    F = M.getFlight(FN);
                    if (F == null) {
                        System.out.println("Flight " + FN + " does not exist");
                    } else {
                        System.out.println("Info for Flight " + FN + ":");
                        System.out.println(F);
                    }
                    break;
                case "b":
                    System.out.println("If passenger is non memeber enter n, if passenger is a member enter m");
                    input = scan1.nextLine();
                    System.out.println("Enter passengers age");
                    age = scan2.nextInt();
                    System.out.println("Enter passengers name");
                    name = scan1.nextLine();
                    System.out.println("Enter flight number");
                    FN = scan2.nextInt();

                    if (input.equals("n") == true) {
                        P = new NonMember(age, name);
                        M.bookSeat(FN, P);
                    } else if (input.equals("m") == true) {
                        System.out.println("For how many years has the passenger been a member");
                        years = scan2.nextInt();
                        P = new Member(years, age, name);
                        M.bookSeat(FN, P);

                    }
                    break;
                case "t":
                    flag = true;
                    System.out.println("Program is terminated");
                    break;
                default:
                    System.out.println("You entered an invalid option");
                    break;

            }

        }

    }
}