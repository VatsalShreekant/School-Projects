<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Billing_Detail</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Billing_ID</th>
      <th style="text-align:left">Customer_ID</th>
      <th style="text-align:left">Street_Num</th>
      <th style="text-align:left">Street_Name</th> 
      <th style="text-align:left">Postal_Code</th>
      <th style="text-align:left">City</th>
      <th style="text-align:left">Province</th>
      <th style="text-align:left">Country</th>                 
    </tr>
    <xsl:for-each select="document/Billing_Detail">
    <tr>
      <td><xsl:value-of select="Billing_ID"/></td>
      <td><xsl:value-of select="Customer_ID"/></td>
      <td><xsl:value-of select="Street_Num"/></td>
      <td><xsl:value-of select="Street_Name"/></td>     
      <td><xsl:value-of select="Postal_Code"/></td>
      <td><xsl:value-of select="City"/></td>
      <td><xsl:value-of select="Province"/></td>
      <td><xsl:value-of select="Country"/></td>         
    </tr>
    </xsl:for-each>
  </table>
</body>

<body>
  <h2>Customer</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Customer_ID</th>
      <th style="text-align:left">Customer_First_Name</th>
      <th style="text-align:left">Customer_Last_Name</th>
      <th style="text-align:left">Num_Of_Orders</th>      
    </tr>
    <xsl:for-each select="document/Customer">
    <tr>
      <td><xsl:value-of select="Customer_ID"/></td>
      <td><xsl:value-of select="Customer_First_Name"/></td>
      <td><xsl:value-of select="Customer_Last_Name"/></td>
      <td><xsl:value-of select="Num_Of_Orders"/></td>      
    </tr>
    </xsl:for-each>
  </table>
</body>

<body>
  <h2>Deals</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Deal_ID</th>
      <th style="text-align:left">Product_ID</th>
      <th style="text-align:left">Product_Sell_Performance</th>
      <th style="text-align:left">Price</th>
    </tr>
    <xsl:for-each select="document/Deals">
    <tr>
      <td><xsl:value-of select="Deal_ID"/></td>
      <td><xsl:value-of select="Product_ID"/></td>
      <td><xsl:value-of select="Product_Sell_Performance"/></td>
      <td><xsl:value-of select="Price"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>

<body>
  <h2>Order_Des</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Order_ID</th>
      <th style="text-align:left">Customer_ID</th>
      <th style="text-align:left">Order_Cost</th>
      <th style="text-align:left">Order_Status</th>
      <th style="text-align:left">Order_Date</th>      
    </tr>
    <xsl:for-each select="document/Order_Des">
    <tr>
      <td><xsl:value-of select="Order_ID"/></td>
      <td><xsl:value-of select="Customer_ID"/></td>
      <td><xsl:value-of select="Order_Cost"/></td>
      <td><xsl:value-of select="Order_Status"/></td>
      <td><xsl:value-of select="Order_Date"/></td>      
    </tr>
    </xsl:for-each>
  </table>
</body>

<body>
  <h2>Product</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Product_ID</th>
      <th style="text-align:left">Order_ID</th>
      <th style="text-align:left">Department</th>
      <th style="text-align:left">Subscription_Option</th> 
      <th style="text-align:left">Product_Name</th>
      <th style="text-align:left">Product_Description</th>
      <th style="text-align:left">Product_Avg_Ratings</th>            
      <th style="text-align:left">Product_Company</th> 
      <th style="text-align:left">Product_Availability</th>
      <th style="text-align:left">Warehouse_Offering</th>
      <th style="text-align:left">Listing_Date</th>         
    </tr>
    <xsl:for-each select="document/Product">
    <tr>
      <td><xsl:value-of select="Product_ID"/></td>
      <td><xsl:value-of select="Order_ID"/></td>
      <td><xsl:value-of select="Department"/></td>
      <td><xsl:value-of select="Subscription_Option"/></td>      
      <td><xsl:value-of select="Product_Name"/></td>
      <td><xsl:value-of select="Product_Description"/></td>
      <td><xsl:value-of select="Product_Avg_Ratings"/></td>            
      <td><xsl:value-of select="Product_Company"/></td>      
      <td><xsl:value-of select="Product_Availability"/></td>
      <td><xsl:value-of select="Warehouse_Offering"/></td>
      <td><xsl:value-of select="Listing_Date"/></td>          
    </tr>
    </xsl:for-each>
  </table>
</body>

<body>
  <h2>Review</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Review_ID</th>
      <th style="text-align:left">Customer_ID</th>
      <th style="text-align:left">Product_ID</th>
      <th style="text-align:left">Rating_Stars</th>
      <th style="text-align:left">Comment_Sentiment</th>
    </tr>
    <xsl:for-each select="document/Review">
    <tr>
      <td><xsl:value-of select="Review_ID"/></td>
      <td><xsl:value-of select="Customer_ID"/></td>
      <td><xsl:value-of select="Product_ID"/></td>
      <td><xsl:value-of select="Rating_Stars"/></td>
      <td><xsl:value-of select="Comment_Sentiment"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>

<body>
  <h2>Contains</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Order_ID</th>
      <th style="text-align:left">Product_ID</th>

    </tr>
    <xsl:for-each select="document/Contains">
    <tr>
      <td><xsl:value-of select="Order_ID"/></td>
      <td><xsl:value-of select="Product_ID"/></td>

    </tr>
    </xsl:for-each>
  </table>
</body>


<body>
  <h2>Display</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Deal_ID</th>
      <th style="text-align:left">Product_ID</th>

    </tr>
    <xsl:for-each select="document/Display">
    <tr>
      <td><xsl:value-of select="Deal_ID"/></td>
      <td><xsl:value-of select="Product_ID"/></td>

    </tr>
    </xsl:for-each>
  </table>
</body>


<body>
  <h2>Has</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Product_ID</th>
      <th style="text-align:left">Review_ID</th>

    </tr>
    <xsl:for-each select="document/Has">
    <tr>
      <td><xsl:value-of select="Product_ID"/></td>
      <td><xsl:value-of select="Review_ID"/></td>

    </tr>
    </xsl:for-each>
  </table>
</body>


<body>
  <h2>Places</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Customer_ID</th>
      <th style="text-align:left">Order_ID</th>
      <th style="text-align:left">Num_Of_Orders</th>
      <th style="text-align:left">Order_Date</th>      

    </tr>
    <xsl:for-each select="document/Places">
    <tr>
      <td><xsl:value-of select="Customer_ID"/></td>
      <td><xsl:value-of select="Order_ID"/></td>
      <td><xsl:value-of select="Num_Of_Orders"/></td>
      <td><xsl:value-of select="Order_Date"/></td>      

    </tr>
    </xsl:for-each>
  </table>
</body>


<body>
  <h2>Write</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Review_ID</th>
      <th style="text-align:left">Customer_ID</th>
    </tr>
    <xsl:for-each select="document/Write">
    <tr>
      <td><xsl:value-of select="Review_ID"/></td>
      <td><xsl:value-of select="Customer_ID"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>


</html>
</xsl:template>
</xsl:stylesheet>



