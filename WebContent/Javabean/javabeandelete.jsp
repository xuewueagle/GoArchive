<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javabean--删除</title>
</head>
<body>
<%--  javabean--删除:
	Page 范围：pageContext.removeAttribute(“javaBean Name”);
	request 范围：request.removeAttribute(“javaBean Name”);
	session 范围：session.removeAttribute(“javaBean Name”);
	application 范围：application.removeAttribute(“javaBean Name”);
 --%>
<%
	session.removeAttribute("stu");
%>
<h1>javabean已删除！</h1>
</body>
</html>