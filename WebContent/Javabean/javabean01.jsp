<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.learn.model.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>常规类调用--未使用javabean</title>
</head>
<body>
	<%
		Student stu = new Student();
		stu.setUsername("王小二");
		stu.setAge(28);
	%>
<h1>姓名：<%=stu.getUsername() %></h1>
<h1>年龄：<%=stu.getAge() %></h1>
</body>
</html>