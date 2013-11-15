
<%@ page import="com.nest5.Nest5Client.EventType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eventType.label', default: 'EventType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-eventType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-eventType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'eventType.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="message" title="${message(code: 'eventType.message.label', default: 'Message')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'eventType.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="ownMessage" title="${message(code: 'eventType.ownMessage.label', default: 'Own Message')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventTypeInstanceList}" status="i" var="eventTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventTypeInstance.id}">${fieldValue(bean: eventTypeInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: eventTypeInstance, field: "message")}</td>
					
						<td>${fieldValue(bean: eventTypeInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: eventTypeInstance, field: "ownMessage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
