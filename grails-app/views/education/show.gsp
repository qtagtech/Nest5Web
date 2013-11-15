
<%@ page import="com.nest5.Nest5Client.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-education" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list education">
			
				<g:if test="${educationInstance?.begin}">
				<li class="fieldcontain">
					<span id="begin-label" class="property-label"><g:message code="education.begin.label" default="Begin" /></span>
					
						<span class="property-value" aria-labelledby="begin-label"><g:formatDate date="${educationInstance?.begin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="education.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${educationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.finish}">
				<li class="fieldcontain">
					<span id="finish-label" class="property-label"><g:message code="education.finish.label" default="Finish" /></span>
					
						<span class="property-value" aria-labelledby="finish-label"><g:formatDate date="${educationInstance?.finish}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.institution}">
				<li class="fieldcontain">
					<span id="institution-label" class="property-label"><g:message code="education.institution.label" default="Institution" /></span>
					
						<span class="property-value" aria-labelledby="institution-label"><g:fieldValue bean="${educationInstance}" field="institution"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="education.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${educationInstance?.member?.id}">${educationInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${educationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="education.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${educationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${educationInstance?.id}" />
					<g:link class="edit" action="edit" id="${educationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
