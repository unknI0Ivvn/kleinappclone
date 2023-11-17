<!DOCTYPE html>
<html>
<head>
    <title>KLEINANZEIGEN"Clone"</title>
</head>
<body>
<h1>KLEINANZEIGEN</h1><hr>
<h3>Seller: ${user.name}  </h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>What else ${user.name} is selling ?</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} USD. | <a href="/product/${product.id}">Read more...</a></p>
    </div>
<#else>
    <h3>No products available</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>