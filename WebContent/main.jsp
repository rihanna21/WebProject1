<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	            	<a class="blog-header-logo text-dark" href="main.jsp">Science Review</a>
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
        	<a class="p-2 text-muted" href="#">기초과학</a>
          	<a class="p-2 text-muted" href="#">응용과학</a>
          	<a class="p-2 text-muted" href="#">보건·의학</a>
          	<a class="p-2 text-muted" href="#">기후·해양</a>
          	<a class="p-2 text-muted" href="#">항공·우주</a>
          	<a class="p-2 text-muted" href="#">환경·에너지</a>
          	<a class="p-2 text-muted" href="#">신소재·신기술</a>
          	<a class="p-2 text-muted" href="#">IT</a>
          	<a class="p-2 text-muted" href="#">View</a>
        </nav>
      </div>

      <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
      	<div class="col-md-6 px-0">
        	<h1 class="display-4 font-italic">Title of a longer featured blog post</h1>
          	<p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what's most interesting in this post's contents.</p>
          	<p class="lead mb-0"><a class="text-white font-weight-bold" href="#">Continue reading...</a></p>
        </div>
      </div>

		<div class="row mb-2">
      		<div class="col-md-6">
        		<div class="card flex-md-row mb-4 box-shadow h-md-250">
            		<div class="card-body d-flex flex-column align-items-start">
              			<strong class="d-inline-block mb-2 text-primary">World</strong>
              			<h3 class="mb-0">
                			<a class="text-dark" href="#">Featured post</a>
              			</h3>
              			<div class="mb-1 text-muted">Nov 12</div>
              			<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
              			<a href="#">Continue reading</a>
            		</div>
            		<img class="card-img-right flex-auto d-none d-md-block" style="width: 200px; height: 250px;" alt="Thumbnail [200x250]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22250%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20250%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1640e2b20ef%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A13pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1640e2b20ef%22%3E%3Crect%20width%3D%22200%22%20height%3D%22250%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2256.19000244140625%22%20y%3D%22130.97899951934815%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-src="holder.js/200x250?theme=thumb" data-holder-rendered="true">
          		</div>
      		</div>
      		<div class="col-md-6">
      			<div class="card flex-md-row mb-4 box-shadow h-md-250">
        			<div class="card-body d-flex flex-column align-items-start">
            			<strong class="d-inline-block mb-2 text-success">Design</strong>
              			<h3 class="mb-0">
                			<a class="text-dark" href="#">Post title</a>
              			</h3>
              			<div class="mb-1 text-muted">Nov 11</div>
              			<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
              			<a href="#">Continue reading</a>
            		</div>
            		<img class="card-img-right flex-auto d-none d-md-block" style="width: 200px; height: 250px;" alt="Thumbnail [200x250]" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22200%22%20height%3D%22250%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20200%20250%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_1640e2b20fb%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A13pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_1640e2b20fb%22%3E%3Crect%20width%3D%22200%22%20height%3D%22250%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2256.19000244140625%22%20y%3D%22130.97899951934815%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-src="holder.js/200x250?theme=thumb" data-holder-rendered="true">
        		</div>
      		</div>
    	</div>
    </div> <!-- /.div container -->
    
    <main class="container" role="main">
    	<div class="row">
        	<div class="col-md-8 blog-main">
          		<h3 class="pb-3 mb-4 font-italic border-bottom">Latest From</h3>
        			<div class="post-preview">
            			<a class="text-dark" href="post.jsp">
              				<h4 class="post-title">
                				Man must explore, and this is exploration at its greatest
              				</h4>
              				<p>
                				Problems look mighty small from 150 miles up
              				</p>
            			</a>
            			<p class="blog-post-meta">Posted by
              				<a href="#">Start Bootstrap</a>
              			on September 24, 2018</p>
          			</div>
          			<hr>
          			<div class="post-preview">
            			<a class="text-dark" href="post.html">
              				<h4 class="post-title">
                				I believe every human has a finite number of heartbeats. I don't intend to waste any of mine.
              				</h4>
              				<p>
                				Problems look mighty small from 150 miles up
              				</p>
            			</a>
            			<p class="blog-post-meta">Posted by
              				<a href="#">Start Bootstrap</a>
              				on September 18, 2018</p>
          			</div>
          			<hr>
          			<div class="post-preview">
            			<a class="text-dark" href="post.html">
              				<h4 class="post-title">
                				Science has not yet mastered prophecy
              				</h4>
              				<p>
                				We predict too much for the next year and yet far too little for the next ten.
              				</p>
            			</a>
            			<p class="blog-post-meta">Posted by
              				<a href="#">Start Bootstrap</a>
              				on August 24, 2018</p>
          			</div>
          			<hr>
          			<div class="post-preview">
            			<a class="text-dark" href="post.html">
              				<h4 class="post-title">
                				Failure is not an option
              				</h4>
              				<p>
                				Many say exploration is part of our destiny, but it’s actually our duty to future generations.
              				</p>
            			</a>
            			<p class="blog-post-meta">Posted by
              				<a href="#">Start Bootstrap</a>
              				on July 8, 2018</p>
          			</div>
          			        			   
          			<hr>
          			<!-- Pager -->
          			<nav class="blog-pagination">
	            		<a class="btn btn-outline-primary" href="#">Older</a>
	            		<a class="btn btn-outline-secondary disabled" href="#">Newer</a>
	          		</nav>
        		
        	</div> <!-- /.blog-main -->

        	<aside class="col-md-4 blog-sidebar">
          		<div class="p-3 mb-3 bg-light rounded">
            		<h4 class="font-italic">About</h4>
            		<p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          		</div>

          		<div class="p-3">
            		<h4 class="font-italic">Archives</h4>
            		<ol class="list-unstyled mb-0">
			        	<li><a href="#">March 2014</a></li>
			            <li><a href="#">February 2014</a></li>
			            <li><a href="#">January 2014</a></li>
			            <li><a href="#">December 2013</a></li>
			            <li><a href="#">November 2013</a></li>
			            <li><a href="#">October 2013</a></li>
			            <li><a href="#">September 2013</a></li>
			            <li><a href="#">August 2013</a></li>
			            <li><a href="#">July 2013</a></li>
			            <li><a href="#">June 2013</a></li>
			            <li><a href="#">May 2013</a></li>
			            <li><a href="#">April 2013</a></li>
            		</ol>
          		</div>

          		<div class="p-3">
            		<h4 class="font-italic">Elsewhere</h4>
            		<ol class="list-unstyled">
              			<li><a href="#">GitHub</a></li>
              			<li><a href="#">Twitter</a></li>
              			<li><a href="#">Facebook</a></li>
            		</ol>
          		</div>
        	</aside><!-- /.blog-sidebar -->
    	</div><!-- /.row -->
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