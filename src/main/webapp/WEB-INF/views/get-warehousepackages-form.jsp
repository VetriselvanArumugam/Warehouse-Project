<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Warehouse Packages</title>
</head>
<body>
    <h3>Get Warehouse Packages</h3>
    <br>
    <form action="findpackagesById" method="get"
        style="margin: 0;">
        <label>Enter Packages Id</label> <input type="text" placeholder="packages id"
            name="id"> <input type='submit' value="Get" name="submit">
    </form>
</body>
</html>