<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signin</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="viewpassword.js"></script>
</head>
<body>
	<style>
form {
	width: 450px;
	height: 500px;
	margin-top: 300px;
	margin: 50px auto;
	background: rgba(118, 128, 131, 0.6);
	padding: 35px;
	border: 3px solid black;
	border-radius: 70px 0 70px 0;
	box-shadow: 10px 20px 30px rgb(27, 28, 29);
}

label {
	width: 180px;
	display: inline-block;
	margin: 10px;
	color: white;
	font-size: large;
	font-style: normal;
	font-weight: 900;
}

input {
	width: 177px;
	height: 25px;
	color: aliceblue;
	border-radius: 10px 0 10px 0;
	border: 2px solid rgb(245, 241, 241);
	margin-bottom: 10px;
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.type {
	width: 15px;
	height: 15px;
	margin-left: 30px;
}

::placeholder {
	color: rgb(182, 216, 162);
	text-align: center;
}

legend {
	text-align: center;
	font-size: xx-large;
	margin-bottom: 20px;
	color: white;
}

body {
	background-image: url("nature.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	width: 100%;
	height: 600px;
}

.but {
	margin: 10px 0 20px 12px;
	color: white;
	font-weight: bold;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.but:hover {
	border: 2px solid red;
	color: red;
}

input:hover {
	border: 3px solid rgb(224, 250, 164);
}

.but:active {
	border: 2px solid rgb(8, 8, 8);
	color: rgb(10, 10, 10);
}

a {
	color: rgb(192, 190, 201);
	margin: 0px 0 0 180px;
	font-size: medium;
	font-weight: 600;
	padding: 0 5px 5px 5px;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	margin: 0px 0 0 180px;
}

a:hover {
	color: black;
}

a:active {
	background-color: rgb(204, 194, 194);
	color: black;
}

#select_box {
	width: 180px;
	height: 25px;
	color: aliceblue;
	border-radius: 10px 0 10px 0;
	border: 2px solid rgb(245, 241, 241);
	margin-bottom: 10px;
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.vehicle {
	width: 15px;
	height: 15px;
	margin-left: 30px;
}

.vehicle {
	width: 15px;
	height: 15px;
	margin-left: 17px;
}

#select_box {
	width: 188px;
	height: 30px;
	color: aliceblue;
	border-radius: 10px 0 10px 0;
	border: 2px solid rgb(245, 241, 241);
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

#select_box:hover {
	border: 3px solid rgb(224, 250, 164);
}

option {
	color: black;
}

h4 {
	display: inline-block;
	color: aliceblue;
	font-size: 20px;
	font-weight: 500;
	font-family: inherit;
}
#pass_visible {
  display: flex;
}

#eye {
  padding-top: 0px;
  height: 20px;
  width: 30px;
  color: rgb(243, 235, 235);
  border: none;
  font-size: 14px;
  cursor: pointer;
}

#pass_input {
  width: 145px;
 height: 30px
  border-radius: 10px 0 0 0;
  border: none;
  outline: none;
  
}

#pass_eye {
  border: 2px solid rgb(245, 241, 241);
  margin-top: 3px;
  margin-left:2px;
  height: 29px;
  border-radius: 10px 0 10px 0;
}
#pass_eye:hover {
  border: 2px solid rgb(224, 250, 164);
}
#email_input:hover {
  border: 2px solid rgb(224, 250, 164);
}
#eye:hover{
color:rgb(29, 27, 27)
}
</style>
	<div style="text-align: center; color: white; margin-top: 10px;">
		<%
		String select_option = (String) request.getAttribute("select_option");
		String duplicate_email = (String) request.getAttribute("duplicate_email");
		%>
		<%
		if (select_option != null) {
		%>
		<h2><%=select_option%></h2>
		<%
		}
		%>
		<%
		if (duplicate_email != null) {
		%>
		<h2><%=duplicate_email%></h2>
		<%
		}
		%>
	</div>
	>
	<form action="signin" method="post" autocomplete="off">
		<fieldset>
			<legend>WELCOME</legend>
			<label>NAME : </label> <input type="text"
				placeholder="enter your name" name="name" autofocus required><br>
			<label>AGE : </label> <input type="number" name="age" min="18"
				max="50" required><br> <label>PHONE NUMBER : </label> <input
				type="tel" maxlength="10" minlength="10" placeholder="00000 00000"
				name="pnone_number" required><br> 
				
				<label>EMAIL : </label> 
				<input type="email" name="email" placeholder="abc@gmail.com"required><br> 
				<div id="pass_visible">
					<label>PASSWORD : </label> 
					<div id="pass_eye">
						<input type="password" id="pass_input" name="password" autofocus title="enter your password" placeholder="*******" minlength="8" required> 
						<span id="eye" onclick="toogle('pass_input','eye')" class="fas fa-eye-slash"></span>
					</div>
				</div>
				
				<label>ADDRESS : </label> 
				<select	name="address" id="select_box" required>
				<option value="">SELECT YOUR ADDRESS</option>
				<option value="CHENNAI">CHENNAI</option>
				<option value="DELHI">DELHI</option>
				<option value="MUMBAI">MUMBAI</option>
				<option value="HYDRABAD">HYDRABAD</option>
			</select><br>
			<!--       <input type="text" placeholder="enter your address" name="address" required><br> -->
			<label>VEHICLE TYPE : </label>
			<!--        <input type="text" placeholder="CAR & BIKE" name="vehicle" required><br> -->
			<input type="checkbox" name=vehicle value="BIKE" class="vehicle">
			<h4>BIKE</h4>
			<input type="checkbox" name=vehicle value="CAR" class="vehicle">
			<h4>CAR</h4>
			<input type="submit" class="but"> <input type="reset"
				class="but"><br> <a href="login.jsp">Back</a>
		</fieldset>
	</form>

</body>
</html>