<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Package Delivery Details</title>
</head>
<body>
<style>
 body {
    background-color: AntiqueWhite;
    text-align: center;
}

label {
    color: Black
    </style>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addpackageDeliveryDetails">
				<div>
					<label for="deliveryNumber">Delivery Number</label>
					<div>
						<form:input path="deliveryNumber" />
					</div>
				</div>
				<div>
					<label for="deliveryDate">Delivery Date</label>
					<div>
						<form:input path="deliveryDate" />
					</div>
				</div>
				<div>
					<label for="unitId">Unit Id</label>
					<div>
						<form:input path="unitId" />
					</div>
				</div>
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" />
					</div>
				</div>
				<div>
					<label for="deliveredPerson">Delivered Person</label>
					<div>
						<form:input path="deliveredPerson" />
					</div>
				</div>
				<div>
					<label for="deliveredAadhaarNumber">Delivered Aadhaar Number</label>
					<div>
						<form:input path="deliveredAadhaarNumber" />
					</div>
				</div>
				<div>
					<label for="deliveredPhoneNumber">Delivered Phone Number</label>
					<div>
						<form:input path="deliveredPhoneNumber" />
					</div>
				</div>
				<div>
					<label for="deliveredCity">Delivered City</label>
					<div>
						<form:input path="deliveredCity" />
					</div>
				</div>
				<div>
					<label for="deliveredpincode">Delivered Pincode</label>
					<div>
						<form:input path="deliveredPincode" />
					</div>
				</div>
				<div>
					<form:button>Add Package Delivery Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>