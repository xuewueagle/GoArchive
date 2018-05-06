<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取参数并实例化--使用javabean</title>
</head>
<body>
	<%-- jsp:setProperty 设置 javabean 属性值 --%>
	<%-- <jsp:setProperty property="属性名称" name="实例化对象的名称" value="属性值" param="参数名称"/>
Property=”*” 自动匹配所有 --%>
	<jsp:useBean id="stu" scope="page" class="com.learn.model.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="stu"/>
<h1>姓名：<%=stu.getUsername() %></h1>
<h1>年龄：<%=stu.getAge() %></h1>
</body>
</html>