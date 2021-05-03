
package lab5;


 //@author Vatsal Shreekant 
 
import java.sql.*;
import java.util.*;
import java.util.logging.Logger;

public class Lab5 {
  public static String url = "jdbc:sqlite:Amazon.db";
    
    //Query 1
    public static void query1(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Product_Description, Product.Department, Product.Product_Company\n" +
                        "FROM Product;";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Description = myRes.getString(i++);
                String product_Department = myRes.getString(i++);
                String product_Company = myRes.getString(i++);
                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Product Description: " + product_Description + ". Department: " + product_Department + ". Company: " + product_Company);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
      public static void query2(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Product_Avg_Ratings\n" +
                        "FROM Product\n" +
                        "ORDER BY Product.Product_Avg_Ratings DESC;";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Avg_Ratings = myRes.getString(i++);
                               
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Product Average Ratings: "+ product_Avg_Ratings);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
    
        public static void query3(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Product_Company, Product.Product_Avg_Ratings\n" +
                        "FROM Product\n" +
                        "ORDER BY Product.Product_Avg_Ratings DESC;";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Avg_Ratings = myRes.getString(i++);
                String product_Company = myRes.getString(i++);
                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Product Average Ratings: " + product_Avg_Ratings + ". Company: "+ product_Company);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
      public static void query4(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Subscription_Option\n" +
                        "FROM Product\n" +
                        "WHERE (((Product.Subscription_Option)='Yes'));";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Subscription = myRes.getString(i++);

                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Product Subscription: " + product_Subscription);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
  
     public static void query5(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Deals.Product_Sell_Performance\n" +
                        "FROM Product INNER JOIN Deals ON Product.Product_ID = Deals.Product_ID\n" +
                        "WHERE (((Deals.Product_Sell_Performance)='Worse-Seller'));";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Sell_Performance = myRes.getString(i++);
      
                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Product Selling Performance: " + product_Sell_Performance);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
  
         public static void query6(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Warehouse_Offering\n" +
                        "FROM Product\n" +
                        "WHERE (((Product.Warehouse_Offering)='Yes'));";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Warehouse_Offering = myRes.getString(i++);
     
                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Warehouse Availability: " + product_Warehouse_Offering);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
      public static void query7(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Product_Availability, Review.Rating_Stars, Review.Comment_Sentiment\n" +
                        "FROM Review INNER JOIN Product ON Review.Product_ID = Product.Product_ID\n" +
                        "WHERE (((Product.Product_Availability)='No'));";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Availability = myRes.getString(i++);
                String review_Rating_Stars = myRes.getString(i++);
                String review_Comment_Sentiment = myRes.getString(i++);
                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Product Availability: " + product_Availability + ". Rating Stars: " + review_Rating_Stars + ". Comment Sentiment: " + review_Comment_Sentiment);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
      public static void query8(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Subscription_Option\n" +
                        "FROM Product;";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Subscription_Option = myRes.getString(i++);

                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name +  ". Subscription Option: " + product_Subscription_Option);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
  
      public static void query9(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Product.Listing_Date\n" +
                        "FROM Product\n" +
                        "WHERE Product.Listing_Date BETWEEN '2020-12-23' AND '2020-12-25';";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String product_Listing_Date = myRes.getString(i++);

                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Listing Date: "+ product_Listing_Date);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
  
      public static void query10(Connection c){
        
        String query = "SELECT Product.Product_ID, Product.Product_Name, Review.Rating_Stars, Review.Comment_Sentiment\n" +
                        "FROM Product INNER JOIN Review ON Product.Product_ID = Review.Product_ID;";
        int i = 0;
        try{
            
            Connection myCon = DriverManager.getConnection(url);
            Statement myStmt = myCon.createStatement();
            
            ResultSet myRes = myStmt.executeQuery(query);
            
            while(myRes.next()){
                i = 1;
                String product_ID = myRes.getString(i++);
                String product_Name = myRes.getString(i++);
                String review_Rating_Stars = myRes.getString(i++);
                String review_Comment_Sentiment = myRes.getString(i++);

                
                System.out.println("Product ID: " + product_ID + ". Product Name: " + product_Name + ". Rating Stars: " + review_Rating_Stars + ". Comment Sentiment: " + review_Comment_Sentiment);
            }
            myStmt.close();
            
        }
        catch (Exception e){
            System.err.println( e.getClass().getName() + ": " + e.getMessage());
        }
    }
    
  
    
    public static void main(String[] args) throws SQLException {
        
        Scanner s = new Scanner(System.in);
        String sel = null;
        
        Connection c = null;
        try{
            Class.forName("org.sqlite.JDBC");
            c = DriverManager.getConnection(url);
        }
        catch (Exception e) {
            System.err.println(e.getMessage());
        }
        
        System.out.println("Opened DataBase Successfully\n");
        
        //Menu
        
        System.out.println("1. Products offered on the company website, their description, their category and their manufacturer.");
        System.out.println("2. Products listed by their ratings.");
        System.out.println("3. Are highly rated products built by the same manufacturer?");
        System.out.println("4. The products that are bought by the customers on a daily basis.");
        System.out.println("5. In the event of a sale/discount day, which products are the least bought?");
        System.out.println("6. What products are offered through the company warehouse and not from the manufacturer?");
        System.out.println("7. What products are out of stock and in customer demand?");
        System.out.println("8. Products that offer a subscription service in lieu of a one-time purchase.");
        System.out.println("9. Products that are released 1 day before the stat holidays.");
        System.out.println("10. The products associated with concerning reviews and high rating.");
        
        
        while (true){
            System.out.println("Enter Selection: ");
            sel = s.nextLine();
            
            System.out.println("");
            
            if(sel.equals("1")){
                query1(c);
            }
            
            else if(sel.equals("2")){
                query2(c);
            }
            
            else if(sel.equals("3")){
                query3(c);
            }
            
            else if(sel.equals("4")){
                query4(c);
            }
            
            else if(sel.equals("5")){
                query5(c);
            }
            
            else if(sel.equals("6")){
                query6(c);
            }
            
            else if(sel.equals("7")){
                query7(c);
            }
            
            else if(sel.equals("8")){
                query8(c);
            }
            
            else if(sel.equals("9")){
                query9(c);
            }
            
            else if(sel.equals("10")){
                query10(c);
            }
            
            
            else if(sel.equals("quit")){
                break;
            }
        }
        c.close();
    }
}
 
