<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE PHONE NUMBER</title>
<link rel="icon" type="image/png" href="car.png">
<link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>
<style>

</style>
	<div style="text-align: center; color: white; margin-top: 10px;">
		<%
		String invalid_mobail = (String) request.getAttribute("invalid_mobail");
		%>
		<%
		if (invalid_mobail != null) {
		%>
		<h2><%=invalid_mobail%></h2>
		<%
		}
		%>

		<form action="updatephonenumber" method="post">
			<h1>UPDATE DETAILS</h1>
			<label>PHONE NUMBER :</label> <input type="tel" maxlength="10"
				minlength="10" name="pnone_number" required><br> <a
				href="home.jsp"> <input type="button" value="CANCEL" class="but"></a>
			<input type="submit" value="UPDATE" class="but">

		</form>
</body>
</html>