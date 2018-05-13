<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL表达式</title>
</head>
<body>
	<!-- EL 表达式集合操作 -->
	<%
		List all = new LinkedList();
		all.add(0,"元素1");
		all.add(1,"元素2");
		all.add(2,"元素3");
		request.setAttribute("alls",all);
	%>
	<h1>${alls[0] }</h1>
	<h1>${alls[1] }</h1>
	<h1>${alls[2] }</h1>
</body>
</html>