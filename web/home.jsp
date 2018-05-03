<%-- 
    Document   : home
    Created on : 29 Jan, 2018, 12:59:46 PM
    Author     : manish
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
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
    <h1><p class="mac">WELCOME </h1><br>  

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