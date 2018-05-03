<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Change Password</title>
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
<span style="font-size: 50px;color: #eee"><b>Change Password</b></span>

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
<div class="input-group" align="center">
<input type="password" class="form-control" name="oldpwd" placeholder="ENTER YOUR OLD PASSWORD" style="height:px;width:600px">
</div>
<br>
<div class="input-group" align="center">
<input type="password" class="form-control" name="newpwd" placeholder="ENTER YOUR NEW PASSWORD" style="height:px;width:600px">
</div>
<br>
<div align="center">

<input type="submit" class="special" value="Submit" style="background-image:url(images/bg2.jpeg) "/>
<a href="index.jsp"><input type="button" class="special" value="< Back" /></a>

</div>
</form>
<%
String id=request.getParameter("userid");
String oldpass=request.getParameter("oldpwd");
String newpass=request.getParameter("newpwd");

        try
       {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///ccd","root","");
       String query  = "SELECT * FROM login WHERE password='"+oldpass+"' and id='"+id+"';";
     
        PreparedStatement pst = con.prepareStatement(query);
         pst.executeQuery();
         
          
           try
        {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1 = DriverManager.getConnection("jdbc:mysql:///ccd","root","");
       String query1  = "UPDATE login set password = '"+newpass+"' WHERE password = '"+oldpass+"';";
       
        PreparedStatement pst1 = con.prepareStatement(query1);
         int re= pst1.executeUpdate();
         if(re>0)
         {
             out.print("success");
          //JOptionPane.showMessageDialog(this,"update");
         }
         

       }
         catch(Exception e)
         {
             //JOptionPane.showMessageDialog(this,e);
         }

       }
        catch(Exception ex)
        {
            //JOptionPane.showMessageDialog(this,ex);
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