<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user interface</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>
<style>
nav {
  background-color: #333;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 70px;
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

/* Media Query for smaller screens */
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
}

#container {
  height: 75vh;
}

html,
body {
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
.wrapper{
  flex: 1;
  display: flex;
  /* align-items: center; */
  justify-content: center;
  padding: 50px;

}

fieldset {
  
  height: 340px;
  width: 600px;
  /* margin: auto; */
  /* margin-bottom: 5%; */
  color: white;
  align-items: center;
  /* border: none; */
  /* margin-bottom: auto; */
  background-color: rgba(43, 42, 42, 0.384);
  border-radius: 70px 0 70px 0;
  /* border: none; */
  box-shadow: 10px 10px 30px rgba(138, 136, 136, 0.774);

}

fieldset h1 {
  text-align: center;
  /* margin-top: 30px; */
  /* margin-bottom: 30px; */
  font-family: Georgia, 'Times New Roman', Times, serif;
  font-style: oblique;
}

fieldset h3 {
  color: #56f50c;
  text-align: center;
  margin-left: 25px;
  margin-right: 30px;
  margin-bottom: 60px;
  line-height: 37px;
  font-style: italic;
  font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
    'Lucida Sans', Arial, sans-serif;
}

fieldset a {
  color: #fffafa;
  text-decoration: none;
  border: 2px solid #ffffff;
  padding: 5px 23px 5px 23px;
  border-radius: 15px;
  margin-left: 120px;
  margin-top: 300px;
  background-color: #ec6f08d7;
  /* padding-top: 300; */
  font-size: medium;
  font-weight: 600;
  font-family: Verdana, Geneva, Tahoma, sans-serif;
}

fieldset a:hover {
  color: black;
  border: 2px solid black;
}

footer {
  background-color: #020202;
  padding: 20px;
  text-align: center;
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
      <h2 class="logo">DRIVING LICENCE</h2>
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
    <fieldset>
      <h1>Welcome to E-Licence generator</h1>
  
      <h3>Here you can generate your own licence by giving your details
        and you can update your details. This site make your work simple. To
        know more detail please login.</h3>
  
      <a href="login.jsp">LOGIN</a> <a href="signin.jsp">SIGN IN</a>
    </fieldset>
  </div>

  <footer>
    <div class="footer-content">
      <div class="social-icons">
        <a href="https://www.instagram.com/its._.me_santhosh/" target="_blank"><i
            class="fa-brands fa-instagram"></i></a>
        <a href="https://www.facebook.com/profile.php?id=100008686604197" target="_blank"><i
            class="fa-brands fa-facebook-f"></i></a>
        <a href="https://twitter.com/Santhos84608698" target="_blank"> <i class="fa-brands fa-twitter"></i></a></li>
        <a href="https://www.youtube.com/watch?v=-LEY8JS6Fjw" target="_blank"><i class="fa-brands fa-youtube"></i></a>
      </div>
      <p class="copy-right">&copy; 2023 Driving License. All rights reserved.</p>
    </div>
  </footer>
</body>
</html>