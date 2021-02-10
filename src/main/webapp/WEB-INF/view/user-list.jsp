<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>User list</title>
</head>
<body>

    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.firstName}" /></td>
                    <td><c:out value="${user.lastName}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:choose>
                        <c:when test="${user.status == '1'}">
                            Active
                            <br />
                        </c:when >
                        <c:when test="${user.status == '0'}">
                            Passive
                            <br />
                        </c:when>
                    </c:choose></td>
                    <td>
                        <a href="/edit-user/${user.id}">Edit</a>
                        <a href="/delete-user/${user.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div align="center">
        <a href="create-user">Create user</a>
    </div>
</body>
</html>