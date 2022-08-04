<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StorageDetails List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>receiptNumber</th>
					<th>receiptDate</th>
					<th>unitId</th>
					<th>packageId</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StorageDetails" items="${allstorageDetails}">
					<tr>
						<td>${StorageDetails.receiptNumber}</td>
						<td>${StorageDetails.receiptDate}</td>
						<td>${StorageDetails.unitId}</td>
						<td>${StorageDetails.packageId}</td>
						
				</c:forEach>
		</table>
	</div>
</body>
</html>