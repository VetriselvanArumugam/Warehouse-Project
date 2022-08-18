<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warehouse List</title>

<style >
<%@include file="/WEB-INF/css/listwarehouse.css"%>
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
					<th style="background-color: #87CEFA">warehouseId</th>
					<th style="background-color: #87CEFA">address</th>
					<th style="background-color: #87CEFA">location</th>
					<th style="background-color: #87CEFA">state</th>
					<th style="background-color: #87CEFA">country</th>
					<th style="background-color: #87CEFA">pincode</th>
					<th style="background-color: #87CEFA">totalArea</th>
					<th style="background-color: #87CEFA">warehouseType</th>
					<th style="background-color:#87CEFA">Update</th>
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
						<td><a href="updatewarehouseform?id=${Warehouse.warehouseId}">Edit</a></td>
				</c:forEach>
		</table>
		<div>
	<a href="/warehouse/addform"><button>Add Warehouse</button></a> 
	</div>
	</div>
</body>
</html>