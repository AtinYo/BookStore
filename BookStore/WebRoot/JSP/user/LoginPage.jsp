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
		<title>LoginPage.jsp</title>
	</head>

	<body>
		<div class="container-fluid" style="width: 100%; font-size: 1.2em;">
			<div class="panel panel-default">
				<div class="panel-body" align="center">
					<div class="container " style="margin-top: 5%; margin-bottom: 5%;">
						<div class="panel panel-default" style="max-width: 55%;"
							align="left">
							<div class="panel-heading form-group">
								<b><font color="black">登陆</font>
								</b>                    
							</div>
							<div class="panel-body">
								                       
								<form action="<%=basePath%>servlet/LoginServlet" method="doPost">
									<div class="form-group">
										<label for="userAccount" class="control-label">
											账号
										</label>
										<input type="text" class="form-control" name="userAccount"
											id="userAccount" placeholder="请输入账号" required="required" />
										           
									</div>
									                           
									<div class="form-group">
										<label for="userPassword" class="control-label">
											密码
										</label>
										<input type="password" class="form-control"
											name="userPassword" id="userPassword" placeholder="请输入密码"
											required="required">
									</div>
									                           
									<button type="submit"
										class="btn btn-large btn btn-success btn-lg btn-block">
										<b>登陆</b>
									</button>
									                       
								</form>
								<%
										Boolean isLogin = (Boolean) session.getAttribute("isLogin");
									%>
								<%
									if (isLogin != null) {
								%>
								<%
									if (isLogin) {
								%>
								<%
									out.write("登陆成功");
										} else {
								%>
								<%
									out.write("登陆失败");
										}
								%>
								<%
									}
								%>
							</div>
							<div class="panel-footer" align="right">
								<a href="/BookStore/JSP/user/UserCenterPage.jsp">前往用户管理中心</a>
							</div>
							<div class="panel-footer" align="left">
								<a href="/BookStore/JSP/user/RegisterPage.jsp">创建新账户</a>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
	</body>
</html>
