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
	<div id="root">
		<div id="form">
			<form:form action="Get" method="post" modelAttribute="getpackageDeliveryDetailsid">
				<div>
					<label for="deliveryNumber">Delivery Number</label>
					<div>
						<form:input path="deliveryNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveryDate">Dlivery Date</label>
					<div>
						<form:input path="deliveryDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="unitId">Unit Id</label>
					<div>
						<form:input path="unitId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredPerson">Delivered Person</label>
					<div>
						<form:input path="deliveredPerson" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredAadhaarNumber">Delivered Aadhaar Number</label>
					<div>
						<form:input path="deliveredAadhaarNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredPhoneNumber">Delivered Phone Number</label>
					<div>
						<form:input path="deliveredPhoneNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="deliveredCity">Delivered City</label>
					<div>
						<form:input path="deliveredCity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredpincode">Delivered Pincode</label>
					<div>
						<form:input path="deliveredpincode" readonly="true"/>
					</div>
				</div>
				<div>
					<form:button>Get Package Delivery Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>