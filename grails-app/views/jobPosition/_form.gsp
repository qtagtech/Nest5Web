<%@ page import="com.nest5.Nest5Client.JobPosition" %>



<div class="fieldcontain ${hasErrors(bean: jobPositionInstance, field: 'begin', 'error')} required">
	<label for="begin">
		<g:message code="jobPosition.begin.label" default="Begin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="begin" precision="day"  value="${jobPositionInstance?.begin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: jobPositionInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="jobPosition.company.label" default="Company" />
		
	</label>
	<g:textField name="company" value="${jobPositionInstance?.company}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: jobPositionInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="jobPosition.description.label" default="Description" />

    </label>
    <g:textField name="description" value="${jobPositionInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jobPositionInstance, field: 'finish', 'error')} required">
	<label for="finish">
		<g:message code="jobPosition.finish.label" default="Finish" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finish" precision="day"  value="${jobPositionInstance?.finish}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: jobPositionInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="jobPosition.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${com.nest5.Nest5Client.Member.list()}" optionKey="id" required="" value="${jobPositionInstance?.member?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: jobPositionInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="jobPosition.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${jobPositionInstance?.name}"/>
</div>

