<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Warehouse</title>
<style type="text/css"><%@include file="/WEB-INF/css/listwarehouse.css"%></style>
</head>
<body>
    <h3>Update Warehouse</h3>
    <br>
    <form action="updateform" method="get"
        style="margin: 0;">
        <label>Enter Warehouse ID</label> <input type="text" placeholder="Vetri Id"
            name="id"> <input type='submit' value="update" name="submit">
    </form>
</body>
</html>