<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>BookDetailPage.jsp</title>
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
				<a class="navbar-brand" href="/BookStore/JSP/pages/MainPage.jsp"><span
					class="glyphicon glyphicon-book"></span> </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li>
						<a data-toggle="tab" href="/BookStore/JSP/pages/MainPage.jsp">最新上架</a>
					</li>
					<li>
						<a data-toggle="tab" href="/BookStore/JSP/pages/MainPage.jsp">为你推荐</a>
					</li>
					<li>
						<a data-toggle="tab" href="/BookStore/JSP/pages/MainPage.jsp">热卖图书</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<c:set var="isLogin" value="${sessionScope.user!=null}"
						scope="page">
					</c:set>
					<!-- %
						UserBean user = (UserBean) session.getAttribute("user");
						String userName;
						if (user != null) {
							userName = user.getuName();
						} else {
							userName = "请登录";
						}
					%>
					<li>
						<a
							href="${isLogin ? '/BookStore/JSP/user/UserCenterPage.jsp' : '/BookStore/JSP/user/LoginPage.jsp'}"><span
							class="glyphicon glyphicon-user"></span>您好!<!--%=userName%></a>
					</li-->
					<li>
						<a href="/BookStore/JSP/pages/CalculateCenterPage.jsp"><span
							class="glyphicon glyphicon-shopping-cart"></span> 购物车</a>
					</li>
				</ul>
			</div>
		</div>
		</nav>

		<div class="container-fluid" style="width: 90%;">
			<div class="row">
				<div class="col-sm-6">
					<div>
						<img src="https://placehold.it/150x80?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="well">
						<p>
							書名////作者》》》》
						</p>
					</div>

					<div class="well">
						<p>
							内容簡介/dhezohezubceezfecrh xec hxuse csbec fsb xfcfsexfcesx fufb
							sixfcbs fxsu fufb usxfusdejdejdskdnssncl
							dfnsdkfdsjkfbdsfejbjebuzeibcukefe
							fzekezndezunufbeukfhneckefnsbfscine cencsbefbeufezuibfizczojno
							fbezuofizefbzeibfc
						</p>
					</div>
					<button type="submit"
						class="btn btn-large btn btn-warning btn-lg btn-block">
						<b>一鍵下單</b>
					</button>
					<button type="submit"
						class="btn btn-large btn btn-primary btn-lg btn-block">
						<b>加入購物車</b>
					</button>
				</div>
			</div>
			<hr>
		</div>

		<div class="container text-center">
			<h3>
				相關推薦
			</h3>
			<br>
			<div class="row">
				<div class="col-sm-3">
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
					<p>
						java
					</p>
				</div>
				<div class="col-sm-3">
					<img src="https://placehold.it/150x80?text=IMAGE"
						class="img-responsive" style="width: 100%" alt="Image">
					<p>
						python
					</p>
				</div>
				<div class="col-sm-3">
					<div class="well">
						<p>
							情感類
						</p>
					</div>
					<div class="well">
						<p>
							漫畫類
						</p>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="well">
						<p>
							科幻類
						</p>
					</div>
					<div class="well">
						<p>
							文學類
						</p>
					</div>
				</div>
			</div>
			<hr>
		</div>

	</body>
</html>
