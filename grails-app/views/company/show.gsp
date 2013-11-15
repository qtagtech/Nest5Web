
<%@ page import="com.nest5.Nest5Client.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_users_new">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-company" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list company">
			
				<g:if test="${companyInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="company.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${companyInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="company.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${companyInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="company.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${companyInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="company.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${companyInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="company.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${companyInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="company.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${companyInstance?.category?.id}">${companyInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.chats}">
				<li class="fieldcontain">
					<span id="chats-label" class="property-label"><g:message code="company.chats.label" default="Chats" /></span>
					
						<g:each in="${companyInstance.chats}" var="c">
						<span class="property-value" aria-labelledby="chats-label"><g:link controller="message" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.clients}">
				<li class="fieldcontain">
					<span id="clients-label" class="property-label"><g:message code="company.clients.label" default="Clients" /></span>
					
						<g:each in="${companyInstance.clients}" var="c">
						<span class="property-value" aria-labelledby="clients-label"><g:link controller="relation" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.contactName}">
				<li class="fieldcontain">
					<span id="contactName-label" class="property-label"><g:message code="company.contactName.label" default="Contact Name" /></span>
					
						<span class="property-value" aria-labelledby="contactName-label"><g:fieldValue bean="${companyInstance}" field="contactName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="company.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${companyInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="company.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${companyInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="company.logo.label" default="Logo" /></span>
					
						<span class="property-value" aria-labelledby="logo-label"><g:fieldValue bean="${companyInstance}" field="logo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.managedPromos}">
				<li class="fieldcontain">
					<span id="managedPromos-label" class="property-label"><g:message code="company.managedPromos.label" default="Managed Promos" /></span>
					
						<g:each in="${companyInstance.managedPromos}" var="m">
						<span class="property-value" aria-labelledby="managedPromos-label"><g:link controller="promo" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.managedStores}">
				<li class="fieldcontain">
					<span id="managedStores-label" class="property-label"><g:message code="company.managedStores.label" default="Managed Stores" /></span>
					
						<g:each in="${companyInstance.managedStores}" var="m">
						<span class="property-value" aria-labelledby="managedStores-label"><g:link controller="store" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="company.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${companyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.nit}">
				<li class="fieldcontain">
					<span id="nit-label" class="property-label"><g:message code="company.nit.label" default="Nit" /></span>
					
						<span class="property-value" aria-labelledby="nit-label"><g:fieldValue bean="${companyInstance}" field="nit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="company.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${companyInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.registerDate}">
				<li class="fieldcontain">
					<span id="registerDate-label" class="property-label"><g:message code="company.registerDate.label" default="Register Date" /></span>
					
						<span class="property-value" aria-labelledby="registerDate-label"><g:formatDate date="${companyInstance?.registerDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="company.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${companyInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="company.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${companyInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${companyInstance?.id}" />
					<g:link class="edit" action="edit" id="${companyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
