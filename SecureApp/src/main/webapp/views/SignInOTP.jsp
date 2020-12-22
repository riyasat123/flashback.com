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

<link rel="stylesheet" href="${css}/mycss.css">
<script type="text/javascript" src="${js}/myproject.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>OTP Page</title>

</head>

<body class="mybody">
 
  <div class="container">
 <div class="row px-4">
 <div class="col-lg-4">
 </div>
 
 <div class="editprofile my-5 ml-1 col-lg-4">

         <form action="/SignIn/RegisterOTP/confirmSignInOTP" onsubmit = "return checkOTP(this)">
         <div>
         <p id="errorOTP" Style="color: red; margin-top: 15px;">You Received OTP on Register Email ID ${otp}</p>
        </div>
         <div>
         <input type="hidden" value="${otp}" name="sysotp" id="inputName" required/>
         <!-- Error -->
         <div class="help-block with-errors"></div>
        </div>
         <div>
         <input type="text" id= "userotpID" name="userotp" required/>
         <!-- Error -->
         <div class="help-block with-errors"></div>
        </div>
		<button type="submit" class="btn1 mt-2 mb-3">Submit</button>
   </form>
   
   </div>
   </div>
   </div>
 



  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>