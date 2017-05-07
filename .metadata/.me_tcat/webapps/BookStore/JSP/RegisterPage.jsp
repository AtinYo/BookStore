<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Register.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="servlet/RegisterServlet">
         账号:<input type="text" name="userAccount"/><br/>
         密码:<input type="password" name="userPassword"/><br/>
         昵称:<input type="text" name="userName"/><br/>
      <input type="submit" value="注册"/>
    </form>
    <%Boolean isSuccessful=(Boolean)session.getAttribute("isSuccessful"); %>
    <%if(isSuccessful!=null){ %>
    <%if(isSuccessful){ %>
    <%out.write("注册成功");}else{ %>
    <%out.write("注册失败");} %>
    <%} %>
  </body>
  </body>
</html>
