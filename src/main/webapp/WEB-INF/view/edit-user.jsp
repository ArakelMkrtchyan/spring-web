<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit User Form</title>
</head>
<body>
<h1>Edit User Form</h1>
<form action="http://localhost:8080/edit-user" method="post">
    <input type="hidden" name = "id" value="${user.id}"/>
    <table style="with: 50%">
        <tr>
            <td>First Name</td>
            <td><input type="text" name="firstName" value="${user.firstName}"/></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastName" value="${user.lastName}"/></td>
        </tr>

        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="${user.email}"/></td>
        </tr>
        <tr>
            <td>Status</td>
            <td>
                <select name="status" id="status">
                    <option value="1" <c:if test="${user.status == 1}"> selected</c:if>>Active
                    </option>
                    <option value="0" <c:if test="${user.status == 0}"> selected</c:if>>Passive</option>
                </select>
            </td>
        </tr></table>
    <input type="submit" value="Edit user" /></form>
</body>
</html>