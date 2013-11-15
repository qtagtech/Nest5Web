<%@ page import="com.nest5.Nest5Client.Family" %>



<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="family.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${familyInstance?.description}"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'icon', 'error')} required">
	<label for="icon">
		<g:message code="family.icon.label" default="Icon" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="icon" name="icon.id" from="${com.nest5.Nest5Client.Icon.list()}" optionKey="id" required="" value="${familyInstance?.icon?.id}" class="many-to-one"/>
</div>--}%
<input type="hidden" name="icon.id" id="iconid" value="${familyInstance?.icon?.id}" />
<img src="" id="filepreview" style="max-width: 200px; height: auto;" />

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="family.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${familyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'universe', 'error')} required">
	<label for="universe">
		<g:message code="family.universe.label" default="Universe" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="universe" name="universe.id" from="${com.nest5.Nest5Client.Universe.list()}" optionKey="id" required="" value="${familyInstance?.universe?.id}" class="many-to-one"/>
</div>

