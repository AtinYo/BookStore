<%@ page language="java" import="java.util.*,beans.*,dao.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ include file="../index.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>SearchPage.jsp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<%
		session.setAttribute("SearchPage_pageNum", 1);
		session.setAttribute("SearchPage_pageSize", 3);
		List<BookBean> bList = (List<BookBean>) session
				.getAttribute("SearchPage_BookList");
		Integer BooksCount = (Integer) session
				.getAttribute("SearchPage_BooksCount");
	%>
	<body>
		<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarNav">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/BookStore/JSP/MainPage.jsp"><span class="glyphicon glyphicon-book"></span></a>
		</div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li><a data-toggle="tab" href="/BookStore/JSP/MainPage.jsp">为你推荐</a></li>
	        <li><a data-toggle="tab" href="/BookStore/JSP/MainPage.jsp">热卖图书</a></li>
	        <li><a data-toggle="tab" href="/BookStore/JSP/MainPage.jsp">热卖新品</a></li>
	      </ul>
	      
	      <ul class="nav navbar-nav navbar-right">
	      	<%  UserBean user = (UserBean) session.getAttribute("user");
	      		String userName;
	      	
	      		if (user != null){
	      		user.getuID();
				userName = user.getuName();
				user.getuAccount();
				user.getuPassword();
				user.getuType();
				} else {
				userName = "请登录";
				}%>
	   		
	        <li><a href="/BookStore/JSP/LoginPage.jsp"><span class="glyphicon glyphicon-user"></span>您好! ${userName}</a></li>
	        <li><a href="/BookStore/JSP/CalculateCenterPage.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> 购物车</a></li>
	      </ul>
	    </div>
	  </div>	
    </nav>
	
		<div class="container-fluid" style="width: 100%; font-size: 1.2em;" align="center">
  	
  			<form class="form-inline" action="servlet/SearchServlet" method="POST">
  				<div class="form-group" style="width: 500px;">
  					<label for="bTitle">搜一搜: </label>
					<input style="width: 400px;" id="bTitle" name="bTitle" type="text" class="form-control" placeholder="输入书名">
				</div>
				<button id="searchButton"  type="submit" class="btn btn-lg">
					<span class="glyphicon glyphicon-search"></span>
				</button>
			</form>
		</div>
		Show Books:
		<br>
		<%
			if (bList != null) {
		%>
		<%
			for (int i = 0; i < bList.size(); i++) {
		%>
		<%=bList.get(i).getbTitle()%>
		<br>
		<%
			}
			}
		%>
	</body>
</html>
