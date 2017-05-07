<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../index.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Success</title>
</head>
<body>
	<%! boolean isLogin = true; %>
	<div class="container-fluid" align="center" style="width: 100%; margin-top: 10%;">
		<% String name=(String)request.getAttribute("userName");
    if(isLogin){%>
    <%-- change isLogin userName later if name!=null --%>
    	<h3><%=name%> 欢迎回来  !</h3><%}%>
	</div>
    
</body>
</html>