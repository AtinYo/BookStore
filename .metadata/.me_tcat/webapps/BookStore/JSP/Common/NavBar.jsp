<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			rel="stylesheet">
		<title>NavBar</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="content-type" content="text/html;charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>

	<body>
		<script src="/bootstrap/js/bootstrap.min.js"></script>
		<nav class="navbar navbar-default navbar-inverse navbar-fixed-top"
			role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbarNav">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><span
				class="glyphicon glyphicon-book"></span> 网上书城 </a>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse"
			style="padding-top: 2px;">
			<ul class="nav navbar-nav">
				<li>
					<a href="Link_1.jsp">浏览书籍</a>
				</li>
				<li>
					<a href="Link_2.jsp">我的购物车</a>
				</li>
				<li>
					<a href="Link_3.jsp">用户中心</a>
				</li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li>
					<div class="navbar-form navbar-left">
						<div class="form-group">
							<input id="searchInput" type="text" class="form-control"
								placeholder="搜索">
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
