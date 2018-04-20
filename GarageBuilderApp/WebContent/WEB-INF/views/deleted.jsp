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
	<div>
	<h3>SUCCESS! You have deleted the vehicle!</h3>
		
		<a href="index.do">Head back to the main garage =></a>
	</div>
	<!-- search form -->
	<form action="getCar.do" method="GET" class="centered">
		<p>Search for another vehicle
		<input type="text" name="cid" placeholder="Car ID Number" /></p>
		 <input type="submit" value="Find Car" />
	</form>
	<!-- end search form -->
	<!-- add car form -->
	<form action="addCarRedir.do" method="GET" class="centered">
		<input type="submit" value="Add A Car" />
	</form>
	<!-- end add car form -->
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