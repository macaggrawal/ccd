<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Forgot Password</title>
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

<!-- Banner -->
<div id="banner">
 
<section class="container">

    <a href="index.jsp"><img src="images/ico.png"></a><br>
<span style="font-size: 50px;color: #eee"><b>Forgot Password</b></span>

</section>
</div>
</div>
<div class="wrapper style4">
<section class="container">
<form action="" method="post">
<div class="input-group" align="center">
<input type="text" class="form-control" name="userid" placeholder="ENTER YOUR USER-ID" style="height:px;width:600px">
</div>
<br>
<br>

<div align="center">


<input type="submit" class="special" value="Submit" />
<a href="index.jsp"><input type="button" class="special" value="< Back" /></a>
</div>
</form>
<%
String id=request.getParameter("userid");
try{
    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ccd","root","");
            String query="select * from login where id='"+id+"' ;";
            PreparedStatement pst=con.prepareStatement(query);
            ResultSet rs=pst.executeQuery();
           
        if (rs.next())
        {
            String pass=rs.getString(2); 
           out.print("<h2> User-Id :-"+id+"</h2>");
           out.print("<h2> Password :-"+pass+"</h2>");
        }
}
catch(Exception e)
{
    
}
%>
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