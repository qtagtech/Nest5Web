<%@ page import="com.nest5.Nest5Client.Skill" %>



<div class="fieldcontain ${hasErrors(bean: skillInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="skill.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${com.nest5.Nest5Client.Member.list()}" optionKey="id" required="" value="${skillInstance?.member?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skillInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="skill.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${skillInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skillInstance, field: 'skillValue', 'error')} required">
	<label for="skillValue">
		<g:message code="skill.skillValue.label" default="Skill Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="skillValue" type="number" value="${skillInstance.skillValue}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: skillInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="skill.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${com.nest5.Nest5Client.SkillType.list()}" optionKey="id" required="" value="${skillInstance?.type?.id}" class="many-to-one"/>
</div>

