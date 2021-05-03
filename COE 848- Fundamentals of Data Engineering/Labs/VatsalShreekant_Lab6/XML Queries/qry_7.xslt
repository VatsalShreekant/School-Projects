<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 

<body>
  <h2>qry_7</h2>
  <table border="1">
    <tr bgcolor="#32cdbe">
      <th style="text-align:left">Product_ID</th>
      <th style="text-align:left">Product_Name</th>
      <th style="text-align:left">Product_Availability</th>
      <th style="text-align:left">Rating_Stars</th>
      <th style="text-align:left">Comment_Sentiment</th>      

     
      
    </tr>
    <xsl:for-each select="document/qry_7">
    <tr>
      <td><xsl:value-of select="Product_ID"/></td>
      <td><xsl:value-of select="Product_Name"/></td>
      <td><xsl:value-of select="Product_Availability"/></td>
      <td><xsl:value-of select="Rating_Stars"/></td>
      <td><xsl:value-of select="Comment_Sentiment"/></td>      
      



    </tr>
    </xsl:for-each>
  </table>
</body>


</html>
</xsl:template>
</xsl:stylesheet>



