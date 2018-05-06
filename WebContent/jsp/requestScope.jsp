<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Jsp四大作用域之page</title>
</head>
<body>
	<%
		request.setAttribute("name", "ying");
		request.setAttribute("age", 12);
	%>
	<%-- 服务器内部跳转  url不变，和客户端跳转(重定向)有区别  --%>
	<jsp:forward page="requestTarget.jsp"></jsp:forward>
</body>
</html>