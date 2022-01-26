<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
  <head>
    <meta charset="utf8"/>
  
    <link rel="stylesheet" href="C:\Users\ATB PS 1\Documents\HouseBuySell\assert\css\header_footer.css"></link>
    <style>
        * 
    {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        box-sizing: border-box;        
    }
    nav a:hover{
        color: #62cb6b ;
        text-decoration: none;
    }
        table{
            padding : 20px;
            border-collapse: collapse;
                       
        }
        table,td,th{
            border: 0px solid black;
            padding : 10px;
            
        }
        tr{
            bgcolor: grey;
            
        }
        section{
            margin-left:150px;
            transform: translate(0px,100px);
        }
        span{
            color:#62cb6b;
        }
        span .glyphicon glyphicon-plus
        {
            margin-left:550px;
        }
        .delete_btn{
            background : red;
            color : white;
        }
        .delete_btn:hover{
            background : #62cb6b;
            color: white;            
        }
    </style>
    
  </head>
<body>
    <header>
        <a id="logo" href="Index.html"  
           style="padding: 25px; font-size: 20px;        
           color: white;
           text-decoration: none;
           cursor: pointer;">TEAM<span style="color: #62cb6b;">FIVE</span></a>         
        <nav class="navi" style="text-decoration:none;">
            <a href="Index.html">Home</a>
            <a href="Index.html">Verification</a>
          
        </nav>
       
    </header>
    <section>
  <h2>CASA<span>GRAND</span> HOUSE( Buy and sale ) </h2>
  
  <table>
    <tr bgcolor="#62cb6b">
      <th style="text-align:left">Id</th>
      <th style="text-align:left">House Name</th>
      <th style="text-align:left">Description</th>
      <th style="text-align:left">Address</th>
      <th style="text-align:left">City</th>
      <th style="text-align:left">Price</th>
      <th style="text-align:left">Sold Status</th>
      <th style="text-align:left">Status</th>
    </tr>
    <xsl:for-each select="HouseSellBuy/House">
   
    
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="information"/></td>
      <td><xsl:value-of select="address"/></td>
      <td><xsl:value-of select="city"/></td>
      <td><xsl:value-of select="price"/></td>
      <xsl:if test="soldstatus = 1">
        <td>Sold</td>
      </xsl:if>
      <xsl:if test="soldstatus = 0">
        <td>For Sale</td>
      </xsl:if>     
      <xsl:if test="state = 1">
        <td><button>Approved</button></td>
      </xsl:if>
      <xsl:if test="state = 0">
        <td><button class="delete_btn">Disapproved</button></td>
      </xsl:if>     
        <td><button class="delete_btn">Delete</button></td>
    </tr>
    
    </xsl:for-each> 
  </table>
</section>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
