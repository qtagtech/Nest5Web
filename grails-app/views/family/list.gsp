
<%@ page import="com.nest5.Nest5Client.Family" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'family.label', default: 'Family')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-family" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-family" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'family.description.label', default: 'Description')}" />
					
						<th><g:message code="family.icon.label" default="Icon" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'family.name.label', default: 'Name')}" />
					
						<th><g:message code="family.universe.label" default="Universe" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${familyInstanceList}" status="i" var="familyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${familyInstance.id}">${fieldValue(bean: familyInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: familyInstance, field: "icon")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "universe")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${familyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
