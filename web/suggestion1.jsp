<%-- 
    Document   : suggestion1
    Created on : 30 Jan, 2018, 1:48:10 PM
    Author     : manish
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Suggestions</title>
<link rel="icon" href="images/l3.png" sizes="50x50">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css1/main.css" />
</head>
<body class="is-preload">
<!-- Header -->
<%@include file="memberheader.jsp" %>
<!-- Highlights -->
<section class="wrapper">
<div class="inner">
<header class="special">
<h1>Suggestion Inbox</h1><br>
<table border="2" align="center">
<tr>
<th>S.No</th> 
<th>Name</th>
<th>Mobile No</th>
<th>Email</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>subject</th>
<th>Message</th>
      
</tr>
<%
Connection con=null;
PreparedStatement ps=null;
Statement smt=null;
ResultSet rs=null;
int a=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");
ps = con.prepareStatement("select * from suggestion ");
rs= ps.executeQuery();
}
catch(Exception e){}
rs=ps.executeQuery();
while(rs.next()){
a++;
%>
 <tr align="left">
     <td><%= a%>.)</td>
 <td><%= rs.getString(1)%></td>
 <td><%= rs.getString(2)%></td>
 <td><%= rs.getString(3)%></td>
 <td><%= rs.getString(5)%></td>
 <td><%= rs.getString(4)%></td>
 <td><%= rs.getString(6)%></td>
 <td><%=rs.getString(7)%></td>
 <td><%=rs.getString(8)%></td>

 
 <%
  }
 con.close();
 %> 
            
</table>

</div>
</div>
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
