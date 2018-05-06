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
		pageContext.setAttribute("name", "ying");
		pageContext.setAttribute("age", 12);
	%>
	<%
		String name = (String)pageContext.getAttribute("name");
		int age = (Integer)pageContext.getAttribute("age");
	%>
	<front>姓名：<%=name %></front>
	<front>年龄：<%=age %></front>
</body>
</html>