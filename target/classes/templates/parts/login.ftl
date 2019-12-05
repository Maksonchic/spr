<#macro login path isRegistrationForm>
<form action="${path}" method="post">
    <div><label> User Name : <input type="text" name="username"/></label></div>
    <div><label>email: <input type="email" name="email"/></label></div>
    <#if isRegistrationForm>
        <div><label> Password: <input type="password" name="password"/></label></div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div><input type="submit" value="Sign In"/></div>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <input type="submit" value="Sign Out"/>
</form>
</#macro>
