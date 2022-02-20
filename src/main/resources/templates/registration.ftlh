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
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type="text" name="name"><br><br>
    Эл. почта: <input type="email" name="email"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>

<#if errorMessage??>
    <h2 style="color: #fff200">${errorMessage}</h2>
</#if>

</body>
</html>