<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages List</title>
<style>
<%@include file="/WEB-INF/css/listpackages.css"%>
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
					<th style="background-color:#87CEFA">packageId</th>
					<th style="background-color:#87CEFA">packageNumber</th>
					<th style="background-color:#87CEFA">packageName</th>
					<th style="background-color:#87CEFA">packageType</th>
					<th style="background-color:#87CEFA">packageDate</th>
					<th style="background-color:#87CEFA">expiryDate</th>
					<th style="background-color:#87CEFA">status</th>
					<th style="background-color:#87CEFA">ownerName</th>
					<th style="background-color:#87CEFA">ownerAadhaarNumber</th>
					<th style="background-color:#87CEFA">phoneNumber</th>
					<th style="background-color:#87CEFA">emailId</th>
					<th style="background-color:#87CEFA">packageWeight</th>
					<th style="background-color:#87CEFA">packageHeight</th>
					<th style="background-color:#87CEFA">Update</th>
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
						<td><a href="updatewarehousepackagesform?id=${Packages.PackageId}">Edit</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
	<a href="/packages/addform"><button>Add Packages</button></a> 
	</div>
	</div>
</body>
</html>