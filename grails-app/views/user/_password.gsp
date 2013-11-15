<header>
    <h1>${user?.name} </h1><a href="${createLink(controller: 'logout',action: 'index')}" title="Haz Clic si sta no es tu cuenta" rel="nofollow" class="privacy-policy">¿No eres ${(user?.name.split(" "))[0]}?</a>

</header>

<section>
    <h2>Actualiza tu Contraseña.</h2>
    <h3>Digítala dos veces y haz clic en Guardar.</h3>



    <g:formRemote id="UpdatePass" name="UpdatePass" before="changeButton()"   onSuccess="checkResponse(data)" method="POST" action="${createLink(controller: 'user', action: 'update')}" url="[controller: 'user', action: 'update']">
        <label>Contraseña Nueva:</label>
        <input type="password" id="password" name="password" required>
        <label>Repite la Contraseña:</label>
        <input type="password" id="pass2" name="pass2" required>
        <br>
        <div id="errorMessage" class="validation"></div>
        <input type="submit" value="Guardar" id="subBtn"/>
        <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
        <g:hiddenField name="user.id" value="${user?.id}" />
    </g:formRemote>
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
            $("#UpdatePass").parent().html(data.messages[0].value);
        }



    }


</r:script>
