<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value = "/assets/css"/>
<spring:url var="js" value = "/assets/js"/>
<spring:url var="images" value = "/assets/images"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="${css}/signIn.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Login Page</title>

</head>

<body class="mybody">
 
 <section class="form my-5">
 	<div class="container">
 		<div class="row no-gutters">
 			<div class="col-lg-5">
 				<img src="${images}/login.jpg" class="img.fluid" alt="" height="100%" width="100%">
 			</div>
 			<div class="col-lg-7 px-5 pt-1">
 			<div class="mx-5">
 			   <h1 class="front-weight-bold pt-3">Login</h1>
 			</div>
 				<form class="mx-5" role="form" data-toggle="validator" action="login" method="post">
 					<div class="form-row">
 						<div class="col-lg-7 my-2">
 							<div class="loginError">${SPRING_SECURITY_LAST_EXCEPTION.message}</div>
 							<input type="text" placeholder="UserID" class="p-4" data-error="You must have a name." id="inputName" name="username" required/>
 							<!-- Error -->
                            <div class="help-block with-errors"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7">
 							<input type="password" placeholder="******" class="my-2 p-4" name="password" data-error="Have atleast 4 characters"  required />
 							<!-- Error -->
                            <div class="help-block with-errors"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7">
 							<button type="submit" class="btn1 my-3 btn-block">Login</button>
 						</div>
 					</div>
 					</form>
 					<a href="/forgotPassword/UserDetails">Forgot Password ?</a>
 					<p>Don't have an account ?<a href="/SignIn">Register here</a></p>
 			</div>	
 		</div>
 	</div>
 </section>
 

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
</body>
</html>