<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User-List</title>
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
	<div id="userlist">
		<table border="1">
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Middle Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>Gender</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Password</th>
					<th>Update</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${abc}" var="v">
					<tr>
						<td>${v.userId }</td>
						<td>${v.firstName }</td>
						<td>${v.middleName }</td>
						<td>${v.lastName }</td>
						<td>${v.address }</td>
						<td>${v.gender }</td>
						<td>${v.contact }</td>
						<td>${v.email }</td>
						<td>${v.password }</td>
						<td>
							<button>
								<a href="/updateuser/${v.userId }">Edit</a><br>
							</button>
						</td>
						<td>
							<button>
								<a href="/updateuser/${v.userId }">Delete</a><br>
							</button>
						</td>
					</tr>

				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>