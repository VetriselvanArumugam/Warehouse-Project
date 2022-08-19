<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Admin</title>
<style>
background-color: #FFC0CB;
.table-size{
border:2px ;
width:100%;
cellpadding:2px;
 }
</style>
</head>
<body>
	<div id="table root">
		<table class="table-size" >
		<caption></caption>
		
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