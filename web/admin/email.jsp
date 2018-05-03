<!DOCTYPE HTML>

<html>
<head>
<title>Send Email</title>
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
<div id="banner" >
 
<section class="container">

<img src="images/ico.png"><br>
<span style="font-size: 50px;color: #eee"><b>Send Email</b></span>

</section>
</div>
</div>
<div class="wrapper style4">
<section class="container">


<form action="index.jsp" method="post">
<div class="input-group" align="center">
    <input type="text" class="form-control" name="to" placeholder="TO" required="" style="height:px;width:600px">
</div><br>
<div class="input-group" align="center">
    <input type="text" class="form-control" name="subject" placeholder="SUBJECT" required="" style="height:px;width:600px">
</div><br>
<div class="input-group" align="center">
    <textarea class="form-control" name="message" placeholder="MESSAGE" required="" style="height:150px;width:600px"></textarea>
</div><br>
<div align="center">
<input type="submit"  value="SEND">
<input type="reset" value="Reset" />
</div>
</form>
    </div>
</div>
</section>
</div>		

</section>
</div>
</div>
		


<!-- Footer -->
<%@include file="footer.jsp" %>
			
</body>
</html>