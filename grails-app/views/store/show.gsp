
<%@ page import="com.nest5.Nest5Client.Store" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-store" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-store" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list store">
			
				<g:if test="${storeInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="store.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${storeInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="store.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${storeInstance?.company?.id}">${storeInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="store.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${storeInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="store.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${storeInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="store.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${storeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeInstance?.offers}">
				<li class="fieldcontain">
					<span id="offers-label" class="property-label"><g:message code="store.offers.label" default="Offers" /></span>
					
						<g:each in="${storeInstance.offers}" var="o">
						<span class="property-value" aria-labelledby="offers-label"><g:link controller="offer" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${storeInstance?.id}" />
					<g:link class="edit" action="edit" id="${storeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
