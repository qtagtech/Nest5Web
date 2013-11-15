<%@ page import="com.nest5.Nest5Client.EventType" %>



<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="eventType.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${eventTypeInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'message', 'error')} ">
	<label for="message">
		<g:message code="eventType.message.label" default="Message" />
		
	</label>
	<g:textField name="message" value="${eventTypeInstance?.message}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="eventType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${eventTypeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventTypeInstance, field: 'ownMessage', 'error')} ">
	<label for="ownMessage">
		<g:message code="eventType.ownMessage.label" default="Own Message" />
		
	</label>
	<g:textField name="ownMessage" value="${eventTypeInstance?.ownMessage}"/>
</div>

