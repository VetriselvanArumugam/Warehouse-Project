<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css"><%@include file="/WEB-INF/css/listpackages.css"%>
tr:hover {background-color: #9135ab75;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(133, 17, 73, 0.3);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(133, 17, 73, 0.3);
  }
body {
    background-image:
        url("https://img.freepik.com/premium-photo/parcels-box-cardboard-boxes-online-delivery-transportation-logistics-concept-pink-background-3d-rendering-illustration_56104-1290.jpg?w=740");
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
<p>
		<button Class="button-85" role="button" onclick="document.location='/home'" style="float:bottomleft">Home</button>
	</p>
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
		<br>
		<div id="deliverydetails">
		<table>
		<caption></caption>
		<thead>
		<tr>
		<th>Delivery Number</th>
		<th>Dlivery Date</th>
		<th>Unit Id</th>
		<th>Package Id</th>
		<th>Delivered Person</th>
		<th>Delivered Aadhaar Number</th>
		<th>Delivered Phone Number</th>
		<th>Delivered City</th>
		<th>Delivered Pincode</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td>${deliverydetails.deliveryNumber}</td>
		<td>${deliverydetails.deliveryDate}</td>
		<td>${deliverydetails.unitId}</td>
		<td>${deliverydetails.packageId}</td>
		<td>${deliverydetails.deliveredPerson}</td>
		<td>${deliverydetails.deliveredAadhaarNumber}</td>
		<td>${deliverydetails.deliveredPhoneNumber}</td>
		<td>${deliverydetails.deliveredCity}</td>
		<td>${deliverydetails.deliveredPincode}</td>
		</tr>
		</tbody>
		</table></div>
	</div>
	
</body>
</html>