<%-- 
    Document   : login
    Created on : 12 Jan, 2018, 1:49:05 PM
    Author     : manish
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%-- 
    Document   : logi
    Created on : 15 Jan, 2018, 1:50:14 PM
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<link rel="icon" href="images/l3.png" sizes="50x50">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css1/main.css" />
</head>
<body class="is-preload">
<!-- Header -->
<%@include file="userheader.jsp" %>
<!-- Highlights -->
<section class="wrapper">
<div class="inner">
<header class="special">
<h2>Login</h2><br>
<form action="login.jsp" method="post">
<div class="input-group" align="center">
    
    <i class="icon fa-user"></i><input type="text" class="form-control" name="userid" placeholder="USER-ID" style="height:px;width:600px">
</div>
<div class="input-group" align="center">
<i class="icon fa-lock"></i><input id="password" type="password" class="form-control" name="password" placeholder="PASSWORD" style="height:px;width:600px">
</div> <br> 
<div align="center">
<ul class="actions">
<li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
<li><input type="submit" class="special" value="Submit" /></li>
<li><input type="reset" class="alt" value="Reset" /></li>
<li><a href="forgot_password.jsp"><input type="button" class="alt" value="Forgot Password" /></a></li>
<li><a href="change_pwd.jsp"><input type="button" class="alt" value="Change Password" /></a></li>

</ul>
</div>
</form>
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
<%
             String id=request.getParameter("userid");
             String ppassword=request.getParameter("password");
             if(id!=null && ppassword!=null)
   try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ccd","root","");
            String query="select * from register where adhar='"+id+"' and password='"+ppassword+"';";
            PreparedStatement pst=con.prepareStatement(query);
            ResultSet rs=pst.executeQuery();
            
        if(rs.next())
        {
           response.sendRedirect("home.jsp");
        }
         else
        {
            out.print("<script>alert('invalid username or password')</script>");
        }

        }
        catch(Exception e)
        {
            out.print(e);
            
        }

    %>