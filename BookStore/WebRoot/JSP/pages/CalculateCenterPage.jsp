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
		<title>CalculateCenterPage.jsp</title>

	</head>

	<body>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<a class="navbar-brand">您的购物车</a>
			<a class="navbar-brand"><span
				class="glyphicon glyphicon-shopping-cart"></span> </a>
		</div>
		</nav>

		<c:choose>
			<c:when test="${empty session.CalculateCenterPage_order }">
				<div class="container">
					<h2>
						您的购物车空空如也!赶紧下单吧!
					</h2>
				</div>
			</c:when>
			<c:otherwise>
				<table class="table" style="padding: 5px">
					<thead>
						<tr>
							<th>
								图片
							</th>
							<th>
								书名
							</th>
							<th>
								作者
							</th>
							<th>
								单价
							</th>
							<th>
								数量
							</th>
							<th>
								小计
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${session.CalculateCenterPage_order.cartItems }"
							var="cartItem">
							<tr>
								<th scope="row">
									<img src="<c:url value='/${cartItem.book.image }'/>" />
								</th>
								<td>
									${cartItem.book.bname }
								</td>
								<td>
									${cartItem.book.author }
								</td>
								<td>
									${cartItem.book.price }
								</td>
								<td>
									${cartItem.count }
								</td>
								<td>
									${cartItem.subTotal }
								</td>
								<td>
									<a
										href="<c:url value='CalculateCenterServlet?method=delete&bid=${cartItem.book.bid}'/>">删除</a>
								</td>
							</tr>

						</c:forEach>
						<tr>
							<th scope="row"></th>
							<td colspan="6" align="right">
								合计：${session.cart.total }元
							</td>
						</tr>
						<tr>
							<td colspan="7" align="right">
								<!--这里提交订单 -->
								<a id="buy"
									href="<c:url value='/CalculateCenterServlet?method=addOrder'/>"></a>
							</td>
						</tr>
					</tbody>
				</table>
			</c:otherwise>
		</c:choose>
	</body>
</html>
