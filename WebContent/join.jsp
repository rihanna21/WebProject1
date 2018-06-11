<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
   	<meta charset="utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
   	<!-- Bootstrap core CSS -->
   	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
   	<!-- Custom styles for this template -->
	<link href="css/common.css" rel="stylesheet">
   	<link href="css/join.css" rel="stylesheet">

   	<title>Sign in Template for NewsScrapper</title>
</head>
<body>
	<div class="container">
		<div class="text-center">
       		<img class="mb-4" src="http://www.w3.org/2000/svg" alt="" width="72" height="72">
   			<h1 class="h3 mb-3 font-weight-normal">join in to Blog</h1>
   		</div>
   		<hr class="mb-3">
		
		<form action="join.do" class="needs-validation" method="post" novalidate>
        	<div class="row">
            	<div class="col-md-6 mb-3">
            		<label for="firstName">First name</label>
                	<input type="text" class="form-control" name="firstName" placeholder="" value="" required>
                	<div class="invalid-feedback">
                  		Valid first name is required.
                	</div>
              	</div>
              	<div class="col-md-6 mb-3">
               		<label for="lastName">Last name</label>
                	<input type="text" class="form-control" name="lastName" placeholder="" value="" required>
                	<div class="invalid-feedback">
                  		Valid last name is required.
                	</div>
              	</div>
            </div>

            <div class="mb-3">
            	<label for="username">Username</label>
              	<div class="input-group">
                	<div class="input-group-prepend">
                  		<span class="input-group-text">@</span>
                	</div>
                	<input type="text" class="form-control" name="id" placeholder="Username" required>
                	<div class="invalid-feedback" style="width: 100%;">
                  		Your username is required.
                	</div>
              	</div>
            </div>

            <div class="mb-3">
            	<label for="email">Email</label>
              	<input type="email" class="form-control" name="email" placeholder="you@example.com" required>
              	<div class="invalid-feedback">
                	Your email is required.
              	</div>
            </div>
            
            <div class="mb-3">
            	<label for="password">Password</label>
              	<input type="password" class="form-control" name="password" placeholder="" required>
              	<div class="invalid-feedback">
                	Your password is required.
              	</div>
            </div>

        	<button class="btn btn-primary btn-lg btn-block" type="submit">Create an account</button>
        </form>
   		
   		<div class="text-center">
	   		<hr class="mb-3">
	   		<p class="text-muted">
	   			계정이 있으신가요?
	   			<a href="sign.jsp">로그인하기</a>
	   		</p>
   		</div>
   	</div>
   	
   	<footer class="my-5 pt-5 text-muted text-center text-small">
       	<p class="mb-1">&copy; 2018 </p>
       	<ul class="list-inline">
   			<li class="list-inline-item"><a href="#">Home</a></li>
   			<li class="list-inline-item"><a href="#">Privacy</a></li>
   			<li class="list-inline-item"><a href="#">Terms</a></li>
   			<li class="list-inline-item"><a href="#">Support</a></li>
   		</ul>
	</footer>
    	
   	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/assets/jquery-slim.min.js"><\/script>')</script>
    <script src="bootstrap/assets/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/assets/holder.min.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
</body>
</html>