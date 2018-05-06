<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jsp九大内置对象之--pageContext</title>
</head>
<body>
<%
	pageContext.setAttribute("name0", "pageInfo");
	
	
	out.println("使用pageContext<br/>");
	out.println("page中的属性值："+pageContext.getAttribute("name0")+"<br/>");

%>
</body>
</html>