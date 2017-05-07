<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../index.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Register</title>
</head>
<body>
	<div class="container-fluid" style="width: 100%; font-size: 1.2em;">
		<div class="panel panel-default">
			<div class="panel-body" align="center">
				<div class="container " style="margin-top: 5%; margin-bottom: 5%;">
					<div class="panel panel-default" style="max-width: 55%;" align="left">
						<div class="panel-heading form-group">
							<b><font color="black">创建账户</font></b>                    
						</div>
						<div class="panel-body">
							                       
							<form action="RegisterServlet" method="post">
								<div class="form-group">
									<label for="userName" class="control-label" >您的用户名</label>
									<input type="text" class="form-control" name="regUserNem" id="regUserNem"
                                           required="required" />            
								</div>
                                <div class="form-group">
                                    <label for="userAccount" class="control-label" >电子邮件地址</label>
                                    <input type="text" class="form-control" name="regUserAccount" id="regUserAccount"
                                           required="required" />            
                                </div>
								<div class="form-group">
									<label for="userPassword" class="control-label">密码</label>
									<input type="password" class="form-control" name="regUserPassword"
										id="regUserPassword" placeholder="请输入至少六位字母长度密码" required="required">
								</div>
								<button type="submit" class="btn btn-large btn btn-warning btn-lg btn-block">
									<b>继续</b>
								</button>
								                       
							</form>
							 
						</div>
						       
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>