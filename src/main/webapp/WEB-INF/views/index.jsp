<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IMS-DMS-Login-page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/style.css">

</head>
<body>

	<div class="container">
		<div class="screen">
			<div class="screen__content">
				<form class="login" action="/login" method="post">
					<div class="login__field">
						<div class="heading">
							<h4>Log In Form</h4>
						</div>
						<input type="email" class="login__input" name="email"
							placeholder="Enter your Email">
					</div>
					<div class="login__field">

						<input type="password" class="login__input" name="password"
							placeholder="Enter your Password"><br> <br> <a
							href="#"> Forgot your password?</a>
					</div>
					<button class="button login__submit">
						<span class="button__text">Log In Now</span>

					</button>
					<br> <a href="/register">Can't Log In? Register Here!!</a>
				</form>

			</div>
			<div class="screen__background">
				<span class="screen__background__shape screen__background__shape4"></span>
				<span class="screen__background__shape screen__background__shape3"></span>
				<span class="screen__background__shape screen__background__shape2"></span>
				<span class="screen__background__shape screen__background__shape1"></span>
			</div>
		</div>
	</div>
</body>
</html>