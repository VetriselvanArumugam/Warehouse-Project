<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>get Warehouse</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="get" modelAttribute="getWarehouseid">
				<div>
					<label for="warehouseId">Warehouse Id</label>
					<div>
						<form:input path="warehouse_id" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" />
					</div>
				</div>
				<div>
					<label for="state">State</label>
					<div>
						<form:input path="state" />
					</div>
				</div>
				<div>
					<label for="country">Country</label>
					<div>
						<form:input path="country" />
					</div>
				</div>
				<div>
					<label for="pincode">Pincode</label>
					<div>
						<form:input path="pincode" />
					</div>
				</div>
				<div>
					<label for="totalArea">Total Area</label>
					<div>
						<form:input path="totalArea" />
					</div>
				</div>
				<div>
					<label for="warehouseType">Warehouse Type</label>
					<div>
						<form:input path="warehouseType" />
					</div>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>