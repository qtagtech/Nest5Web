
<%@ page import="com.nest5.Nest5Client.Promo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'promo.label', default: 'Promo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-promo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-promo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="activity" title="${message(code: 'promo.activity.label', default: 'Activity')}" />
					
						<g:sortableColumn property="cantArt" title="${message(code: 'promo.cantArt.label', default: 'Cant Art')}" />
					
						<g:sortableColumn property="article" title="${message(code: 'promo.article.label', default: 'Article')}" />
					
						<g:sortableColumn property="wins" title="${message(code: 'promo.wins.label', default: 'Wins')}" />
					
						<th><g:message code="promo.company.label" default="Company" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${promoInstanceList}" status="i" var="promoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${promoInstance.id}">${fieldValue(bean: promoInstance, field: "activity")}</g:link></td>
					
						<td>${fieldValue(bean: promoInstance, field: "cantArt")}</td>
					
						<td>${fieldValue(bean: promoInstance, field: "article")}</td>
					
						<td>${fieldValue(bean: promoInstance, field: "wins")}</td>
					
						<td>${fieldValue(bean: promoInstance, field: "company")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${promoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
