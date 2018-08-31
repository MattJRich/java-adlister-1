<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: matt
  Date: 8/30/18
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <c:if test="${noResults == true}" >
        <p>We couldn't find any results for <c:out value="${keyword}"/></p>
    </c:if>
    <c:if test="${noResults == false}" >
        <h1>All ads related to <c:out value="${keyword}" /></h1>
        <c:forEach var="ad" items="${ads}" >
            <a href="/viewAd?adId=${ad.id}">
                <div class="cardAd col-md-4" style="word-wrap: break-word;">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <p>Created On: ${ad.dateMade}</p>
                    <p>Categories: ${ad.catString}</p>
                </div>
            </a>
        </c:forEach>
    </c:if>



</body>
</html>
