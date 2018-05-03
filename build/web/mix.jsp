

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Mix</title>
<link rel="icon" href="images/l3.png" sizes="50x50">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css1/main.css" />
</head>
<body class="is-preload">
<!-- Header -->

<!-- Highlights -->
<section class="wrapper">    
<div class="highlights">
<section>
<div class="content">
<header>
<h1 style="font-family: initial">Thought</h1>
</header>
<%
    Connection con9 = null;
    Statement smt9 = null;
    ResultSet rs9 = null;
    PreparedStatement ps9=null;
    String s="";
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    con9 = DriverManager.getConnection("jdbc:mysql:///ccd", "root", "");
    
    ps9 = con9.prepareStatement("select * from thought");
    
    
    
    rs9= ps9.executeQuery();
    
    while(rs9.next())
    {
        
        
%>
<marquee  onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" hspace="10px" vspace="0px" scrolldelay="10"><p><%=rs9.getString(1)%></p></marquee>
<%
 }
 }
 catch (Exception e)
 {
 out.println(e.getMessage());
 }
%>    
    
</div>
</section>
    <section>
<div class="content">
<header>
<h1 style="font-family: initial">Site Map</h1>
</header>
    <img src="images/map.png" width="350px" height="400px">
<%-- <marquee onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" hspace="10px" vspace="0px"><p>Get the benefit of tax saving with HDFC Life Click to Protect</p></marquee>
--%>
</div>
</section>
    <section>
<div class="content">
    <header>
<h1 style="font-family: initial">Rules</h1>
</header>
   
<marquee onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" hspace="10px" vspace="0px">Get the benefit of tax saving with HDFC Life Click to Protect Plus Protection Plan Buy Online. Two-Wheeler Loan. Enjoy unbelievably low down-payment of Rs. 999/-. Apply Now. *T&C apply. Get the benefit of tax saving with HDFC Life Click to Protect Plus Protection Plan Buy Online.Two-Wheeler Loan. Enjoy unbelievably low down-payment of Rs. 999/-. Apply Now. *T&C apply.  </marquee>
           
</div>
</section>
</div>
</section>
<!-- CTA -->
<!-- Scripts -->
<script src="assets/js1/jquery.min.js"></script>
<script src="assets/js1/browser.min.js"></script>
<script src="assets/js1/breakpoints.min.js"></script>
<script src="assets/js1/util.js"></script>
<script src="assets/js1/main.js"></script>

</body>
</html>
