<!DOCTYPE html>
<html>
<head>
    <title>KLEINANZEIGEN "Clone"</title>
</head>
<body>
<h1>KLEINANZEIGEN </h1><hr>
<h4>Detailed product information</h4>
<#list images as img>
    <img src="/images/${img.id}" height="200px"/><br><br>
</#list>
<b>Product name: </b>${product.title}<br>
<b>Product description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Contact </b><a href="/user/${product.user.id}">${product.user.name} </a>NOW !!!<br>

</body>
</html>