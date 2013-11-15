<%@ page import="com.nest5.Nest5Client.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="member.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${memberInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="member.bio.label" default="Bio" />
		
	</label>
	<g:textField name="bio" value="${memberInstance?.bio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="member.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${memberInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="member.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${memberInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'jobs', 'error')} ">
	<label for="jobs">
		<g:message code="member.jobs.label" default="Jobs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.jobs?}" var="j">
    <li><g:link controller="jobPosition" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="jobPosition" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'jobPosition.label', default: 'JobPosition')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="member.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${memberInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'position', 'error')} ">
	<label for="position">
		<g:message code="member.position.label" default="Position" />
		
	</label>
	<g:textField name="position" value="${memberInstance?.position}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'skills', 'error')} ">
	<label for="skills">
		<g:message code="member.skills.label" default="Skills" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.skills?}" var="s">
    <li><g:link controller="skill" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="skill" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'skill.label', default: 'Skill')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'twitter', 'error')} ">
	<label for="twitter">
		<g:message code="member.twitter.label" default="Twitter" />
		
	</label>
	<g:textField name="twitter" value="${memberInstance?.twitter}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'linkedin', 'error')} ">
    <label for="linkedin">
        <g:message code="member.linkedin.label" default="LinkedIn" />

    </label>
    <g:textField name="linkedin" value="${memberInstance?.linkedin}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'gplus', 'error')} ">
    <label for="gplus">
        <g:message code="member.gplus.label" default="Google Plus" />

    </label>
    <g:textField name="gplus" value="${memberInstance?.gplus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'webaddress', 'error')} ">
	<label for="webaddress">
		<g:message code="member.webaddress.label" default="Webaddress" />
		
	</label>
	<g:textField name="webaddress" value="${memberInstance?.webaddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="member.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${memberInstance?.website}"/>
</div>

