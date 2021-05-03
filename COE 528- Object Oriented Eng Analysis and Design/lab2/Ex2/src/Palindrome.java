/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vatsal Shreekant
 *  Student no. 500771363
 
*/
//Requires: <a has to be a string>
//Modifies: <none>  
//Effects:  <If s is null throws NullPointerException,
// else returns true if s reads the same forward 
// and backward, else returns false>
public class Palindrome {
    
/*  The Effects Clause necessary as it checks all the letters of the String. 
    If the String "palindrome" is found, it returns True else returns False.  */
    
    public static boolean isPalindrome(String a){
        int last;
        int half;
        int find=0;
        
        if(a == null || a.isEmpty())
            return false;
        
        int length = a.length();
        
        last = length-1;
        half = last/2;
        
        for(int i=0; i<=half; i++){
            if(a.charAt(i) == a.charAt(last)){
                find = 0;
                last--;
            }
            else{
                find = 1;
            }
        }
        if(find == 1)
            return false;
        else
            return true;
            }
    
    public static void main(String[] args){
        if(args.length == 1){
            if(args[0].equals("1"))
                System.out.println(isPalindrome(null));
            else if(args[0].equals("2"))
                System.out.println(isPalindrome(""));
            else if(args[0].equals("3"))
                System.out.println(isPalindrome("deed"));
            else if(args[0].equals("4"))
                System.out.println(isPalindrome("abcd"));
        }
    }
}

