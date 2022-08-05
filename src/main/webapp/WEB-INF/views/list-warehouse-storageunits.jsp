<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warehouse Storage Units List</title>
</head>
<body>
<div id="getwarehouse">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>warehouseId</th>
					<th>address</th>
					<th>location</th>
					<th>state</th>
					<th>country</th>
					<th>pincode</th>
					<th>totalArea</th>
					<th>warehouseType</th>
				</tr>
			</thead>
			<tbody>
			
					<tr>
						<td>${getwarehouse.warehouseId}</td>
						<td>${getwarehouse.address}</td>
						<td>${getwarehouse.location}</td>
						<td>${getwarehouse.state}</td>
						<td>${getwarehouse.country}</td>
						<td>${getwarehouse.pincode}</td>
						<td>${getwarehouse.totalArea}</td>
						<td>${getwarehouse.warehouseType}</td>
						</tr>
						</tbody>
				
		</table>
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
				<c:forEach var="storage_units" items="${storageUnitslist}">
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