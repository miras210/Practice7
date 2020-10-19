<%--
  Created by IntelliJ IDEA.
  User: Sungat Kaparov
  Date: 18.10.2020
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] ck = request.getCookies();
    Boolean here = false;
    for (Cookie c:ck) {
        if (c.getName().equals("loggedIn") && c.getValue().equals("true")){
            here = true;
        }
    }
    if (here){
        response.sendRedirect("shop.jsp");
    }
%>
<h1>Login Form</h1>
<form method="post" action="LoginServlet">
    <label>Username:</label><br>
    <input type="text" name="username"><br>
    <label>Password:</label><br>
    <input type="password" name="password"><br>
    <input type="submit">
</form>
<a href="index.jsp">Register</a>
</body>
</html>
