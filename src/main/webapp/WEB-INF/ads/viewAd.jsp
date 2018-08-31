<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <title>Category Ads</title>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
    <p>Posted on ${ad.dateMade}</p>
    <p>Categories: ${ad.catString}</p>
    <span>Posted by: </span><a href="viewOtherProfile?username=${ad.username}">${ad.username}</a>
    <c:if test="${belongsToUser == true}" >
        <br>
        <button><a href="/editAd?adId=${ad.id}">Edit Ad</a></button>
        <button><a href="/deleteAd?adId=${ad.id}">Delete Ad</a></button>
    </c:if>

</body>
</html>
