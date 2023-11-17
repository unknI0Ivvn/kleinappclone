<!DOCTYPE html>
<html>
<head>
    <title>KLEINANZEIGEN "Clone"</title>
</head>
<body>
<h1>KLEINANZEIGEN</h1>
<hr>
<h4>Administrator panel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Activity</th>
        <th>Role</th>
        <th>BAN</th>
        <th>Edit</th>
        <th>Detailed information</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}</#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="BAN">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
            <th><a href="/user/${user.id}">Detailed information</a></th>
        </tr>
    <#else>
        <h3>No users found</h3>
    </#list>
</table>
</body>
</html>