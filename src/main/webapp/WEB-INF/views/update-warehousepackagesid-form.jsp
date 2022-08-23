<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Warehouse Packages</title>
<style type="text/css"><%@include file="/WEB-INF/css/updatepackages.css"%></style></style>
</head>
<body>
    <h3>Update Warehouse Packages</h3>
    <br>
    <form action="updateform" method="get"
        style="margin: 0;">
        <label>Enter Packages Id</label> <input type="text" placeholder="Vetri Id"
            name="id"> <input type='submit' value="update" name="submit">
    </form>
</body>
</html>