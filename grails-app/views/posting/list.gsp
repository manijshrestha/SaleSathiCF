
<%@ page import="com.salesathi.domain.Posting" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posting.label', default: 'Posting')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="title" title="${message(code: 'posting.postingDate.label', default: 'Date')}" />
                            
                            <g:sortableColumn property="title" title="${message(code: 'posting.title.label', default: 'Title')}" />
                        
                            <g:sortableColumn property="price" title="${message(code: 'posting.price.label', default: 'Price')}" />
                        
                            <th><g:message code="posting.category.label" default="Category" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${postingInstanceList}" status="i" var="postingInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        	<td>${fieldValue(bean: postingInstance, field: "postingDate")}</td>
                        	
                            <td><g:link action="show" id="${postingInstance.id}">${fieldValue(bean: postingInstance, field: "title")}</g:link></td>
                        
                            <td>${fieldValue(bean: postingInstance, field: "price")}</td>
                                                
                            <td>${fieldValue(bean: postingInstance, field: "category.type")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${postingInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
