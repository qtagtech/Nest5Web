
<%@ page import="com.nest5.Nest5Client.Family" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'family.label', default: 'Family')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-family" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-family" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list family">
			
				<g:if test="${familyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="family.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${familyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.icon}">
				<li class="fieldcontain">
					<span id="icon-label" class="property-label"><g:message code="family.icon.label" default="Icon" /></span>
					
						<span class="property-value" aria-labelledby="icon-label"><g:link controller="icon" action="show" id="${familyInstance?.icon?.id}">${familyInstance?.icon?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="family.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${familyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.universe}">
				<li class="fieldcontain">
					<span id="universe-label" class="property-label"><g:message code="family.universe.label" default="Universe" /></span>
					
						<span class="property-value" aria-labelledby="universe-label"><g:link controller="universe" action="show" id="${familyInstance?.universe?.id}">${familyInstance?.universe?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${familyInstance?.id}" />
					<g:link class="edit" action="edit" id="${familyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
