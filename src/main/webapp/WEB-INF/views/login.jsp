<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1 class="table_dark">Login page</h1>
    <h3 style="color:red">${errorMsg}</h3>
    <form method="post" style="text-align: center; margin: 0 auto" action="${pageContext.request.contextPath}/login">
        <label><b>Login</b></label>
        <input type="text" placeholder="Please enter your login" name="login" required>
        <label><b>Password</b></label>
        <input type="password" placeholder="Please enter your password" name="password" required>
        <button type="submit">Login</button>
    </form>
    <br>
    <div style="text-align: center; margin-top: auto">
    <button onclick="window.location.href = '${pageContext.request.contextPath}/drivers/add';">
        Register new driver
    </button>
    </div>
</body>
</html>
