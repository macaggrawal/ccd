<%-- 
    Document   : missing_form
    Created on : 25 Jan, 2018, 12:38:26 PM
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Missing Form</title>
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
<a href="missing_person.jsp"><input type="button" class="alert-success" value="Click To View Missing Person" style="background-image:url(images/bg1.jpeg)"/></a></li>
<br><br>
<h2>MISSING FORM</h2><br>

<form action="missing" method="post" enctype="multipart/form-data">
<div class="input-group" align="center">
<div class="form-group" align="center">
<input type="text" class="form-control" name="name" placeholder="NAME"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
    <select name="gender" style="height:px;width:600px">
        <option>Select Gender</option>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
    </select>
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="city" placeholder="CITY"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="distic" placeholder="DISTIC"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="pincode" placeholder="PINCODE"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="homeaddress" placeholder="HOME_ADDRESS"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="state" placeholder="STATE"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="gurdian" placeholder="GUARDIAN_NAME"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="mobile" placeholder="GUARDIAN_MOBILE_NUMBER"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="height" placeholder="HEIGHT"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="age" placeholder="AGE"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="eyescolor" placeholder="EYES COLOR"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="dress" placeholder="DRESS"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="date" placeholder="DATE OF MISSING (DD/MM/YY)"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
    <input type="file" class="form-control" name="image" style="height:px;width:370px"><span>Choose Image Of Misssing Person </span>
</div>&nbsp;
<div align="center">
<input type="submit" class="special" value="Submit" />
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