<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: valeriameza
  Date: 6/8/20
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Ads</title>
</head>
<body>
    <h1>Here are all the Ads:</h1>
    <div class="container">
        <c:forEach var="ad" items="${ads}">
            <div class="ads">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
