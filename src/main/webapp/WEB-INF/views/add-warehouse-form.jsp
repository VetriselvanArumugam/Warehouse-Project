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
<title>Add Warehouse</title>
 <style> 
  <%@include file="/WEB-INF/css/addwarehouse.css"%>
</style>
</head>
<body>
   <div class="container">

		<h2 class="text-center"> Warehouse Form </h2>
		<div class="row jumbotron">
			<form:form action="add" method="post" modelAttribute="addwarehouse">
				<div></div>
				<div class="col-sm-3 form-group">
					<label for="address">Address</label>
					<div>
						<form:input path="address" placeholder="Address"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<form:errors path="address" class="text-box" />

				<div class="col-sm-3 form-group">
					<label for="location">Location</label>
					<div >
						<form:input path="location" placeholder="Location"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<form:errors path="location" class="text-box" />

				<div class="col-sm-3 form-group">
					<label for="state">State</label>
					<div >
						<form:select path="state" placeholder="State"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" >
							<form:option value="Tamilnadu">Tamilnadu</form:option>
							<form:option value="Kerala">Kerala</form:option>
							<form:option value="AndhraPradesh">Andhra Pradesh</form:option>
							<form:option value="Maharashtra">Maharashtra</form:option>
							<form:option value="Telangana">Telangana</form:option>
							<form:option value="WestBengal">West Bengal</form:option>
</form:select>
					</div>
				</div>
				<form:errors path="state" class="text-box" />

				<div class="col-sm-3 form-group">
					<label for="country">Country</label>
					<div >
						<form:input path="country" placeholder="Country"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
					</div>
				</div>
				<form:errors path="country" class="text-box" />

				<div class="col-sm-3 form-group">
					<label for="pincode">Pincode</label>
					<div>
						<form:input path="pincode" placeholder="Pincode" nrequired="true" />
					</div>
				</div>
				<form:errors path="pincode" class="text-box" />

				<div class="col-sm-3 form-group">
					<label for="totalArea">Total Area</label>
					<div>
						<form:input path="totalArea" placeholder="Total Area"
						 required="true" />
					</div>
				</div>
				<form:errors path="totalArea" class="text-box" />

				<div class="col-sm-3 form-group">
					<label for="warehouseType">Warehouse Type</label>
					<div>
						<form:select path="warehouseType" placeholder="Warehouse Type"
							pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" >
							<form:option value="Open">Open</form:option>
							<form:option value="Closed">Closed</form:option>
</form:select>
					</div>
				</div>
				<div>
					<form:errors path="warehouseType" class="text-box" />
					 <div class="col-sm-7 form-group mb-3">
               <button class="btn btn-primary float-right"> Add Warehouse </button>
            </div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>