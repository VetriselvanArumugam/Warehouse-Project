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
			<form:form action="get" method="post" modelAttribute="getstorageDetailsid">
			<form:errors path="receiptNumber" class="text-box" />
				<div>
					<label for="receiptNumber">Receipt Number</label>
					<div>
						<form:input path="receiptNumber" placeholder="Receipt Number"/>
					</div>
				</div>
				<form:errors path="receiptDate" class="text-box" />
				<div>
					<label for="receiptDate">Receipt Date</label>
					<div>
						<form:input path="receiptDate" placeholder="Receipt Date"/>
					</div>
				</div>
				<form:errors path="unitId" class="text-box" />
				<div>
					<label for="unitId">Unit Id</label>
					<div>
						<form:input path="unitId" placeholder="Unit Id"/>
					</div>
				</div>
				<form:errors path="packageId" class="text-box" />
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" placeholder="Package Id"/>
					</div>
				</div>
				
				<div>
					<form:button>Get Storage Details</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>