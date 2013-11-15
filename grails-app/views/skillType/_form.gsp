<%@ page import="com.nest5.Nest5Client.SkillType" %>



<div class="fieldcontain ${hasErrors(bean: skillTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="skillType.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${skillTypeInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skillTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="skillType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${skillTypeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: skillTypeInstance, field: 'skills', 'error')} ">
	<label for="skills">
		<g:message code="skillType.skills.label" default="Skills" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${skillTypeInstance?.skills?}" var="s">
    <li><g:link controller="skill" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="skill" action="create" params="['skillType.id': skillTypeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'skill.label', default: 'Skill')])}</g:link>
</li>
</ul>

</div>

