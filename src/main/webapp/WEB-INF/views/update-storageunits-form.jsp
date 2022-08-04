<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update StorageUnits</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatestorageunits">
				<div>
					<label for="warehouseId">Warehouse id</label>
					<div>
						<form:input path="warehouseId" />
					</div>
				</div>
				<div>
					<label for="unitId">unit id</label>
					<div>
						<form:input path="unitId" />
					</div>
				</div>
				<div>
					<label for="storageType">storage type</label>
					<div>
						<form:input path="storageType" />
					</div>
				</div>
				<div>
					<label for="maximumCapacity">maximum capacity</label>
					<div>
						<form:input path="maximumCapacity" />
					</div>
				</div>
				<div>
					<label for="currentUsedCapacity">current used capacity</label>
					<div>
						<form:input path="currentUsedCapacity" />
					</div>
				</div>
				<div>
					<label for="status">status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				<div>
					<label for="locationOfStorageUnit">location of storage unit</label>
					<div>
						<form:input path="locationOfStorageUnit" />
					</div>
				</div>
				<div>
					
				<div>
					<form:button>Update Storage Units</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>