<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>request接收页面</title>
</head>
<body>
	<%
	
		String name = (String)request.getAttribute("name");
		int age = (Integer)request.getAttribute("age");
		// 获取头部信息
		Enumeration enu = request.getHeaderNames();
		while(enu.hasMoreElements()){
			String headerName = (String)enu.nextElement();
			String headerVlaue = request.getHeader(headerName);
	%>
		<h4><%=headerName %>&nbsp;<%=headerVlaue %></h4>
	<%	
		}
	
	%>
	<front>姓名：<%=name %></front>
	<front>年龄：<%=age %></front>
</body>
</html>