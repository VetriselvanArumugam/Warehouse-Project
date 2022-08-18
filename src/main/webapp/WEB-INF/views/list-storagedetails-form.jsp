<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StorageDetails List</title>
<style>
<%@include file="/WEB-INF/css/liststoragedetails.css"%>
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
					<th style="background-color:#87CEFA">receiptNumber</th>
					<th style="background-color:#87CEFA">receiptDate</th>
					<th style="background-color:#87CEFA">unitId</th>
					<th style="background-color:#87CEFA">packageId</th>
					<th style="background-color:#87CEFA">Update</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StorageDetails" items="${allstorageDetails}">
					<tr>
						<td>${StorageDetails.receiptNumber}</td>
						<td>${StorageDetails.receiptDate}</td>
						<td>${StorageDetails.unitId}</td>
						<td>${StorageDetails.packageId}</td>
						<td><a href="updateform?addstorageDetails=${StorageDetails.receiptNumber}">Edit</a></td>
						
						
				</c:forEach>
		</table>
		<div>
	<a href="/storageDetails/addform"><button>Add Details</button></a> 
	</div>
	</div>
</body>
</html>