<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Doctor Id</th>
					<th>Doctor Name</th>
					<th>Dob</th>
					<th>City</th>
					<th>Speciality</th>
					<th>Phoneno</th>
					<th>Sandard Fees</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Doctor" items="${alldoctors}">
					<tr>
						<td>${Doctor.doctorId}</td>
						<td>${Doctor.doctor_name}</td>
						<td>${Doctor.dob}</td>
						<td>${Doctor.speciality}</td>
						<td>${Doctor.city}</td>
						<td>${Doctor.phoneno}</td>
						<td>${Doctor.standardfees}</td>
				</c:forEach>
		</table>
	</div>
</body>
</html>