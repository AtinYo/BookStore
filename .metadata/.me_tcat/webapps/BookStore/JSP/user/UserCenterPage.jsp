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
		<title>UserCenterPage.jsp</title>
	</head>

	<body>
		<div class="container-fluid" style="width: 100%; font-size: 1.2em;">
		<div class="panel panel-default">
			<div class="panel-body" align="center">
				<div class="container " style="margin-top: 5%; margin-bottom: 5%;">
					<div class="panel panel-default" style="max-width: 55%;" align="left">
						<div class="panel-heading form-group">
							<b><font color="black">修改账户信息</font></b>                    
						</div>
						<div class="panel-body">
							<form action="<%=basePath%>servlet/UserCenterServlet" method="post">
								<div class="form-group">
									<label for="userName" class="control-label" >昵称 </label>
									<input type="text" class="form-control" name="userName" id="userName"
                                           placeholder="请输入新昵称" required="required" />            
								</div>
								<div class="form-group">
									<label for="userPassword" class="control-label">密码 </label>
									<input type="password" class="form-control" name="userPassword"
										id="userPassword" placeholder="请输入新密码" required="required">
								</div>
								
								<button type="submit" class="btn btn-large btn btn-info btn-lg btn-block">
									<b>提交</b>
								</button>
								                       
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
		
		<%
			Boolean isUpdate = (Boolean) session.getAttribute("isUpdate");
		%>
		<%
			if (isUpdate != null) {
		%>
		<%
			if (isUpdate) {
		%>
		<%
			out.write("修改成功");
				} else {
		%>
		<%
			out.write("修改失败");
				}
		%>
		<%
			}
		%>
	</body>
</html>
