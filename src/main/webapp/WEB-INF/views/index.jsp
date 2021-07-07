<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>index</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Taxi Service</h1>
    <table class="table_dark">
        <tr>
            <th>Redirect to</th>
        </tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/drivers/';">
                Display All Drivers
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/manufacturers/';">
                Display All Manufacturers
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/cars/';">
                Display All Cars
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/drivers/cars/current';">
                Display My Current Cars
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/manufacturers/add';">
                Create new Manufacturer
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/cars/add';">
                Create New Car
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/drivers/add';">
                Create New Driver
            </button>
        </td></tr>
        <tr><td>
            <button onclick="window.location.href = '${pageContext.request.contextPath}/cars/drivers/add';">
                Add Driver to Car
            </button>
        </td></tr>
    </table>
</body>
</html>
