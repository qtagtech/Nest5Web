<%@ page import="com.nest5.Nest5Client.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'username', 'error')} required">
    <label for="username">
        <g:message code="company.username.label" default="Username"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="username" required="" value="${companyInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="company.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="password" required="" value="${companyInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'accountExpired', 'error')} ">
    <label for="accountExpired">
        <g:message code="company.accountExpired.label" default="Account Expired"/>

    </label>
    <g:checkBox name="accountExpired" value="${companyInstance?.accountExpired}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'accountLocked', 'error')} ">
    <label for="accountLocked">
        <g:message code="company.accountLocked.label" default="Account Locked"/>

    </label>
    <g:checkBox name="accountLocked" value="${companyInstance?.accountLocked}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'address', 'error')} ">
    <label for="address">
        <g:message code="company.address.label" default="Address"/>

    </label>
    <g:textField name="address" value="${companyInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="company.category.label" default="Category"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="category" name="category.id" from="${com.nest5.Nest5Client.Category.list()}" optionKey="id"
              required="" value="${companyInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'chats', 'error')} ">
    <label for="chats">
        <g:message code="company.chats.label" default="Chats"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${companyInstance?.chats ?}" var="c">
            <li><g:link controller="message" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="message" action="create"
                    params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'message.label', default: 'Message')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'clients', 'error')} ">
    <label for="clients">
        <g:message code="company.clients.label" default="Clients"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${companyInstance?.clients ?}" var="c">
            <li><g:link controller="relation" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="relation" action="create"
                    params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'relation.label', default: 'Relation')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'contactName', 'error')} ">
    <label for="contactName">
        <g:message code="company.contactName.label" default="Contact Name"/>

    </label>
    <g:textField name="contactName" value="${companyInstance?.contactName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="company.email.label" default="Email"/>

    </label>
    <g:textField name="email" value="${companyInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'enabled', 'error')} ">
    <label for="enabled">
        <g:message code="company.enabled.label" default="Enabled"/>

    </label>
    <g:checkBox name="enabled" value="${companyInstance?.enabled}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'logo', 'error')} ">
    <label for="logo">
        <g:message code="company.logo.label" default="Logo"/>

    </label>
    <g:textField name="logo" value="${companyInstance?.logo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'managedPromos', 'error')} ">
    <label for="managedPromos">
        <g:message code="company.managedPromos.label" default="Managed Promos"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${companyInstance?.managedPromos ?}" var="m">
            <li><g:link controller="promo" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="promo" action="create"
                    params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'promo.label', default: 'Promo')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'managedStores', 'error')} ">
    <label for="managedStores">
        <g:message code="company.managedStores.label" default="Managed Stores"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${companyInstance?.managedStores ?}" var="m">
            <li><g:link controller="store" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="store" action="create"
                    params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'store.label', default: 'Store')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="company.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${companyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'nit', 'error')} ">
    <label for="nit">
        <g:message code="company.nit.label" default="Nit"/>

    </label>
    <g:textField name="nit" value="${companyInstance?.nit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'passwordExpired', 'error')} ">
    <label for="passwordExpired">
        <g:message code="company.passwordExpired.label" default="Password Expired"/>

    </label>
    <g:checkBox name="passwordExpired" value="${companyInstance?.passwordExpired}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'registerDate', 'error')} required">
    <label for="registerDate">
        <g:message code="company.registerDate.label" default="Register Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="registerDate" precision="day" value="${companyInstance?.registerDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'telephone', 'error')} ">
    <label for="telephone">
        <g:message code="company.telephone.label" default="Telephone"/>

    </label>
    <g:textField name="telephone" value="${companyInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'url', 'error')} ">
    <label for="url">
        <g:message code="company.url.label" default="Url"/>

    </label>
    <g:textField name="url" value="${companyInstance?.url}"/>
</div>

