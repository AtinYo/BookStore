<%@ page language="java" import="java.util.*,beans.*,dao.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>SearchPage.jsp</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<%
		session.setAttribute("SearchPage_pageNum", 1);
		session.setAttribute("SearchPage_pageSize", 3);
		List<BookBean> bList = (List<BookBean>) session
				.getAttribute("SearchPage_BookList");
		Integer BooksCount = (Integer) session
				.getAttribute("SearchPage_BooksCount");
	%>
	<body>
		<form action="servlet/SearchServlet" method="POST">
			<input type="text" name="bTitle" />
			<input type="submit" value="搜一搜" />
		</form>
		Show Books:
		<br>
		<%
			if (bList != null) {
		%>
		<%
			for (int i = 0; i < bList.size(); i++) {
		%>
		<%=bList.get(i).getbTitle()%>
		<br>
		<%
			}
			}
		%>
	</body>
</html>
