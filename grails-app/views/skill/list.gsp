
<%@ page import="com.nest5.Nest5Client.Skill" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'skill.label', default: 'Skill')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-skill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-skill" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="skill.member.label" default="Member" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'skill.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="skillValue" title="${message(code: 'skill.skillValue.label', default: 'Skill Value')}" />
					
						<th><g:message code="skill.type.label" default="Type" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${skillInstanceList}" status="i" var="skillInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${skillInstance.id}">${fieldValue(bean: skillInstance, field: "member")}</g:link></td>
					
						<td>${fieldValue(bean: skillInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: skillInstance, field: "skillValue")}</td>
					
						<td>${fieldValue(bean: skillInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${skillInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
