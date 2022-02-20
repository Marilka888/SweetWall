<!DOCTYPE html>
<html>
<head>
    <title>Sweet Post</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
</head>
<body style="background-color: #7B68EE">
<nav class="navbar navbar-dark">
    <h1><a class="navbar-brand" href="/">Sweet Post</a></h1><hr>
</nav>
<h4>Послание №${sweetPost.id}</h4>
<b>Получатель: </b>${sweetPost.recipient}<br>
<b> ${sweetPost.title}<br></b>
<b> ${sweetPost.letter}<br></b>
<b>Автор: </b>${sweetPost.user.name}<br>
<hr>
</body>
</html>
<form action="/sweetPost/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Удалить послание"/>
</form>