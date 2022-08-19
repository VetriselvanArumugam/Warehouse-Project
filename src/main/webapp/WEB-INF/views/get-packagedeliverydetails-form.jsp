<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Package Delivery Details</title>
</head>
<body>
    <h3>Get Package Delivery Details</h3>
    <br>
    <form action="findpackagesById" method="get"
        style="margin: 0;">
        <label>Enter Delivery Number</label> <input type="text" placeholder="packages id"
            name="id"> <input type='submit' value="Get" name="submit">
    </form>
</body>
</html>