<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <%--if (request.user.getsession ! null){--%>
            <%--show logout--%>
            <%--<c:choose>--%>

                <%--<c:when test="${!sessionScope.user}">--%>
                    <%--<li><a href="/login">Login</a></li>--%>
                <%--</c:when>--%>

                <%--<c:otherwise>--%>
                    <%--<li><a href="/logout">Logout</a></li>--%>
                <%--</c:otherwise>--%>

            <%--</c:choose>--%>

            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
