<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Package Delivery Details</title>
<style type="text/css"><%@include file="/WEB-INF/css/dtopackages.css"%></style>
</head>
<body>
<h3 style="text-align: center;">Get Package Delivery Details</h3>
    <br>
    <form action="getpackagespackagedeliverydetails" method="get"
        style="margin: 0;text-align: center;">
        <label>Enter Receipt Number</label> <input type="text" placeholder="Package Id"
            name="packageId"> <input type='submit' value="Get" name="submit">
    </form>
</body>
</html>