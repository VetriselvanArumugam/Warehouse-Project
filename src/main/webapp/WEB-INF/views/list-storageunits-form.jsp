<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StorageUnits List</title>
<style>
<%@include file="/WEB-INF/css/liststorageunits.css"%>
</style>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th style="background-color:#87CEFA">warehouseId</th>
					<th style="background-color:#87CEFA">unitId</th>
					<th style="background-color:#87CEFA">storageType</th>
					<th style="background-color:#87CEFA">maximumCapacity</th>
					<th style="background-color:#87CEFA">currentUsedCapacity</th>
					<th style="background-color:#87CEFA">remainingCapacity</th>
					<th style="background-color:#87CEFA">status</th>
					<th style="background-color:#87CEFA">locationOfStorageUnit</th>
					<th style="background-color:#87CEFA">Update</th>

				</tr>
			</thead>
 </head>
 <body>
<p>
		<button onclick="document.location='/home'" style="float:left">Back</button>
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
						<td><a href="updatestorageunitsform?id=${storage_units.unitId}">Edit</a></td>
				</c:forEach>
			</tbody>
		</table>
		<div>
	<a href="/storageunit/addform"><button>Add Units</button></a> 
	</div>
	</div>
</body>
</html>