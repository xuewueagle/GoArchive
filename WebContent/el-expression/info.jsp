<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="el-two.jsp" method="post">
		<input type="text" name="name"/>
		<input type="submit" value="提交el-two.jsp"/>
	</form>
	<a href="el-two.jsp?age=12">提交el-two.jsp</a>
	<form action="el-two.jsp" method="post">
		<input type="checkbox" name="hobby" value="java语言"/>java语言
		<input type="checkbox" name="hobby" value="C#语言"/>C#语言
		<input type="checkbox" name="hobby" value="php语言"/>php语言
		<input type="submit" value="提交el-two.jsp"/>
	</form>
</body>
</html>