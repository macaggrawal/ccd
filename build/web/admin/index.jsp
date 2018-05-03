<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Admin Login</title>
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

<img src="images/ico.png"><br>
<span style="font-size: 50px;color: #eee"><b>Admin Login</b></span>

</section>
</div>
</div>
<div class="wrapper style4">
<section class="container">
<form action="index.jsp" method="post">
<div class="input-group" align="center">
    <input type="text" class="form-control" name="userid" placeholder="USER-ID" required="" style="height:px;width:850px">
</div><br>
<div class="input-group" align="center">
<input id="password" type="password" class="form-control" name="password" required="" placeholder="PASSWORD" style="height:px;width:850px">
</div> <br> 
<div align="center">
<input type="submit"  value="Submit"/>
<input type="reset" value="Reset" />
<a href="forgotpassword.jsp"><input type="button"  value="Forgot Password" /></a>
<a href="changepassword.jsp"><input type="button"  value="Change Password" /></a>
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

<%
             String id=request.getParameter("userid");
             String ppassword=request.getParameter("password");
             if(id!=null && ppassword!=null)
   try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ccd","root","");
            String query="select * from login where id='"+id+"' and password='"+ppassword+"';";
            PreparedStatement pst=con.prepareStatement(query);
            ResultSet rs=pst.executeQuery();
            
        if(rs.next())
        {
           response.sendRedirect("admin_home.jsp");
        }
         else
        {
            out.print("<script>alert('invalid username or password')</script>");
        }

        }
        catch(Exception e)
        {
            out.print(e);
            
        }

    %>