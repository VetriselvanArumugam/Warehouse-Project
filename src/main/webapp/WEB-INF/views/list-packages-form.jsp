<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>packageId</th>
					<th>packageNumber</th>
					<th>packageName</th>
					<th>packageType</th>
					<th>packageDate</th>
					<th>expiryDate</th>
					<th>status</th>
					<th>ownerName</th>
					<th>ownerAadhaarNumber</th>
					<th>phoneNumber</th>
					<th>emailId</th>
					<th>packageWeight</th>
					<th>packageHeight</th>
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
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>