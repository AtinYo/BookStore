<%@ page language="java" import="java.util.*,beans.*,dao.*"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<base href="<%=basePath%>">
		<title>AdminCenterPage.jsp</title>

	</head>

	<body>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbarNav">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href=""><span
					class="glyphicon glyphicon-user"></span> </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<!--你自己添加相对应的Servelet -->
					<li
						class="${sessionScope.MainPage_SelectNavBarID == 0 ? 'active' : ' '}">
						<a data-toggle="tab"
							href="<%=basePath%>servlet/MainServlet?SelectNavBarID=0">书籍管理</a>
					</li>
					<li
						class="${sessionScope.MainPage_SelectNavBarID == 1 ? 'active' : ' '}">
						<a data-toggle="tab"
							href="<%=basePath%>servlet/MainServlet?SelectNavBarID=1">用户管理</a>
					</li>
					<li
						class="${sessionScope.MainPage_SelectNavBarID == 2 ? 'active' : ' '}">
						<a data-toggle="tab"
							href="<%=basePath%>servlet/MainServlet?SelectNavBarID=2">订单管理</a>
					</li>
					<li
						class="${sessionScope.MainPage_SelectNavBarID == 3 ? 'active' : ' '}">
						<a data-toggle="tab"
							href="<%=basePath%>servlet/MainServlet?SelectNavBarID=2">分类管理</a>
					</li>
				</ul>
			</div>
		</div>
		</nav>

		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="dropdown col-md-2">
						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							请选择搜索的范围
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li>
								<a href="#">图书名</a>
							</li>
							<li>
								<a href="#">图书id</a>
							</li>
							<li>
								<a href="#">作者</a>
							</li>
							<li>
								<a href="#">图书分类</a>
							</li>
						</ul>
					</div>

					<div class="col-md-10 input-group" id="adm-search">
						<input type="text" class="form-control" placeholder="请输入搜索的内容" />
						<div class="input-group-btn">
							<button type="button" class="btn btn-primary">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr />
		<div class="container">
			<div class="row">
				<button type="button" class="btn btn-success btn-lg"
					style="margin: 25px;">
					添加
				</button>
				<button type="button" class="btn btn-danger btn-lg"
					style="margin: 25px;">
					删除
				</button>
			</div>
		</div>

		<div class="container">
			<!-- for Each -->
			
					<div class="panel panel-default">
						<div class="row">
							<!-- 通过勾选来进行多条修改 -->

							<div class="col-lg-1 checkbox-inline" style="margin: 25px;">
								<input type="checkbox" value="">
							</div>
							<div class="col-lg-2" style="padding: 5px;">
								<img src="..">
							</div>
							<div class="col-lg-8 pull-right">
								<div class="row" style="padding: 10px;">
									<div class="col-lg-12">
										<form class="form-inline">
											<label for="rg-from">
												书名:
											</label>
											<div class="form-group">
												<input type="text" id="rg-from" name="rg-from" value=""
													class="form-control">
											</div>
											<button class="btn btn-primary" type="button">
												保存
											</button>
										</form>
									</div>
								</div>
								<div class="row" style="padding: 10px;">
									<div class="col-lg-12">
										<form class="form-inline">
											<label for="zz-from">
												作者:
											</label>
											<div class="form-group">
												<input type="text" id="zz-from" name="zz-from" value=""
													class="form-control">
											</div>
											<button class="btn btn-primary" type="button">
												保存
											</button>
										</form>
									</div>
								</div>
								<div class="row" style="padding: 10px;">
									<div class="col-lg-12">
										<form class="form-inline">
											<label for="jj-from">
												简介:
											</label>
											<div class="form-group">
												<input type="text" id="jj-from" name="jj-from" value=""
													class="form-control">
											</div>
											<button class="btn btn-primary" type="button">
												保存
											</button>
										</form>
									</div>
								</div>
								<div class="row" style="padding: 10px;">
									<div class="col-lg-12">
										<form class="form-inline">
											<!-- 绑定来显示数量 -->
											<label for="sl-from" style="margin-right: 10px;">
												数量: ${20}
											</label>
											<div id="sl-from" class="btn-group" role="group">
												<button type="button" class="btn btn-default">
													+
												</button>
												<button type="button" class="btn btn-default">
													-
												</button>
											</div>
										</form>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
	</body>
</html>
