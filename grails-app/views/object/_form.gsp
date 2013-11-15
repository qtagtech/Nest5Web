<%@ page import="com.nest5.Nest5Client.Object" %>



<div class="fieldcontain ${hasErrors(bean: objectInstance, field: 'categories', 'error')} ">
	<label for="categories">
		<g:message code="object.categories.label" default="Categories" />
		
	</label>
	<g:select name="categories" from="${com.nest5.Nest5Client.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${objectInstance?.categories*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: objectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="object.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${objectInstance?.description}"/>
</div>

%{--<div class="fieldcontain ${hasErrors(bean: objectInstance, field: 'icon', 'error')} required">
	<label for="icon">
		<g:message code="object.icon.label" default="Icon" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="icon" name="icon.id" from="${com.nest5.Nest5Client.Icon.list()}" optionKey="id" required="" value="${objectInstance?.icon?.id}" class="many-to-one"/>
</div>--}%
<input type="hidden" name="icon.id" id="iconid" value="${objectInstance?.icon?.id}" />
<img src="" id="filepreview" style="max-width: 200px; height: auto;" />

<div class="fieldcontain ${hasErrors(bean: objectInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="object.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${objectInstance?.name}"/>
</div>

