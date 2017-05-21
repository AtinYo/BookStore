<%@ page language="java" import="java.util.*,beans.*,dao.*"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	%>
<%@ include file="../../index.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>MainPage.jsp</title>
		<link rel="stylesheet" type="text/css" href="/BookStore/css/myStyle.css">
	</head>
	<%
		/*******JavaCode Here********/
		Boolean isInit = (Boolean) session.getAttribute("MainPage_isInit");
		if (isInit == null) {//说明没有被初始化,所以要发请求到MainServlet去
			session.setAttribute("MainPage_isInit", true);
			response.sendRedirect(basePath+"servlet/MainServlet");
		}
		/****************************/
	%>
	<body>
	<div class="bg"></div>
	<div class="jumbotron">
		<div class="container text-center">
			<h1>xx书城 欢迎你</h1>
			<p>推荐 & 分享 & 购买</p>
		</div>
	</div>
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
	        <li class="${sessionScope.MainPage_SelectNavBarID == 0 ? 'active' : ' '}"><a data-toggle="tab" href="<%=basePath%>servlet/MainServlet?SelectNavBarID=0">最新上架</a></li>
	        <li class="${sessionScope.MainPage_SelectNavBarID == 1 ? 'active' : ' '}"><a data-toggle="tab" href="<%=basePath%>servlet/MainServlet?SelectNavBarID=1">为您推荐</a></li>
	        <li class="${sessionScope.MainPage_SelectNavBarID == 2 ? 'active' : ' '}"><a data-toggle="tab" href="<%=basePath%>servlet/MainServlet?SelectNavBarID=2">热卖图书</a></li>
	      </ul>
	      
	      <ul class="nav navbar-nav navbar-right">
	      <c:set var="isLogin" value="${sessionScope.user!=null}" scope="page">
	      </c:set>
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
	   		
	        <li><a href="${isLogin ? '/BookStore/JSP/user/UserCenterPage.jsp' : '/BookStore/JSP/user/LoginPage.jsp'}"><span class="glyphicon glyphicon-user"></span>您好!<%=userName%></a></li>
	        <li><a href="/BookStore/JSP/pages/CalculateCenterPage.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> 购物车</a></li>
			<li>
				<div class="navbar-form navbar-left">
					<div class="form-group">
						<input id="searchInput" type="text" class="form-control" placeholder="搜索">
					</div>
					<button id="searchButton"  type="submit" class="btn btn-default" onclick="window.location.href='/BookStore/JSP/pages/SearchPage.jsp?searchInput='+document.getElementById('searchInput').value">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</li>
	      </ul>
	    </div>
	  </div>	
    </nav>	 
    
    <div class="container-fluid">
    	<div class="row content">
    		<div class="col-sm-2 sidenav">
    		<h4>书籍分类</h4>
    		<!--<c:url value='/MainServlet?method=getAllClassfication'/> 这里叫 getAllClassfication 去返回所有书籍分类，返回一个ClassficationList，里面有具体每个的category.cid和分类的名字category.cname-->
    		<!--说明一下，上面的bList和cList就是对应的书籍信息列表和分类信息列表，不需要在发请求去拿 -->
    		<ul class="nav nav-tabs nav-stacked">
	        	<c:forEach items="${sessionScope.MainPage_ClassficationList}" var="category">
					<li class="${sessionScope.MainPage_SelectCategoryID == category.cID ? 'active' : ' '}"><a href="<%=basePath%>servlet/MainServlet?SelectCategoryID=${category.cID}">${category.cName}</a></li>
				</c:forEach>
      		</ul><br>
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
    		<c:set var="book_img_path" value="/assets/books/book_3.jpg" scope="page">
    		</c:set>
    		<c:forEach items="${sessionScope.MainPage_BookList}" var="book" varStatus="status">
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
    		<c:set var="currentPage" value="${sessionScope.MainPage_currentPage}" scope="page">
    		</c:set>
    		<c:set var="pageNum" value="${sessionScope.MainPage_pageNum}" scope="page">
    		</c:set>
    		<ul class="pager">
    			<c:if test="${pageScope.currentPage > 1}">
        			<li class="previous"><a href="<%=basePath%>servlet/MainServlet?pageNext=${currentPage - 1}">前一页</a></li>
    			</c:if>
				<c:if test="${pageScope.currentPage < pageScope.pageNum}">
        			<li class="next"><a href="<%=basePath%>servlet/MainServlet?pageNext=${currentPage + 1}">后一页</a></td>
    			</c:if>
 			</ul>
 			</div>
    	</div>
    </div>
    
	</body>
</html>
