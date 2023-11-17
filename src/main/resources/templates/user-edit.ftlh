<!DOCTYPE html>
<html>
<head>
    <title>KLEINANZEIGEN "Clone"</title>
</head>
<body>
<h1>KLEINANZEIGEN</h1><hr>
<h3>Edit ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Submit</button>
</form>
</body>
</html>