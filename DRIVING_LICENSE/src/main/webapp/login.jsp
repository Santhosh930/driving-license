<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="viewpassword.js"></script>
</head>
<body>
<style>
form {
	border: 3px solid black;
	height: 270px;
	width: 360px;
	margin: auto;
	margin-top: 150px;
	background: rgba(118, 128, 131, 0.6);
	padding: 45px;
	box-shadow: 10px 20px 30px rgb(27, 28, 29);
	border-radius: 50px 0 50px 0;
}

h1 {
	text-align: center;
	color: white;
	margin-top: -10px;
}

label {
	width: 120px;
	display: inline-block;
	margin: 10px;
	color: white;
	font-size: large;
	font-style: normal;
	font-weight: 900;
	padding-bottom: 20px;
}

input {
	width: 170px;
	height: 35px;
	color: aliceblue;
	border-radius: 10px 0 10px 0;
	border: 2px solid rgb(245, 241, 241);
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

body {
	background-image: url("nature.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	width: 100%;
	height: 700px;
}

::placeholder {
	color: rgb(182, 216, 162);
	text-align: center;
}

.but {
	width: 100px;
	margin: 30px 53px 30px 25px;
	font-weight: bold;
	font-size:15px;
	padding:6px 10px 6px 10px;
	text-decoration: none;
	color: aliceblue;
	border-radius: 10px 0 10px 0;
	border: 2px solid rgb(245, 241, 241);
	
	background: transparent;
	font-family: Verdana, Geneva, Tahoma, sans-serif;	
}


.but:hover {
	border: 2px solid red;
	color: red;
}


.but:active {
	border: 2px solid rgb(8, 8, 8);
	color: rgb(10, 10, 10);
}

#forgotpass {
	text-decoration: none;
	/* border: 1px solid rgb(129, 120, 120); */
	font-size: 18px;
	color: rgb(180, 173, 173);
	padding: 0 5px 5px 5px;
	margin-top: 200px;
	margin-left: 23px;
	margin-right:50px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-weight: 500;
}

#forgotpass:hover {
	color: black;
}

#forgotpass:active {
	background-color: rgb(204, 194, 194);
	color: black;
	border-radius: 2px;
}

h2 {
	color: white;
	text-align: center;
}
#pass_visible {
  display: flex;

}

#eye {
  padding-top: 5px;
  height: 20px;
  width: 30px;
  color: rgb(243, 235, 235);
  border: none;
  font-size: 14px;
  cursor: pointer;

}

#email_input {
  width: 180px;
  outline: none;
  height: 30px
}

#pass_input {
  width: 150px;
 height: 30px
  border-radius: 10px 0 0 0;
  border: none;
  outline: none;
}



#pass_eye {
  border: 2px solid rgb(245, 241, 241);
  margin-top: 5px;
  height: 35px;
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
		String signin_success = (String) request.getAttribute("signin_success");
		String update_success = (String) request.getAttribute("update_success");
		String invalid_pass = (String) request.getAttribute("invalid_pass");
		String invalid_email = (String) request.getAttribute("invalid_email");
		String logout_success = (String) request.getAttribute("logout_success");
		String delete_user = (String) request.getAttribute("delete_user");
		%>

		<%
		if (signin_success != null) {
		%>
		<h2><%=signin_success%></h2>
		<%
		}
		%>

		<%
		if (update_success != null) {
		%>
		<h2><%=update_success%></h2>
		<%
		}
		%>

		<%
		if (invalid_pass != null) {
		%>
		<h2><%=invalid_pass%></h2>
		<%
		}
		%>

		<%
		if (invalid_email != null) {
		%>
		<h2><%=invalid_email%></h2>
		<%
		}
		%>

		<%
		if (logout_success != null) {
		%>
		<h2><%=logout_success%></h2>
		<%
		}
		%>

		<%
		if (delete_user != null) {
		%>
		<h2><%=delete_user%></h2>
		<%
		}
		%>
	</div>

	<form action="login" method="post">
		<h1>LOG IN</h1>
		<label>EMAIL :</label> 
		<input id="email_input" type="email" name="email"placeholder="enter your email" required><br> 
		<div id="pass_visible">
			<label>PASSWORD	:</label> 
			<div id="pass_eye">
				<input type="password" id="pass_input" name="password" placeholder="enter your password" minlength="8" required>
				<span id="eye" onclick="toogle('pass_input','eye')" class="fas fa-eye-slash"></span>
			</div>
		</div>
			
		<a href="signin.jsp"  class="but"> SIGN UP</a> 
		<input type="submit" value="LOG IN" class="but"><br>
		 <a href="forgot.jsp" id="forgotpass">Forgot password? </a>
		<a href="userinterface.jsp" id="forgotpass">Back</a>
	</form>
	
<!-- 	<script>
	 function toogle() {
	      var password = document.getElementById("pass_input");
	      var eye = document.getElementById("eye");
	      console.log(password.type == password);
	      if (password.type == "password") {
	        password.type = "Text"
	        eye.classList.remove("fa-eye-slash")
	        eye.classList.add("fa-eye")

	      } else {
	        password.type = "password"
	        eye.classList.remove("fa-eye")
	        eye.classList.add("fa-eye-slash")
	      }
	    }
	</script> -->
</body>
</html>