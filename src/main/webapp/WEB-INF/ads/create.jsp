<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary">
        Sports
        <input type="checkbox" name="category" value="1">
        Camping
        <input type="checkbox" name="category" value="2">
        Computers
        <input type="checkbox" name="category" value="3">
        Phones
        <input type="checkbox" name="category" value="4">
        Jobs
        <input type="checkbox" name="category" value="5">
        Clothing
        <input type="checkbox" name="category" value="6">
        Cars
        <input type="checkbox" name="category" value="7">
        Furniture
        <input type="checkbox" name="category" value="8">
    </form>
</div>
</body>
</html>
