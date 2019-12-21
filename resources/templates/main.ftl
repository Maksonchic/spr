<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#include "parts/security.ftl">

<@c.page>
<div>
    <@l.logout />
    <#if isAdmin>
        <span><a href="/user">User list</a></span>
    </#if>
    <#if user??>
        <span><a href="/user/profile">Profile</a></span>
    </#if>
</div>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <#assign
            user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        >
        <div>${textError?ifExists}</div>
        <#if textError??>
            <div>${textError}</div>
        </#if>
        <input type="text" name="tag" placeholder="Тэг">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Добавить</button>
    </form>
</div>
<div>Список сообщений</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Найти</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
    <#if message.filename??>
        <div>
            <img src="/img/${message.filename}">
        </div>
    </#if>
</div>
<#else>
No message
</#list>
</@c.page>
