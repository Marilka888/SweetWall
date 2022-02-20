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
    <#if user.email??>
        <h3>Имя пользователя: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Выйти"/>
        </form>
    <#else>
        <a href="/login">Войти</a></h1>
    </#if>
    <hr>
</nav>
<hr>
<#if user.email??>
<hr>
<h3>Создать новое послание</h3>
<form action="/sweetPost/create" method="post" enctype="multipart/form-data">
    Получатель: <input type="text" name="recipient"/><br><br>
    Заголовок послания: <input type="text" name="title"/><br><br>
    Полный текст послания: <input type="number" name="letter"/><br><br>

    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Отправить послание"/>
</#if>
    <h1>SWEET WALL</h1>
    <#list posts as post>
        <div>
            <p><b>${sweetPost.title}</b> ${sweetPost.recipient}  | <a href="/sweetPost/${sweetPost.id}">Подробнее...</a></p>
        </div>
    <#else>
        <h3>Посланий нет( Но ты можешь быть первым</h3>
    </#list>
</form>
</body>
</html>