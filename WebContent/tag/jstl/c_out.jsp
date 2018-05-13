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
	<!-- 
		以后开发jsp的原则： 尽量在jsp页面中少写甚至不写java代码。
		使用EL表达式替换掉jsp表达式，使用标签（jsp动作标签、jsp自定义标签、jsp标准标签库）替换掉jsp脚本
		JSTL简介：
			JSTL(Java Standard Tag Library) –Java标准标签库。 
			SUN公司制定的一套标准标签库的规范。 
			JSTL标签库，是由一些Java类组成的。

		JSTL组成：
			JSTL –Core 核心标签库。  【重点--必须熟练掌握】 若使用核心标签库，必须
					1.先在lib/下导入jstl.jar和standard.jar
					2.在页面中引入
			JSTL – I18N － 国际化标签库。Internationalization- I18N 【可以熟悉下】
			JSTL – SQL – 数据库操作标签(有悖于MVC设计模式),现在都不用这个。 
			JSTL － Functions – 函数库。 
			JSTL － XML ，对XML的操作(同SQL标签-有悖于MVC设计模式)，现在都不用这个。
	 -->
	 <%
	 	pageContext.setAttribute("people", "ying");
	 %>
	 <c:out value="jstl你好--c:out 内容输出标签"></c:out>
	 <c:out value="${people}"></c:out>
	 <!-- 这就是核心标签库与EL表达式的区别，可以设置默认值等，功能更强大 -->
	 <c:out value="${people1}" default="某人"></c:out>
</body>
</html>