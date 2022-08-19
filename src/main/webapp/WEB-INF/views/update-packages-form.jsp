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
<title>Update Packages</title>
<style>
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

		<h2 class="text-center">StorageDetails Form</h2>
		<div class="row jumbotron">
			<form:form action="update" method="post"
				modelAttribute="updatepackages">
				<form:errors path="packageId" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" placeholder="Package Id"
							required="true" />
					</div>
				</div>
				<form:errors path="packageNumber" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageNumber">Package Number</label>
					<div>
						<form:input path="packageNumber" placeholder="Package Number"
							placeholder="Package Number" pattern="[0-9]{1}[0-9]{1}[0-9]{1}" title="Enter 3 digits number" />
					</div>
				</div>
				<form:errors path="packageName" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageName">Package Name</label>
					<div>
						<form:input path="packageName" placeholder="Package Name"
							placeholder="Package Name"
						pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<form:errors path="packageType" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageType">Package Type</label>
					<div>
						<form:input path="packageType" placeholder="Package Type"
							placeholder="Package Type"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only"  />
					</div>
				</div>
				<form:errors path="packageDate" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageDate">Package Date</label>
					<div>
						<form:input path="packageDate" placeholder="Package Date" />
					</div>
				</div>
				<form:errors path="expiryDate" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="expiryDate">Expiry Date</label>
					<div>
						<form:input path="expiryDate" placeholder="Expiry Date" />
					</div>
				</div>
				<div class="col-sm-3 form-group">
					<label for="status" class="label-size">Status</label>
					<div>
						<form:select path="status" class="text-box" placeholder="Status"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" >
							<form:option value="Done">Done</form:option>
							<form:option value="WorkingProgress">Working Progress</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="status" class="text-box" />
				<form:errors path="ownerName" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="ownerName">Owner Name</label>
					<div>
						<form:input path="ownerName" placeholder="Owner Name"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<form:errors path="ownerAadhaarNumber" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="ownerAadhaarNumber">Owner Aadhaar Number</label>
					<div>
						<form:input path="ownerAadhaarNumber"
							placeholder="Owner Aadhaar Number"
							placeholder="Owner Aadhaar Number" pattern="[0-9]{4}[0-9]{4}[0-9]{4}" title="Enter 12 digits number" />
					</div>
				</div>
				<form:errors path="phoneNumber" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" placeholder="Phone Number" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number"/>
					</div>
				</div>
				<form:errors path="emailId" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" placeholder="Email Id"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Enter valid email ex: example@gmail.com" required="true" />
					</div>
				</div>
				<form:errors path="packageWeight" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageWeight">Package Weight</label>
					<div>
						<form:input path="packageWeight" placeholder="Package Weight"
							 pattern="^\d{5}+(\.\d{2})?\d{2}*$"
title="Package Weight should have atleast 5 digits"
required="true" />
					</div>
				</div>
				<form:errors path="packageHeight" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="packageHeight">Package Height</label>
					<div>
						<form:input path="packageHeight" placeholder="Package Height"
							pattern="\d{3}" title="Package Height should have lessthan 3 digits" required="true" />
					</div>
				</div>
				<div class="col-sm-7 form-group mb-3">
					<button class="btn btn-primary float-right"> Update
						Warehouse Packages</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>