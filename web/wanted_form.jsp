<%-- 
    Document   : wanted_form
    Created on : 25 Jan, 2018, 12:55:02 PM
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Wanted Form</title>
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
<h2>WANTED FORM</h2><br>
<form action="wantedServlet" method="post" enctype="multipart/form-data">
<div class="input-group" align="center">
<div class="form-group" align="center">
<input type="text" class="form-control" name="name" placeholder="NAME" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
    <select name="gender" required="" style="height:px;width:600px">
        <option>Select Gender</option>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
    </select>
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="homeaddress" placeholder="HOME_ADDRESS" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="city" placeholder="CITY" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="distic" placeholder="DISTIC" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="pincode" placeholder="PINCODE" required=""  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="state" placeholder="STATE" required="" style="height:px;width:600px">
</div>&nbsp;

<div class="form-group" align="center">
<input type="text" class="form-control" name="height" placeholder="HEIGHT" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="age" placeholder="AGE" required="" style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="eyescolor" placeholder="EYES COLOR" required="" style="height:px;width:600px">
</div>&nbsp;

<div class="form-group" align="center">
    <input type="file" class="form-control" name="image" required="" style="height:px;width:370px"><span>Choose Image Of Wanted Person </span>
</div>&nbsp;
<div align="center">
<input type="submit" class="special" value="Submit" />
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
