package org.apache.jsp.JSP.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.util.*;

public final class RegisterPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/JSP/user/../../index.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<link\r\n");
      out.write("\t\t\thref=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\"\r\n");
      out.write("\t\t\trel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\t\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t\t<meta http-equiv=\"expires\" content=\"0\">\r\n");
      out.write("\t\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<script src=\"/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\t\t<title>Register.jsp</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<div class=\"container-fluid\" style=\"width: 100%; font-size: 1.2em;\">\r\n");
      out.write("\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t<div class=\"panel-body\" align=\"center\">\r\n");
      out.write("\t\t\t\t<div class=\"container \" style=\"margin-top: 5%; margin-bottom: 5%;\">\r\n");
      out.write("\t\t\t\t\t<div class=\"panel panel-default\" style=\"max-width: 55%;\" align=\"left\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-heading form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<b><font color=\"black\">创建账户</font></b>                    \r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t\t\t\t\t\t                       \r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"");
      out.print(basePath);
      out.write("servlet/RegisterServlet\" method=\"post\" name=\"ReForm\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("                                    <label for=\"userAccount\" class=\"control-label\" >账号 </label>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"userAccount\" id=\"userAccount\"\r\n");
      out.write("                                           placeholder=\"请输入您的账号\" required=\"required\" />            \r\n");
      out.write("                                </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"userName\" class=\"control-label\" >昵称 </label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"userName\" id=\"userName\"\r\n");
      out.write("                                           placeholder=\"请输入您的昵称\" required=\"required\" />            \r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"userPassword\" class=\"control-label\">密码 </label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input pattern=\".{6,}\" type=\"password\" class=\"form-control\" name=\"userPassword\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tid=\"userPassword\" placeholder=\"请输入至少六位字母长度密码\" required=\"required\" title=\"请输入至少六位字母长度密码\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-large btn btn-warning btn-lg btn-block\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<b>注册</b>\r\n");
      out.write("\t\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t                       \r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t       \r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t");

			Boolean isSuccessful = (Boolean) session
					.getAttribute("isSuccessful");
		
      out.write("\r\n");
      out.write("\t\t");

			if (isSuccessful != null) {
		
      out.write("\r\n");
      out.write("\t\t");

			if (isSuccessful) {
		
      out.write("\r\n");
      out.write("\t\t");

			out.write("注册成功");
				} else {
		
      out.write("\r\n");
      out.write("\t\t");

			out.write("注册失败");
				}
		
      out.write("\r\n");
      out.write("\t\t");

			}
		
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
