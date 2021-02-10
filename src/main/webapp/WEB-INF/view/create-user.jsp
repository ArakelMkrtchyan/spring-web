<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Create User Form</title>
</head>
<body>
<h1>Create User Form</h1>
<form action="create-user" method="post">
    <table style="with: 50%">
        <tr>
            <td>First Name</td>
            <td><input type="text" name="firstName" /></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastName" /></td>
        </tr>

        <tr>
            <td>Email</td>
            <td><input type="text" name="email" /></td>
        </tr>
        <tr>
            <td>Status</td>
            <td>
                <select name="status" id="status">
                    <option value="1">Active</option>
                    <option value="0">Passive</option>
                </select>
            </td>
        </tr></table>
    <input type="submit" value="Create user" /></form>
</body>
</html>