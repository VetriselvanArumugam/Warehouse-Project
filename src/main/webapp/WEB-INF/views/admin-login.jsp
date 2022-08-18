<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<style type="text/css">
* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

.container {
	margin-top: 1%;
	margin-left: 33%;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	width: 35%;
	float: left;
}

.col-25 {
	float: left;
	width: 30%;
	margin-top: 6px;
	margin-left: 10px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF ;
	margin-left: 170px;
	margin-top: 10px;
}

.btn:hover {
	background-color: #6bb6ff
}

.btn2{
	margin-top:3%;
	margin-left: 100px;
    color: Dodgerblue;
}
.a1{
	background-color: powderblue;
}

.btn:active {
  background-color:     #9932CC;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
body {
	background-image:
		url("https://img.freepik.com/premium-vector/concept-illustration-cartoon-3d-style-isometric-vector-composition-with-writings-infographics-characters-warehouse-manager-professional-worker-storehouse-marketing-trade-control-person_165932-1347.jpg?w=740");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>

<body>
 <h2 align="center">Admin Login</h2>
	<div class="container">
		<form:form action="checkadminlogin" method="post" modelAttribute="admin">
			<div class="row">
				<div class="col-25">
					<label for="userName">Name</label>
				</div>
				<div class="col-75">
					<form:input path="userName" placeholder="userName" required="true" />
				</div>
				<form:errors path="userName" cssClass="text-danger" />
			</div>
				<div class="row">
				<div class="col-25">
					<label for="password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password" placeholder="Password" type="password" required="true" />
				</div>
				<form:errors path="password" cssClass="text-danger" />
			</div>
				<div class="row">
					<form:button class="btn">Login</form:button>
				</div>
		</form:form>
		<div >
		
	</div>
	</div>
	
</body>
</html>