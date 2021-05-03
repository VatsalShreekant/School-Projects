/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab5;

/**
 *
 * @author Parth Patel
 * ID: 500542681
 */

import java.util.Scanner;

public class SimpleUI implements UserInterface {
    private BlackjackGame game;
    private Scanner user = new Scanner(System.in);

  @Override
    public void setGame(BlackjackGame game) {
        this.game = game;
    }

  @Override
    public void display() {
        System.out.println("House Holds: ");
        System.out.println("     " + this.game.getHouseCards().toString()); // House Cards
        System.out.println("You Hold: "); // Your Cards
        System.out.println("     " + this.game.getYourCards().toString()); // House Cards
        System.out.println("");
        System.out.println("");
    }

  @Override
    public boolean hitMe() {

        System.out.println("Another card? (y/n)");
        String choice = user.nextLine();

        if("y".equals(choice)) {
            return true;
        }
        else {
            return false;
        }
  }

  @Override
    public void gameOver() {
      
        System.out.println("");
        System.out.println("");
        System.out.println("Game Over");
        
        this.display();
        
        int yourScore = game.score(game.getYourCards());
        int houseScore = game.score(game.getHouseCards());
       
        System.out.println(" Your Score: " + yourScore + ", House Score: " + houseScore);
        System.out.println("");
        
        if( (yourScore == houseScore) || (yourScore > 21)){
            System.out.println("The House wins");
        }
        else if ((yourScore < 21 && houseScore > 21) || (yourScore < 21) && houseScore < 21 && yourScore> houseScore){
            System.out.println("You win");
        }
    }

}
