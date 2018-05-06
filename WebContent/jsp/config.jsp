<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jsp内置对象--config</title>
</head>
<body>
<%
	String jdbcName=config.getInitParameter("jdbcName");
	String dbUrl=config.getInitParameter("dbUrl");
%>
<h1>驱动名称：<%=jdbcName %></h1>
<h1>连接地址：<%=dbUrl %></h1>
</body>
</html>