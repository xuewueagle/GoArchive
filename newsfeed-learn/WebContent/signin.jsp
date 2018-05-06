<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>登录</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/newsfeed.css" rel="stylesheet">
  </head>
  <body>
    
    <nav class="navbar navbar-inverse">
    	<div class="container-fluid">
    		<div class="navbar-header">
		    	<div class="navbar-brand">新闻报料系统</div>
		    	<!-- <a type="button" class="btn btn-default navbar-btn" role="button" href="/newsfeed">首页</a> -->
	    	</div>
	    	<div class="container-fluid">
		    	<ul class="nav navbar-nav navbar-right">
		    		<!-- <li class="dropdown">
			          <p><a type="button" class="btn btn-default navbar-btn" role="button" href="/login">登录</a></p>
			        </li> -->
	        		<%-- <li>
	        			<c:if test="${ sessionScope.user == null }">
	        				<p class="navbar-text">请登录</p>
	        			</c:if>
	        			<c:if test="${ sessionScope.user != null }">
	        				<p class="navbar-text">欢迎您， ${ sessionScope.currentusername }</p>
	        			</c:if>
        			</li> --%>
	      		</ul> 
      		</div> 	
    	</div>
    </nav>
    
    <div class="container">
    	<div class="row signin center-block">
	    	<form action="login" method="post">
				  <div class="form-group">
				    <label for="exampleInputEmail1">邮箱地址</label>
				    <input name="iduser" type="email" class="form-control" value="${email}" id="exampleInputEmail1" placeholder="请输入邮箱地址" required>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">密码</label>
				    <input name="userpassword" type="password" class="form-control" value="${password}" id="exampleInputPassword1" placeholder="请输入密码" required>
				  </div>
				  <c:if test="${error==1}" var="error">
				      <div class="form-group">
				          <label for="exampleInputPassword1" style="color:red;">用户名或密码不正确！</label>
				      </div>
				  </c:if>
				  <button type="submit" class="btn btn-default">登录</button>
				  
			</form>
	    </div>
	    <hr>
    </div>
    
    <footer class="footer">
      <div class="container" style="text-align: center;">
        <p class="text-muted">&copy; 天再高，踮起脚尖就能更接近阳光</p>
      </div>
    </footer>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>