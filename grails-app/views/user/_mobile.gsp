<%@ page import="com.nest5.Nest5Client.User" %>
<section>
    <h1>${user.name}.</h1>
    <h2>Tu App Móvil Nest5.</h2>
    <div class="fieldcontain">
        <h2>Plataformas en las que usas Nest5</h2>
        <ul class="race-steps">



                <li class="item-enabled" >
                    <span class="item-icon">C</span><a href="" class="race-item" rel="" id="" title="">Web</a><span class="item-lock">W</span>
                    <span class="race-points"></span>
                    <div class="clearfix"></div>
                </li>


        <h3></h3>
        <g:if test="${user.androidID != "0"}">
            <li class="item-enabled" >
                <span class="item-icon">U</span><a href="" class="race-item" rel="" id="" title="">Android</a><span class="item-lock">W</span>
                <span class="race-points"></span>
                <div class="clearfix"></div>
            </li>
        </g:if>
            <g:else>
                <li class="item-enabled" >
                    <span class="item-icon">U</span><a href="" class="race-item" rel="" id="" title="">Android</a><span class="item-lock">X</span>
                    <span class="race-points"></span>
                    <div class="clearfix"></div>
                </li>
            </g:else>
        <g:if test="${user.iphoneID != "0"}">
            <li class="item-enabled" >
                <span class="item-icon">U</span><a href="" class="race-item" rel="" id="" title="">iPhone</a><span class="item-lock">W</span>
                <span class="race-points"></span>
                <div class="clearfix"></div>
            </li>
        </g:if>
            <g:else>
                <li class="item-enabled" >
                    <span class="item-icon">U</span><a href="" class="race-item" rel="" id="" title="">iPhone</a><span class="item-lock">X</span>
                    <span class="race-points"></span>
                    <div class="clearfix"></div>
                </li>
            </g:else>

            </ul>



    </div>

%{--<g:formRemote id="UpdateMobile" name="UpdateMobile" before="changeButton()"   onSuccess="checkResponse(data)" method="POST" action="${createLink(controller: 'user', action: 'update')}" url="[controller: 'user', action: 'update']">
<div class="fieldcontain ${hasErrors(bean: user, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="user.phone.label" default="Número de Teléfono" />
		
	</label>
	<g:textField name="phone" value="${user?.phone}"/>
</div>

 <div class="fieldcontain ${hasErrors(bean: user, field: 'smartphone', 'error')} required">
    <label for="smartphone">
        <g:message code="user.smartphone.label" default="¿Tienes Smartphone?" />
        <span class="required-indicator">*</span>
    </label>
    <g:checkBox style="display: block;" name="smartphone" checked="${fieldValue(bean: user,field: 'smartphone')}" value="true" />


</div>

    <div class="fieldcontain ${hasErrors(bean: user, field: 'smartphoneBrand', 'error')} ">
        <label for="smartphoneBrand">
            <g:message code="user.smartphoneBrand.label" default="Marca del Teléfono" />

        </label>
        <g:textField name="smartphoneBrand" value="${user?.smartphoneBrand}"/>
    </div>
    <br>
    <div id="errorMessage" class="validation"></div>
    <input type="submit" value="Guardar" id="subBtn"/>
    <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
    <g:hiddenField name="user.id" value="${user?.id}" />
    </g:formRemote>--}%
 </section>

<r:script>

    function changeButton(){
        $("#subBtn").fadeOut(0,function(){
            $("#loading").fadeIn(50);
        });
        ;
    }

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
            $("#UpdateMobile").parent().append("<p>"+data.messages[0].value+"</p>");
        }



    }


</r:script>
