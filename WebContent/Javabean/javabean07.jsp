<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp:getProperty 获取 javabean 属性值</title>
</head>
<body>
	<%-- <jsp:getProperty property="属性名称" name="实例化对象的名称"/> --%>
	<jsp:useBean id="stu" scope="page" class="com.learn.model.Student"></jsp:useBean>
	<%
	stu.setUsername("王二小2");
	stu.setAge(12);
	%>
<h1>姓名：<jsp:getProperty property="username" name="stu"/></h1>
<h1>年龄：<jsp:getProperty property="age" name="stu"/></h1>
</body>
</html>