<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE ADDRESS</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>
	<style>
#select_box {
	width: 158px;
	height: 30px;
	color: aliceblue;
	border-radius: 10px 0 10px 0;
	border: 2px solid rgb(245, 241, 241);
	margin-bottom: 10px;
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

#select_box:hover {
	border: 3px solid rgb(224, 250, 164);
}

label {
	width: 110px;
	margin-left: 50px;
}

option {
	color: black;
}
</style>
	<form action="updateaddress" method="post">
		<h1>UPDATE DETAILS</h1>
		<label>ADDRESS :</label>
		<!--     <input type="text" placeholder="enter your address" name="address" required><br> -->
		<select name="address" id="select_box" required>
			<option value="">SELECT ADDRESS</option>
			<option value="CHENNAI">CHENNAI</option>
			<option value="DELHI">DELHI</option>
			<option value="MUMBAI">MUMBAI</option>
			<option value="HYDRABAD">HYDRABAD</option>
		</select><br> <a href="home.jsp"> <input type="button" value="CANCEL"
			class="but"></a> <input type="submit" value="UPDATE" class="but">

	</form>
</body>
</html>