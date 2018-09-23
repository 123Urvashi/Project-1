<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ include file="NavBarDemo.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Carousel</title>
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
</style>

<body>
	<div class="container">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
				<li data-target="#myCarousel" data-slide-to="6"></li>

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="img-responsive" src="resources/Image/Chanel_W.jpg" alt="IMAGE 1"
						width=30% height=30%>
				</div>

				<div class="item">
					<img src="resources/Image/Chanel_M.jpg" alt="IMAGE 2" width=30% height=30%
						align="middle">
				</div>

				<div class="item">
					<img src="resources/Image/Versace_W.png" alt="IMAGE 3" width=28.5%
						height=28.5% align="middle">
				</div>

				<div class="item">
					<img src="resources/Image/Versace_M.png" alt="IMAGE 4" width=28.5%
						height=28.5% align="middle">
				</div>

				<div class="item">
					<img src="resources/Image/Hugo_Boss_W.jpg" alt="IMAGE 5" width=26.3%
						height=26.3% align="middle">
				</div>

				<div class="item">
					<img src="resources/Image/Hugo_Boss_M.jpg" alt="IMAGE 6" width=26.3%
						height=26.3% align="middle">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- carousel end -->

	</div>
</body>
</html>