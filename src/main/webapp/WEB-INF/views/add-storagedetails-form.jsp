<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
<title>Add Storage Details</title>
<style>
<%@include file="/WEB-INF/css/addstoragedetails.css"%>
</style>
</head>
<body>
	<div class="container">

		<h2 class="text-center">StorageDetails Form</h2>
		<div class="row jumbotron">

			<form:form action="add" method="post" modelAttribute="addstorageDetails">
				
				<div class="col-sm-8 form-group">
					<label for="receiptDate">Receipt Date</label>
					<div>
						<form:input path="receiptDate" placeholder="Receipt Date" type="date" required="true"/>
					</div>
				</div>
				<form:errors path="receiptDate" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="unitId">Unit Id</label>
					<form:select path="unitId" placeholder="Unit Id">

                            <c:forEach var="allStorageUnits" items="${getAllStorageUnits}">
                                <form:option value="${allStorageUnits.unitId}"
                                    label="${allStorageUnits.unitId}" />
                            </c:forEach>
                        </form:select>	
                       </div>
				<form:errors path="unitId" class="text-box" />
				
				<div class="col-sm-8 form-group">
					<label for="packageId">Package Id</label>
					<form:select path="packageId" placeholder="Package Id" required="true">

                            <c:forEach var="allWarehousePackages" items="${getAllWarehousePackages}">
                                <form:option value="${allWarehousePackages.packageId}"
                                    label="${allWarehousePackages.packageId}" />
                            </c:forEach>
                        </form:select>	
				</div>
				<form:errors path="packageId" class="text-box" />
				<div class="col-sm-7 form-group mb-3">
					<button class="btn btn-primary float-right"> Add
						Storage Details</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>