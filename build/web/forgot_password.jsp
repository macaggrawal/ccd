<%-- 
    Document   : forgot_password
    Created on : 29 Jan, 2018, 1:56:08 PM
    Author     : manish
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>
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
<h2>Forgot Password</h2><br>
<form action="" method="post">
<div class="input-group" align="center">
<input type="text" class="form-control" name="userid" placeholder="ENTER YOUR USER-ID" style="height:px;width:600px">
</div>
<br>
<br>

<div align="center">


<input type="submit" class="special" value="Submit" />
</div>
</form>
<%
String id=request.getParameter("userid");
try{
    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ccd","root","");
            String query="select * from register where adhar='"+id+"' ;";
            PreparedStatement pst=con.prepareStatement(query);
            ResultSet rs=pst.executeQuery();
           
        if (rs.next())
        {
            String pass=rs.getString(14); 
           out.print("<h2> User-Id :-"+id+"</h2>");
           out.print("<h2> Password :-"+pass+"</h2>");
        }
}
catch(Exception e)
{
    
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
