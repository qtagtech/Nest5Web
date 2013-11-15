<%@ page import="com.nest5.Nest5Client.Education" %>



<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'begin', 'error')} required">
	<label for="begin">
		<g:message code="education.begin.label" default="Begin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="begin" precision="day"  value="${educationInstance?.begin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="education.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${educationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'finish', 'error')} required">
	<label for="finish">
		<g:message code="education.finish.label" default="Finish" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finish" precision="day"  value="${educationInstance?.finish}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'institution', 'error')} ">
	<label for="institution">
		<g:message code="education.institution.label" default="Institution" />
		
	</label>
	<g:textField name="institution" value="${educationInstance?.institution}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="education.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${com.nest5.Nest5Client.Member.list()}" optionKey="id" required="" value="${educationInstance?.member?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educationInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="education.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${educationInstance?.name}"/>
</div>

