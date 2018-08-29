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
        <input type="checkbox" name="category" value="Sports1">
        Camping
        <input type="checkbox" name="category" value="Camping2">
        Computers
        <input type="checkbox" name="category" value="Computers3">
        Phones
        <input type="checkbox" name="category" value="Phones4">
        Jobs
        <input type="checkbox" name="category" value="Job5s">
        Clothing
        <input type="checkbox" name="category" value="Clothing6">
        Cars
        <input type="checkbox" name="category" value="Cars7">
        Furniture
        <input type="checkbox" name="category" value="Furniture8">
        Other
        <input type="checkbox" name="category" value="Other9">
    </form>
</div>
</body>
</html>
