<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Packages List</title>
<style><%@include file="/WEB-INF/css/listpackages.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
</style>
</head>
<body>
<div>
<div>
<ul>
 <li class="dropdown">
    <a class="dropbtn">Lists</a>
    <div class="dropdown-content">
    <a href="/warehouse/list">Warehouse List</a>
    <a href="/storageunit/list">Storage Units List</a>
    <a href="/storageDetails/list">Storage Details List</a>
    <a href="/packageDeliveryDetails/list">Package Delivery Details List</a>
    </div>
     </li>
     </ul>
  </div>
  </div>
<p>
		<button Class="button-85" role="button" onclick="document.location='/home'" style="float:left">Home</button>
	</p>
	<div id="table root">
	<table class="table-size">
		<caption></caption>
			<thead>
				<tr>
					<th>Package Id</th>
					<th>package Number</th>
					<th>package Name</th>
					<th>PackageType</th>
					<th>Package Date</th>
					<th>Expiry Date</th>
					<th>Status</th>
					<th>Owner Name</th>
					<th>Owner Aadhaar Number</th>
					<th>Phone Number</th>
					<th>Email Id</th>
					<th>Package Weight</th>
					<th>Package Height</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="packages" items="${allpackages}">
					<tr>
						<td>${packages.packageId}</td>
						<td>${packages.packageNumber}</td>
						<td>${packages.packageName}</td>
						<td>${packages.packageType}</td>
						<td>${packages.packageDate}</td>
						<td>${packages.expiryDate}</td>
						<td>${packages.status}</td>
						<td>${packages.ownerName}</td>
						<td>${packages.ownerAadhaarNumber}
						<td>${packages.phoneNumber}</td>
						<td>${packages.emailId}</td>
						<td>${packages.packageWeight}</td>
						<td>${packages.packageHeight}</td>
						<td><a href="updateform?id=${packages.packageId}">Edit</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
	<a href="/packages/addform"><button class="button-29" role="button">Add Packages</button></a>
	</div>
	</div>
</body>
</html>