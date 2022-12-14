<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
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
<title>Add Package Delivery Details</title>
<style> label {
	font-weight: 600;
	color: #555;
}

body {
	background: #1ab2ff;
}</style>
</head>
<body>
<p>
		<button onclick="document.location='/packageDeliveryDetails/list'" style="float:left">Back</button>
	</p>
	<div class="container">

		<h2 class="text-center">Update Package Delivery Details Form</h2>
		<div class="row jumbotron">
			<form:form action="update" method="post" modelAttribute="updatepackageDeliveryDetails">
			<form:errors path="deliveryNumber" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveryNumber">Delivery Number</label>
					<div>
						<form:input path="deliveryNumber" placeholder="Delivery Number" required="true"/>
					</div>
				</div>
				<form:errors path="deliveryDate" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveryDate">Delivery Date</label>
					<div>
						<form:input path="deliveryDate" placeholder="Delivery Date"/>
					</div>
				</div>
				<form:errors path="unitId" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="unitId">Unit Id</label>
					<div>
						<form:input path="unitId" placeholder="Unit Id" required="true"/>
					</div>
				</div>
				<form:errors path="packageId" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" placeholder="Package Id" required="true"/>
					</div>
				</div>
				<form:errors path="deliveredPerson" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredPerson">Delivered Person</label>
					<div>
						<form:input path="deliveredPerson" placeholder="Delivered Person" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"/>
					</div>
				</div>
				<form:errors path="deliveredAadhaarNumber" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredAadhaarNumber">Delivered Aadhaar Number</label>
					<div>
						<form:input path="deliveredAadhaarNumber" placeholder="Delivered Aadhaar Number" pattern="[0-9]{4}[0-9]{4}[0-9]{4}" title="Enter 12 digits number" />
					</div>
				</div>
				<form:errors path="deliveredPhoneNumber" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredPhoneNumber">Delivered Phone Number</label>
					<div>
						<form:input path="deliveredPhoneNumber" placeholder="Delivered phone Number" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number"/>
					</div>
				</div>
				<form:errors path="deliveredCity" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredCity">Delivered City</label>
					<div>
						<form:input path="deliveredCity" placeholder="Delivered City" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"/>
					</div>
				</div>
				<form:errors path="deliveredPincode" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredPincode">Delivered Pincode</label>
					<div>
						<form:input path="deliveredPincode" placeholder="Delivered Pincode" pattern="[0-9]{3}[0-9]{3}" title="Enter 6 digits number" required="true"/>
					</div>
				</div>
				<div class="col-sm-7 form-group mb-3">
					<button class="btn btn-primary float-right"> Update
						Package Delivery Details</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>