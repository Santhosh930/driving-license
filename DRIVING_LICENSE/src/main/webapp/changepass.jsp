<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change password</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script src="viewpassword.js"></script>
</head>
<body>
<style>
form {
  border: 3px solid black;
  height: 270px;
  width: 390px;
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
  margin: -20px 0px 35px 0px;

}

body {
  background-image: url(./nature.jpg);
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
  width: 100%;
  height: 700px;

}

label {
  width: 155px;
  display: inline-block;
  margin: 10px;
  color: white;
  font-size: large;
  font-style: normal;
  font-weight: 900;
  padding-bottom: 20px;

}

input {
  width: 200px;
  height: 35px;
  color: aliceblue;
  border-radius: 10px 0 10px 0;
  border: 2px solid rgb(245, 241, 241);
  margin-bottom: 10px;
  background: transparent;
  font-family: Verdana, Geneva, Tahoma, sans-serif;

}

::placeholder {
  color: rgb(182, 216, 162);
  text-align: center;
}

.but {
  width: 100px;
  margin: 15px 0px 0 40px;
  margin-bottom: 30px;
  color: white;
  font-weight: bold;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
}

.but:hover {
  border: 2px solid red;
  color: red;
  cursor: pointer;

}

input:hover {
  border: 3px solid rgb(224, 250, 164);
}

.but:active {
  border: 2px solid rgb(8, 8, 8);
  color: rgb(10, 10, 10);
}

#forgotpass {
  text-decoration: none;
  /* border: 1px solid rgb(129, 120, 120); */
  font-size: 18px;
  color: rgb(192, 190, 201);
  padding: 0 5px 5px 5px;
  margin-top: 200px;
  margin-left: 23px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-weight: 500;
}

#forgotpass:hover {
  border: 1px solid rgb(131, 124, 124);
  /* background-color: rgb(197, 194, 194); */
  /* background: transparent; */
}

#forgotpass:active {
  background-color: rgb(204, 194, 194);
  color: black;
}

a {
  color: white;
  text-decoration: none;
  border: 2px solid white;
  padding: 5px 23px 5px 23px;
  border-radius: 10px 0 10px 0;
  margin-left: 120px;
  font-size: medium;
  font-weight: 600;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
}

a:hover {
  border: 2px solid red;
  color: red;
  cursor: pointer;

}

a:active {
  border: 2px solid rgb(8, 8, 8);
  color: rgb(10, 10, 10);
}
#pass_visible {
  display: flex;
}

#eye,#eye1 {
  padding-top: 0px;
  height: 20px;
  width: 30px;
  color: rgb(243, 235, 235);
  border: none;
  font-size: 14px;
  cursor: pointer;
  
}

#pass_input,#pass_input1 {
  width: 170px;
  border-radius: 10px 0 0 0;
  border: none;
  outline: none;
}

#pass_eye {
  border: 2px solid rgb(245, 241, 241);
  margin-top: 3px;
  margin-left:2px;
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
		String update_unsuccess = (String) request.getAttribute("update_unsuccess");
		String update_success = (String) request.getAttribute("update_success");
		%>

		<%
		if (update_success != null) {
		%>
		<h2><%=update_success%></h2>
		<%
		}
		%>

		<%
		if (update_unsuccess != null) {
		%>
		<h2><%=update_unsuccess%></h2>
		<%
		}
		%>
	</div>

 <form action="changepassword" method="post">
    <h1>CHANGE PASSWORD</h1>
    <div id="pass_visible">
    	 <label>PASSWORD :</label>
    	 <div id="pass_eye">
   		   <input type="password" id="pass_input" name="pass1" placeholder="enter your new password" minlength="8" required>
   		   <span id="eye" onclick="toogle('pass_input','eye')" class="fas fa-eye-slash"></span>
		</div>
	</div>
    <div id="pass_visible">
     <label>RE-PASSWORD :</label>
	    <div id="pass_eye">
	      <input type="password" id="pass_input1" name="pass2" placeholder="Re-enter your password" minlength="8" required>
	      <span id="eye1" onclick="toogle('pass_input1','eye1')" class="fas fa-eye-slash"></span>
		</div>
	</div>
    <input type="submit" value="SAVE" class="but">
    <a href="home.jsp">back</a>

</body>
</html>