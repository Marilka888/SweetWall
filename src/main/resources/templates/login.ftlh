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
<h4>Авторизация</h4>
<form action="/login" method="post">
    Эл. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<a class="navbar-brand navbar-dark" style="color: #c2b4e7" href="/registration">Зарегистрироваться</a>

</body>
</html>