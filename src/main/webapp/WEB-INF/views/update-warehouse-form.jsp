<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://codepen.io/skjha5993/pen/bXqWpR.css">
<meta charset="ISO-8859-1">
<title>Update Warehouse</title>
<style type="text/css">
label {
	font-weight: 600;
	color: #555;
}

body {
	background: #1ab2ff;
}
</style>
</head>
<body>
<p>
		<button onclick="document.location='/home'" style="float:left">Back</button>
	</p>
	<div class="container">

		<h2 class="text-center"> Update StorageDetails Form</h2>
		<div class="row jumbotron">
			<form:form action="update" method="post" modelAttribute="updatewarehouse">
			
				<div class="col-sm-3 form-group">
					<label for="warehouseId">Warehouse Id</label>
					<div>
						<form:input path="warehouseId" placeholder="Warehouse Id"/>
					</div>
				</div>
				<form:errors path="warehouseId" class="text-box" />
				
				<div class="col-sm-3 form-group">
					<label for="address">Address</label>
					<div>
						<form:input path="address" placeholder="Address" title="Address can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="address" class="text-box" />
				
				<div class="col-sm-3 form-group">
					<label for="location">Location</label>
					<div>
						<form:input path="location" placeholder="Location" title="Location can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="location" class="text-box" />
				
				<div class="col-sm-3 form-group">
					<label for="state">State</label>
					<div>
						<form:input path="state" placeholder="State" title="State can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="state" class="text-box" />
				
				<div class="col-sm-3 form-group">
					<label for="country">Country</label>
					<div>
						<form:input path="country" placeholder="Country" title="Country can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="country" class="text-box" />
				
			<div class="col-sm-3 form-group">
					<label for="pincode">Pincode</label>
					<div>
						<form:input path="pincode" placeholder="Pincode" pattern="[1-9]{1}[0-9]{6}"
title="Pincode should have atleast 6 digits"
required="true"/>
					</div>
				</div>
				<form:errors path="pincode" class="text-box" />
				
				<div class="col-sm-3 form-group">
					<label for="totalArea">Total Area</label>
					<div>
						<form:input path="totalArea" placeholder="Total Area" pattern="[1-9]{1}[0-9]{5}"
title="Total Area should have atleast 5 digits"
required="true" />
					</div>
				</div>
				<form:errors path="totalArea" class="text-box" />
				
				<div class="col-sm-3 form-group">
					<label for="warehouseType">Warehouse Type</label>
					<div>
						<form:input path="warehouseType" placeholder="Warehouse Type" title="Warehouse Type can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				
				<form:errors path="warehouseType" class="text-box" />
					 <div class="col-sm-7 form-group mb-3">
               <button class="btn btn-primary float-right"> Update Warehouse </button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>