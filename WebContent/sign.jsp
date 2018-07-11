<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
   	<link href="css/sign.css" rel="stylesheet">

   	<title>Science Review</title>
   	
</head>
<body>
	<div class="container">
		<div class="text-center">
       		<img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
   			<h1 class="h3 mb-3 font-weight-normal">sign in to Science Times</h1>
   		</div>
   		<hr class="mb-3">
		
		<form action="login.do" class="form-sign" method="post">
   			<label for="inputEmail" class="sr-only">Email address</label>
      		<input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
      		<label for="inputPassword" class="sr-only">Password</label>
      		<input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
      		<div class="checkbox mb-3">
        		<label>
          			<input type="checkbox" value="remember-me"> Remember me
        		</label>
   			</div>
   			
   			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
   			<div class="text-center">
   				<c:choose>
   					<c:when test="${!empty msg}">
   						<br>
	   					<font color='red' size='3'>${msg}</font>
   					</c:when>
   					<c:otherwise>
   						<font color='red' size='3'>${msg}</font>
   					</c:otherwise>
   				</c:choose>
   			</div>
      	</form>
   		
   		<div class="text-center">
   			<hr class="mb-3">
   			<p class="text-muted">
   				계정이 없으신가요?
   				<a href="join.jsp">가입하기</a>
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
    	
   	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    	
</body>
</html>