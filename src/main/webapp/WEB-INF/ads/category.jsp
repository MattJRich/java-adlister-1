<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <div class="row">
        <div class="col-2 bg-light h-100">
            <div class="container">
                <nav class="nav flex-column">
                    <a class="nav-link active" href="/category">All</a>
                    <a class="nav-link" href="/category">Link</a>
                    <a class="nav-link" href="/category">Link</a>
                    <a class="nav-link" href="/category">Disabled</a>
                    <a class="nav-link" href="/category">Active</a>
                    <a class="nav-link" href="/category">Link</a>
                    <a class="nav-link" href="/category">Link</a>
                    <a class="nav-link" href="/category">Disabled</a>
                </nav>
            </div>
        </div>

        <div class="col-10">
            <div class="container">
                <h1>All the category of Ads</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores assumenda aut beatae blanditiis debitis deserunt enim explicabo, fugit illo ipsa ipsum.</p>

                <div class="row pt-1">
                    <div class="col-3">
                        <img style="height: 200px" class="d-block w-100" src="http://media.caranddriver.com/images/17q4/692996/2019-mclaren-senna-hypercar-official-photos-and-info-news-car-and-driver-photo-698055-s-original.jpg" alt="First slide">
                    </div>
                    <div class="col-3">
                        <img style="height: 200px" class="d-block w-100" src="https://www.popsci.com/sites/popsci.com/files/styles/1000_1x_/public/images/2018/03/senna.jpg?itok=eYNPMGjA&fc=50,50" alt="Second slide">
                    </div>
                    <div class="col-3">
                        <img style="height: 200px" class="d-block w-100" src="https://amp.businessinsider.com/images/592f4169b74af41b008b5977-750-563.jpg" alt="Third slide">
                    </div>
                    <div class="col-3">
                        <img style="height: 200px" class="d-block w-100" src="http://media.caranddriver.com/images/17q4/692996/2019-mclaren-senna-hypercar-official-photos-and-info-news-car-and-driver-photo-698055-s-original.jpg" alt="First slide">
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
