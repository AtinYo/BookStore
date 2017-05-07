<%@ page language="java" import="java.util.*,beans.*,dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>MainPage.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
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
   %>
  <body>
    Show Books: <br>
    <%if(bList!=null){ %>
    <%for(int i=0;i<bList.size();i++){ %>
    <%=bList.get(i).getbID() %>
    <br>
    <%} }%>
    
    Show user:<br>
    <%UserBean user=(UserBean)session.getAttribute("user"); %>
    <%if(user!=null){ %>
    <%=user.getuID() %>
    <%=user.getuName() %>
    <%=user.getuAccount() %>
    <%=user.getuPassword() %>
    <%=user.getuType() %>
    <%} %>
    <br>
    isUpdate=
    <%=(Boolean)session.getAttribute("isUpdate") %>
    <br>
    Show Classfication:<br>
    <%if(cList!=null){ %>
    <%for(int i=0;i<cList.size();i++){ %>
    <%=cList.get(i).getcName() %>
    <%} %>
    <%} %>
    <%="书籍数量="+session.getAttribute("MainPage_BooksCount") %>
  </body>
</html>
