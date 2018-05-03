<%-- 
    Document   : register1
    Created on : 18 Jan, 2018, 7:26:37 PM
    Author     : manish
--%>

<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Registration</title><link rel="icon" href="images/l3.png" sizes="50x50">
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
<h2>successfully registered</h2>
<%
String name = (String)request.getAttribute("name"); 
String adhar = (String)request.getAttribute("adhar");
String pwd = (String)request.getAttribute("pass");
%>
<table width="50%"><tr><th>
            Email</th> <td><%=name%></td></tr>
    <tr><th>Userid</th><td> <%=adhar%></td></tr>
    <tr><th>Password</th><td> <%=pwd%></td></tr>
</table>       
         
         
<%!
    
public static class SMTPAuthenticator extends Authenticator{
public PasswordAuthentication getPasswordAuthentication ()
{
return new PasswordAuthentication("consumercompalintdesk0095","9671930095");
}
}
%>
<%
int result=0;
String name1 = (String)request.getAttribute("name"); 
String adhar2 = (String)request.getAttribute("adhar");
String pwd3 = (String)request.getAttribute("pass");

String username="consumercomplaintdesk0095";
String password="9671930095";
String host="smtp.gmail.com";
int port=465;
String to=name1;
String from="consumercomplaintdesk0095";
String subject1="Your User Id & Password";
String text="User-Id is :-"+adhar2+ "        Password is :-"+pwd3;


Properties props=new Properties();

SMTPAuthenticator auth=new  SMTPAuthenticator();
Session ses=Session.getInstance(props, auth);
           
MimeMessage msg=new MimeMessage(ses);
msg.setContent(text,"text/html");
msg.setSubject(subject1);
msg.setFrom(new InternetAddress(from));
msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
             
             
try{
Transport transport=ses.getTransport("smtps");
transport.connect(host, port, username, password);
transport.sendMessage(msg, msg.getAllRecipients());
transport.close();
out.print("successs");
}
             
catch(Exception e){
out.println(e);
}
            
            

        
        
%>         
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
