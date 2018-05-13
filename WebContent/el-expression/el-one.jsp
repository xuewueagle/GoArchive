<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EL表达式</title>
</head>
<body>
	<!-- EL（Expression Language） 是为了使JSP写起来更加简单.
	语法结构
		${expression}
	注意：page指令的 isELIgnored属性 表示是否禁用EL语言,TRUE表示禁止.FALSE表示不禁止.JSP2.0中默认的启用EL语言
	
	EL 表达式访问 4 种范围属性
	表达式语言（Expression Language，EL）
	寻找值的顺序：page->request->session->application
	 -->
	<%
		pageContext.setAttribute("info1","page范围的值");
		request.setAttribute("info2","request范围的值");
		session.setAttribute("info3","session范围的值");
		application.setAttribute("info4","application范围的值");
	%>
	<!-- 以后用下面el表达式这种方式 简化jsp输出 -->
	<h2>${info1 }</h2>
	<h2>${info2 }</h2>
	<h2>${info3 }</h2>
	<h2>${info4 }</h2>
	<%-- <h2>${info1 }</h2>
	<h2>${info1 }</h2>
	<h2>${info1 }</h2> --%>
</body>
</html>