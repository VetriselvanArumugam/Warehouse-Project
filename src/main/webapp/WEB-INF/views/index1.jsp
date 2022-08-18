<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Warehouse Index</title>
<style>
body {
    background-image:
        url("https://t3.ftcdn.net/jpg/03/24/27/82/240_F_324278210_F66RPBJ4QmiIOKVQiiPggMVfBPCtJwFP.jpg");
    height: 768px;
    width: 1366px;
    background-position: center top;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
	<h1 align="center" >Warehouse Management</h1>
	<hr />
	<p>Message is: ${message}</p>
	<h3 align="left">
		<a href="/warehouse/list">Warehouse List</a>
	</h3>
	<h3 align="left">
		<a href="/warehouse/addform">Add Warehouse</a>
	</h3>
	<h3 align="left">
		<a href="/storageunit/list"> Storage Unit List </a>
	</h3>
	<h3 align="left">
		<a href="/storageunit/addform">Storage Unit Add</a>
	</h3>
	<h3 align="left">
		<a href="/packages/list">Packages List</a>
	</h3>
	<h3 align="left">
		<a href="/packages/addform">Packages Add</a>
	</h3>
	<h3 align="left">
		<a href="/storageDetails/list">Storage Details List</a>
	</h3>
	<h3 align="left">
		<a href="/storageDetails/addform">Storage Details Add</a>
	</h3>
	<h3 align="left">
		<a href="/packageDeliveryDetails/list">Package Delivery Details List</a>
	</h3>
	<h3 text-align="left">
		<a href="/packageDeliveryDetails/addform">Package Delivery Details Add</a>
	</h3>
	<h3 align="left">
		<a href="/warehouse/getwarehousestorageunits?id=1">Warehouse Storage Units List</a>
	</h3>
	<hr />
	<p>
		<b>Email ID:</b> vetriselvan.arumugam@chainsys.com
	</p>

	<p>
		<b>Contact:</b>+91 9025775648
	</p>

	
</body>
</html>