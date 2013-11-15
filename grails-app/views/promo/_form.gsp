<%@ page import="com.nest5.Nest5Client.Promo" %>



<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'activity', 'error')} ">
	<label for="activity">
		<g:message code="promo.activity.label" default="Activity" />
		
	</label>
	<g:select name="activity" from="${promoInstance.constraints.activity.inList}" value="${promoInstance?.activity}" valueMessagePrefix="promo.activity" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'cantArt', 'error')} required">
	<label for="cantArt">
		<g:message code="promo.cantArt.label" default="Cant Art" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="cantArt" required="" value="${fieldValue(bean: promoInstance, field: 'cantArt')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'article', 'error')} ">
	<label for="article">
		<g:message code="promo.article.label" default="Article" />
		
	</label>
	<g:textField name="article" value="${promoInstance?.article}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'wins', 'error')} ">
	<label for="wins">
		<g:message code="promo.wins.label" default="Wins" />
		
	</label>
	<g:textField name="wins" value="${promoInstance?.wins}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="promo.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.nest5.Nest5Client.Company.list()}" optionKey="id" required="" value="${promoInstance?.company?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'offers', 'error')} ">
	<label for="offers">
		<g:message code="promo.offers.label" default="Offers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${promoInstance?.offers?}" var="o">
    <li><g:link controller="offer" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="offer" action="create" params="['promo.id': promoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'offer.label', default: 'Offer')])}</g:link>
</li>
</ul>

</div>

