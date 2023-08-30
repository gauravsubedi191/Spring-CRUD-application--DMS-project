<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset-Password</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/home.css">
</head>
<body>
	<nav>
		<ul>
			<li><a href="/homepage">Home</a></li>
			<li><a href="/userlist">UserList</a></li>
			<li><a href="/resetpassword">Change Password</a></li>
			<li><a href="/">Logout</a></li>
		</ul>
	</nav>
	<div class="change-form">

		<form action="/changepassword" method="post">

			<label>Old Password</label> <input type="password" id="oldpassword"
				name="oldpassword"><br> <br> <label>New
				Password</label> <input type="password" id="newpassword" name="newpassword"><br>
			<input type="submit" id="sumbit" value="Change-Password">
		</form>
	</div>
	<div class="footer">
		<p>copyright @ 2023</p>
	</div>
</body>
</html>