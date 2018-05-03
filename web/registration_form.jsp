<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>
<head>
    <title>Registration</title>
    <link rel="icon" href="images/l3.png" sizes="50x50">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    
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
<div class="inner" align="center">
<header class="special">

    <h2 >REGISTRATION</h2>
<form action="register" method="post" enctype="multipart/form-data" name="send">
<div class="form-group" align="center">
<input type="text" class="form-control" name="first_name" placeholder="FIRST NAME" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="middle_name" placeholder="MIDDLE NAME" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="last_name" placeholder="LAST NAME" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="father_name" placeholder="FATHER NAME" required="" style="height:px;width:500px" >
</div>&nbsp;
<div class="form-group" align="center">
<input type="date" class="form-control" name="dob"  required="" style="height:px;width:500px" >
</div>&nbsp;
<%--
<div class="form-group" style="height:px;width:500px;">
<table border="0">
<tr>
<td>
<select name="day" required="" style="height:px;width:100px" align="center">
<option>DAY</option>
<script>
var i;
for(i=1; i<=31; i++)
{
    document.write("<option>"+i+"</option>");
}
</script>
</select></td><td >
<select name="month" required="" style="height:px;width:200px">
<option>MONTH</option>
<script>
var i;
for(i=1; i<=12; i++)
{
     document.write("<option>"+i+"</option>");
}
</script>
</select></td><td >
    <select name="year" required="" style="height:px;width:200px">
<option>YEAR</option>
<script>
var i;
for(i=1979; i<=2005; i++)
{
    document.write("<option>"+i+"</option>");
}
</script>
</select></td></tr></table>
</div>--%>
<div class="form-group" align="center">
<select name="gender" style="height:px;width:500px">
    <option>GENDER</option>
    <option>MALE</option>
<option>FEMALE</option>
<option>OTHER</option>
</select>
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" maxlength="12" name="adhar_number" placeholder="ADHAR CARD NUMBER" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
    <input type="text" class="form-control" maxlength="10"  name="mobile" placeholder="MOBILE NUMBER" required=""  style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="email" placeholder="EMAIL ID" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="address" placeholder="H.NO/LANDMARK/TOWN/ROAD" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="city" placeholder="CITY" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="distic" placeholder="DISTIC" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="pincode" placeholder="PINCODE" required="" style="height:px;width:500px">
</div>&nbsp;
<div class="form-group" align="center">
    <select name="state" style="height:px;width:500px">
    <option>STATE</option>
    <option>HARYANA</option>
    <option>PUNJAB</option>
    <option>CHANDIGARH</option>
    <option>UP</option>
    <option>DELHI</option>
    </select>   

</div>&nbsp;
<div class="fileinput fileinput-new" data-provides="fileinput" align="center">
<span class="fileinput-filename" align="center"><input type="file" name="image" required="" >CHOICE YOUR IMAGE (JPG,PNG)</span>
</div>&nbsp;
<div class="form-group" align="center">
<input id="password" type="password" class="form-control" name="password" placeholder="Password" required="" style="height:px;width:500px">
</div> 
<br> 
<div class="form-group" align="center">
    <div class="g-recaptcha" data-sitekey="6Lc8g0oUAAAAAKLiwj6lalsDW3jmL7s-WTWodNiY" ></div>
</div>&nbsp;&nbsp;
<div align="center">
<input type="submit" class="special" value="Submit" />
<input type="reset" class="alt" value="Reset" >
</div>

</div>
</form>
</header>
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
