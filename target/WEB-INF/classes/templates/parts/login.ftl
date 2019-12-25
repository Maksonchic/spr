<#macro login path isRegistrationForm>
<form action="${path}" method="post">
    <div><label> User Name : <input type="text" name="username"/></label></div>
    <#if usernameError??>
        <div style="position: absolute; font-size: 2em; top: 0; left: 48%;">
            ${usernameError}
        </div>
    </#if>
    <#if isRegistrationForm>
        <div><label>email: <input type="email" name="email"/></label></div>
    </#if>
    <div><label> Password: <input type="password" name="password" value="${email!''}"/></label></div>
    <#if passwordError??>
        <div style="position: absolute; font-size: 2em; top: 0; left: 48%;">
            ${passwordError}
        </div>
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
