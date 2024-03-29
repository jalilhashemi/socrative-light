<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
    <style>
        form.question-edit {
            width: 60%;
            margin-left: 20%;
            margin-right: 20%;
        }
        label {
            display: table;
            padding-bottom: 10px;
        }
        input{
            width: 100%;
        }
        input.save {
            width: auto;
        }
    </style>
</head>
<body>
    <a href="#edit-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="edit-question" class="content scaffold-create" role="main">
        <h1>Edit Question</h1>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${this.question}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.question}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form resource="${this.question}" method="PUT" class="question-edit">
            <g:hiddenField name="version" value="${this.question?.version}" /><br>
            <fieldset>
                <f:all bean="question"/>
            </fieldset>
            <fieldset class="buttons">
                <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            </fieldset>
        </g:form>
    </div>
</body>
</html>
