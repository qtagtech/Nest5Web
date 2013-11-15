<%@ page import="com.nest5.Nest5Client.User" %>
<section>
    <h2>Actualiza tu Información.</h2>


<g:formRemote id="UpdateDetails" name="UpdateDetails" before="changeButton()"   onSuccess="checkResponse(data)" method="POST" action="${createLink(uri: "/user/update")}" url="[controller: 'user', action: 'update']">
<div class="fieldcontain ${hasErrors(bean: user, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${user?.name}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: user, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="user.email.label" default="Email" />

    </label>
    <g:textField name="email" value="${user?.email}" disabled="disabled" />
</div>

%{--<div class="fieldcontain ${hasErrors(bean: user, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="user.date.label" default="Fecha de Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
    <g:textField name="date" value="${user?.date}" />
</div>--}%

    <div class="fieldcontain ${hasErrors(bean: user, field: 'date', 'error')} required">
        <label for="date_select_day">
            <g:message code="user.date.label" default="Fecha de Nacimiento" />
            <span class="required-indicator">*</span>
        </label>
        <g:select name="date_select_day" from="${1..31}" value="${user?.date.split("/")[2]}"/>
        <g:select name="date_select_month" from="${1..12}" value="${user?.date.split("/")[1]}"/>
        <g:select name="date_select_year" from="${1948..2012}" value="${user?.date.split("/")[0]}"/>
    </div>




    <br>
    <div id="errorMessage" class="validation"></div>
    <input type="submit" value="Guardar" id="subBtn"/>
    <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
    <g:hiddenField name="user.id" value="${user?.id}" />
    </g:formRemote>
 </section>

<script>



    function checkResponse(data){
        var html ="";
        $("#loading").fadeOut(500,function(){
            $("#subBtn").fadeIn(500);
        });

        if(data.errors == "1")
        {
            if(data.errorType == "1")
            {
                html = +"<ul>";
                for(var i = 0; i < data.messages.value.errors.length ; i++)
                {
                    html += "<li>"+data.messages.value.errors[i].message+"</li>" ;
                }
                html += "</ul>"
            }
            if(data.errorType == "2")
            {
                html += "<ul>";
                for(var i = 0; i < data.messages.length ; i++)
                {
                    html += "<li>"+data.messages[i].value+"</li>" ;
                }
                html += "</ul>"
            }

            $("#errorMessage").html(html)
                    .fadeIn(300);


        }
        else{
            $("#UpdateDetails").parent().append(data.messages[0].value);
        }



    }


</script>
