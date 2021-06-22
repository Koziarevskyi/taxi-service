<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Header</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Home</button>
</form>
<form method="get" action="${pageContext.request.contextPath}/logout">
    <button type="submit">Logout</button>
</form>
</body>
</html>
