<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>StorageDetails List</title>
<style><%@include file="/WEB-INF/css/liststoragedetails.css"%>
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
    <a href="/warehouse/list">Warehouse List</a>
    <a href="/storageunit/list">Storage Units List</a>
    <a href="/packages/list">Warehouse Packages List</a>
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
					<th>Receipt Number</th>
					<th>Receipt Date</th>
					<th>Unit Id</th>
					<th>Package Id</th>
					<th>Update</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StorageDetails" items="${allstorageDetails}">
					<tr>
						<td>${StorageDetails.receiptNumber}</td>
						<td>${StorageDetails.receiptDate}</td>
						<td>${StorageDetails.unitId}</td>
						<td>${StorageDetails.packageId}</td>
						<td><a href="updateform?id=${StorageDetails.receiptNumber}">Edit</a></td>
						
						
				</c:forEach>
		</table>
		<div>
	<a href="/storageDetails/addform"><button class="button-29" role="button">Add Storage Detals</button></a>
	</div>
	</div>
</body>
</html>