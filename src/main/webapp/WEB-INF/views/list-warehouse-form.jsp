<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Warehouse List</title>

<style ><%@include file="/WEB-INF/css/listwarehouse.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
</style>
</head>
<body>

<div>
<ul>
 <li class="dropdown">
    <a class="dropbtn">Lists</a>
    <div class="dropdown-content">
    <a href="/storageunit/list">Storage Units List</a>
    <a href="/packages/list">Warehouse Packages List</a>
    <a href="/storageDetails/list">Storage Details List</a>
    <a href="/packageDeliveryDetails/list">Package Delivery Details List</a>
    </div>
     </li>
     </ul>
  
  </div>
	<p>
	 <button Class="button-85" role="button" onclick="document.location='/home'" style="float:left">Home</button>
	</p>
	<div id="table root">
	<table class="table-size">
		<caption></caption>
			<thead>
				<tr>
					<th>Warehouse Id</th>
					<th>Address</th>
					<th>Location</th>
					<th>State</th>
					<th>Country</th>
					<th>Pincode</th>
					<th>TotalArea</th>
					<th>Warehouse Type</th>
					<th>Update</th>
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
						<td><a href="updateform?id=${Warehouse.warehouseId}">Edit</a></td>
				</c:forEach>
		</table>
		<div>
	<a href="/warehouse/addform"><button class="button-29" role="button">Add Warehouse</button></a>
	</div>
	</div>
</body>
</html>