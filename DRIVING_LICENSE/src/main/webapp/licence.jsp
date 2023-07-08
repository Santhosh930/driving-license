<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GENERATE LICENCE</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>
<style>


fieldset {
	border: 3px solid black;
	height: 320px;
	width: 460px;
	margin: auto;
	margin-top: 150px;
	background: white;
	box-shadow: 10px 20px 30px rgb(27, 28, 29);
	border-radius: 10px 10px 10px 10px;
}

.headder {
	height: 48px;
	width: 460px;
	margin: auto;
	padding-top: 10px;
	border-radius: 10px 10px 0px 0px;
	text-align: center;
	color: white;
	font-weight: 200px;
	background-color: rgb(112, 189, 212);
	margin: 0;
}


th, td {
	padding-top: 1px;
	padding-bottom: 1px;
	padding-left: 8px;
	padding-right: 0px;
}

.fa-solid {
	text-align: right;
	margin-left: 55px;
	padding-right: -5px;
}
body{
	background-color: rgb(168, 184, 181);
}

form {
	
	display: flex;
	justify-content:center;
	margin-top: 50px;
	
	
}

input {
	
	border-radius: 13px 0 13px 0;
	border: 3px solid rgb(245, 241, 241);
	margin-bottom: 10px;
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.but {
	width: 100px;
	height: 35px;
	text-align:center;
	color: white;
	font-weight: bold;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	margin-right: 70px;
	margin-left: 50px;
	
}

.but:hover {
	border: 2px solid red;
	color: red;
}

.but:active {
	border: 2px solid rgb(8, 8, 8);
	color: rgb(10, 10, 10);
}
</style>
	<fieldset>
		<h1 class="headder">DRIVING LICENCE</h1>


		<%
		String p_name = (String) request.getAttribute("p_name");
		String p_licenceno = (String) request.getAttribute("p_licenceno");
		String p_age = (String) request.getAttribute("p_age");
		String p_phoneno = (String) request.getAttribute("p_phoneno");
		String p_vehicle = (String) request.getAttribute("p_vehicle");
		String p_address = (String) request.getAttribute("p_address");
		%>


		<%
		if (p_licenceno != null) {
		%><table
			style="padding-bottom: -30px; padding-left: 10px; line-height: 0px; height: 250px; width: 460px; padding-top: 15px; border: 3px solid rgb(112, 189, 212);">
			<tr>
				<td rowspan="4"><img src="profile1.jpg" alt="profile"
					style="padding-left: 40px; height: 150px; margin-top: auto; width: auto;"></td>
				<th>
					<h2
						style="color: black; font-size: 13px; font-weight: bolder; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; text-align: right; font-size: 13px;">ID
						:</h2>
				</th>
				<td>
					<h2
						style="font-size: medium; font-weight: 800; font-family: Courier, monospace; text-align: left;"><%=p_licenceno%></h2>
				</td>
			</tr>
			<%
			}
			%>

			<%
			if (p_address != null) {
			%>
			<tr>

				<th>
					<h2
						style="color: black; font-size: 13px; font-weight: bolder; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; text-align: right; font-size: 13px;">ADDRESS
						:</h2>
				</th>
				<td>
					<h2
						style="font-size: medium; font-weight: 800; font-family: Courier, monospace; text-align: left;"><%=p_address%></h2>
				</td>
			</tr>
			<%
			}
			%>

			<%
			if (p_age != null) {
			%>
			<tr>

				<th>
					<h2
						style="color: black; font-size: 13px; font-weight: bolder; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; text-align: right; font-size: 13px;">AGE
						:</h2>
				</th>
				<td>
					<h2
						style="font-size: medium; font-weight: 800; font-family: Courier, monospace; text-align: left;"><%=p_age%></h2>
				</td>
			</tr>
			<%
			}
			%>

			<%
			if (p_phoneno != null) {
			%>
			<tr>

				<th><i class="fa-solid fa-phone-volume"></i></th>
				<td>
					<h2
						style="font-size: medium; font-weight: 800; font-family: Courier, monospace; text-align: left;"><%=p_phoneno%></h2>
				</td>
			</tr>
			<%
			}
			%>

			<%
			if (p_vehicle != null) {
			%>
			<tr>
				<td>
					<h2
						style="font-size: larger; font-weight: lighter; text-align: center;"><%=p_name%></h2>
				</td>
				<th>
					<h2
						style="color: black; font-size: 13px; font-weight: bolder; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; text-align: right; font-size: 13px;">VEHICLE
						:</h2>
				</th>
				<td>
					<h2
						style="font-size: medium; font-weight: 800; font-family: Courier, monospace; text-align: left;"><%=p_vehicle%></h2>
				</td>
			</tr>
		</table>
		<%
		}
		%>

	</fieldset>
	<form action="logout" method="get">
		<a href="home.jsp"> <input type="button" value="BACK" class="but"></a>
		<input type="submit" value="EXIT" class="but">
	</form>
</body>
</html>