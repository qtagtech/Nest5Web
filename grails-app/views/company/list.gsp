
<%@ page import="com.nest5.Nest5Client.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_users_new">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-company" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'company.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'company.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'company.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'company.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'company.address.label', default: 'Address')}" />
					
						<th><g:message code="company.category.label" default="Category" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyInstanceList}" status="i" var="companyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: companyInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${companyInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${companyInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: companyInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "category")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${companyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
