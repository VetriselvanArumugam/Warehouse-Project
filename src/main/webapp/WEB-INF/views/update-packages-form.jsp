<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update Packages</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatepackages">
				<div>
					<label for="packageId">Package Id</label>
					<div>
						<form:input path="packageId" />
					</div>
				</div>
				<div>
					<label for="packageNumber">Package Number</label>
					<div>
						<form:input path="packageNumber" />
					</div>
				</div>
				<div>
					<label for="packageName">Package Name</label>
					<div>
						<form:input path="packageName" />
					</div>
				</div>
				<div>
					<label for="packageType">Package Type</label>
					<div>
						<form:input path="packageType" />
					</div>
				</div>
				<div>
					<label for="packageDate">Package Date</label>
					<div>
						<form:input path="packageDate" />
					</div>
				</div>
				<div>
					<label for="expiryDate">Expiry Date</label>
					<div>
						<form:input path="expiryDate" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				<div>
					<label for="ownerName">Owner Name</label>
					<div>
						<form:input path="ownerName" />
					</div>
				</div>
				<div>
					<label for="ownerAadhaarNumber">Owner Aadhaar Number</label>
					<div>
						<form:input path="ownerAadhaarNumber" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<div>
					<label for="packageWeight">package Weight</label>
					<div>
						<form:input path="packageWeight" />
					</div>
				</div>
				<div>
					<label for="packageHeight">package Height</label>
					<div>
						<form:input path="packageHeight" />
					</div>
				</div>
				<div>
					<form:button>update Packages</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>