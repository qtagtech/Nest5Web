<%@ page import="com.nest5.Nest5Client.Universe" %>



<div class="fieldcontain ${hasErrors(bean: universeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="universe.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${universeInstance?.description}"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: universeInstance, field: 'icon', 'error')} required">
	<label for="icon">
		<g:message code="universe.icon.label" default="Icon" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="icon" name="icon.id" from="${com.nest5.Nest5Client.Icon.list()}" optionKey="id" required="" value="${universeInstance?.icon?.id}" class="many-to-one"/>
</div>--}%
<input type="hidden" name="icon.id" id="iconid" value="${universeInstance?.icon?.id}" />
<img src="" id="filepreview" style="max-width: 200px; height: auto;" />

<div class="fieldcontain ${hasErrors(bean: universeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="universe.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${universeInstance?.name}"/>
</div>

