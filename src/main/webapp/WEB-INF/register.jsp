<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>

    <style>
        #red {
            color: red;
        }
    </style>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Please fill in your information..</h1>
        <form action="/register" method="post">
            <c:if test="${bothTaken == true}" >
                <p style="color:red;">Both username and email already taken</p>
            </c:if>
            <c:if test="${emailTaken == true}" >
                <p style="color:red;">Email already taken</p>
            </c:if>
            <c:if test="${usernameTaken == true}" >
                <p style="color:red;">Username already taken</p>
            </c:if>
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" pattern="[A-Za-z0-9].{1, }" value="${username}" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="email" value="${email}" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" pattern="[A-Za-z0-9].{6,}" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" required>
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
