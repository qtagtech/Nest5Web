
<%@ page import="com.nest5.Nest5Client.Promo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'promo.label', default: 'Promo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-promo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-promo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list promo">
			
				<g:if test="${promoInstance?.activity}">
				<li class="fieldcontain">
					<span id="activity-label" class="property-label"><g:message code="promo.activity.label" default="Activity" /></span>
					
						<span class="property-value" aria-labelledby="activity-label"><g:fieldValue bean="${promoInstance}" field="activity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoInstance?.cantArt}">
				<li class="fieldcontain">
					<span id="cantArt-label" class="property-label"><g:message code="promo.cantArt.label" default="Cant Art" /></span>
					
						<span class="property-value" aria-labelledby="cantArt-label"><g:fieldValue bean="${promoInstance}" field="cantArt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoInstance?.article}">
				<li class="fieldcontain">
					<span id="article-label" class="property-label"><g:message code="promo.article.label" default="Article" /></span>
					
						<span class="property-value" aria-labelledby="article-label"><g:fieldValue bean="${promoInstance}" field="article"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoInstance?.wins}">
				<li class="fieldcontain">
					<span id="wins-label" class="property-label"><g:message code="promo.wins.label" default="Wins" /></span>
					
						<span class="property-value" aria-labelledby="wins-label"><g:fieldValue bean="${promoInstance}" field="wins"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="promo.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${promoInstance?.company?.id}">${promoInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${promoInstance?.offers}">
				<li class="fieldcontain">
					<span id="offers-label" class="property-label"><g:message code="promo.offers.label" default="Offers" /></span>
					
						<g:each in="${promoInstance.offers}" var="o">
						<span class="property-value" aria-labelledby="offers-label"><g:link controller="offer" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${promoInstance?.id}" />
					<g:link class="edit" action="edit" id="${promoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
