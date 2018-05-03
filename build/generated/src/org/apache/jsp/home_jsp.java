package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.html");
    _jspx_dependants.add("/footer.html");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Home</title>\n");
      out.write("<link rel=\"icon\" href=\"images/icon1.png\" sizes=\"24x50\"> ");
      out.write("\n");
      out.write("<script src=\"assets/js/jquery.min.js\"></script>\n");
      out.write("<script src=\"assets/js/skel.min.js\"></script>\n");
      out.write("<script src=\"assets/js/util.js\"></script>\n");
      out.write("<script src=\"assets/js/main.js\"></script>\n");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>header</title>\n");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/main.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- Header -->\n");
      out.write("<header id=\"header\">\n");
      out.write("<div class=\"inner\">\n");
      out.write("<div class=\"content\">\n");
      out.write("<h1>Consumer Complaint Desk</h1>\n");
      out.write("<h2><br/></h2>\n");
      out.write("<a href=\"\" class=\"button big alt\"><span>Start</span></a>\n");
      out.write("</div>\n");
      out.write("<a href=\"\" class=\"button hidden\"><span>Start</span></a>\n");
      out.write("</div>\n");
      out.write("</header>\n");
      out.write("<script src=\"assets/js/jquery.min.js\"></script>\n");
      out.write("<script src=\"assets/js/skel.min.js\"></script>\n");
      out.write("<script src=\"assets/js/util.js\"></script>\n");
      out.write("<script src=\"assets/js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("     \n");
      out.write("<!-- Main -->\n");
      out.write("<br><br>\n");
      out.write("<div>\n");
      out.write("<ul class=\"actions\">\n");
      out.write("<li><a href=\"login.jsp\"><input type=\"button\" class=\"alert-success\" value=\"LOGIN\" /></a></li>\n");
      out.write("<li><a href=\"registration_form.jsp\"><input type=\"button\" class=\"alert-success\" value=\"REGISTERATION\" /></a></li>\n");
      out.write("<li><a href=\"online_complain.jsp\"><input type=\"button\" class=\"alert-success\" value=\"COMPLAIN\" /></a></li>\n");
      out.write("<li><a href=\"suggestion.jsp\"><input type=\"button\" class=\"alert-success\" value=\"SUGGESTION\" /></a></li>\n");
      out.write("<li><a href=\"\"><input type=\"button\" class=\"alert-info \" value=\"ABOUT US\" /></a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("<video autoplay loop muted playsinline src=\"images/banner.mp4\" width=\"100%\" height=\"70%\"> </video>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>footer</title>\n");
      out.write("<meta charset=\"utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/main.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- Footer -->\n");
      out.write("<footer id=\"footer\">\n");
      out.write("<a href=\"#\" class=\"info fa fa-info-circle\"><span>About</span></a>\n");
      out.write("<div class=\"inner\">\n");
      out.write("<div class=\"content\">\n");
      out.write("<h3>Vestibulum </h3>\n");
      out.write("<p>por feugiat nulla.</p>\n");
      out.write("</div>\n");
      out.write("<div class=\"copyright\">\n");
      out.write("<h3>Follow me</h3>\n");
      out.write("<ul class=\"icons\">\n");
      out.write("<li><a href=\"#\" class=\"icon fa-twitter\"><span class=\"label\">Twitter</span></a></li>\n");
      out.write("<li><a href=\"#\" class=\"icon fa-facebook\"><span class=\"label\">Facebook</span></a></li>\n");
      out.write("<li><a href=\"#\" class=\"icon fa-instagram\"><span class=\"label\">Instagram</span></a></li>\n");
      out.write("<li><a href=\"#\" class=\"icon fa-dribbble\"><span class=\"label\">Dribbble</span></a></li>\n");
      out.write("</ul>\n");
      out.write("&copy; Untitled. Design: \n");
      out.write("<a href=\"#\">TEMPLATED</a>\n");
      out.write(". Images: <a href=\"#\">Unsplash</a>.\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</footer>\n");
      out.write("<script src=\"assets/js/jquery.min.js\"></script>\n");
      out.write("<script src=\"assets/js/skel.min.js\"></script>\n");
      out.write("<script src=\"assets/js/util.js\"></script>\n");
      out.write("<script src=\"assets/js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
