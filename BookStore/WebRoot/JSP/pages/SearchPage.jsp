<%@ page language="java" import="java.util.*,beans.*,dao.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	if(!DBC.isNullOrEmpty((String)request.getParameter("searchInput"))){//说明搜索页面输入了搜索内容
		response.sendRedirect(basePath+"servlet/SearchServlet?searchInput="+(String)request.getParameter("searchInput"));
	}	
%>
<%@ include file="../../index.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>SearchPage.jsp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarNav">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/BookStore/JSP/pages/MainPage.jsp"><span class="glyphicon glyphicon-book"></span></a>
		</div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li><a data-toggle="tab" href="/BookStore/JSP/pages/MainPage.jsp">最新上架</a></li>
	        <li><a data-toggle="tab" href="/BookStore/JSP/pages/MainPage.jsp">为你推荐</a></li>
	        <li><a data-toggle="tab" href="/BookStore/JSP/pages/MainPage.jsp">热卖图书</a></li>
	      </ul>
	      
	      <ul class="nav navbar-nav navbar-right">
	      <c:set var="isLogin" value="${sessionScope.user!=null}" scope="page">
	      </c:set>
	      	<%  UserBean user = (UserBean) session.getAttribute("user");
	      		String userName;
	      		if (user != null){
				userName = user.getuName();
				} else {
				userName = "请登录";
				}%>
	        <li><a href="${isLogin ? '/BookStore/JSP/user/UserCenterPage.jsp' : '/BookStore/JSP/user/LoginPage.jsp'}"><span class="glyphicon glyphicon-user"></span>您好!<%=userName %></a></li>
	        <li><a href="/BookStore/JSP/pages/CalculateCenterPage.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> 购物车</a></li>
	      </ul>
	    </div>
	  </div>	
    </nav>
	
		<div class="container-fluid" style="width: 100%; font-size: 1.2em;" align="center">
  	
  			<form class="form-inline" action="<%=basePath%>servlet/SearchServlet" method="POST">
  				<div class="form-group" style="width: 500px;">
  					<label for="bTitle">搜一搜: </label>
					<input style="width: 400px;" id="bTitle" name="bTitle" type="text" class="form-control" placeholder="输入书名">
				</div>
				<button id="searchButton"  type="submit" class="btn btn-lg">
					<span class="glyphicon glyphicon-search"></span>
				</button>
			</form>
		</div>
		
		
		<div class="col-sm-10">
    		<!-- show books --> 
    		<!--  MainPage_pageSize----代表页大小，分页显示中一页有几个数据项。 -->
    		<!--  MainPage_pageNum----代表页码，分页显示中的第几页的页码。 -->
    		<!--  MainPage_BooksCount----代表最近上架的图书数量。  -->
			<!-- this is example --> 
			<!--
			<div class="media">
				<div class="media-top">
					<img src="/BookStore/assets/books/book_3.jpg" class="media-object">
				</div>
				<div class="media-body">
    				<h3 class="media-heading">书名</h3>
    				<p>作者</p>
 			    </div>
			</div>
			-->
    		<c:set var="book_img_path" value="/BookStore/assets/books/book_3.jpg" scope="page">
    		</c:set>
    		<c:forEach items="${sessionScope.SearchPage_BookList}" var="book" varStatus="status">
    			<div class="col-sm-2 media">
					<div class="media-top">
						<img src="${pageScope.book_img_path}" class="media-object">
					</div>
					<div class="media-body">
	    				<h3 class="media-heading">${book.bTitle}</h3>
	    				<p>${book.bAuthor}</p>
	 			    </div>
				</div>
	    		<c:if test="${status.last}">
	        		<div class="clearfix"></div>
	    		</c:if>
	    		</c:forEach>
    		<c:set var="currentPage" value="${sessionScope.SearchPage_currentPage}" scope="page">
    		</c:set>
    		<c:set var="pageNum" value="${sessionScope.SearchPage_pageNum}" scope="page">
    		</c:set>
    		<ul class="pager">
    			<c:if test="${pageScope.currentPage > 1}">
        			<li class="previous"><a href="<%=basePath%>servlet/SearchServlet?pageNext=${currentPage - 1}">前一页</a></li>
    			</c:if>
				<c:if test="${pageScope.currentPage < pageScope.pageNum}">
        			<li class="next"><a href="<%=basePath%>servlet/SearchServlet?pageNext=${currentPage + 1}">后一页</a></td>
    			</c:if>
 			</ul>
 			</div>
		
		
	</body>
</html>
