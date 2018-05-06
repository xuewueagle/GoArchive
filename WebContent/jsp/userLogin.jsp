<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录提交处理</title>
</head>
<body>
	<%
	String userName=request.getParameter("userName");  // 获取用户名
	String pwd=request.getParameter("pwd");  // 获取密码
	String remember=request.getParameter("remember");  // 获取记住密码
	
	if("remember-me".equals(remember)){
		// 设置Cookie start
		Cookie userNameAndPwd = new Cookie("userNameAndPwd",userName+"-"+pwd);
		userNameAndPwd.setMaxAge(1*60*60*24*7); // cookie记录一个星期
		response.addCookie(userNameAndPwd);
		// 设置Cookie end
		System.out.println("Cookie设置成功");
	}
	response.sendRedirect("response03.jsp");
		
	%>
</body>
</html>