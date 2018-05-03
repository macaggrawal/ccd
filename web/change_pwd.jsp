<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Change Password</title>
<link rel="icon" href="images/l3.png" sizes="50x50">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css1/main.css" />
</head>
<body class="is-preload">
<!-- Header -->
<header id="header" style="height: 70px"> <%--header size--%>
    <a class="logo" href="index.jsp"><img src="images/l3.png" width="200px" height="60px" ></a>
<nav>
<a href="#menu" style="font-size: 30px">Menu</a>
</nav>
</header>
<!-- Nav -->
<nav id="menu">
<ul class="links">
    <li><a href="home.jsp">Home</a></li>
    <li><a href="home.jsp">Events</a></li>
    <li><a href="#">Laws</a></li>
    <li><a href="footer.jsp">About Us</a></li>
    <li><a href="registration_form.jsp">Sign-Up</a></li>
</ul>
</nav>
<!-- Highlights -->
<section class="wrapper">
<div class="inner">
<header class="special">
<h2>change Password</h2><br>
<form action="" method="post">
<div class="input-group" align="center">
<input type="text" class="form-control" name="userid" placeholder="ENTER YOUR USER-ID/ADHAR NUMBER" style="height:px;width:600px">
</div>    
<br>
<div class="input-group" align="center">
<input type="password" class="form-control" name="oldpwd" placeholder="ENTER YOUR OLD PASSWORD" style="height:px;width:600px">
</div>
<br>
<div class="input-group" align="center">
<input type="password" class="form-control" name="newpwd" placeholder="ENTER YOUR NEW PASSWORD" style="height:px;width:600px">
</div>
<br>
<div align="center">


<input type="submit" class="special" value="Submit" style="background-image:url(images/bg2.jpeg) "/>
</div>
</form>
<%
String id=request.getParameter("userid");
String oldpass=request.getParameter("oldpwd");
String newpass=request.getParameter("newpwd");

        try
       {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///ccd","root","");
       String query  = "SELECT * FROM register WHERE password='"+oldpass+"' and adhar='"+id+"';";
     
        PreparedStatement pst = con.prepareStatement(query);
         pst.executeQuery();
         
          
           try
        {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1 = DriverManager.getConnection("jdbc:mysql:///ccd","root","");
       String query1  = "UPDATE register set password = '"+newpass+"' WHERE password = '"+oldpass+"';";
       
        PreparedStatement pst1 = con.prepareStatement(query1);
         int re= pst1.executeUpdate();
         if(re>0)
         {
             out.print("success");
          //JOptionPane.showMessageDialog(this,"update");
         }
         

       }
         catch(Exception e)
         {
             //JOptionPane.showMessageDialog(this,e);
         }

       }
        catch(Exception ex)
        {
            //JOptionPane.showMessageDialog(this,ex);
        }
%>
</div>
</header>
<!-- Mix -->
<%@include file="mix.jsp" %>
<!-- CTA -->
<%@include file="cta.jsp" %>
<!-- Team -->
<%@include file="team.jsp" %>
<!-- Footer -->
<%@include file="footer.jsp" %>
<!-- Scripts -->
<script src="assets/js1/jquery.min.js"></script>
<script src="assets/js1/browser.min.js"></script>
<script src="assets/js1/breakpoints.min.js"></script>
<script src="assets/js1/util.js"></script>
<script src="assets/js1/main.js"></script>

</body>
</html>
