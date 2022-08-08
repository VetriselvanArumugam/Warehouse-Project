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
 body {
    background-color: AntiqueWhite;
    text-align: center;
}

label {
    color: Black
    </style>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="add" method="post" modelAttribute="addadmin">
                <div>
                    <label for="UserName"> User name :</label>
                    <div>
                        <form:input path="userName" />
                    </div>
                </div>
                <div>
                    <label for="Password"> Password :</label>
                    <div>
                        <form:input path="password" />
                    </div>
                </div>
                <div>
                    <form:button> Add Admin</form:button>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>