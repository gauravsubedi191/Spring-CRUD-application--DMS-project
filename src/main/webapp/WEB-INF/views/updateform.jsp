<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit-Details</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/register.css">
<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.slim.min.js"></script>
 -->
</head>
<body>
	<%-- <fieldset>
		<form action="/saveuser" method="post">
		<input type="text" name="userId" value="${abc.userId}" readonly ><br>
	 <input type="text" name="firstName" value="${abc.firstName}" > &nbsp
	 <input type="text" name="middleName" value="${abc.middleName}" > &nbsp
	 <input type="text" name="lastName" value="${abc.lastName}" ><br><br>
	  <input type="text" name="address"  value="${abc.address}"><br><br>
	  <input type="radio" name="gender"  value="${abc.gender}">Male &nbsp
	  <input type="radio" name="gender" value="${abc.gender}" >Female  &nbsp
	  <input type="radio" name="gender"  value="${abc.gender}">Others <br><br>
	  <input type="text" name="contact" value="${abc.contact}" ><br><br>
	 <input type="email" name="email"  value="${abc.email}"><br><br>
	 <input type="password" name="password" value="${abc.password}"><br><br>
		  <input type="submit" value="Update">
	  </form>
	  </fieldset> --%>

	<div class="container">
		<div class="title">Update</div>
		<div class="content">
			<form action="/saveuser" method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">User ID</span> <input type="text"
							name="userId" id="userId" value="${abc.userId}" readonly>
					</div>

					<div class="input-box">
						<span class="details">First Name</span> <input type="text"
							name="firstName" placeholder="First Name"
							value="${abc.firstName}" required>
					</div>
					<div class="input-box">
						<span class="details">Middle Name</span> <input type="text"
							name="middleName" placeholder="Middle Name"
							value="${abc.middleName}">
					</div>
					<div class="input-box">
						<span class="details">Last Name</span> <input type="text"
							name="lastName" placeholder="Last Name" value="${abc.lastName}"
							required>
					</div>

					<div class="input-box">
						<span class="details">Address</span> <input type="text"
							name="address" placeholder="Address" value="${abc.address}"
							required>
					</div>

					<div class="input-box">
						<span class="details">Email</span> <input type="email"
							name="email" placeholder="Email" value="${abc.email}" required>
					</div>

					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text"
							name="contact" placeholder="Contact" value="${abc.contact}"
							required>
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							name="password" placeholder="Enter your password"
							value="${abc.password}" required>
					</div>

					<%-- <div class="gender-details">
       <input type="text" name="gender"  value="${abc.gender}" > 
          <input type="radio" name="gender" id="dot-1" value="${abc.gender}">
          <input type="radio" name="gender" id="dot-2" value="${abc.gender}">
          <input type="radio" name="gender" id="dot-3" value="${abc.gender}" >
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
          </div>
        </div>
     
	--%>
					<div class="gender-details">
						<label for="gender"><b>Gender</b></label> <select
							class="selectpicker" name="gender" id="gender">
							<option value="">Select a Gender</option>
							<option value="male"
								<c:if test="${abc.gender eq 'male' }"> selected 
							</c:if>>
								Male</option>
							<option value="female"
								<c:if test="${abc.gender eq 'female' }">selected</c:if>>Female</option>
							<option value="other"
								<c:if test="${abc.gender eq 'other' }">selected</c:if>>Other</option>
						</select>
					</div>
					<div class="button">
						<input type="submit" onclick=" saveuser()" value="Update">
					</div>
					<div class="button">
						<input type="button" name="deletebutton" id="deletebutton"
							value="Delete">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		alert("alert");
		$('#gender').select2();

	});
	$("#deletebutton")
			.click(
					function(event) {
						let userid = $("#userId").val();
						alert("Are you sure you want to delete with this userid="
								+ userid + "?");
						let url = '${pageContext.request.contextPath}/delete/'
								+ userid;
						deletedata(url);
					});
	function deletedata(url) {
		$.ajax({
			url : url,
			type : 'GET',
			beforeSend : function() {
				return confirm("Are you sure?");
			},
			success : function(data) {
				alert(data.message);
				location.reload(true);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert("Status: " + textStatus);
			}
		});
	}
	function saveuser() {
		alert("Are you sure you want to update this user?");
	}
</script>
</html>