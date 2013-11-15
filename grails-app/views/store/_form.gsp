<%@ page import="com.nest5.Nest5Client.Store" %>



<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="store.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${storeInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="store.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.nest5.Nest5Client.Company.list()}" optionKey="id" required="" value="${storeInstance?.company?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="store.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" value="${storeInstance?.latitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="store.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" value="${storeInstance?.longitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="store.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${storeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'offers', 'error')} ">
	<label for="offers">
		<g:message code="store.offers.label" default="Offers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${storeInstance?.offers?}" var="o">
    <li><g:link controller="offer" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="offer" action="create" params="['store.id': storeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'offer.label', default: 'Offer')])}</g:link>
</li>
</ul>

</div>

