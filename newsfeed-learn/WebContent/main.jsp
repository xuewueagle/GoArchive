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
    <title>首页</title>

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
		    	
	    	</div>
	    	<div class="container-fluid">
		    	<ul class="nav navbar-nav navbar-right">
		    		<li class="dropdown">
			          <p><a type="button" class="btn btn-default navbar-btn" role="button" href="logout">退出</a></p>
			        </li>
	        		<li>
	        			<%-- <c:if test="${ sessionScope.user == null }">
	        				<p class="navbar-text">请登录</p>
	        			</c:if> --%>
	        			<c:if test="${ user.iduser != null }">
	        				<p class="navbar-text">欢迎您， ${ user.iduser }</p>
	        			</c:if>
        			</li>
	      		</ul> 
      		</div> 	
    	</div>
    </nav>
    
    <div class="container" style="min-height:400px;">
  
    	<c:forEach var="category" items="${ allCategories }">
    	<div class="row">
    		<h1 class="text-center"><span class="label label-danger">${ category.namecategory }</span></h1><br>
    	</div>
    	<c:forEach var="row" items="${ rows }">
    	<c:if test="${ category.idcategory == row[0].idcat }">
    	<div class="row">   
    		<c:forEach var="news" items="${ row }">	
    		<div class="col-md-3 col-sm-6">
    			<img class="img-rounded img-responsive hidden-xs" alt="新闻图片" src="${news.image	}">
				<h3><a href="news?idnews=${ news.idnews }">${news.title}</a></h3>
				<p>${news.annotation}</p>
				<p class="text-muted">${news.author} | ${news.date}</p>	
			</div>
			</c:forEach>
		</div>
		</c:if>
		</c:forEach>
		<div class="row">
			<p><a href="category?idcategory=${ category.idcategory }" class="btn btn-default" role="button">查看分类</a></p>
			<hr>
		</div>	
		</c:forEach>
		
    		
	    <%-- <c:forEach var="category" items="${ allCategories }">
		    <div class="row"><h1 class="text-center"><span class="label label-danger">${ category.namecategory }</span></h1><br></div>
		    <c:forEach var="row" items="${ rows }">
		    	<c:if test="${ category.idcategory == row[0].idcat }">
				    <div class="row">	    			   			   			
		  				<c:forEach var="news" items="${ row }">
		   					<div class="col-md-3 col-sm-6">
								<img class="img-rounded img-responsive hidden-xs" alt="News image" src="${ news.image }">
								<h3><a href="news?idnews=${ news.idnews }">${ news.title }</a></h3>
								<p>${ news.annotation }</p>
								<p class="text-muted">${ news.username } ${ news.usersurname } | ${ news.date }</p>	
		   					</div>
						</c:forEach>
		   			</div>
	   			</c:if>
   			</c:forEach>
   			<div class="row">
   				<p><a href="category?idcategory=${ category.idcategory }" class="btn btn-default" role="button">Смотреть все новости в категории &raquo</a></p>
   				<hr>
			</div>		    
	    </c:forEach> --%>
    </div>
    
    <footer class="footer">
      <div class="container" style="text-align: center;">
        <p class="text-muted">&copy; 天再高，踮起脚尖就能更接近阳光</p>
      </div>
    </footer>
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>