<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Warehouse</title>
</head>
<body>
    <h3>Get Warehouse</h3>
    <br>
    <form action="findWarehouseById" method="get"
        style="margin: 0;">
        <label>Enter Warehouse Id</label> <input type="text" placeholder="Warehouse id"
            name="id"> <input type='submit' value="Get" name="submit">
    </form>
</body>
</html>