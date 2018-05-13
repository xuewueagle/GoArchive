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
	<!-- c:set 用来设置 4 中属性范围值的标签； -->
	<c:set var="people" value="hehe" scope="request"></c:set>
	<h2><c:out value="${people}"></c:out></h2>
	
	<jsp:useBean id="people2" class="com.learn.model.People" scope="page"></jsp:useBean>
	
	<c:set property="id" target="${people2 }" value="007"></c:set>
	<c:set property="name" target="${people2 }" value="王二小"></c:set>
	<c:set property="age" target="${people2 }" value="26"></c:set>
	
	<h2>编号：${people2.id }</h2>
	<h2>姓名：${people2.name }</h2>
	<h2>年龄：${people2.age }</h2>
	
</body>
</html>