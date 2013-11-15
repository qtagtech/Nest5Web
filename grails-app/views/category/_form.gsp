<%@ page import="com.nest5.Nest5Client.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="category.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${categoryInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'families', 'error')} ">
	<label for="families">
		<g:message code="category.families.label" default="Families" />
		
	</label>
	<g:select name="families" from="${com.nest5.Nest5Client.Family.list()}" multiple="multiple" optionKey="id" size="5" value="${categoryInstance?.families*.id}" class="many-to-many"/>
</div>
%{--
<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'icon', 'error')} required">
	<label for="icon">
		<g:message code="category.icon.label" default="Icon" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="icon" name="icon.id" from="${com.nest5.Nest5Client.Icon.list()}" optionKey="id" required="" value="${categoryInstance?.icon?.id}" class="many-to-one"/>
</div>--}%
<input type="hidden" name="icon.id" id="iconid" value="${familyInstance?.icon?.id}" />
<img src="" id="filepreview" style="max-width: 200px; height: auto;" />

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${categoryInstance?.name}"/>
</div>

