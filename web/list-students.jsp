<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.app.Student, java.util.List" %>
<html>
<head>
    <title>Students Tracker App</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<%
    List<Student> students = (List<Student>) request.getAttribute("students");
%>
<body>
<div id="wrapper">
    <div id="header">
        <h2>FooBar University</h2>
    </div>
</div>

<div id="container">
    <div id="content">
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.firstName}</td>
                    <td>${student.lastName}</td>
                    <td>${student.email}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
