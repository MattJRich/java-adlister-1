<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container-fluid">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <div class="row">
        <div class="col-12">
            <div class="card w-50 mb-5">
                <div class="card-body">
                    <h5 class="card-title"><i class="fas fa-user-circle fa-2x"></i>Account Details:</h5>
                    <p class="card-text">Email: ${sessionScope.user.email}</p>
                    <%-- find when user was created, and create method to count number of days as a contributing member --%>
                    <p class="card-text">Member since: </p>
                    <p class="card-text">Number of posted ads:</p>
                    <%--can include number of ads posted by running query search to pull all ads from user,
                     then check the number of ads posted to each category. The number with most is most popular
                    --%>
                    <p class="card-text">Most frequently posted to:</p>
                    <form action="/profile/edit" method="GET">
                        <a href="/profile/edit" class="btn btn-primary" type="submit">Update/Edit</a>
                    </form>
                </div>
            </div>
            <c:forEach var="ad" items="${sessionScope.userAds}" >
                <div class="card w-50 mb-2">
                    <div class="card-body">
                        <h3>${ad.title}</h3>
                        <p class="card-text">${ad.description}</p>
                        <p class="card-text"><small class="text-muted">posted on: </small></p>
                        <a href="#" class="btn btn-primary">Edit Ad</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>