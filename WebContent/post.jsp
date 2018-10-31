<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
/*
	if(session.getAttribute("signedUser") == null){
			response.sendRedirect("logout.jsp");
		}
*/
%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
   	<meta charset="utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
   	<!-- Bootstrap core CSS -->
   	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   	
   	<!-- Custom styles for this template -->
   	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
   	<link href="css/main.css" rel="stylesheet">

	<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<header class="blog-header py-3">
	        <div class="row flex-nowrap justify-content-between align-items-center">
	        	<div class="col-4 pt-1">
	            	<a class="text-muted" href="#">Subscribe</a>
	          	</div>
	          	<div class="col-4 text-center">
	            	<a class="blog-header-logo text-dark" href="main.do">Science Times</a>
	          	</div>
	          	<div class="col-4 d-flex justify-content-end align-items-center">
	            	<a class="text-muted" href="#">
	              		<svg xmlns="http://www.w3.org/2000/svg" class="mx-3" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" width="20" height="20"><circle cx="10.5" cy="10.5" r="7.5" /><line x1="21" y1="21" x2="15.8" y2="15.8" /></svg>
	            	</a>
	            	<a class="btn btn-sm btn-outline-secondary" href="logout.jsp">logout</a>
	          	</div>
	      	</div>
      	</header>

      <div class="nav-scroller py-1 mb-2">
      	<nav class="nav d-flex justify-content-between">
        	<a class="p-2 text-muted" href="navPost.do?c_code=01">기초과학</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=02">응용과학</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=03">보건·의학</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=04">기후·해양</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=05">항공·우주</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=06">환경·에너지</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=07">신소재·신기술</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=08">IT</a>
          	<a class="p-2 text-muted" href="navPost.do?c_code=09">View</a>
        </nav>
      </div>
    </div> <!-- /.div container -->
    
    <main class="container" role="main">
	
        
        	<div class="blog-main">
        		<h3 class="pb-1 mb-4 font-italic border-top">${article.c_code}</h3>
          		<div class="blog-post">
          			<h2 class="blog-post-title">${article.title}</h2>
            		<p class="blog-post-meta">${article.createdate} by <a href="#">${article.w_id}</a></p>
            		<hr>
            		<c:if test="${!empty article.resource}">
            			<img src="${article.resource}" class="blog-img">
            		</c:if>
            		<br>
            		${article.content}
          		</div><!-- /.blog-post -->
        	</div> <!-- /.blog-main -->

    </main>
    
    
    <footer class="blog-footer">
    	<p><a href="#">Back to top</a></p>
    	<p class="mb-1">&copy; 2018 </p>
      	<ul class="list-inline">
   			<li class="list-inline-item"><a href="#">Home</a></li>
   			<li class="list-inline-item"><a href="#">Privacy</a></li>
   			<li class="list-inline-item"><a href="#">Terms</a></li>
   			<li class="list-inline-item"><a href="#">Support</a></li>
   		</ul>
    </footer>
    
    
    <!-- Bootstrap core JavaScript ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/assets/jquery-slim.min.js"><\/script>')</script>
    <script src="bootstrap/assets/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/assets/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
    <svg xmlns="http://www.w3.org/2000/svg" style="left: -100%; top: -100%; display: none; visibility: hidden; position: absolute;" viewBox="0 0 200 250" preserveAspectRatio="none meet" width="200" height="250"><defs><style type="text/css" /></defs><text style="font-weight:bold;font-size:13pt;font-family:Arial, Helvetica, Open Sans, sans-serif" x="0" y="13">Thumbnail</text></svg>
	
</body>
</html>