<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Complaints</title>
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
<div id="banner"  >
 
<section class="container">

<img src="images/ico.png"><br>
<span style="font-size: 50px;color: #eee"><b>Complaint Box</b></span>


</section>
</div>
</div>
<div class="wrapper style4">
<section class="container">
<table border="2"  width="200%" height="200%">
    <tr align="left" style="color: black">
<th width="5%">S.No</th> 


<th width="15%">Complain Type</th>
<th width="15%">Other Compalin</th>
<th width="15%">Name of Applicant</th>
<th width="10%">Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
<th width="10%">Near Police Station</th>
<th width="10%"> Againt Name &nbsp;</th>

<th width="15%">Complain:- Date // Time</th>
<th width="15%">Button</th>
<th width="10%">Button</th>
  
</tr>
<%
Connection con=null;
PreparedStatement ps=null;
Statement smt=null;
ResultSet rs=null;
int id=0;
String subject=""; 
int a=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");
ps = con.prepareStatement("select * from complaints ");
rs= ps.executeQuery();
}
catch(Exception e){}
rs=ps.executeQuery();
while(rs.next()){
a++;
String studid=rs.getString(13);

%>
<tr style="color: blue" >
     <td><%= a%>.)</td>
  
 <td><%= rs.getString(1)%>&nbsp;&nbsp;</td>
 <td><%= rs.getString(2)%>&nbsp;&nbsp;</td>
 <td>&nbsp;&nbsp;<%= rs.getString(4)%>&nbsp;&nbsp;</td>
 <td><%= rs.getString(7)%>&nbsp;&nbsp;</td>
 <td>&nbsp;&nbsp;<%=rs.getString(8)%>&nbsp;&nbsp;</td>
 <td>&nbsp;&nbsp;<%=rs.getString(11)%>&nbsp;&nbsp;</td>
 <td>&nbsp;&nbsp;<%=rs.getString(13)%>&nbsp;&nbsp;</td>
 
 <td> <a href ="deletecomplain.jsp?studid=<%=studid%>" onclick="return confirm('Are you sure you want to delete?')">Delete</a>
 </td>
 <td> <a href ="complaint.jsp?studid=<%=studid%>" onclick="return confirm('Are you sure you want to view?')">view</a>
 
 </td>
</tr>
 <%
  }
 con.close();
 %> 
            
</table>



</div>
</div>
</section>
</div>		
<!-- Footer -->
<%@include file="footer.jsp" %>
			
</body>
</html>



