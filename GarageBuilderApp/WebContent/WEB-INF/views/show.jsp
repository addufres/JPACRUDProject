<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">

<!-- 
<style type="text/css">
body {
	padding: 10px 10px 10px 10px;
	background-color: lightgray;
	text-align: center;
}

div {
	padding: 10px 10px 10px 10px;
}

ul>li {
	list-style: none;
}

.image_center {
	position:relative;
	padding-left: auto;
	padding-right: auto;
	width: auto;
	height: auto;
}
.display_box {
	background-color: lightgray;
	border: 3px black solid;
	margin-top: 3px;
}
</style>
-->
<c:choose>
<c:when test="${empty car }">
<title>No Car Found</title>
</c:when>
<c:otherwise>
<title>${car.year } ${car.model } ${car.make }</title>
</c:otherwise>
</c:choose>
</head>
<body>
	<div class="display_box">
	<c:choose>
	<c:when test="${empty car }">
		<h1>NO CAR FOUND TRY LOWER ID NUMBER</h1>
	</c:when>
	<c:otherwise>
		<h5>
			<strong>${car.year } </strong><a href="${car.wiki }" target="_blank"><strong>${car.make }
			</strong> <strong>${car.model }</strong></a> <strong>$${car.cost }</strong>
		</h5>
		<ul>
			<li><strong>Category</strong>: ${car.category }</li>
			<li><strong>Color</strong>: ${car.color }</li>
			<li><strong>Engine</strong>: ${car.engine }</li>
			<li><strong>Horsepower</strong>: ${car.hp }</li>
			<li><strong>Torque</strong>: ${car.tq }</li>
			<c:choose>
				<c:when test="${ not empty car.zeroToSixty }">
					<li><strong>0-60</strong>: ${car.zeroToSixty}</li>
				</c:when>
				<c:otherwise>
					<li><strong>0-60</strong>: Real fast bruh...</li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty car.topSpeed }">
					<li><strong>Top Speed</strong>: A nice mosey.</li>
				</c:when>
				<c:otherwise>
					<li><strong>Top Speed</strong>: ${car.topSpeed}mph</li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty car.aftermarketParts }">
					<li><strong>Goodie Bits</strong>: None yet.</li>
				</c:when>
				<c:otherwise>
					<li><strong>Goodie Bits</strong>: ${car.aftermarketParts}.</li>
				</c:otherwise>
			</c:choose>
		</ul>
		<div class="image_center">
			<img src="${car.image }" alt="Image of a ${car.make } ${car.model}">
		</div>
		
		</c:otherwise>
	</c:choose>	
	</div>
	
	<div class="display_box">
		<a href="index.do">Head back to the main garage =></a>
	<!-- search form -->
	<form action="getCar.do" method="GET" class="centered">
		<p>Search for another vehicle
		<input type="text" name="cid" placeholder="Car ID Number" />
		 <input type="submit" value="Find Car" /></p>
	</form>
	<!-- end search form -->
	<!-- update form -->
	<form action="updateCarRedir.do" method="GET" class="centered">
		<p>Update this vehicle
		<input type="hidden" value="${car.id }" name="cid"/>
		<input type="submit" value="Update Car" /></p>
	</form>
	<!-- end update form -->
	<!-- delete form -->
	<form action="deleteCar.do" method="POST" class="centered">
		<p>Delete this vehicle
		<input type="hidden" value="${car.id }" name="cid"/>
		<input type="submit" value="Delete Car" /></p>
	</form>
	
	</div>
	<!-- end delete form -->
	<div class="row">
		<div class="col-12"></div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>