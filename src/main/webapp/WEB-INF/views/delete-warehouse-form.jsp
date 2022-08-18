<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Warehouse</title>
</head>
<body>
    <h3>Delete Warehouse</h3>
    <br>
    <form action="deletewarehouse" method="get"
        style="margin: 0;">
        <label>Enter Warehouse Id</label> <input type="text" placeholder="Warehouse Id"
            name="warehouseid"> <input type='submit' value="delete" name="submit">
    </form>
</body>
</html>