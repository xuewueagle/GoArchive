<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="ying" uri="/WEB-INF/custom_tag.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问候Jsp 自定义标签--自定义有标签体的标签</title>
</head>
<body>
	<!-- 自定义标签创建步骤如下：
		1. 编写一个普通的java类，继承SimpleTagSupport类或TagSupport类，叫标签处理器类
		2. 在web项目的WEB-INF目录下建立xxx.tld文件，这个tld叫标签库的声明文件。（参考核心标签库的tld文件）
		3. 在jsp页面的头部导入自定义标签库
		4. 在jsp中使用自定义标签
	 -->
	 <%
		List people=new ArrayList();
		people.add("王二小");
		people.add("司马光");
		people.add("呵呵");
		pageContext.setAttribute("people", people);
	%>
	 
	<ying:iterateSimple items="people" var="p">
		<h2>${p }</h2>
	</ying:iterateSimple>

</body>
</html>