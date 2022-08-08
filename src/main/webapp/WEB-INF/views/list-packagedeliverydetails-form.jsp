<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PackageDeliveryDetails List</title>
</head>
<body>
<style> background-color: #FFC0CB;</style>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>deliveryNumber</th>
					<th>deliveryDate</th>
					<th>unitId</th>
					<th>packageId</th>
					<th>deliveredPerson</th>
					<th>deliveredAadhaarNumber</th>
					<th>deliveredPhoneNumber</th>
					<th>deliveredCity</th>
					<th>deliveredPincode</th>
					
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
						<td>${packagedeliverydetails.deliveredPincode}
						
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>