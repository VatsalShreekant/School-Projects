/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package coe318.lab5;

/**
 *
 * @author Vatsal Shreekant
 * ID: 5001363
 */

public interface UserInterface {//DO NOT MODIFY
    /** Set the Blackjack game
     * this UserInterface belongs to.
     * @param game
     */
    public void setGame(BlackjackGame game);
    /**
     * Display the cards held by the House
     * and the player (you).
     */
    public void display();
    /**
     * Prompt the user if they want another
     * card.  Return true if another card
     * desired.
     * @return
     */
    public boolean hitMe();
    /**
     * Display the final cards, scores
     * and winner.
     */
    public void gameOver();
}
