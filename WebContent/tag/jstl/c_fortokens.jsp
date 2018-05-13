<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="com.learn.model.People"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL 核心标签库</title>
</head>
<body>
	<!-- c:fortokens 分隔输出； -->
	<%
		String str1="www.java1234.com";
		String str2="张三，李四，王五";
	    pageContext.setAttribute("str1",str1);
	    pageContext.setAttribute("str2",str2);
	%>
	<c:forTokens items="${str1 }" delims="." var="s1">
		${s1 }  <!-- www java1234 com -->
	</c:forTokens>
	<hr/>
	<c:forTokens items="${str2 }" delims="，" var="s2">
		${s2 } <!-- 张三 李四 王五 -->
	</c:forTokens>
	
</body>
</html>