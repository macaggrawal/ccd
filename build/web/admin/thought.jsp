<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Thought</title>
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
<span style="font-size: 50px;color: #eee"><b>Thought</b></span>

</section>
</div>
</div>
<div class="wrapper style4">
<section class="container">


<form action="#" method="post">

<div class="input-group" align="center">
    <textarea class="form-control" name="thought" placeholder="THOUGHT" required="" style="height:150px;width:600px"></textarea>
</div><br>
<div align="center">
<input type="submit"  value="Submit">
<input type="reset" value="Reset" />
</div>
<%
String thought=request.getParameter("thought");
int id=1;

        try
       {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///ccd","root","");
       String query  = "SELECT * FROM thought WHERE id='"+id+"' ;";
     
        PreparedStatement pst = con.prepareStatement(query);
         ResultSet rs=pst.executeQuery();
         if(rs.next())
         {
             rs.getString(1);
         }
        
          
           try
        {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1 = DriverManager.getConnection("jdbc:mysql:///ccd","root","");
       String query1  = "UPDATE thought set thought = '"+thought+"' WHERE id = '"+id+"';";
       
        PreparedStatement pst1 = con.prepareStatement(query1);
         int re= pst1.executeUpdate();
         if(re>0)
         {
             out.print("success");
             
         }
         

       }
         catch(Exception e)
         {
             
         }

       }
        catch(Exception ex)
        {
            
        }
%>

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