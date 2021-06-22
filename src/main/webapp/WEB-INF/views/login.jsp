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
    <form method="post" action="${pageContext.request.contextPath}/login">
        <div class="block1">
            <label><b>Login</b></label>
            <input type="text" placeholder="Please enter your login" name="login" required>
            <label><b>Password</b></label>
            <input type="password" placeholder="Please enter your password" name="password" required>
            <button type="submit">Login</button>
        </div>
    </form>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
