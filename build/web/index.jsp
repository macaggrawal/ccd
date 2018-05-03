<%-- 
    Document   : home
    Created on : 15 Jan, 2018, 12:53:48 PM
    Author     : manish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>

<html>
<head>
<title>Home</title>
<link rel="icon" href="images/l3.png" sizes="24x50"> <%-- for title icon --%>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
<%@include file="header.html"  %>     
<!-- Main -->
<br><br> 
<div>
<ul class="actions">
    
<li><a href="loginn.jsp"><input type="button" class="alert-success" value="LOGIN" autofocus="" style="background-image:url(images/bg1.jpeg) "/></a></li>
<li><a href="registration_form.jsp"><input type="button" class="alert-success" value="REGISTERATION" style="background-image:url(images/bg1.jpeg)" /></a></li>
<li><a href="online_complain.jsp"><input type="button" class="alert-success" value="COMPLAINT" style="background-image:url(images/bg1.jpeg)"/></a></li>
<li><a href="suggestion.jsp"><input type="button" class="alert-success" value="SUGGESTION" style="background-image:url(images/bg1.jpeg)"/></a></li>
<li><a href="missing_form.jsp"><input type="button" class="alert-success" value="MISSING" style="background-image:url(images/bg1.jpeg)"/></a></li>

<li><a href="view.jsp"><input type="button" class="alert-success" value="WANTED" style="background-image:url(images/bg1.jpeg)"/></a></li>
<li><a href="footer.jsp"><input type="button" class="alert-info " value="ABOUT US" style="background-image:url(images/bg1.jpeg)"/></a></li>
</ul>
</div>
<video autoplay loop muted playsinline src="images/banner.mp4" width="100%" height="70%"> </video>

<%@include file="footer.html"  %>
</body>
</html>