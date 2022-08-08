<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Admin</title>
</head>
<body>
<style> background-color: #FFC0CB;</style>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>userName</th>
					<th>password</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Admin" items="${alladmin}">
					<tr>
						<td>${Admin.userName}</td>
						<td>${Admin.password}</td>
						
				</c:forEach>
		</table>
	</div>
</body>
</html>