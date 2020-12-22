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

<script type="text/javascript" src="${js}/Validation.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>SignIn Page</title>
		
</head>

<body class="mybody">
 
 <section class="form my-5">
 	<div class="container">
 		<div class="row no-gutters">
 			<div class="col-lg-5">
 				<img src="${images}/register.jpg" class="img.fluid" alt="" height="100%" width="100%">
 			</div>
 			<div class="col-lg-7 px-5 pt-1">
 			<div class="mx-5">
 			   <h1 class="front-weight-bold py-3">SignIn</h1>
 			</div>
 				<form class="my-1 mx-5" action = "/SignIn/RegisterOTP" method="post" onsubmit = "return checkPassword(this)">
 					<div class="form-row">
 						<div class="col-lg-7 my-2">
 						<c:if test="${error==true}">
 							<div class = "loginError">*UserID (${useridtaken}) already taken</div>
 				        </c:if>
 							<input type="text" placeholder="Name" class="p-4" name="name" id ="idname" maxlength="40" required/>
 							<!-- Error -->
                            <div class="ErrorValidation" id="NameError"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7 my-2">
 							<input type="text" placeholder="Unique UserID(abcd_123)" class="p-4" name="username" id="idusername" maxlength="20" required/>
 							<!-- Error -->
                            <div class="ErrorValidation" id="UsernameError"></div>
 						</div>
 					</div>
 						<div class="form-row">
 						<div class="col-lg-7 my-2">
 							<input type="text" placeholder="abc@gmail.com" class="p-4" name="email" id="idemail" required/>
 							<!-- Error -->
                            <div class="ErrorValidation" id="EmailError"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7 my-2">
 							<input type="password" placeholder="New Password" class="p-4" name="password" id="idpassword" value="" maxlength="30" required />
 							<!-- Error -->
                            <div class="ErrorValidation" id="PasswordError"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7 my-2">
 							<input type="password" placeholder="Re-Enter Password" id="idconfirmpassword" class="p-4" name="confirmpassword"
                                value=""  maxlength="30" required/>
 							<!-- Error -->
                            <div class="ErrorValidation" id="ConfirmpasswordError"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7">
 							<button type="submit" class="btn1 mt-3 mb-1 btn-block">Submit</button>
 						</div>
 					</div>
 					<div class="mb-3">Go back to <a href="/login">Login</a> ?</div>
 					</form>
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