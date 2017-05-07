<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NavBar</title>

</head>
<body>
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarNav">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-book"></span> 网上书城 </a>
	</div>
	<div class="collapse navbar-collapse navbar-ex1-collapse"
		style="padding-top: 2px;">
		<ul class="nav navbar-nav">
			<li><a href="Link_1.jsp">浏览书籍</a></li>
			<li><a href="Link_2.jsp">我的购物车</a></li>
			<li><a href="Link_3.jsp">用户中心</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li>
				<div class="navbar-form navbar-left">
					<div class="form-group">
						<input id="searchInput" type="text" class="form-control" placeholder="搜索">
					</div>
					<button id="searchButton" class="btn btn-default">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</li>
		</ul>
	</div>

	</nav>
</body>
</html>