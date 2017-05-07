package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import beans.*;
import dao.*;

public final class UserOrderPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

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
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>UserOrderPage.jsp</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<!--\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("\t-->\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  ");

  Boolean isInit=(Boolean)session.getAttribute("UserOrderPage_isInit");
  List<OrderBean> oList=null;
  if(isInit==null||isInit==false){//说明没有被初始化,所以要发请求到MainServlet去
  session.setAttribute("UserOrderPage_isInit",true);
  session.setAttribute("UserOrderPage_pageNum",1);
  session.setAttribute("UserOrderPage_pageSize",2);
  session.setAttribute("UserOrderPage_UserID",3);
  response.sendRedirect("servlet/UserOrderServlet");
  }
  else{
  //走到这里说明初始化
  int pageNum=(Integer)session.getAttribute("UserOrderPage_pageNum");
  int pageSize=(Integer)session.getAttribute("UserOrderPage_pageSize");
  oList=(List<OrderBean>)session.getAttribute("UserOrderPage_OrderList");
  }
   
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("  Show Orders:<br>\r\n");
      out.write("    ");
if(oList!=null){ 
      out.write("\r\n");
      out.write("    ");
for(int i=0;i<oList.size();i++){ 
      out.write("\r\n");
      out.write("    ");
      out.print(oList.get(i).getoID()+"-" );
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("    ");
      out.print("   <br>最多"+session.getAttribute("UserOrderPage_pageMaxNum")+"个" );
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("  <br>  \r\n");
      out.write("  Show Books:<br>\r\n");
      out.write("  ");
List<BookBean> blist=(List<BookBean>)session.getAttribute("blist"); 
      out.write("\r\n");
      out.write("    ");
if(blist!=null){ 
      out.write("\r\n");
      out.write("    ");
for(int i=0;i<blist.size();i++){ 
      out.write("\r\n");
      out.write("    ");
      out.print(blist.get(i).getbTitle());
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("  </body>\r\n");
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
