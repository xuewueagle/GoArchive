<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL表达式param内置对象---接收传递到本页面的参数</title>
</head>
<body>
	<!-- 
		Param：单个参数
		paramValues：一组参数
		接收传递到本页面的参数
	 -->
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<h1>姓名：${param.name }</h1>
	<h1>年龄：${param.age }</h1>
	<h1>爱好一：${paramValues.hobby[0] }</h1>
	<h1>爱好二：${paramValues.hobby[1] }</h1>
	<h1>爱好三：${paramValues.hobby[2] }</h1>		
</body>
</html>