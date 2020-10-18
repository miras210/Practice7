<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Miras
  Date: 18.10.2020
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation Page</title>
</head>
<body>
    <h1>Confirm your purchases</h1>
    <h3>There are your list of purchases:</h3>
    <%
        ArrayList<String> shopList = (ArrayList<String>) request.getSession().getAttribute("list");
        for (String item: shopList) {
            %>
        <div>
            <%=item%>
        </div>
    <%
        }
    %>
    <br>
    <form method="post" action="main.jsp">
        <input type="submit" value="Confirm">
    </form>
</body>
</html>
