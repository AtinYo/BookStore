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
		<title>MainPage.jsp</title>
		<link rel="stylesheet" type="text/css" href="/BookStore/css/myStyle.css">
	</head>
	<%
		/*******JavaCode Here********/
		//下面是页面怎么去与MainServlet交互，仅仅是例子
		List<BookBean> bList = null;
		List<ClassficationBean> cList = null;
		Boolean isInit = (Boolean) session.getAttribute("MainPage_isInit");
		if (isInit == null || isInit == false) {//说明没有被初始化,所以要发请求到MainServlet去
			session.setAttribute("MainPage_isInit", true);
			session.setAttribute("MainPage_pageNum", 1);
			session.setAttribute("MainPage_pageSize", 2);
			response.sendRedirect("servlet/MainServlet");
		} else {
			//走到这里说明初始化
			int pageNum = (Integer) session
					.getAttribute("MainPage_pageNum");
			int pageSize = (Integer) session
					.getAttribute("MainPage_pageSize");
			bList = (List<BookBean>) session
					.getAttribute("MainPage_BookList");
			cList = (List<ClassficationBean>) session
					.getAttribute("MainPage_ClassficationList");
		}

		/****************************/
	%>
	isUpdate=
		<%=(Boolean) session.getAttribute("isUpdate")%>
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
		<a class="navbar-brand" href="/BookStore/JSP/MainPage.jsp"><span class="glyphicon glyphicon-book"></span></a>
		</div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="active"><a data-toggle="tab" href="/BookStore/JSP/MainPage.jsp">为你推荐</a></li>
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
			<li>
				<div class="navbar-form navbar-left">
					<div class="form-group">
						<input id="searchInput" type="text" class="form-control" placeholder="搜索">
					</div>
					<button id="searchButton"  type="submit" class="btn btn-default">
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
    		<h4><a href="">书籍分类</a></h4>
    		<!--<c:url value='/MainServlet?method=getAllClassfication'/> 这里叫 getAllClassfication 去返回所有书籍分类，返回一个ClassficationList，里面有具体每个的category.cid和分类的名字category.cname-->
    		<%if (cList != null) {
				for (int i = 0; i < cList.size(); i++) {
					cList.get(i).getcName(); } }%>
			<%="书籍数量=" + session.getAttribute("MainPage_BooksCount")%>
    		<ul class="nav nav-tabs nav-stacked">
	        	<c:forEach items="${cList}" var="category">
					<li><a href="<c:url value='/MainServlet?method=findByCategory&cid=${category.cid}'/>">${category.cname}</a></li>
				</c:forEach>
      		</ul><br>
    		</div>
    		
    		<div class="col-sm-10">
    		<!-- show books --> 
    		<!--  MainPage_pageSize----代表页大小，分页显示中一页有几个数据项。 -->
    		<!--  MainPage_pageNum----代表页码，分页显示中的第几页的页码。 -->
    		<%if (bList != null) {
				for (int i = 0; i < bList.size(); i++) {
					bList.get(i).getbID();}
					}%>
		
			<!-- this is example --> 
			<div class="media">
				<div class="media-top">
					<img src="/BookStore/assets/books/book_3.jpg" class="media-object">
				</div>
				<div class="media-body">
    				<h3 class="media-heading">书名</h3>
    				<p>作者</p>
 			    </div>
			</div>
    		
    		<c:forEach var="book" items="${Books}" varStatus="status">
    			<div class="col-sm-2">
        			${book}
    			</div>
    			<div class="col-sm-2 media">
					<div class="media-top">
						<img src="${book_img_path}"class="media-object">
					</div>
					<div class="media-body">
	    				<h3 class="media-heading">${book_name}</h3>
	    				<p>${book_author}</p>
	 			    </div>
				</div>
	    		<c:if test="${(status.index) % 5 == 0}">
	        		<div class="clearfix"></div>
	    		</c:if>
			</c:forEach>
    		
    		<ul class="pager">
    			<c:if test="${currentPage != 1}">
        			<li class="previous"><a href="book?page=${currentPage - 1}">前一页</a></li>
    			</c:if>
				<c:if test="${currentPage != 1}">
        			<li class="next"><a href="book?page=${currentPage - 1}">后一页</a></td>
    			</c:if>
 			</ul>			
			
    		</div>
    	</div>
    </div>
    
	</body>
</html>
