<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Add Admin</title>
<style>
<%@include file="/WEB-INF/css/addadmin.css"%>
</style>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="add" method="post" modelAttribute="addadmin">
            
                <div>
                    <label for="UserName"> User Name :</label>
                    <div>
                        <form:input path="userName" placeholder="User Name" pattern="^[a-z A-Z]+$" title="Please Enter Charactor Only" />
                    </div>
                </div>
                <form:errors path="UserName" class="text-box" />
                
                 
                <div>
                    <label for="Password"> Password :</label>
                    <div>
                        <form:input path="password" placeholder="Password" id="pass" title="Please Enter Charactor Only" required="true" />
                    </div>
                </div>
                <form:errors path="Password" class="text-box" />
                <div>
                    <form:button> Add Admin</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>