/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coe628.lab9;

import java.util.concurrent.Semaphore;

/**
 *
 * @author Vatsal Shreekant
 */
public class DiningPhilosophers{
    
    final static int philosophersNumber = 5;
    final static Philosophers philosophers[] = new Philosophers[philosophersNumber];
    final static Semaphore mutex = new Semaphore(1);
    
    public static void main(String[] args) throws Exception{
        
        //initialize threads
        philosophers[0] = new Philosophers(0);
        for (int i = 1; i < philosophersNumber; i++){
            philosophers[i] = new Philosophers(i);
        }
        
        //start threads
        for(Thread t : philosophers){
            t.start();
        }
    }
    
    public static class Philosophers extends Thread{
        
        private enum State {THINKING, HUNGRY, EATING};
        
        private final int id;
        private State state;
        private final Semaphore self;
        
        Philosophers(int id){
            this.id = id;
            self = new Semaphore(0);
            state = State.THINKING;
        }
        
        private Philosophers left(){
            return philosophers[id == 0 ? philosophersNumber - 1 : id - 1];
        }
        
        private Philosophers right(){
            return philosophers[(id + 1) % philosophersNumber];
        }
        
        public void run(){
            try{
                while(true){
                    printState();
                    switch(state){
                        case THINKING:
                            thinkOrEat();
                            mutex.acquire();
                            state = State.HUNGRY;
                            break;
                        case HUNGRY:
                            // take both forks only if no neighbor philos are eating
                            //or else wait
                            test(this);
                            mutex.release();
                            self.acquire();
                            state = State.EATING;
                            break;
                        case EATING:
                            thinkOrEat();
                            mutex.acquire();
                            state = State.THINKING;
                            //if neighbor is hungry, then now they can eat
                            test(left());
                            test(right());
                            mutex.release();
                            break;
                    }
                }
            }
            catch(InterruptedException e){}
        }
        static private void test(Philosophers p){
            if(p.left().state != State.EATING && p.state == State.HUNGRY && p.right().state != State.EATING){
                p.state = State.EATING;
                p.self.release();
            }
            else if(p.left().state == State.EATING && p.state == State.HUNGRY && p.right().state == State.EATING){
                System.out.println("Not enough forks, Philosopher must wait.");
            }
        }
        private void thinkOrEat(){
            try{
                Thread.sleep((long) Math.round(Math.random() * 5000));
            }
            catch(InterruptedException e){}
        }
        private void printState(){
            System.out.println("Philosopher " + (id + 1) + " is " + state);
        }
    }
}