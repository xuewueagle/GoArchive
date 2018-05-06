<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Jsp四大作用域之application</title>
</head>
<body>
	<%
	application.setAttribute("name", "ying");
	application.setAttribute("age", 12);
	%>
	
	<h4>application值设置完毕</h4>
</body>
</html>