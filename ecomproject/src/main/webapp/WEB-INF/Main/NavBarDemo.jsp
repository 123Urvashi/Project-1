<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<head>
<title>Fragrances Forever</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<style>
.carousel-inner>.item>img {
	margin: auto;
}

if you want to have the image full size inside of the carousel add width
	.carousel-inner>.item>img {
	margin: auto;
	width: 100%
}

.navbar-brand {
	padding-left: 20px;
	padding-top: 0px;
	z-index: 999;
	position: relative;
}
</style>

<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="NavBarDemo"><img
					src="Image/LOGO.jpg" width="35px" height="50px" class="img-fit" ></a>
			</div>

			<div class="collapse navbar-collapse" id="NavBarDemo">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="${session.getContextPath()}/ecomproject/Carousel">Home</a></li>
					<li><a
						href="${session.getContextPath()}/ecomproject/FeedbackForm">Contact Us</a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span></a></li>
					<li><a href="Register">Sign Up</a></li>
					<li><a href="SignIn">Sign In</a></li>
					<li><a href="#">Sign out</a></li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>