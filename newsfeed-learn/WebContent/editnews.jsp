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
    <title>新闻编辑页面</title>

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
	      		</ul> 
      		</div> 	
    	</div>
    </nav>
    
    <div class="container">
    	<div class="row">
	    	<form action="news" method="post" enctype="multipart/form-data"  accept-charset="utf-8">
	    		<div class="form-group hidden">
	    			<label for="inputTextIdnews">新闻id</label>
	    			<input type="text" name="idnews" class="form-control" id="inputTextIdnews" value="${ news.idnews }">
	    		</div>
	    		<div class="form-group">
	    			<label for="inputFileImage">图片</label>
	    			<input type="file" name="image" id="inputFileImage" accept="image/*">
	    		</div>
	    		<div class="form-group">
	    			<label for="inputTextTitle">新闻标题</label>
	    			<input type="text" name="title" class="form-control" id="inputTextTitle" placeholder="新闻标题" required value="${ news.title }">
	    		</div>
	    		<div class="form-group">
	    			<label for="selectIdcat">分类</label>
	    			<select name="idcat" class="form-control" id="selectIdcat">
	    				<c:forEach var="category" items="${ allCat }">
					  		<option value="${ category.idcategory }" 
					  			<c:if test="${ category.idcategory == news.idcat }">selected="selected"</c:if>
					  		>${ category.namecategory }</option>
						</c:forEach>  
					</select>
	    		</div>
	    		<div class="form-group">
	    			<label for="textareaAnnotation">注释</label>
	    			<textarea name="annotation" class="form-control" id="textareaAnnotation" placeholder="注释" rows="3" required>${ news.annotation }</textarea>
	    		</div>
	    		<div class="form-group">
	    			<label for="textMainText">新闻内容</label>
	    			<textarea name="text" class="form-control" id="textareatextMainText" placeholder="新闻内容" rows="12" required>${ news.text }</textarea>
	    		</div>
	    		<div class="form-group">
	    			<button type="submit" class="btn btn-default pull-right">提交</button>
	    		</div>
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