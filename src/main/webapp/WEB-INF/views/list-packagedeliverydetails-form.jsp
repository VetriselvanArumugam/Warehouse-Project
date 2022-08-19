<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>PackageDeliveryDetails List</title>
<style>
<%@include file="/WEB-INF/css/listpackagedeliverydetails.css"%>
</style>
</head>
<body>
<div>
<ul>
 <li class="dropdown">
    <a class="dropbtn">Lists</a>
    <div class="dropdown-content">
    <a href="/warehouse/list">Warehouse List</a>
    <a href="/storageunit/list">Storage Units List</a>
    <a href="/packages/list">Warehouse Packages List</a>
    <a href="/storageDetails/list">Storage Details List</a>
     </li>
     </ul>
  </div>
  </div>
<p>
		<button Class="button-85" role="button" onclick="document.location='/home'" style="float:left">Home</button>
	</p>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Delivery Number</th>
					<th>Delivery Date</th>
					<th>Unit Id</th>
					<th>Package Id</th>
					<th>Delivered Person</th>
					<th>Delivered Aadhaar Number</th>
					<th>Delivered Phone Number</th>
					<th>Delivered City</th>
					<th>Delivered Pincode</th>
					<th>Update</th>
					
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
	<a href="/packageDeliveryDetails/addform"><button class="button-29" role="button">Add PackDelivery</button></a>
	</div>
</body>
</html>