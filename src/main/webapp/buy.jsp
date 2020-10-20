<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %><%--
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
        if (shopList != null) {
        for (String item: shopList) {
            %>
        <div>
            <%=item%>
        </div>
    <%
            }
        session.setAttribute("list", new ArrayList<String>());
        }
        Date d = new Date(request.getSession().getCreationTime());
        Date l = new Date(request.getSession().getLastAccessedTime());
        int count = 0;
        if (session.getAttribute("count") != null) {
            count = (int)session.getAttribute("count");
        }
    %>
    <br>
    <h3>Session creation time:</h3>
    <%=d%>
    <br>
    <h3>Last activity time:</h3>
    <%=l%>
    <br><br>
    <h3>Number of website visits:</h3>
    <%= count%>
    <br><br>
    <form method="post" action="login.jsp">
        <input type="submit" value="Confirm">
    </form>
</body>
</html>
