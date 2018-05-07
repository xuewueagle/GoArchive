<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javabean--request 服务器内部跳转</title>
</head>
<body>
	<jsp:useBean id="stu" scope="request" class="com.learn.model.Student"></jsp:useBean>
	<h1>姓名：<jsp:getProperty property="username" name="stu"/></h1>
	<h1>年龄：<jsp:getProperty property="age" name="stu"/></h1>
</body>
</html>