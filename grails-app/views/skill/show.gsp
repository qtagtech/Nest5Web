
<%@ page import="com.nest5.Nest5Client.Skill" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'skill.label', default: 'Skill')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-skill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-skill" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list skill">
			
				<g:if test="${skillInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="skill.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${skillInstance?.member?.id}">${skillInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${skillInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="skill.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${skillInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${skillInstance?.skillValue}">
				<li class="fieldcontain">
					<span id="skillValue-label" class="property-label"><g:message code="skill.skillValue.label" default="Skill Value" /></span>
					
						<span class="property-value" aria-labelledby="skillValue-label"><g:fieldValue bean="${skillInstance}" field="skillValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${skillInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="skill.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="skillType" action="show" id="${skillInstance?.type?.id}">${skillInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${skillInstance?.id}" />
					<g:link class="edit" action="edit" id="${skillInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
