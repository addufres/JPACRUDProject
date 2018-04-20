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
	display: block;
	padding-left: auto;
	padding-right: auto;
	width: auto;
}
</style>
<title>${car.year } ${car.model } ${car.make }</title>
</head>
<body>
<h1>Fill out this form to submit a car.</h1>
<small>All fields are required</small>
	<div>
		<form action="updateCar.do" method="POST" class="centered">
		<input type="hidden" name="id" value="${car.id }"/>
		<p>Year <input type="text" name="year" value="${car.year }" /> </p>
		<p>Make <input type="text" name="make" value="${car.make }" /> </p>
		<p>Model <input type="text" name="model" value="${car.model }" /> </p>
		<p>Category <input type="text" name="category" value="${car.category }"></p>
		<p>Color <input type="text" name="color" value="${car.color }" /> </p>
		<p>Mileage <input type="text" name="mileage" value="${car.mileage }" /> </p>
		<p>Engine <input type="text" name="engine" value="${car.engine }" /> </p>
		<p>Horsepower <input type="text" name="hp" value="${car.hp }" /> </p>
		<p>Torque in Foot Pounds <input type="text" name="tq" value="${car.tq }" /> </p>
		<p>0-60 in Seconds <input type="text" name="zeroToSixty" value="${car.zeroToSixty }" /> </p>
		<p>Top Speed <input type="text" name="topSpeed" value="${car.topSpeed }" /> </p>
		<p>Goodie Bits <textarea name="aftermarketParts" rows="10" cols="30">${car.aftermarketParts }</textarea></p> 
		<p>Price <input type="text" name="cost" value="${car.cost }" /> </p>
		<p>Image URL <input type="text" name="image" value="${car.image }" /> </p>
		<p>WIKI Page <input type="text" name="wiki" value="${car.wiki }" /> </p>
		<p><input type="submit" value="Update Car" /></p>
	</form>
		<a href="index.do">Head back to the main garage =></a>
	</div>
	
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