<%-- 
    Document   : wanted_form
    Created on : 25 Jan, 2018, 12:55:02 PM
    Author     : manish
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>About Us</title>
<link rel="icon" href="images/l3.png" sizes="50x50">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css1/main.css" />
</head>
<body class="is-preload">

<!-- Footer -->
<footer id="footer">
<div class="inner">
<div class="content">
<section>
    <h1>About Us:-</h1>
 <% 
        Connection con10=null;
        Statement smt10=null;
        PreparedStatement ps10=null;
        ResultSet rs10=null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con10= DriverManager.getConnection("jdbc:mysql:///ccd","root","");

        ps10 = con10.prepareStatement("select * from about ");
        rs10= ps10.executeQuery();
        }
        catch(Exception e){}
%>
<%
                   
                   rs10=ps10.executeQuery();
                 
                   while(rs10.next()){
                       
                      
%>
<b>Address :- </b> 
<%=rs10.getString(1)%><br>
<b>Contact No.:-</b>
<%=rs10.getString(2)%><br>
<b>Website    :- </b>
<%=rs10.getString(3)%><br>
  <%
      
      
      
  }
 con10.close();
 %>  
  
</section>
<section>
<h4></h4>
<ul class="alt">
<li><a href="#"></a></li>
<li><a href="#"></a></li>
<li><a href="#"></a></li>
<li><a href="#"></a></li>
</ul>
</section>
<section>
<h4>Follow Us On :-</h4>
<ul class="plain">
<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
<li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>

</ul>
</section>
</div>
<div class="copyright">
&copy; 2018
</div>
</div>
</footer>
<!-- Scripts -->
<script src="assets/js1/jquery.min.js"></script>
<script src="assets/js1/browser.min.js"></script>
<script src="assets/js1/breakpoints.min.js"></script>
<script src="assets/js1/util.js"></script>
<script src="assets/js1/main.js"></script>

</body>
</html>
