<%-- 
    Document   : deleteSuggestion
    Created on : 6 Feb, 2018, 1:09:06 PM
    Author     : manish
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Missing</title>
<link rel="icon" href="images/ico.png" sizes="50x50">

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<noscript>
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
</noscript>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body class="homepage">
<!-- Header Wrapper -->
<div class="wrapper style1">
<!-- Header -->
<%@include file="header.jsp" %>	

<!-- Banner -->
<div id="banner"  >
 
<section class="container">

<img src="images/ico.png"><br>
<span style="font-size: 50px;color: #eee"><b>Missing Detail</b></span>


</section>
</div>
</div>
<div class="wrapper style4" style="background-image: url(images/bg.jpg);background-repeat: no-repeat;
    background-size: 1324px 850px;">
<section class="container " >
    <%
    Connection con = null;
    Statement smt = null;
    ResultSet rs = null;
    PreparedStatement ps=null;
    String s="";
    int id;
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql:///ccd", "root", "");
    
    String studid="";
    if(request.getParameter("studid")!=null)
    studid=request.getParameter("studid");
                     
    ps = con.prepareStatement("select * from missing where rtime='"+studid+"'");
    
    
    
    rs= ps.executeQuery();
    
    while(rs.next())
    {
        id=rs.getInt(17);
        
%>

<div align="center">

    <table width="40%">
        <tr align="left" style="color: black">
        <th style="color: black"><img  height="200" width="300" src="../misshow?sno=<%=id%>"></img></th>
        <td width="5%"></td>
        <td></td>
        </tr>
        <tr align="left" style="color: black">
            <th ><b>Name</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(1)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Gender</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(2)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Address</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(6)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>City</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(3)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Distic</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(4)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Pincode</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(5)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>State</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(7)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Height</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(9)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Age</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(10)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Eyes Color</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(11)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Dress</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(12)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th><b>Missing Date</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(13)%></td>
        </tr>
         <tr align="left" style="color: black">
            <th><b>Gurdian Name</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(8)%></td>
        </tr>
         <tr align="left" style="color: black">
            <th><b>Gurdian Mobile Nos</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(16)%></td>
        </tr>
        <tr align="left" style="color: black">
            <th width="20%"><b>Date & Time of Complain</b></th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(14)%></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><a href="viewcomplain.jsp">< Back</a></td>
        </tr>
    </table>
</div>
    <%
        
    }
    
                     
                     
    }
        
    
    catch (Exception e)
    {
    out.println(e.getMessage());
    }

        
%>

        
</div>
</div>
</section>
</div>		
<!-- Footer -->
<%@include file="footer.jsp" %>
			
</body>
</html>