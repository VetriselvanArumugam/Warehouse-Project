<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Package Delivery Details</title>
<style type="text/css"><%@include file="/WEB-INF/css/updatepackagedeliverydetails.css"%></style></style>
</head>
<body>
    <h3>Update Package Delivery Details</h3>
    <br>
    <form action="updateform" method="get"
        style="margin: 0;">
        <label>Enter Delivery Number</label> <input type="text" placeholder="packages id"
            name="id"> <input type='submit' value="update" name="submit">
    </form>
</body>
</html>