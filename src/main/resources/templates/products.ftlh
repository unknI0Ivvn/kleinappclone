<!DOCTYPE html>
<html>
<head>
    <title>KLEINANZEIGEN "Clone"</title>
</head>
<body>
<h1>KLEINANZEIGEN</h1>
<hr>
<#if user.email??>
    <h3>Username: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log out"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Administrator panel</a>
    </#if>
<#else>
    <a href="/login">Log in</a></h1>
</#if>
<hr>
<h4>Goods from all over the world</h4>
<form action="/" method="get">
    Search by name: <input type="text" name="title">
    <input type="submit" value="Search"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} USD. | <a href="/product/${product.id}">Read more...</a></p>
    </div>
<#else>
    <h3>No items available</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Add new item</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Product name: <input type="text" name="title"/><br><br>
        Product description:: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        Add product photo: <input type="file" name="file1"/><br><br>
        Add product photo: <input type="file" name="file2"/><br><br>
        Add product photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add item"/>
    </form>
</#if>
</body>
</html>