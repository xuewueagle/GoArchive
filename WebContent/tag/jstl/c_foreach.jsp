<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="com.learn.model.Peoples"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL 核心标签库</title>
</head>
<body>
	<!-- c:forEach 用来遍历数组或者集合； -->
	<%
		String dogs[]={"小黑","小黄","小白","小小"};
	    pageContext.setAttribute("dogs",dogs);
	%>
	<c:forEach var="dog" items="${dogs }">
		${dog }  <!-- 小黑 小黄 小白 小小 -->
	</c:forEach>
	<hr/>
	<c:forEach var="dog" items="${dogs }" step="2">
		${dog } <!-- 小黑 小白 -->
	</c:forEach>
	<hr/>
	<c:forEach var="dog" items="${dogs }" begin="1" end="2">
		${dog } <!-- 小黄 小白 -->
	</c:forEach>
	<hr/>
	
	<%
		List<Peoples> pList=new ArrayList<Peoples>();
	    pList.add(new Peoples(1,"张三",10));
	    pList.add(new Peoples(2,"李四",20));
	    pList.add(new Peoples(3,"王五",30));
	    pageContext.setAttribute("pList",pList);
	%>
	<table>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
		</tr>
		<c:forEach var="p" items="${pList }">
			<tr>
				<td>${p.id }</td>
				<td>${p.name }</td>
				<td>${p.age }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>