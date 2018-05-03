<%-- 
    Document   : view
    Created on : 25 Jan, 2018, 1:40:48 PM
    Author     : manish
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Wanted</title>
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
<h1>WANTED</h1><br>
<table border="2" align="center">
<tr>
<th>S.No</th> 
<th>Name</th>
<th>Gender</th>
<th>Address</th>
<th>City</th>
<th>Distic</th>
<th>Pincode</th>
<th>State</th>
<th>Height</th>
<th>Age</th>
<th>Eyes Color</th>
<th>Image</th>
            
        </tr>
        <%
        Connection con=null;
        Statement smt=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        int a=0;
        int s_no=0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");

        ps = con.prepareStatement("select * from wanted ");
        rs= ps.executeQuery();
        }
        catch(Exception e){}
        %>
        <%
                   
                   rs=ps.executeQuery();
                 
                   while(rs.next()){
                       a++;
                      int tid=rs.getInt(1);
                        %>
 <tr align="left">
     <td><%= a%>)</td>
 <td><%= rs.getString(3)%></td>
 <td><%= rs.getString(4)%></td>
 <td><%= rs.getString(5)%></td>
 <td><%= rs.getString(6)%></td>
 <td><%= rs.getString(7)%></td>
 <td><%= rs.getString(8)%></td>
 <td><%=rs.getString(9)%></td>
 <td><%=rs.getString(10)%></td>
 <td><%=rs.getString(11)%></td>
 <td><%=rs.getString(12)%></td>
 
 <td><img  height="100" width="100" src="show?sno=<%=tid%>"></img></td>
 <%
  }
 con.close();
 %>  
            
</table>

</div>
   
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
