<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Warehouse Index</title>
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    background-image:
        url("https://img.freepik.com/premium-vector/warehouse-industry-with-storage-buildings_441769-301.jpg?w=900");
        background-height: 786px;
    background-width: 1366px;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, Helvetica, sans-serif;
}
h1{
font-family:lucida Handwriting, Cursive;
color:#181717;
}
.navbar {
    overflow: hidden;
    background-color: #03623f00;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    color:#000000;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color:  #71aef4;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<body>
<p>
		<button onclick="document.location='/admin'" style="float:left">Back</button>
	</p>
    <h1 align="center">Listing House</h1>

    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">
                Warehouse <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/warehouse/list"> List Warehouse</a>
               
                 
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Storage Units <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/storageunit/list"> List Storage Units</a>
                
                
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Warehouse Packages <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
            <a href="/packages/list"> List Warehouse Packages</a>
            
               
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Storage Details <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/storageDetails/list"> List Storage Details</a>
                
            </div>
        </div>
         <div class="dropdown">
            <button class="dropbtn">
                Package Delivery Details <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/packageDeliveryDetails/list"> List Package Deliver Details</a> 
            </div>
        </div>
         <div class="dropdown">
            <button class="dropbtn">
                List Of Delivery Packages <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/packages/getpackagedeliveryform"> Fetch List</a>
                
    </div>

</body>
</html>