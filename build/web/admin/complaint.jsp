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
<title>Complaints</title>
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
<span style="font-size: 50px;color: #eee"><b>Complaint Box</b></span>


</section>
</div>
</div>
<div class="wrapper style4">
<section class="container">
    <%
    Connection con = null;
    Statement smt = null;
    ResultSet rs = null;
    PreparedStatement ps=null;
    String s="";
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql:///ccd", "root", "");
    
    String studid="";
    if(request.getParameter("studid")!=null)
    studid=request.getParameter("studid");
                     
    ps = con.prepareStatement("select * from complaints where time='"+studid+"'");
    
    
    
    rs= ps.executeQuery();
    
    while(rs.next())
    {
        
        
%>

<div align="center">

    <table width="40%">
        <tr align="left" style="color: black">
        <th style="color: black">Complain Topic</th>
        <td width="5%">:-</td>
        <td><%=rs.getString(1)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th >Other Compalin</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(2)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Description</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(3)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Applicant Name</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(4)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Mobile Number</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(5)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Email Id</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(6)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Address</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(7)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Near Police Station</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(8)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Id Proof</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(9)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Id Number</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(10)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Name Against Compalin</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(11)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th>Address Against Complain</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(12)%></td>
        </tr>
        <tr align="left" style="color: black">
        <th width="20%">Date & Time of Complain</th>
        <td width="5%">:-</td>
        <td align="left"><%=rs.getString(13)%></td>
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