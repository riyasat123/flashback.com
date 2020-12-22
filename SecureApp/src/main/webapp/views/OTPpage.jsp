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
<script type="text/javascript" src="${js}/myproject.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>OTP Page</title>

</head>

<body class="otppagebody">
 
 <section class="form my-5">
 	<div class="container">
 			<div class="col-lg-7 px-5 pt-1">
 			<div class="mx-5">
 			   <p class="front-weight-bold pt-3" id="errorOTP" Style="color: red">You Received OTP on Register Email ID ${otp}</p>
 			</div>
 				<form class="my-1 mx-5" role="form" onsubmit = "return checkOTP(this)" action="updatepassword" method="post">
 					<div class="form-row">
 						<div class="col-lg-7">
 							<input type="hidden" value="${otp}" name="sysotp" class="form-control my-2 p-4" id="inputName" name="username" required/>
 							<!-- Error -->
                            <div class="help-block with-errors"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7">
 							<input type="text" placeholder=" 4 Digit OTP" id= "userotpID" name="userotp" class="form-control my-2 p-4" required />
 							<!-- Error -->
                            <div class="help-block with-errors"></div>
 						</div>
 					</div>
 					<div class="form-row">
 						<div class="col-lg-7">
 							<button type="submit" class="btn1 my-3 btn-block">Confirm OTP</button>
 						</div>
 					</div>
 				</form>
 		</div>	
 	</div>
 </section>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>