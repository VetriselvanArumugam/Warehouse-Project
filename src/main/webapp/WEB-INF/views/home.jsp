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
<%@include file="/WEB-INF/css/home.css"%>
</style>
</head>
<body>
<p>
		<button  Class="button-85" role="button" onclick="document.location='/admin'" style="float:left">LogOut</button>
	</p>
    <h1  class="glow">Listing House</h1>

    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">
                Warehouse <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/warehouse/list"> List Warehouse</a>
               
                 
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Storage Units <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/storageunit/list"> List Storage Units</a>
                
                
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Warehouse Packages <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
            <a href="/packages/list"> List Warehouse Packages</a>
            
               
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Storage Details <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/storageDetails/list"> List Storage Details</a>
                
            </div>
        </div>
         <div class="dropdown">
            <button class="dropbtn">
                Package Delivery Details <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/packageDeliveryDetails/list"> List Package Deliver Details</a> 
            </div>
        </div>
         <div class="dropdown">
            <button class="dropbtn">
                List Of Delivery Packages <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/packages/getpackagedeliveryform"> Fetch List</a>
                
    </div>
      

</body>
</html>