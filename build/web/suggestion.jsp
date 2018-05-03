<%-- 
    Document   : suggestion
    Created on : 24 Jan, 2018, 3:03:00 PM
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Suggestion</title>
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
<h2>SUGGESTION</h2><br>
<form action="suggestion" method="post">
<div class="input-group" align="center">
<div class="form-group" align="center">
<input type="text" class="form-control" name="name" placeholder="NAME"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="mobile" placeholder="PHONE/MOBILE NO."  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="email" class="form-control" name="email" placeholder="EMAIL"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="city" placeholder="CITY"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="address" placeholder="ADDRESS"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="state" placeholder="STATE"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
<input type="text" class="form-control" name="subject" placeholder="SUGGESTION SUBJECT"  style="height:px;width:600px">
</div>&nbsp;
<div class="form-group" align="center">
    <textarea name="suggestion" placeholder="SUGGESTION DETAIL" required="" style="height:100px;width:600px"></textarea>
</div>&nbsp;
<div align="center">
<input type="submit" class="special" value="Submit" />
</div>
</form>
</div>
</header>
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
