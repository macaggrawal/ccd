<%-- 
    Document   : online_complain
    Created on : 24 Jan, 2018, 11:58:01 AM
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Complaint</title><link rel="icon" href="images/l3.png" sizes="50x50">
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
<h2>ONLINE COMPLAINT</h2><br>
<form action="complain" method="post">
    <div><h3>Please Enter Your Complain Detail</h3></div>
<div class="form-group" align="center">
<select name="topic" required="required" style="height:px;width:600px" >
<option>Select your complaint topic</option>
<option>Child Labor</option>
<option>Child Abuse</option>
<option>Chain Snatching</option>
<option>Corruption</option>
<option>Domestic Violence</option>
<option>Extortion</option>
<option>Goods Stolen</option>
<option>Harrassment</option>
<option>Kidnapping</option>
<option>Mobile Theft</option>
<option>Murder</option>
<option>Rape</option>
<option>Roberry</option>
</select>
</div>&nbsp;
    <div class="form-group" align="center">
<input type="text" class="form-control" name="other" placeholder="IF ANY OTHER COMPLAIN"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
    <textarea name="description" placeholder="DESCRIPTION ABOUT COMPLAIN" required="" style="height:100px;width:600px"></textarea>
</div>&nbsp;
<div><h3>APPLICANT's DETAIL</h3></div>
 <div class="form-group" align="center">
<input type="text" class="form-control" name="name" placeholder="NAME" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="mobile" placeholder="PHONE/MOBILE Nos" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="email" class="form-control" name="email" placeholder="EMAIL" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
    <textarea name="address" placeholder="ADDRESS" required="" style="height:100px;width:600px"></textarea>
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="policestation" placeholder="NEAR POLICE STATION" required="" style="height:px;width:600px">
</div>&nbsp
<div class="form-group" align="center">
<select name="idproof" required="required" style="height:px;width:600px" >
<option>Select Id Proof</option>
<option>Adhar Card</option>
<option>Licence</option>
<option>Passport</option>
<option>Pan Card</option>
<option>Voter Card</option>
<option>Voter Card</option>
</select>
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="idnumber" placeholder="ID NUMBER" required="" style="height:px;width:600px">
</div>&nbsp
<div align="center"><h3>DETAIL AGAINST COMPALIN</h3></div>
<div class="form-group" align="center">
<input type="text" class="form-control" name="name" placeholder="NAME"  style="height:px;width:600px">
</div>&nbsp
<div class="form-group" align="center">
    <textarea name="address1" placeholder="FULL ADDRESS OF AGAINST COMPLAIN"  style="height:100px;width:600px"></textarea>
</div>&nbsp;
<div align="center">

<input type="submit"  value="Submit" >
<%
    String name=" ";
 name = (String)request.getAttribute("name"); 

%>
<h1><%=name%></h1>

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
