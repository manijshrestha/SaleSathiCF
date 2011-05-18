<%@ page import="com.salesathi.domain.Posting" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posting.label', default: 'Posting')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${postingInstance}">
            <div class="errors">
                <g:renderErrors bean="${postingInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post"  enctype="multipart/form-data">
                <g:hiddenField name="id" value="${postingInstance?.id}" />
                <g:hiddenField name="version" value="${postingInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="contactEmail"><g:message code="posting.contactEmail.label" default="Contact Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postingInstance, field: 'contactEmail', 'errors')}">
                                    <g:textField name="contactEmail" value="${postingInstance?.contactEmail}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="posting.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postingInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" maxlength="148" value="${postingInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="price"><g:message code="posting.price.label" default="Price" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postingInstance, field: 'price', 'errors')}">
                                    <g:textField name="price" value="${fieldValue(bean: postingInstance, field: 'price')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="posting.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postingInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${postingInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="category"><g:message code="posting.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postingInstance, field: 'category', 'errors')}">
                                    <g:select name="category.id" from="${salesathi.Category.list()}" optionKey="id" value="${postingInstance?.category?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="img"><g:message code="posting.img.label" default="Img" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: postingInstance, field: 'img', 'errors')}">
                                    <input type="file" id="img" name="img" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
