<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE VEHICLE</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>

	<div style="text-align: center; color: white; margin-top: 10px;">
		<%
		String select_option = (String) request.getAttribute("select_option");
		%>
		<%
		if (select_option != null) {
		%>
		<h2><%=select_option%></h2>
		<%
		}
		%>

	</div>
	<style>
.vehicle {
	width: 15px;
	height: 15px;
	margin-left: 10px;
}

label {
	width: 155px;
	margin-left: 25px;
}

h4 {
	padding-top: -50px;
	display: inline-block;
	color: aliceblue;
	font-size: 20px;
	font-weight: 500;
	font-family: inherit;
}
</style>
	<form action="updatevehicle" method="post">
		<h1>UPDATE DETAILS</h1>
		<label>VEHICLE TYPE :</label> <input type="checkbox" name=vehicle
			value="BIKE" class="vehicle" >
		<h4>BIKE</h4>
		<input type="checkbox" name=vehicle value="CAR" class="vehicle">
		<h4>CAR</h4>

		<!--     <input type="text" placeholder="     CAR & BIKE" name="vehicle" required><br> -->

		<a href="home.jsp"> <input type="button" value="CANCEL"
			class="but"></a> <input type="submit" value="UPDATE" class="but">

	</form>
</body>
</html>