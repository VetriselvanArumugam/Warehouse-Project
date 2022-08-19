<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
tr:hover {background-color: #99ff99;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
body {
    background-image:
        url("https://img.freepik.com/premium-photo/3d-factory-concept-3d-render_1119-2759.jpg?w=740");
        background-height: 786px;
    background-width: 1366px;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, Helvetica, sans-serif;
}
div{text-align:center}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getpackages">
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageNumber">Package Number</label>
					<div>
						<form:input path="packageNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageName">Package Name</label>
					<div>
						<form:input path="packageName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageType">Package Type</label>
					<div>
						<form:input path="packageType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageDate">Package Date</label>
					<div>
						<form:input path="packageDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="expiryDate">Expiry Date</label>
					<div>
						<form:input path="expiryDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ownerName">Owner Name</label>
					<div>
						<form:input path="ownerName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ownerAadhaarNumber">Owner Aadhaar Number</label>
					<div>
						<form:input path="ownerAadhaarNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageWeight">package Weight</label>
					<div>
						<form:input path="packageWeight" readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageHeight">package Height</label>
					<div>
						<form:input path="packageHeight" readonly="true"/>
					</div>
				</div>

			</form:form>
		</div>
	</div>
	<div id="root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="deliverydetails">
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
						<form:input path="unitId" readonly="true" />
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
					<label for="deliveredAadhaarNumber">Delivered Aadhaar
						Number</label>
					<div>
						<form:input path="deliveredAadhaarNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredPhoneNumber">Delivered Phone Number</label>
					<div>
						<form:input path="deliveredPhoneNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredCity">Delivered City</label>
					<div>
						<form:input path="deliveredCity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="deliveredPincode">Delivered Pincode</label>
					<div>
						<form:input path="deliveredPincode" readonly="true" />
					</div>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>