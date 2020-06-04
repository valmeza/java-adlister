<%--
  Created by IntelliJ IDEA.
  User: valeriameza
  Date: 6/4/20
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<form action="login.jsp" method="post">
    <label for="username">
        Username
    </label>
    <input id="username" name="username" type="text" placeholder="Username" required>
    <label for="password">
        Password
    </label>
    <input id="password" name="password" type="text" placeholder="Password" required>

    <button type="submit">Login</button>
</form>
</body>
</html>
