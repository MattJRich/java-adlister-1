<%--
  Created by IntelliJ IDEA.
  User: matt
  Date: 8/30/18
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/editAd" method="post">
    <input name="title" value="${ad.title}" type="text">
    <input name="description" value="${ad.description}" type="text">
    <p>${ad.dateMade}</p>
    <p>${ad.catString}</p>
    <button name="adId" value="${ad.id}">Submit Changes</button>
</form>

</body>
</html>
