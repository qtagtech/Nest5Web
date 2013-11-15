
<%@ page import="com.nest5.Nest5Client.Education" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'education.label', default: 'Education')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-education" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-education" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="begin" title="${message(code: 'education.begin.label', default: 'Begin')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'education.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="finish" title="${message(code: 'education.finish.label', default: 'Finish')}" />
					
						<g:sortableColumn property="institution" title="${message(code: 'education.institution.label', default: 'Institution')}" />
					
						<th><g:message code="education.member.label" default="Member" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'education.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${educationInstanceList}" status="i" var="educationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${educationInstance.id}">${fieldValue(bean: educationInstance, field: "begin")}</g:link></td>
					
						<td>${fieldValue(bean: educationInstance, field: "description")}</td>
					
						<td><g:formatDate date="${educationInstance.finish}" /></td>
					
						<td>${fieldValue(bean: educationInstance, field: "institution")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "member")}</td>
					
						<td>${fieldValue(bean: educationInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${educationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
