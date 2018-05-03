package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Wanted</title>\n");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css1/main.css\" />\n");
      out.write("</head>\n");
      out.write("<body class=\"is-preload\">\n");
      out.write("<!-- Header -->\n");
      out.write("<header id=\"header\">\n");
      out.write("    <a class=\"logo\" href=\"home.jsp\"><p style=\"font-family: cursive;font-size: 40px\">Consumer Complaint Desk</p></a>\n");
      out.write("<nav>\n");
      out.write("<a href=\"#menu\">Menu</a>\n");
      out.write("</nav>\n");
      out.write("</header>\n");
      out.write("<!-- Nav -->\n");
      out.write("<nav id=\"menu\">\n");
      out.write("<ul class=\"links\">\n");
      out.write("    <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("    <li><a href=\"#\">Laws</a></li>\n");
      out.write("    <li><a href=\"#\">About Us</a></li>\n");
      out.write("    <li><a href=\"registration_form.jsp\">Sign-Up</a></li>\n");
      out.write("</ul>\n");
      out.write("</nav>\n");
      out.write("<!-- Highlights -->\n");
      out.write("<section class=\"wrapper\">\n");
      out.write("<div class=\"inner\">\n");
      out.write("<header class=\"special\">\n");
      out.write("<h1>WANTED</h1><br>\n");

int s_no=0;

String name="manish";
String sex="";
String address="";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");

PreparedStatement ps = con.prepareStatement("select * from wanted where name='"+name+"';");
ResultSet rs = ps.executeQuery();
while (rs.next()) {
s_no = rs.getInt(1);
name=rs.getString(3);
sex=rs.getString(4);
address=rs.getString(5);
}
}
catch(Exception e)
{}


      out.write("\n");
      out.write("                            \n");
      out.write("<div><img  height=\"400\" width=\"500\" src=\"show?sno=");
      out.print(s_no);
      out.write("\"></img></div>\n");
      out.write("<div><table>\n");
      out.write("    <tr>\n");
      out.write("        <td class=\"b\">Name</td><td>");
      out.print(name);
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td class=\"b\">Sex</td><td>");
      out.print(sex);
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td class=\"b\">Address</td><td>");
      out.print(address);
      out.write("</td>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("<!-- CTA -->\n");
      out.write("<section id=\"cta\" class=\"wrapper\">\n");
      out.write("<div class=\"inner\">\n");
      out.write("<h2>C</h2>\n");
      out.write("<p>Na.</p>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("<!-- Testimonials -->\n");
      out.write("<section class=\"wrapper\">\n");
      out.write("<div class=\"inner\">\n");
      out.write("<header class=\"special\">\n");
      out.write("<h2>Fm</h2>\n");
      out.write("<p>Inr.</p>\n");
      out.write("</header>\n");
      out.write("<div class=\"testimonials\">\n");
      out.write("<section>\n");
      out.write("<div class=\"content\">\n");
      out.write("<blockquote>\n");
      out.write("<p>Nus.</p>\n");
      out.write("</blockquote>\n");
      out.write("<div class=\"author\">\n");
      out.write("<div class=\"image\">\n");
      out.write("<img src=\"images/pic01.jpg\" alt=\"\" />\n");
      out.write("</div>\n");
      out.write("<p class=\"credit\">- <strong>Jane Doe</strong> <span>CEO - ABC Inc.</span></p>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("<section>\n");
      out.write("<div class=\"content\">\n");
      out.write("<blockquote>\n");
      out.write("<p>Nus.</p>\n");
      out.write("</blockquote>\n");
      out.write("<div class=\"author\">\n");
      out.write("<div class=\"image\">\n");
      out.write("<img src=\"images/pic03.jpg\" alt=\"\" />\n");
      out.write("</div>\n");
      out.write("<p class=\"credit\">- <strong>John Doe</strong> <span>CEO - ABC Inc.</span></p>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("<section>\n");
      out.write("<div class=\"content\">\n");
      out.write("<blockquote>\n");
      out.write("<p>Ns.</p>\n");
      out.write("</blockquote>\n");
      out.write("<div class=\"author\">\n");
      out.write("<div class=\"image\">\n");
      out.write("<img src=\"images/pic02.jpg\" alt=\"\" />\n");
      out.write("</div>\n");
      out.write("<p class=\"credit\">- <strong>Janet Smith</strong> <span>CEO - ABC Inc.</span></p>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</section>\n");
      out.write("<!-- Footer -->\n");
      out.write("<footer id=\"footer\">\n");
      out.write("<div class=\"inner\">\n");
      out.write("<div class=\"content\">\n");
      out.write("<section>\n");
      out.write("<h3>Accumsan montes viverra</h3>\n");
      out.write("<p>Nda.</p>\n");
      out.write("</section>\n");
      out.write("<section>\n");
      out.write("<h4>Sem turpis amet semper</h4>\n");
      out.write("<ul class=\"alt\">\n");
      out.write("<li><a href=\"#\">Dolor pulvinar sed etiam.</a></li>\n");
      out.write("<li><a href=\"#\">Etiam vel lorem sed amet.</a></li>\n");
      out.write("<li><a href=\"#\">Felis enim feugiat viverra.</a></li>\n");
      out.write("<li><a href=\"#\">Dolor pulvinar magna etiam.</a></li>\n");
      out.write("</ul>\n");
      out.write("</section>\n");
      out.write("<section>\n");
      out.write("<h4>Magna sed ipsum</h4>\n");
      out.write("<ul class=\"plain\">\n");
      out.write("<li><a href=\"#\"><i class=\"icon fa-twitter\">&nbsp;</i>Twitter</a></li>\n");
      out.write("<li><a href=\"#\"><i class=\"icon fa-facebook\">&nbsp;</i>Facebook</a></li>\n");
      out.write("<li><a href=\"#\"><i class=\"icon fa-instagram\">&nbsp;</i>Instagram</a></li>\n");
      out.write("<li><a href=\"#\"><i class=\"icon fa-github\">&nbsp;</i>Github</a></li>\n");
      out.write("</ul>\n");
      out.write("</section>\n");
      out.write("</div>\n");
      out.write("<div class=\"copyright\">\n");
      out.write("&copy; Untitled. Photos <a href=\"https://unsplash.co\">Unsplash</a>, Video <a href=\"https://coverr.co\">Coverr</a>.\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</footer>\n");
      out.write("<!-- Scripts -->\n");
      out.write("<script src=\"assets/js1/jquery.min.js\"></script>\n");
      out.write("<script src=\"assets/js1/browser.min.js\"></script>\n");
      out.write("<script src=\"assets/js1/breakpoints.min.js\"></script>\n");
      out.write("<script src=\"assets/js1/util.js\"></script>\n");
      out.write("<script src=\"assets/js1/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
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
