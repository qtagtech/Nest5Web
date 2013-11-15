
<%@ page import="com.nest5.Nest5Client.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-member" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'member.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="bio" title="${message(code: 'member.bio.label', default: 'Bio')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'member.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'member.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'member.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="position" title="${message(code: 'member.position.label', default: 'Position')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: memberInstance, field: "bio")}</td>
					
						<td><g:formatDate date="${memberInstance.date}" /></td>
					
						<td>${fieldValue(bean: memberInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "position")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
