<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update StorageDetails</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatestoragedetails">
				<div>
					<label for="receiptNumber">Receipt Number</label>
					<div>
						<form:input path="receiptNumber" />
					</div>
				</div>
				<div>
					<label for="receiptDate">Receipt Date</label>
					<div>
						<form:input path="receiptDate" />
					</div>
				</div>
				<div>
					<label for="unitId">unit Id</label>
					<div>
						<form:input path="unitId" />
					</div>
				</div>
				<div>
					<label for="packageId">package Id</label>
					<div>
						<form:input path="packageId" />
					</div>
				</div>
					<form:button>Update StorageDetails</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>