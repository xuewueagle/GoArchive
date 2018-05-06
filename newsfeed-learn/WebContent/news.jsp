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
    <title>新闻详情页</title>

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
		    	<a type="button" class="btn btn-default navbar-btn" role="button" href="index">主页</a>
	    	</div>
	    	<div class="container-fluid">
		    	<ul class="nav navbar-nav navbar-right">
		    		<li class="dropdown">
			          <p><a type="button" class="btn btn-default navbar-btn" role="button" href="logout">退出</a></p>
			        </li>
	        		<li>
	        			<c:if test="${ user.iduser != null }">
	        				<p class="navbar-text">欢迎您， ${ user.iduser }</p>
	        			</c:if>
        			</li>
			        <li class="dropdown">
			        	<div class="btn-group" role="group" aria-label="...">
			        		<a type="button" class="btn btn-default navbar-btn" role="button" href="news?idnews=${ news.idnews }&action=delete">删除</a>
						  	<a type="button" class="btn btn-default navbar-btn" role="button" href="news?idnews=${ news.idnews }&action=edit">编辑</a>
						</div>
			        </li>
	      		</ul> 
      		</div> 	
    	</div>
    </nav>
    
    <div class="container" style="min-height:400px;">
	    <div class="media pull-left">
		  <div class="media-left">
		    <img src="${ news.image }" alt="News image" class="media-object img-rounded" width="300">
		  </div>  
		</div>
		<h2 class="media-heading">${ news.title }</h2>
	    <p class="text-muted">${ news.usersurname } ${ news.username }  | ${ news.date }</p>
	    <p><strong>${ news.annotation }</strong></p>
		<p>${ news.text }</p>
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