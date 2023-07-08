
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>
	<style>
html, body {
	height: 100%;
}

body {
	margin: 0;
	display: flex;
	flex-direction: column;
	background-image: url(nature.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

nav {
	background-color: #333;
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 70px;
	/* margin-bottom: 100px; */
}

.brand .logo {
	color: #ff7200;
	padding: 10px 80px;
	text-decoration: none;
	font-size: 25px;
	font-family: Arial;
}

nav ul.menu {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

nav ul.menu li {
	display: inline;
}

nav ul.menu li a {
	display: inline-block;
	color: #fff;
	margin-right:25px;
	text-decoration: none;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

nav ul.menu li a:hover {
	color: #ff7200;
}
/* 
Media Query for smaller screens
@media (max-width: 480px) {
  nav {
    flex-direction: column;
    text-align: center;
  }

  .brand {
    margin-bottom: 10px;
  }

  nav ul.menu {
    flex-direction: column;
  }
} */
#container {
	height: 75vh;
}

.wrapper {
	flex: 1;
	display: flex;
	/* align-items: center; */
	justify-content: center;
	padding: 50px;
}

.option ul {
	border-left: 200px;
	align-items: center;
	text-align: center;
	height: 250px;
	width: 400px;
	margin-bottom: 10%;
	text-decoration: none;
}

.option ul li {
	border: 5px solid rgb(212, 208, 208);
	background-color: rgb(83, 80, 80);
	border-radius: 15px;
	list-style-type: none;
	padding: 8px;
	position: relative;
}

.option ul li a {
	color: #ff7200;
	text-decoration: none;
	font-size: 30px;
	font-family: Arial;
}

.option ul li a:hover {
	color: black;
	background-color: #dfdada;
	/* border: 2px solid black; */
	font-size: 31px;
	transition: 0.5s ease-in-out;
}

.option ul li:hover {
	width: auto;
	background-color: #dfdada;
}

.fa-solid {
	margin-left: 40px;
}

.sub-option {
	display: none;
}

.option ul :hover .sub-option {
	display: block;
	position: absolute;
	left: 345px;
	width: 10px;
	top: -22px;
	/* background-color: #dfdada ; */
	padding: 10px;
	color: black;
}

.option ul li:hover .sub-option ul li {
	align-items: center;
	text-align: center;
	height: 20px;
	width: 220px;
	padding: 8px;
	border-radius: 0px;
}

.option ul li:hover .sub-option ul li a {
	color: #ff7200;
	font-size: 20px;
	font-weight: 500;
	text-align: center;
}

.sub-option ul {
	display: block;
	margin: 10px;
}

.option ul li:hover .sub-option ul li a:hover {
	color: rgb(0, 0, 0);
	font-size: 23px;
}

footer {
	background-color: #020202;
	padding: 20px;
	text-align: center;
	margin-top: 40px;
}

.footer-content {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.footer-content p {
	padding-right: 50px;
}

.social-icons {
	margin-left: 20px;
	font-size: x-large;
}

.social-icons a {
	display: inline-block;
	margin-right: 30px;
	color: #ffffff;
	font-size: 20px;
}

.social-icons a:hover {
	text-shadow: 0 0 25px red;
	color: #ff7200;
}

.copy-right {
	margin: 0;
	font-size: 14px;
	color: #666;
}
</style>
	<nav>
		<div class="brand">
			<h2 class="logo">DRIVING LICENSE</h2>
		</div>
		<ul class="menu">
			<li><a href="userinterface.jsp">HOME</a></li>
			<li><a href="">ABOUT</a></li>
			<li><a href="">SERVICE</a></li>
			<li><a href="">CONTACT</a></li>
			<li><a href="logout">LOGOUT</a></li>
		</ul>
	</nav>
	<div id="container"></div>
	<div class="wrapper">

		<div class="option">
			<ul>
				<li><a href="changepass.jsp">CHANGE PASSWORD</a></li>
				<li><a>UPDATE RECORDS <i class="fa-solid fa-caret-right"></i></a>
					<div class="sub-option">
						<ul>
							<li><a href="updatename.jsp">NAME</a></li>
							<li><a href="updateage.jsp">AGE</a></li>
							<li><a href="updateaddress.jsp">ADDRESS</a></li>
							<li><a href="vehicletype.jsp">VEHICLE TYPE</a></li>
							<li><a href="updatephonenumber.jsp">PHONE NUMBER</a></li>

						</ul>
					</div></li>
				<li><a href="getdetail">GENERATE LICENCE</a></li>
				<li><a onclick="checker()">DELETE RECORD</a></li>
			</ul>
		</div>

	</div>

	<footer>
		<div class="footer-content">
			<div class="social-icons">
				<a href="https://www.instagram.com/its._.me_santhosh/"
					target="_blank"><i class="fa-brands fa-instagram"></i></a> <a
					href="https://www.facebook.com/profile.php?id=100008686604197"
					target="_blank"><i class="fa-brands fa-facebook-f"></i></a> <a
					href="https://twitter.com/Santhos84608698" target="_blank"> <i
					class="fa-brands fa-twitter"></i></a>
				</li> <a href="https://www.youtube.com/watch?v=-LEY8JS6Fjw"
					target="_blank"><i class="fa-brands fa-youtube"></i></a>
			</div>
			<p class="copy-right">&copy; 2023 Driving License. All rights
				reserved.</p>
		</div>
	</footer>
	<script>
		function checker() {
			var result = confirm('are you sure you want to Delete user?');
			if (result) {
				window.location.href = document.getElementById('delete').href;
				document.getElementById
				console.log(result);
			}
		}
	</script>
	<a href="/STUDENT/deleteuser" id="delete"></a>

</body>
</html>