<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE NAME</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>
<style>
label{
width: 110px;
margin-left: 60px;
}
</style>
	<form action=updatname method="post">
		<h1>UPDATE DETAILS</h1>
		<label>NAME :</label> <input type="text" name="name" placeholder="enter your name"
			required><br> <a href="home.jsp"> <input
			type="button" value="CANCEL" class="but"></a> <input
			type="submit" value="UPDATE" class="but">

	</form>
</body>
</html>