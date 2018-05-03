

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Header</title>
<link rel="icon" href="images/l3.png" sizes="50x50">
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
<li><a href="index.jsp">Home</a></li>
<li><a href="#"><span>Inbox</span></a>
<ul> <%-- hover --%>
<li><a href="suggestion1.jsp">Suggestion</a></li>
<li><a href="missing_person.jsp">Missing Person</a></li>
<li><a href="view.jsp">Wanted Person</a></li>
</ul>
    
</li>
<li><a href="missing_form.jsp">Missing Form</a></li>
<li><a href="wanted_form.jsp">Wanted Form</a></li>
<li><a href="suggestion.jsp">Suggestion Form</a></li>
<li><a href="#">Laws</a></li>
<li><a href="login.jsp">Log Out</a></li>
<li><a href="footer.jsp">About Us</a></li>
    
</ul>
</nav>

<!-- Scripts -->
<script src="assets/js1/jquery.min.js"></script>
<script src="assets/js1/browser.min.js"></script>
<script src="assets/js1/breakpoints.min.js"></script>
<script src="assets/js1/util.js"></script>
<script src="assets/js1/main.js"></script>

</body>
</html>