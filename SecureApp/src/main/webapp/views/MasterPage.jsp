   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page import="com.telusko.secureapp.CommentEntity"%>
<%@page import="com.telusko.secureapp.HomeController"%>
<%@page import="java.util.List"%>

<spring:url var="css" value = "/assets/css"/>
<spring:url var="js" value = "/assets/js"/>
<spring:url var="images" value = "/assets/images"/>
    
<!DOCTYPE html>
<html lang="en">
<head>

<title>${title}</title>

<meta charset="ISO-8859-1">
 <!-- Required meta tags -->
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
      <!-- Bootstrap CSS -->
    <script type="text/javascript" src="${js}/myproject.js"></script>
    <link rel="stylesheet" href="${css}/newcss.css">
    <link rel="stylesheet" href="${css}/mycss.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>
<body class="mybody">

<!-- Navbar content -->

<%@include file="./navbar.jsp" %>
<br>

<!-- home page -->
<c:if test="${home==true}">
<%@include file="./home.jsp" %>
</c:if>

<!-- ABout Us -->
<c:if test="${aboutUs==true}">
<%@include file="./AboutUs.jsp" %>
</c:if>

<c:if test="${account==true}">
<%@include file="./MyAccountPage.jsp" %>
</c:if>

<c:if test="${story==true}">
<%@include file="./StoryWriting.jsp" %>
</c:if>

<c:if test="${edit==true}">
<%@include file="./EditProfile.jsp" %>
</c:if>

<c:if test="${cateGoryFilter==true}">
<%@include file="./CategoryFilter.jsp" %>
</c:if>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   
</body>
</html>