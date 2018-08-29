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



<div class="col-5">
    <div id="message">
        <h3>Password must contain the following:</h3>
        <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
        <p id="number" class="invalid">A <b>number</b></p>
        <p id="length" class="invalid">Minimum <b>6 characters</b></p>
    </div>
</div>
</div>
</div>

<script>
    var myInput = document.getElementById("password");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

    // When the user clicks on the password field, show the message box
    myInput.onfocus = function() {
        document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
        document.getElementById("message").style.display = "none";
    }

    // When the user starts to type something inside the password field
    myInput.onkeyup = function() {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-z]/g;
        if(myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-Z]/g;
        if(myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if(myInput.value.match(numbers)) {
            number.classList.remove("invalid");
            number.classList.add("valid");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
        }

        // Validate length
        if(myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
    }
</script>

        <jsp:include page="partials/js-script.jsp" />
    </div>
</body>
</html>
