<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用javabean--减少重复代码</title>
</head>
<body>
	<%-- jsp:useBean 创建 javabean  创建语法如下： --%>
	<%-- <jsp:useBean id="实例化对象名称" scope="保存范围" class="类完整名称"/>
Scope，一共有 page,request,session 和 application4 个属性范围，默认是 page； --%>
	
	<jsp:useBean id="stu" scope="page" class="com.learn.model.Student"/>

	<%
		stu.setUsername("赵云");
		stu.setAge(22);
	%>
<h1>姓名：<%=stu.getUsername() %></h1>
<h1>年龄：<%=stu.getAge() %></h1>
</body>
</html>