package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class wanted_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<table style=\"width:75%;\" border=\"1\" bordercolor=\"#F2E6FF\" cellspacing=\"0\" cellpadding=\"15\" align=\"center\">\n");
      out.write("<caption><h2>A/c No : ");
      out.print();
      out.write("</h2></caption>\n");
      out.write("<tr>\n");
      out.write("<th>Date/Time</th><th>Description</th><th>Deposit</th><th>Withdraw</th></tr>\n");

String dep_bal="",with_bal="";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection tr_con=DriverManager.getConnection("jdbc:mysql:///ccd","root","");
PreparedStatement ps = tr_con.prepareStatement("select * from wanted order by id desc limit 0,10");
ResultSet rs = ps.executeQuery();
while (rs.next()) {
//Statement tr_stmt=tr_con.createStatement();
//ResultSet tr_rs=tr_stmt.executeQuery("select * from wanted order by id desc limit 0,10");
//while(tr_rs.next()){
//if(tr_rs.getDouble("deposit")>0.0)
//dep_bal=String.valueOf(tr_rs.getDouble("deposit"));
//else dep_bal="";
//if(tr_rs.getDouble("withdraw")>0.0)
//with_bal=String.valueOf(tr_rs.getDouble("withdraw"));
//else with_bal="";

      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(rs.getString("name"));
      out.write(" / ");
      out.print(rs.getString("age"));
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("gender"));
      out.write("</td>\n");
      out.write("<td>");
      out.print(dep_bal);
      out.write("</td>\n");
      out.write("<td>");
      out.print(with_bal);
      out.write("</td>\n");
      out.write("</tr>\n");
 }
}
catch(Exception e){
//out.print(e);
}	

      out.write("\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
