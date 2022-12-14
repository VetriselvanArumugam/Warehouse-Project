<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

section {
	 position: relative;
    height: 100vh;
    width:100%;
	background-image:
		url("https://img.freepik.com/premium-vector/warehouse-process-with-workers-working-flat-design-vector-illustration_493806-13688.jpg?w=996");
    background-size:cover;
    background-position:center center;
}

.form-container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3));
	width: 380px;
	padding: 50px 30px;
	border-radius: 10px;
	box-shadow: 7px 7px 60px #000;
}

h1 {
	text-transform: uppercase;
	 font-size: 2em;
	 text-align: center;
	 margin-bottom: 2em;
}

.control input {
	 width: 100%;
	 display: block;
	 padding: 10px;
	color: #222;
	 border: none;
	outline: none;
	margin: 1em 0;
}

.control input[type="submit"] {
	 background: crimson;
	 color: #fff;
	text-transform: uppercase;
	font-size: 1.2em;
	opacity: .7;
	transition: opacity .3s ease;
}

.control input[type="submit"]:hover {
	 opacity: 1;
}

.link {
	 text-align: center;
}

link a {
	 text-decoration: none;
	 color: #fff;
	 opacity: .7;
	transition: opacity .3s ease;
}

.link a:hover {
	 opacity: 1;
}
</style>
</head>

<body>
	<section>
		<div class="form-container">
			<h1>Admin Login</h1>
			<form:form action="checkadminlogin" method="post"
				modelAttribute="admin">
				<div class="control">
					<label for="userName" class="label">UserName :</label>
					<form:input path="userName" placeholder="userName" class="input" />
				</div>
				<div class="control">
					<label for="password" class="label">Password :</label>
					<form:input path="password" placeholder="password" type="password"
						pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"
						required="true" class="input" />
				</div>
				<div class="control">
					<input type="submit" value="Login">
					<div>${result}</div>
				</div>
			</form:form>
			
		</div>
	</section>
</body>
</html>