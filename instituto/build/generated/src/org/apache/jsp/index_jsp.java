package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    \n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css\" integrity=\"sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <title>Login</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"col-sm-10\" style=\"width: 600px; margin-left: 250px; margin-top: 50px;\">\n");
      out.write("              <div class=\"jumbotron\">\n");
      out.write("                  <div class=\"form-group\" style=\"margin-top: -50px;\">\n");
      out.write("                       \n");
      out.write("                      <h1 style=\"margin-left: 70px;\">\n");
      out.write("                          Inicio Sesión\n");
      out.write("                      </h1>\n");
      out.write("                  </div>\n");
      out.write("                  \n");
      out.write("                  <hr>\n");
      out.write("                  <form class=\"form-horizontal\" style=\"margin-left: 50px \">\n");
      out.write("                      <div class=\"form-group input-group\">\n");
      out.write("                          <span class=\"input-group-addon\">\n");
      out.write("                              <span class=\"glyphicon glyphicon-user\">            \n");
      out.write("                              </span>\n");
      out.write("                          </span>\n");
      out.write("                          <input type=\"email\" class=\"form-control\" name=\"email\"\n");
      out.write("                                 placeholder=\"E-mail\" required>\n");
      out.write("                      </div> \n");
      out.write("                      <div class=\"form-group input-group\">\n");
      out.write("                          <span class=\"input-group-addon\">\n");
      out.write("                              <span class=\"glyphicon glyphicon-lock\"></span>\n");
      out.write("                              \n");
      out.write("                          </span>\n");
      out.write("                          <input type=\"password\" class=\"form-control\" name=\"password\"\n");
      out.write("                                 placeholder=\"Contraseña\" required>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                          <label>\n");
      out.write("                              \n");
      out.write("                              <input type=\"checkbox\">\n");
      out.write("                              Recordar Usuario\n");
      out.write("                          </label>\n");
      out.write("                     \n");
      out.write("                          \n");
      out.write("                      </div> \n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                          <a href=\"inicio.jsp\"><span class=\"btn btn-primary\" style=\"width: 430px;\" >\n");
      out.write("                                  Iniciar Sesión</button>\n");
      out.write("                      </div>\n");
      out.write("                    \n");
      out.write("                          \n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                  </form>\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("  \n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
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
