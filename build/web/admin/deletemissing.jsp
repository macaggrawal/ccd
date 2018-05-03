

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    Connection con = null;
    Statement smt = null;
    ResultSet rs = null;
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql:///ccd", "root", "");
    smt = con.createStatement(); 
                
    String studid="";
                 if(request.getParameter("studid")!=null){
                     studid=request.getParameter("studid");
                     
                 
                 
    
        
    String qry="delete from missing where rtime='"+studid+"' ";
    if(smt.executeUpdate(qry)>0)
    {
    response.sendRedirect("missing.jsp?i=Deleted Succesfully");
    }
    else
    {
    response.sendRedirect("missing.jsp?i=Unable to Delete");
    }
                     
                     
    }
        
    } 
    catch (Exception e)
    {
    out.println(e.getMessage());
    }

        %>
    </body>
</html>
