
<%@ page import="com.salesathi.domain.Posting" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posting.label', default: 'Posting')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="body">
           
            <div class="list">
               
                    <g:each in="${postingInstanceList}" status="i" var="postingInstance">
                       <div class="post-item">
                       		<div class="img-container">
                            	<img class="img" src="../grailsUploaded/${postingInstance.id}/${postingInstance.img}"/>
                            </div>
                            <div class="posting-details">
                            <div class="posting-title">
                            	<g:link action="show" id="${postingInstance.id}">${fieldValue(bean: postingInstance, field: "title")}</g:link>
                            </div>
       						<div class="item-category">${fieldValue(bean: postingInstance, field: "category")}</div>                 
                            <div class="item-price">
                              <div class="price">
                              ${fieldValue(bean: postingInstance, field: "price")}</div></div>
                             </div>
                        
                        </div>
                    </g:each>
                    
            </div>
            <div class="paginateButtons">
                <g:paginate total="${postingInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
