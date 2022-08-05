<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Packages</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="get" method="post" modelAttribute="getpackages">
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageNumber">Package Number</label>
					<div>
						<form:input path="packageNumber"readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageName">Package Name</label>
					<div>
						<form:input path="packageName"readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageType">Package Type</label>
					<div>
						<form:input path="packageType"readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageDate">Package Date</label>
					<div>
						<form:input path="packageDate"readonly="true" />
					</div>
				</div>
				<div>
					<label for="expiryDate">Expiry Date</label>
					<div>
						<form:input path="expiryDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ownerName">Owner Name</label>
					<div>
						<form:input path="ownerName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="ownerAadhaarNumber">Owner Aadhaar Number</label>
					<div>
						<form:input path="ownerAadhaarNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="packageWeight">package Weight</label>
					<div>
						<form:input path="packageWeight" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="packageHeight">package Height</label>
					<div>
						<form:input path="packageHeight" readonly="true"/>
					</div>
				</div>
				<div>
					<form:button>GetPackages</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>