<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Storage Units</title>
</head>
<body>
    <h3>Get Storage Units</h3>
    <br>
    <form action="findstorageunitsById" method="get"
        style="margin: 0;">
        <label>Enter Unit ID</label> <input type="text" placeholder="Vetri Id"
            name="id"> <input type='submit' value="Get" name="submit">
    </form>
</body>
</html>