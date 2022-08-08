<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>get StorageUnits</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="get" modelAttribute="getstorageunits">
				<div>
					<label for="warehouseId">Warehouse Id</label>
					<div>
						<form:input path="warehouseId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="unitId">unit id</label>
					<div>
						<form:input path="UnitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="storageType">storage type</label>
					<div>
						<form:input path="storageType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="maximumCapacity">maximum capacity</label>
					<div>
						<form:input path="maximumCapacity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="currentUsedCapacity">current used capacity</label>
					<div>
						<form:input path="currentUsedCapacity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="status">status</label>
					<div>
						<form:input path="status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="locationOfStorageUnit">location of storage unit</label>
					<div>
						<form:input path="locationOfStorageUnit" readonly="true"/>
					</div>
				
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>