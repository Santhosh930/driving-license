<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE AGE</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>
<style>
label{
width: 100px;
margin-left: 60px;
}

</style>
	<form action="updateage" method="post">
		<h1>UPDATE DETAILS</h1>
		<label>AGE :</label> <input type="number" name="age" min="18" max="50"
			required><br> <a href="home.jsp"> <input
			type="button" value="CANCEL" class="but"></a> <input
			type="submit" value="UPDATE" class="but">

	</form>

</body>
</html>