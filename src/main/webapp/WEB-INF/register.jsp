<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/variables.css">
    <link rel="stylesheet" href="../css/register.css">


</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <div class="row">
            <div class="col-7">
                <h1 class="headingRegister">Please fill in your information.</h1>
                <form action="/register" method="post">
                    <c:if test="${bothTaken == true}" >
                        <p style="color:red;">Both username and email already taken. Please try again.</p>
                    </c:if>
                    <c:if test="${emailTaken == true}" >
                        <p style="color:red;">Email already registered to an account. Please try again.</p>
                    </c:if>
                    <c:if test="${usernameTaken == true}" >
                        <p style="color:red;">Username not available. Please try again.</p>
                    </c:if>
                    <div class="registerDiv">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" name="username" class="form-control registerInput" type="text" pattern="[A-Za-z0-9].{1, }" value="${username}" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" class="form-control registerInput" type="email" value="${email}" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <%--<input id="password" name="password" class="form-control" type="password" pattern="[A-Za-z0-9].{6,}" required>--%>
                        <input id="password" name="password" class="form-control registerInput" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input id="confirm_password" name="confirm_password" class="form-control registerInput" type="password" required>
                    </div>
                    <input type="submit" class="btn registerBtn btn-block">
                    </div>
                </form>
            </div>

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

</body>
</html>
