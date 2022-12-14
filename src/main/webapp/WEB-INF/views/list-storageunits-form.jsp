<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>StorageUnits List</title>
<style><%@include file="/WEB-INF/css/liststorageunits.css"%>
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
</style>
 <body>
	<div id="table root">
		<table class="table-size">
		<caption></caption>
			<thead>
				<tr>
					<th>Warehouse Id</th>
					<th>Unit Id</th>
					<th>Storage Type</th>
					<th>Maximum Capacity</th>
					<th>Current Used Capacity</th>
					<th>Remaining Capacity</th>
					<th>Status</th>
					<th>Location Of Storage Unit</th>
					<th>Update</th>

				</tr>
			</thead>
 </head>
 <div>
<ul>
 <li class="dropdown">
    <a class="dropbtn">Lists</a>
    <div class="dropdown-content">
    <a href="/warehouse/list">Warehouse List</a>
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
			<tbody>
				<c:forEach var="storage_units" items="${allstorageunits}">
					<tr>
						<td>${storage_units.warehouseId}</td>
						<td>${storage_units.unitId}</td>
						<td>${storage_units.storageType}</td>
						<td>${storage_units.maximumCapacity}</td>
						<td>${storage_units.currentUsedCapacity}</td>
						<td>${storage_units.remainingCapacity}</td>
						<td>${storage_units.status}</td>
						<td>${storage_units.locationOfStorageUnit}</td>
						<td><a href="updateform?id=${storage_units.unitId}">Edit</a></td>
				</c:forEach>
			</tbody>
		</table>
		<div>
	<a href="/storageunit/addform"><button class="button-29" role="button">Add Units</button></a>
	</div>
	</div>
</body>
</html>