<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>What would you like to edit?</h1>

        <form action="/profile/edit" method="post">
            <div class="form-group">
                <label for="updateUsername">Username: ${sessionScope.user.username} </label>
                <input id="updateUsername" name="updateUsername" class="form-control" type="text" pattern="[A-Za-z0-9].{1, }">
            </div>
            <div class="form-group">
                <label for="updateEmail">Email: ${sessionScope.user.email} </label>
                <input id="updateEmail" name="updateEmail" class="form-control" type="text" pattern="[A-Za-z0-9].{1, }">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>

        <h1> update your password creds</h1>
        <form action="/profile/edit" method="post" >
            <div class="form-group">
                <label for="password">Verify Current Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="new_password">New Password</label>
                <input id="new_password" name="new_password" class="form-control" type="password" required>
            </div>
            <div class="form-group">
                <label for="confirm_new_password">New Password</label>
                <input id="confirm_new_password" name="confirm_new_password" class="form-control" type="password" required>
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>


    </div>
</body>
</html>
