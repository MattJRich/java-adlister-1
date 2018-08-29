<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <div class="row pt-4">
            <div class="col-7">
                <h1 style="font-size:5vw;">Buy, sell, create Ads & Make $</h1>
                <h4 style="font-size:3vw;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda dolores earum eius illo itaque iure, iusto labore laborum</h4>
            </div>
            <div class="col-5">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Not a member yet?</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <form action="/register" method="GET">
                            <a href="/register" class="btn btn-primary">Register</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <form class="row pt-" action="/ads" method="GET">
            <a href="/ads">View all recent</a>
        </form>

        <div class="row pt-1">
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="http://media.caranddriver.com/images/17q4/692996/2019-mclaren-senna-hypercar-official-photos-and-info-news-car-and-driver-photo-698055-s-original.jpg" alt="First slide">
            </div>
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="https://www.popsci.com/sites/popsci.com/files/styles/1000_1x_/public/images/2018/03/senna.jpg?itok=eYNPMGjA&fc=50,50" alt="Second slide">
            </div>
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="https://amp.businessinsider.com/images/592f4169b74af41b008b5977-750-563.jpg" alt="Third slide">
            </div>
        </div>

        <form class="row pt-4" action="/auto" method="GET">
            <a href="/auto">Auto</a>
        </form>
        <div class="row pt-1">
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="http://media.caranddriver.com/images/17q4/692996/2019-mclaren-senna-hypercar-official-photos-and-info-news-car-and-driver-photo-698055-s-original.jpg" alt="First slide">
            </div>
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="https://www.popsci.com/sites/popsci.com/files/styles/1000_1x_/public/images/2018/03/senna.jpg?itok=eYNPMGjA&fc=50,50" alt="Second slide">
            </div>
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="https://amp.businessinsider.com/images/592f4169b74af41b008b5977-750-563.jpg" alt="Third slide">
            </div>
        </div>

        <form class="row pt-4" action="/electronics" method="GET">
            <a href="/electronics">Electronics</a>
        </form>
        <div class="row pt-1">
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="http://media.caranddriver.com/images/17q4/692996/2019-mclaren-senna-hypercar-official-photos-and-info-news-car-and-driver-photo-698055-s-original.jpg" alt="First slide">
            </div>
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="https://www.popsci.com/sites/popsci.com/files/styles/1000_1x_/public/images/2018/03/senna.jpg?itok=eYNPMGjA&fc=50,50" alt="Second slide">
            </div>
            <div class="col-4">
                <img style="height: 200px" class="d-block w-100" src="https://amp.businessinsider.com/images/592f4169b74af41b008b5977-750-563.jpg" alt="Third slide">
            </div>
        </div>

        <%-- ALL OTHER PAGES NEED THIS TAG--%>
        <jsp:include page="WEB-INF/partials/js-script.jsp" />

        <footer class="pt-4 pb-4">
            <ul class="nav nav-pills nav-fill">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Categories</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/ads">Recent</a>
                        <a class="dropdown-item" href="/auto">Auto</a>
                        <a class="dropdown-item" href="/electronics">Electronics</a>
                        <a class="dropdown-item" href="/jobs">Jobs</a>
                        <a class="dropdown-item" href="/outdoors">Outdoors</a>
                        <a class="dropdown-item" href="/services">Services</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="topFunction()" id="myBtn" title="Go to top">Top</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Another Link</a>
                </li>
            </ul>
        </footer>
    </div>
</body>
</html>
