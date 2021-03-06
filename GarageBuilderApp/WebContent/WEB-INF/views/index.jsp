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
<style type="text/css">


img {
	width: 85%;
	height: 60%;
}

.carDisplay {
	background-color: lightgray;
	border: 3px black solid;
	margin-top: 3px;
}

.centered {
	text-align: center;
}

.cursive {
	font-family: cursive;
}

.image_center {
	display: block;
	padding-left: auto;
	padding-right: auto;
	width: auto;
}
.top_corner {
	left: .5px;
	top: .5px;
	padding: 0px 0px 0px 0px;
	margin: 0px 0px 0px 0px;
	color: darkblue;
}
.dark_text {
	color: darkblue;
}
</style>
<title>Home</title>
</head>
<body>
<div class="display_box">
<a class="top_corner" href="https://github.com/addufres/JPACRUDProject/blob/master/README.md" target="_blank">Github repo for this application</a>

	<div class="row">
		<div class="col"></div>
		<div class="col-8">
			<!--  title section -->
			<div class="headliner centered">
				<h1 class="titlebar">
					<strong>PitStop Garage</strong>
				</h1>
				<font size="3" class="cursive"><em>An easy interface to
						view, add, delete, and update your garage inventory</em></font>
			</div>
			<!--  end title section -->
			<!--  form section -->
			<div>
				<form action="getCar.do" method="GET" class="centered">
					<input type="text" name="cid" placeholder="Car ID number" /> <input
						type="submit" value="Find Car" />
				</form>
			</div>
			<div>
				<form action="addCarRedir.do" method="GET" class="centered">
					<input type="submit" value="Add a Car" />
				</form>
			</div>
		</div>
		<div class="col"></div>
		<!--  end form section -->
	</div>
	</div>
	<br>
	<!-- list of all films -->
	<div class="tiny_box display_box"><h3 class="centered">List of All Cars</h3></div>
	<div>
		<c:forEach var="car" items="${cars}">
			<div class="carDisplay centered">
				<h5>
				<a class="dark_text" href="getCar.do?cid=${car.id}">
					<p>${car.year }</p>
					<p>${car.make }</p>
					<p>${car.model }</p>
				</a>	
				</h5>

				<p>${car.hp }hp</p>
				<p>${car.tq }ft/lb</p>
				<p>$${car.cost }</p>
				<div class="image_center">
					<img src="${car.image }" alt="Image of a ${car.make } ${car.model}">
				</div>
				<form action="updateCarRedir.do" method="GET" class="centered">
					<input type="hidden" value="${car.id }" name="cid" /> <input
						type="submit" value="Update Car" />
				</form>
			</div>
		</c:forEach>
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