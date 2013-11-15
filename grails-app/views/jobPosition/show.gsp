
<%@ page import="com.nest5.Nest5Client.JobPosition" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jobPosition.label', default: 'JobPosition')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jobPosition" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jobPosition" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jobPosition">
			
				<g:if test="${jobPositionInstance?.begin}">
				<li class="fieldcontain">
					<span id="begin-label" class="property-label"><g:message code="jobPosition.begin.label" default="Begin" /></span>
					
						<span class="property-value" aria-labelledby="begin-label"><g:formatDate date="${jobPositionInstance?.begin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jobPositionInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="jobPosition.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${jobPositionInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jobPositionInstance?.finish}">
				<li class="fieldcontain">
					<span id="finish-label" class="property-label"><g:message code="jobPosition.finish.label" default="Finish" /></span>
					
						<span class="property-value" aria-labelledby="finish-label"><g:formatDate date="${jobPositionInstance?.finish}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jobPositionInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="jobPosition.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${jobPositionInstance?.member?.id}">${jobPositionInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jobPositionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="jobPosition.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${jobPositionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${jobPositionInstance?.id}" />
					<g:link class="edit" action="edit" id="${jobPositionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
