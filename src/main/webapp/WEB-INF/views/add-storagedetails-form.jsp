<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Storage Details</title>
</head>
<body>
<style>
 body {
    background-color: AntiqueWhite;
    text-align: center;
}

label {
    color: Black
    </style>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addstorageDetails">
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
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" />
					</div>
				</div>
				
				<div>
					<form:button>Add Storage Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>