<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warehouse List</title>
</head>
<body>
	<div id="table root">
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
				<c:forEach var="Warehouse" items="${allwarehouse}">
					<tr>
						<td>${Warehouse.warehouseId}</td>
						<td>${Warehouse.address}</td>
						<td>${Warehouse.location}</td>
						<td>${Warehouse.state}</td>
						<td>${Warehouse.country}</td>
						<td>${Warehouse.pincode}</td>
						<td>${Warehouse.totalArea}</td>
						<td>${Warehouse.warehouseType}</td>
				</c:forEach>
		</table>
	</div>
</body>
</html>