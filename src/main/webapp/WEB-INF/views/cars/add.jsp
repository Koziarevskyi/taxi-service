<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h1 class="table_dark">Add car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <input type="number" name="manufacturer_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
<br>
<table border="1" class="table_dark">
    <h1 class="table_dark">All manufacturers:</h1>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>
                <c:out value="${manufacturer.id}"/>
            </td>
            <td>
                <c:out value="${manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${manufacturer.country}"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<table border="1" class="table_dark">
    <h1 class="table_dark">All cars:</h1>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer ID</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.id}"/>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
