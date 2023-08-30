<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register-New-User</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/register.css">
<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>

	<!--<fieldset>
	 <form action="/saveuser" method="post">
	 <input type="text" name="firstName" placeholder="First Name"> &nbsp
	 <input type="text" name="middleName" placeholder="Middle Name"> &nbsp
	 <input type="text" name="lastName" placeholder="Last Name"><br><br>
	  <input type="text" name="address"placeholder="Address"><br><br>
	  <input type="radio" name="gender" value="male">Male &nbsp
	  <input type="radio" name="gender" value="female">Female  &nbsp
	  <input type="radio" name="gender" value="others">Others <br><br>
	  <input type="text" name="contact" placeholder="Contact"><br><br>
	 <input type="email" name="email" placeholder="Email"><br><br>
	 <input type="password" name="password" placeholder="Password"><br><br>
		  <input type="submit" value="Register">
	  </form>
	  </fieldset> -->

	<div class="container">
		<div class="title">Registration</div>
		<div class="content">
			<form action="/saveuser" method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">First Name</span> <input type="text"
							name="firstName" placeholder="First Name" required>
					</div>
					<div class="input-box">
						<span class="details">Middle Name</span> <input type="text"
							name="middleName" placeholder="Middle Name">
					</div>
					<div class="input-box">
						<span class="details">Last Name</span> <input type="text"
							name="lastName" placeholder="Last Name" required>
					</div>

					<div class="input-box">
						<span class="details">Address</span> <input type="text"
							name="address" placeholder="Address" required>
					</div>

					<div class="input-box">
						<span class="details">Email</span> <input type="email"
							name="email" placeholder="Email" required>
					</div>

					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text"
							name="contact" placeholder="Contact" required>
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							name="password" placeholder="Enter your password" required>
					</div>
					<div class="gender-details">
						<!--   <input type="radio" name="gender" id="dot-1" value="Male">
          <input type="radio" name="gender" id="dot-2" value="Female">
          <input type="radio" name="gender" id="dot-3" value="Others" >
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one" ></span>
            <span class="gender" >Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"  ></span>
            <span class="gender" >Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender" >Others</span>
            </label>
          </div> -->
						<label for="gender">Gender</label> <select name="gender">
							<option value="none" selected>Gender</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="other">other</option>
						</select>

					</div>
					<div class="button">
						<input type="submit" id="regbut" value="Register">
					</div>
			</form>
		</div>
	</div>
	</div>
</body>
<script type="text/javascript">
	$('regbut').click(function(event) {
		alert("Registered Successfully!");
	});
</script>
</html>