<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out:向客户端输出数据和管理应用服务器上的输出缓冲区</title>
</head>
<body>
	<%
		out.println("<h1>");
		out.println("Hello Jsp Servlet");
		out.println("</h1>");
	%>
	<%
		int totalbuffer=out.getBufferSize();  // 获取总共缓冲区的大小
		int available=out.getRemaining(); // 获取未使用的缓冲区的大小
		int user=totalbuffer-available;  // 获取使用的缓冲区大小
		out.println("总共缓冲区的大小："+totalbuffer);
		out.println("未使用的缓冲区的大小："+available);
		out.println("使用的缓冲区大小："+user);
	%>
</body>
</html>