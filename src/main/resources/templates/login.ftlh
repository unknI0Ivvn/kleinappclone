

<!DOCTYPE html>
<html>
<head>
    <title>KLEINANZEIGEN "Clone"</title>
</head>
<body>
<h1>KLEINANZEIGEN</h1><hr>
<h4>Authorization</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Log in"/>
</form>
<a href="/registration">Register NOW</a>
</body>
</html>