<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.learn.model.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>常规获取参数并实例化--未使用javabean</title>
</head>
<body>
	
	<%
		//request.setCharacterEncoding("utf-8");
		//String name = request.getParameter("name");
		// 出现name乱码的现象：
		// 原因：Http请求传输时将url以ISO-8859-1编码，服务器收到字节流后默认会以ISO-8859-1编码来解码成字符流（造成中文乱码）
        // 解决办法：我们需要把request.getParameter(“参数名”)获取到的字符串先用ISO-8859-1编码成字节流，然后再将其用utf-8解码成字符流
		String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");  
		//out.println(str);
		String age  = request.getParameter("age");
		Student stu = new Student();
		stu.setUsername(name);
		stu.setAge(Integer.parseInt(age)); // 将字符串转化成整型
	%>
<h1>姓名：<%=stu.getUsername() %></h1>
<h1>年龄：<%=stu.getAge() %></h1>
</body>
</html>