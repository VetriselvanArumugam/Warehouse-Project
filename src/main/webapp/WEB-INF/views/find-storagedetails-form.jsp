<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Storage Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstorageDetailsid">
				<div>
					<label for="receiptNumber">Receipt Number</label>
					<div>
						<form:input path="receiptNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="receiptDate">Receipt Date</label>
					<div>
						<form:input path="receiptDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="unitId">Unit Id</label>
					<div>
						<form:input path="unitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" readonly="true"/>
					</div>
				<div>
					<form:button>Get Storage Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>