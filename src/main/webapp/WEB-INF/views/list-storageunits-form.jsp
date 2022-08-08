<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StorageUnits List</title>
</head>
<body>
<style> background-color: #FFC0CB;</style>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>warehouseId</th>
					<th>unitId</th>
					<th>storageType</th>
					<th>maximumCapacity</th>
					<th>currentUsedCapacity</th>
					<th>status</th>
					<th>locationOfStorageUnit</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="storage_units" items="${allstorageunits}">
					<tr>
						<td>${storage_units.warehouseId}</td>
						<td>${storage_units.unitId}</td>
						<td>${storage_units.storageType}</td>
						<td>${storage_units.maximumCapacity}</td>
						<td>${storage_units.currentUsedCapacity}</td>
						<td>${storage_units.status}</td>
						<td>${storage_units.locationOfStorageUnit}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>