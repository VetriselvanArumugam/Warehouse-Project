<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PackageDeliveryDetails List</title>
<style>
<%@include file="/WEB-INF/css/listpackagedeliverydetails.css"%>
</style>
</head>
<body>
<p>
		<button onclick="document.location='/home'" style="float:left">Back</button>
	</p>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th style="background-color:#87CEFA">deliveryNumber</th>
					<th style="background-color:#87CEFA">deliveryDate</th>
					<th style="background-color:#87CEFA">unitId</th>
					<th style="background-color:#87CEFA">packageId</th>
					<th style="background-color:#87CEFA">deliveredPerson</th>
					<th style="background-color:#87CEFA">deliveredAadhaarNumber</th>
					<th style="background-color:#87CEFA">deliveredPhoneNumber</th>
					<th style="background-color:#87CEFA">deliveredCity</th>
					<th style="background-color:#87CEFA">deliveredPincode</th>
					<th style="background-color:#87CEFA">Update</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="packagedeliverydetails" items="${allpackageDeliveryDetails}">
					<tr>
						<td>${packagedeliverydetails.deliveryNumber}</td>
						<td>${packagedeliverydetails.deliveryDate}</td>
						<td>${packagedeliverydetails.unitId}</td>
						<td>${packagedeliverydetails.packageId}</td>
						<td>${packagedeliverydetails.deliveredPerson}</td>
						<td>${packagedeliverydetails.deliveredAadhaarNumber}</td>
						<td>${packagedeliverydetails.deliveredPhoneNumber}</td>
						<td>${packagedeliverydetails.deliveredCity}</td>
						<td>${packagedeliverydetails.deliveredPincode}</td>
						 <td><a href="updatepackagedeliverydetailsform?id=${packagedeliverydetails.deliveryNumber }">Edit</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
	<a href="/packageDeliveryDetails/addform"><button>Add PackDelivery</button></a> 
	</div>
</body>
</html>