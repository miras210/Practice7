<%--
  Created by IntelliJ IDEA.
  User: Miras
  Date: 17.10.2020
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
    <h1>Register Form</h1>
    <form method="post" action="CookieServlet">
        <label>Username:</label><br>
        <input type="text" name="username"><br>
        <label>Email:</label><br>
        <input type="text" name="email"><br>
        <label>Password:</label><br>
        <input type="password" name="password"><br>
        <input type="submit">
    </form>
</body>
</html>
