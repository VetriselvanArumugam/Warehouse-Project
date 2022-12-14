<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
<%@include file="/WEB-INF/css/addpackagedeliverydetails.css"%>
</style>
</head>
<body>

	<div class="container">

		<h2 class="text-center">Package Delivery Details Form</h2>
		<div class="row jumbotron">
			<form:form action="add" method="post"
				modelAttribute="addpackageDeliveryDetails">

				<div class="col-sm-8 form-group">
					<label for="deliveryDate">Delivery Date</label>
					<div>
						<form:input path="deliveryDate" placeholder="Delivery Date"
							type="date"  required="true"/>
					</div>
				</div>
				<form:errors path="deliveryDate" class="text-box" />

				<div class="col-sm-8 form-group">
					<label for="unitId">Unit Id</label>
					<form:select path="unitId" placeholder="Unit Id" required="true">

                            <c:forEach var="allStorageUnits" items="${getAllStorageUnits}">
                                <form:option value="${allStorageUnits.unitId}"
                                    label="${allStorageUnits.unitId}" />
                            </c:forEach>
                        </form:select>	
				</div>
				<form:errors path="unitId" class="text-box" />

				<div class="col-sm-8 form-group">
					<label for="packageId">Package Id</label>
					<form:select path="packageId" placeholder="Package Id">
                            <c:forEach var="allPackagedeliveryDetails" items="${getAllWarehousePackages}">
                                <form:option value="${allPackagedeliveryDetails.packageId}"
                                    label="${allPackagedeliveryDetails.packageId}" />
                            </c:forEach>
                        </form:select>				
                        	</div>
				<form:errors path="packageId" class="text-box" />

			<div class="col-sm-8 form-group">
					<label for="deliveredPerson">Delivered Person</label>
					<div>
						<form:input path="deliveredPerson" placeholder="Delivered Person"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" required="true"/>
					</div>
				</div>
				<form:errors path="deliveredPerson" class="text-box" />

				<div class="col-sm-8 form-group">
					<label for="deliveredAadhaarNumber">Delivered Aadhaar
						Number</label>
					<div>
						<form:input path="deliveredAadhaarNumber"
							placeholder="Delivered Aadhaar Number"
							pattern="[0-9]{4}[0-9]{4}[0-9]{4}" title="Enter 12 digits number" required="true"/>
					</div>

				</div>
				<form:errors path="deliveredAadhaarNumber" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredPhoneNumber">Delivered Phone Number</label>
					<div>
						<form:input path="deliveredPhoneNumber"
							placeholder="Delivered Phone Number"
							pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number" required="true"/>
					</div>
				</div>
				<form:errors path="deliveredPhoneNumber" class="text-box" />

				<div class="col-sm-8 form-group">
					<label for="deliveredCity">Delivered City</label>
					<div>
						<form:input path="deliveredCity" placeholder="Delivered City"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" required="true"/>
					</div>
				</div>
				<form:errors path="deliveredCity" class="text-box" />
				<div class="col-sm-8 form-group">
					<label for="deliveredPincode">Delivered Pincode</label>
					<div>
						<form:input path="deliveredPincode" placeholder="Delivered Pincode" 
						pattern="[0-9]{3}[0-9]{3}" title="Enter 6 digits number" required="true" required="true"/>
					</div>
				</div>
				<form:errors path="deliveredPincode" class="text-box" />

				<div class="col-sm-7 form-group mb-3">
					<button class="btn btn-primary float-right"> Add
						Package Delivery Details</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>