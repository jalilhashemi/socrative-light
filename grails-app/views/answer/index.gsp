<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
<style>
    tr>td:last-child, tr>th:last-child {
        padding-right: 1.25em;
        display: none;
    }
    table tr {
        counter-increment: row-num;
    }
    table tr td:first-child::before {
        content: "Answer " counter(row-num) ". ";
    }
</style>
</head>
<body>
    <a href="#list-answer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="list-answer" class="content scaffold-create" role="main">
    <h1>List Answer</h1>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        </ul>
    </div>
    <div id="centered">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <f:table collection="${answerList}" />
    </div>
</div>
</body>
</html>