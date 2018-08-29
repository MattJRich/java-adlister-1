<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h3>What would you like to edit?</h3>

        <c:if test="${bothTaken == true}" >
            <p style="color:red;">Both username and email already taken</p>
        </c:if>
        <c:if test="${emailTaken == true}" >
            <p style="color:red;">Email already taken</p>
        </c:if>

        <%-- userNameUpdate  --%>
        <c:if test="${usernameTaken == true}" >
            <p style="color:red;">Username already taken</p>
        </c:if>
        <c:if test="${usernameTaken == false}" >
            <p style="color:green;">Username change successful!</p>
        </c:if>

        <%-- user email Update  --%>
        <c:if test="${emailTaken == false}" >
            <p style="color:green;">Email change successful!</p>
        </c:if>

        <%--update profile info form--%>


            <form action="/profile/edit" method="post">
                <div class="form-group w-50">
                    <label for="username">Username: ${sessionScope.user.username} </label>
                    <input id="username" name="username" class="form-control" type="text" pattern="[A-Za-z0-9].{1, }" placeholder="${sessionScope.user.username}">
                </div>
                <input type="submit" class="btn btn-primary btn-block w-50">
            </form>
            <form action="/profile/edit" method="post">
                <div class="form-group w-50">
                    <label for="email">Email: ${sessionScope.user.email} </label>
                    <input id="email" name="email" class="form-control" type="text" pattern="[A-Za-z0-9].{1, }" placeholder="${sessionScope.user.email}">
                </div>
                <input type="submit" class="btn btn-primary btn-block w-50">
            </form>



                <%--update password form--%>
                <h3>update password</h3>
                <form action="/profile/edit" method="POST" >
                    <div class="form-group w-50">
                        <label for="password">Verify Current Password</label>
                        <input id="password" name="password" class="form-control" type="password">
                    </div>
                    <div class="form-group">
                        <label for="new_password">New Password</label>
                        <input id="new_password" name="new_password" class="form-control w-50" type="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirm_new_password">New Password</label>
                        <input id="confirm_new_password" name="confirm_new_password" class="form-control w-50" type="password" required>
                    </div>
                    <input type="submit" class="btn btn-primary btn-block w-50">
                </form>
            </div>

            <h3>Where would you like to go next?</h3>
            <form action="/profile" method="GET">
                <button class="btn btn-primary" type="submit">View Profile</button>
            </form>
            <form action="/ads" method="GET">
                <button class="btn btn-primary" type="submit">View All Ads</button>
            </form>

        <jsp:include page="partials/js-script.jsp" />
    </div>
</body>
</html>
