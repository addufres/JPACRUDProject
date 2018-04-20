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
		<form action="addCar.do" method="POST" class="centered">
		<p>Year <input type="text" name="year" placeholder="e.g. 1999" /> </p>
		<p>Make <input type="text" name="make" placeholder="e.g. Honda" /> </p>
		<p>Model <input type="text" name="model" placeholder="e.g. Civic" /> </p>
		<p>Category <select name="category">
			<!--Supplement an id here instead of using 'text'-->
			<option value="FWD Daily">FWD Daily</option>
			<option value="FWD Sports" selected>FWD Sports</option>
			<option value="FWD Race">FWD Race</option>
			<option value="AWD/4WD Daily">AWD/4WD Daily</option>
			<option value="AWD/4WD Sports">AWD/4WD Sports</option>
			<option value="AWD/4WD Race">AWD/4WD Race</option>
			<option value="RWD Daily">RWD Daily</option>
			<option value="RWD Sports">RWD Sports</option>
			<option value="RWD Race">RWD Race</option>
		</select></p>
		<p>Color <input type="text" name="color" placeholder="e.g. Green" /> </p>
		<p>Mileage <input type="text" name="mileage" placeholder="e.g. 40000" /> </p>
		<p>Engine <input type="text" name="engine" placeholder="e.g. LS6 " /> </p>
		<p>Horsepower <input type="text" name="hp" placeholder="e.g. 250 " /> </p>
		<p>Torque in Foot Pounds <input type="text" name="tq" placeholder="e.g. 300 " /> </p>
		<p>0-60 in Seconds <input type="text" name="zeroToSixty" placeholder="e.g. 5.5 " /> </p>
		<p>Top Speed <input type="text" name="topSpeed" placeholder="e.g. 155 " /> </p>
		<p>Goodie Bits <input type="text" name="aftermarketParts" placeholder="e.g. intake,exhaust, etc. " /></p> 
		<p>Price <input type="text" name="cost" placeholder="e.g. 40000 " /> </p>
		<p>Image URL <input type="text" name="image" placeholder="e.g. https://www.carpic.com " /> </p>
		<p>WIKI Page <input type="text" name="wiki" placeholder="e.g. https://www.wikipedia.com/mycar " /> </p>
		<p><input type="submit" value="Add Car" /></p>
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