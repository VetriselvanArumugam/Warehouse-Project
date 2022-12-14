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
<title>Add Packages</title>
<style>
<%@include file="/WEB-INF/css/addpackages.css"%>
</style>
</head>
<body>
	<div class="container">

		<h2 class="text-center">StorageDetails Form</h2>
		<div class="row jumbotron">
			<form:form action="add" method="post" modelAttribute="addpackages">
			
				<div class="col-sm-8 form-group">
					<label for="packageNumber">Package Number</label>
					<div>
						<form:input path="packageNumber" placeholder="Package Number" pattern="[0-9]{1}[0-9]{1}[0-9]{1}" title="Enter 3 digits number" required="true"/>
					</div>
				</div>
				<form:errors path="packageNumber" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="packageName">Package Name</label>
					<div>
						<form:select path="packageName" placeholder="Package Name" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" required="true">
						 <form:option value="Electronics">Electronics</form:option>
							<form:option value="Books">Books</form:option>
							<form:option value="FoodAndDrinks">Food And Drinks</form:option>
							<form:option value="Essence">Essence</form:option>
							<form:option value="Furnitures">Furnitures</form:option>
							<form:option value="Granates">Granate</form:option>
							<form:option value="Drugs">Drugs</form:option>
							<form:option value="Chemicals">Chemicals</form:option>
							<form:option value="Fertilizers">Fertilizers</form:option>
							<form:option value="Garments">Garments</form:option>
							</form:select>
					</div>
				</div>
				<form:errors path="packageName" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="packageType">Package Type</label>
					<div>
						<form:select path="packageType" placeholder="Package Type" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" required="true">
						<form:option value="Solid">Solid</form:option>
						<form:option value="Liquid">Liquid</form:option>
						<form:option value="Solid And Liquid">Solid And Liquid</form:option>
						<form:option value="Acids">Acid</form:option>
						<form:option value="Gas">Gas</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="packageType" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="packageDate">Package Date</label>
					<div>
						<form:input path="packageDate" placeholder="Package Date" type="date" required="true"/>
					</div>
				</div>
				<form:errors path="packageDate" class="text-box" />
				
			  <div class="col-sm-8 form-group">
					<label for="expiryDate">Expiry Date</label>
					<div>
						<form:input path="expiryDate" placeholder="Expiry Date" type="date" required="true"/>
					</div>
				</div>
				<form:errors path="expiryDate" class="text-box" />
				
				<div class="col-sm-3 form-group">
                        <label for="status" class="label-size">Status</label>
                        <div>
                        <form:select path="status" class="text-box" placeholder="Status" required="true">
                            <form:option value="Done">Done</form:option>
                            <form:option value="WorkingProgress">Working Progress</form:option>
                        </form:select>
                        </div>
                    </div>
				<form:errors path="status" class="text-box" />
				
				<div class="col-sm-8 form-group">
				    <label for ="ownerName" class="text-box" > Owner Name</label>
					<div>
						<form:input path="ownerName" placeholder="Owner Name" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" required="true"/>
					</div>
				</div>
				<form:errors path="ownerName" class="text-box" />
				
			    <div class="col-sm-8 form-group">
					<label for="ownerAadhaarNumber">Owner Aadhaar Number</label>
					<div>
						<form:input path="ownerAadhaarNumber"  placeholder="Owner Aadhaar Number" pattern="[0-9]{4}[0-9]{4}[0-9]{4}" title="Enter 12 digits number"/>
					</div>
				</div>
				<form:errors path="ownerAadhaarNumber" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" placeholder="Phone Number"
						pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number" required="true"/>
					</div>
				</div>
				<form:errors path="phoneNumber" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" placeholder="Email Id" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" title ="Enter a valid email welcome03@gmail.com" required="true"/>
					</div>
				</div>
				<form:errors path="emailId" class="text-box" />
				<div class="col-sm-8 form-group">
				
					<label for="packageWeight">package Weight</label><span>kg</span>
					<div>
						<form:input path="packageWeight" placeholder="Package Weight" pattern="^\d{5}+(\.\d{2})?\d{2}*$"
title="Package Weight should have atleast 5 digits"
required="true" />
					</div>
				</div>
				<form:errors path="packageWeight" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="packageHeight">package Height</label><span>cm</span>
					<div>
						<form:input path="packageHeight" placeholder="Package Height" pattern="\d{3}"
title="Package Height should have lessthan 3 digits"
required="true" />
					</div>
				</div>
				<form:errors path="packageHeight" class="text-box" />
				<div class="col-sm-7 form-group mb-3">
					<button class="btn btn-primary float-right"> Add
						Warehouse Packages</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>