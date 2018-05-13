<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL 核心标签库</title>
</head>
<body>
	<!-- c:redirect 客户端跳转(重定向) -->
	<c:redirect url="target.jsp">
		<c:param name="name" value="ying"></c:param>
		<c:param name="age" value="28"></c:param>
	</c:redirect>
	
</body>
</html>