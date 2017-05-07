package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import beans.*;
import dao.*;

public final class MainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>MainPage.jsp</title>\r\n");
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

  /*******JavaCode Here********/
  //下面是页面怎么去与MainServlet交互，仅仅是例子
  List<BookBean> bList=null;
  List<ClassficationBean> cList=null;
  Boolean isInit=(Boolean)session.getAttribute("MainPage_isInit");
  if(isInit==null||isInit==false){//说明没有被初始化,所以要发请求到MainServlet去
  session.setAttribute("MainPage_isInit",true);
  session.setAttribute("MainPage_pageNum",1);
  session.setAttribute("MainPage_pageSize",2);
  response.sendRedirect("servlet/MainServlet");
  }
  else{
  //走到这里说明初始化
  int pageNum=(Integer)session.getAttribute("MainPage_pageNum");
  int pageSize=(Integer)session.getAttribute("MainPage_pageSize");
  bList=(List<BookBean>)session.getAttribute("MainPage_BookList");
  cList=(List<ClassficationBean>)session.getAttribute("MainPage_ClassficationList");
  }
  
  /****************************/
   
      out.write("\r\n");
      out.write("  <body>\r\n");
      out.write("    Show Books: <br>\r\n");
      out.write("    ");
if(bList!=null){ 
      out.write("\r\n");
      out.write("    ");
for(int i=0;i<bList.size();i++){ 
      out.write("\r\n");
      out.write("    ");
      out.print(bList.get(i).getbID() );
      out.write("\r\n");
      out.write("    <br>\r\n");
      out.write("    ");
} }
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    Show user:<br>\r\n");
      out.write("    ");
UserBean user=(UserBean)session.getAttribute("user"); 
      out.write("\r\n");
      out.write("    ");
if(user!=null){ 
      out.write("\r\n");
      out.write("    ");
      out.print(user.getuID() );
      out.write("\r\n");
      out.write("    ");
      out.print(user.getuName() );
      out.write("\r\n");
      out.write("    ");
      out.print(user.getuAccount() );
      out.write("\r\n");
      out.write("    ");
      out.print(user.getuPassword() );
      out.write("\r\n");
      out.write("    ");
      out.print(user.getuType() );
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("    <br>\r\n");
      out.write("    isUpdate=\r\n");
      out.write("    ");
      out.print((Boolean)session.getAttribute("isUpdate") );
      out.write("\r\n");
      out.write("    <br>\r\n");
      out.write("    Show Classfication:<br>\r\n");
      out.write("    ");
if(cList!=null){ 
      out.write("\r\n");
      out.write("    ");
for(int i=0;i<cList.size();i++){ 
      out.write("\r\n");
      out.write("    ");
      out.print(cList.get(i).getcName() );
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("    ");
} 
      out.write("\r\n");
      out.write("    ");
      out.print("书籍数量="+session.getAttribute("MainPage_pageMaxNum") );
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
