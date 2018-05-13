<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="ying" uri="/WEB-INF/custom_tag.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问候Jsp 自定义标签--最基础的标签</title>
</head>
<body>
	<!-- 
		EL表达式、JSP标签、JSTL标签、自定义标签的区别与使用，参考下面链接
		https://blog.csdn.net/guanhang89/article/details/51277657
	 -->
	<!-- 自定义标签创建步骤如下：
		1. 编写一个普通的java类，继承SimpleTagSupport类或TagSupport类，叫标签处理器类
		2. 在web项目的WEB-INF目录下建立xxx.tld文件，这个tld叫标签库的声明文件。（参考核心标签库的tld文件）
		3. 在jsp页面的头部导入自定义标签库
		4. 在jsp中使用自定义标签
		注意： 自定义标签： 一般的中小型网站用到的机会不多，一般不用；但是一些大型的系统如果自定义标签的话可以大大提高工作效率
	 -->
	 
	 <ying:helloWorld/>

</body>
</html>