<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: matt
  Date: 8/30/18
  Time: 9:55 PM
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
<h1>${user.username}</h1>
<div class="row">
    <div class="col-12">
        <div class="card w-50 mb-5">
            <div class="card-body">
                <h5 class="card-title"><i class="fas fa-user-circle fa-2x"></i>Account Details:</h5>
                <p class="card-text">Email: ${user.email}</p>
                <%-- find when user was created, and create method to count number of days as a contributing member --%>
                <p class="card-text">Member since: ${user.date}</p>
                <p class="card-text">Number of posted ads: ${numberOfAds}</p>
                <%--can include number of ads posted by running query search to pull all ads from user,
                 then check the number of ads posted to each category. The number with most is most popular
                --%>
            </div>
        </div>
        <h2>${user.username}'s Ads:</h2>
       <c:forEach var="ad" items="${userAds}">
           <div class="card w-50 mb-2">
               <a href="/viewAd?adId=${ad.id}">
               <div class="card-body">
                   <h3>${ad.title}</h3>
                   <p class="card-text">${ad.description}</p>
                   <p class="card-text"><small class="text-muted">posted on: ${ad.dateMade}</small></p>
                   <p class="card-text"><small class="text-muted">categories: ${ad.catString}</small></p>
               </div>
               </a>

           </div>
       </c:forEach>
    </div>
</div>
</body>
</html>
