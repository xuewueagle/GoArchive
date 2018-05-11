<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jsp&Servlet 用户登录功能实现--首页</title>
</head>
<body>
	<h3>欢迎来到Servlet世界！(注意：注销链接地址与web.xml中的/logout区别：若在路径中以/开头，则这一/相当于:8080/)</h3>
	当前登录用户：${currentUser.userName } &nbsp;&nbsp;<a href="/JspDemo/logout">注销</a>
</body>
</html>