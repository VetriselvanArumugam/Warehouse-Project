<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://codepen.io/skjha5993/pen/bXqWpR.css">
<meta charset="ISO-8859-1">
<title>Update StorageUnits</title>
<style type="text/css">
label {
	font-weight: 600;
	color: #555;
}

body {
	background: #1ab2ff;
}
</style>
</head>
<body>
<p>
		<button onclick="document.location='/home'" style="float:left">Back</button>
	</p>
	<div class="container">

		<h2 class="text-center"> Update Storageunits Form</h2>
		<div class="row jumbotron">
			<form:form action="update" method="post" modelAttribute="updatestorageunits">
			<form:errors path="warehouseId" class="text-box" />
				<div class="col-sm-12 form-group">
					<label for="warehouseId">Warehouse Id</label>
					<div>
						<form:input path="warehouseId" placeholder="Warehouse Id"/>
					</div>
				</div>
				<form:errors path="unitId" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="unitId">Unit id</label>
					<div>
						<form:input path="unitId" placeholder="Unit Id" required="true"/>
					</div>
				</div>
				<form:errors path="storageType" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="storageType">Storage Type</label>
					<div>
						<form:input path="storageType" placeholder="Storage Type" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<form:errors path="maximumCapacity" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="maximumCapacity">Maximum Capacity</label>
					<div>
						<form:input path="maximumCapacity" placeholder="Maximum Capacity" required="true" />
					</div>
				</div>
				<form:errors path="currentUsedCapacity" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="currentUsedCapacity">Current Used Capacity</label>
					<div>
						<form:input path="currentUsedCapacity" placeholder="Current Used Capacity" 
required="true" />
					</div>
				</div>
				<form:errors path="remainingCapacity" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="remainingCapacity">Remaining Capacity</label>
					<div>
						<form:input path="remainingCapacity" placeholder="Remaining Capacity" 
required="true" />
					</div>
				</div>
				<form:errors path="status" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="status">Status</label>
					<div>
						<form:input path="status" placeholder="Status"/>
					</div>
				</div>
				<form:errors path="locationOfStorageUnit" class="text-box" />
				<div class="col-sm-3 form-group">
					<label for="locationOfStorageUnit">Location Of Storage Unit</label>
					<div>
						<form:input path="locationOfStorageUnit" placeholder="Location Of Storage Unit" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<div>
					
				<div class="col-sm-7 form-group mb-3">
               <button class="btn btn-primary float-right"> Update Storage Unit </button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>