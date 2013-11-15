
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main_users_new"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'timeline/css',file:'timeline.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'timeline/css',file:'timeline_light.css')}" />
    %{--<link rel="stylesheet" type="text/css" href="${resource(dir: 'buttons/css',file: 'style1.css')}" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />--}%
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'buttons/zocial/css',file: 'zocial.css')}" />
    <script type="text/javascript" src="${resource(dir: 'timeline/javascript',file:'timeline.min.js')}"></script>
    <link href="${resource(dir:'foursquare/js/leaflet/dist', file: 'leaflet.css')}" type="text/css" rel="stylesheet" />
    <script src="${resource(dir:'foursquare/js/leaflet/dist', file: 'leaflet.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'foursquare/js', file: 'wax.leaf.min.js')}" type="text/javascript"></script>
    <script type="text/javascript">

    </script>


</head>

<body>

    <div class="row-fluid">
    <div class="span3">
        <div class="row-fluid">
            <div class="span12">
                <div class="well sidebar-nav">
                    <ul class="nav nav-list">
                        <li class="nav-header">Menú Nest5</li>
                        <li><a href="${createLink(uri: '/user/feed')}">Inicio</a></li>
                        <li><a href="${createLink(uri: '/user/cards')}">Mis Tarjetas</a></li>
                        <li><a href="${createLink(uri: '/user/benefits')}">Mis Beneficios</a></li>
                        <li><a href="${createLink(uri: '/user/profile')}">Mi Cuenta</a></li>
                        <li class="active"><a href="${createLink(uri: '/user/info')}">Configuración</a></li>
                        %{--<li><a href="#">Link</a></li>
                        <li class="nav-header">Sidebar</li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li class="nav-header">Sidebar</li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>--}%
                    </ul>
                </div>
            </div>

        </div>
        <div class="row-fluid">
            <div class="span12">
                <div class="well sidebar-nav">
                    <h3 style="color: #ffffff; margin-left: 15px;">Tus Marcas Favoritas</h3>
                    <ul class="thumbnails" id="user_brand_list">

                    </ul>
                </div>
            </div>

        </div>
        <!--/.well -->
    </div><!--/span-->
        <div class="span9">

            <div class="hero-unit">
                <div class="row-fluid">
                    <div class="span4">
                        <p></p>


                    </div>

                    <div class="span6 offset2">
                        <div id="zimain"  class="visible-desktop" style="background: url(${picture}); background-position: center; background-size: cover">
                            <div id="zisub"></div>
                            %{--<div id="ziheader">NEST5</div>--}%
                            <div id="zicontent" >

                            </div>

                        </div>
                    </div>
                </div>


            </div>
            <div class="row-fluid">
                <div class="span6">
                   <div class="row-fluid">
                    <div class="span12">
                        <h4>Modifica tus preferencias en las diferentes categorías</h4>
                    </div>
                    <div class="span12">

                        <ul class="nav navbar nav-pills navbar-inverse">
                            <li class="active"><a href="#basic" data-toggle="pill" >Básica</a></li>
                            <li><a href="#segment" data-toggle="pill">Avanzada</a></li>
                            <li><a href="#connections" data-toggle="pill">Aplicaciones</a></li>
                            <li><a href="#privacy" data-toggle="pill">Privacidad</a></li>
                        </ul>
                    </div>
                   </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="tab-content">
                                <div class="tab-pane active" id="basic">
                                    <g:if test="${flash.message}">
                                        <div class="alert alert-error alert-block">
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            ${flash.message}
                                        </div>
                                    </g:if>
                                    <form class="form-horizontal" name="update-form" id="update-form" action="post">
                                        <div class="control-group">
                                            <label class="control-label" for="name">Nombre</label>
                                            <div class="controls">
                                                <input type="text" name="name" id="name" placeholder="Nombre" value="${userInstance?.name}">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="username">Nombre de Usuario Nest5</label>
                                            <div class="controls">
                                                <input type="text" name="username" id="username" placeholder="¿Cómo te conocemos en Nest5?" value="${userInstance?.username}">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="email">Email</label>
                                            <div class="controls">
                                                <input type="text" id="email" name="email" placeholder="Email" value="${userInstance.email}" disabled="disabled" readonly>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="birth_date">Date</label>
                                            <div class="controls">
                                                <input type="date" id="birth_date" placeholder="date" name="birth_date" value="<g:formatDate date="${extended.getBirthDate()}" format="yyyy-MM-dd" />" >
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="gender">Género</label>
                                            <div class="controls">
                                                <div class="input-prepend">
                                                    <div class="btn-group">
                                                        <button class="btn dropdown-toggle" data-toggle="dropdown">
                                                            Escoge
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="#" id="genera">Mujer</a></li>
                                                            <li><a href="#" id="genero">Hombre</a></li>
                                                        </ul>
                                                    </div>
                                                    <input  class="span8" id="gen_m1" name="gen_m1" type="text" readonly />
                                                    <input type="hidden" name="gender" value="${extended?.gender}"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="address"><abbr id="address_label" data-toggle="popover" data-placement="right" data-content="No es obligación, pero si la pones te enviaremos un detalle con amor por inscribirte en Nest5. Prometemos que se mantendrá privada. Visita nest5.com/privacy para saber más."title="" data-original-title="¿Para qué poner tu dirección?">Dirección Física</abbr></label>
                                            <div class="controls">

                                                <input  id="address" name="address" type="text" value="${extended.address}">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="gender">Ciudad Actual</label>
                                            <div class="controls">
                                                <div class="input-prepend">
                                                    <div class="btn-group">
                                                        <button class="btn dropdown-toggle" data-toggle="dropdown">
                                                            Cambiar
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="city_select"  href="#" id="medellin">Medellín</a></li>
                                                            <li><a class="city_select" href="#" id="bogota">Bogotá</a></li>
                                                        </ul>
                                                    </div>
                                                    <input  class="span8" id="city_selected" name="city_selected" type="text" readonly />
                                                    <input type="hidden" name="city_val" id="city_val" value="${extended?.city.code}"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="bio">Bio</label>
                                            <div class="controls">
                                                <textarea rows="8" name="bio" placeholder="Sobre tí">${extended.bio}</textarea>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">

                                                <button type="submit" id="edit-details" class="btn">Guardar</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="segment">
                                    <div class="alert alert-block">
                                        <h4>¡Pronto!</h4>
                                        Nos sentimos mal por no tener esto listo para ti, pero te aseguramos que muy pronto con lo que podrás configurar aquí, lograrás que las Marcas te enamoren y los tendrás en la palma de tu mano ;)
                                    </div>
                                </div>
                                <div class="tab-pane" id="connections">
                                    <div class="alert alert-success alert-block">
                                      <button type="button" class="close" data-dismiss="alert">&times;</button>
                                      Personaliza aún más tu experiencia en Nest5 conectando otras redes. Como nos tomamos muy en serio tu privacidad, te invitamos a leer nuestras <a href="http://nest5.com/privacy" target="_blank">políticas aquí</a> para que veas que esto no se comparte, vende ni distribuye :)
                                    </div>

                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            <label class="control-label" for="twitter">Twitter</label>
                                            <div class="controls">
                                                <div class="input-prepend">
                                                    <span class="add-on">@</span>
                                                    <input class="span12" id="prependedInput" type="text" name="twitter" placeholder="Usuario Twitter">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="well">

                                                    <a href="#myModalFsq" id="fsqBtn"  data-toggle="modal" role="button" class="zocial foursquare">Foursquare - Personaliza y haz Check-In</a>
                                                    <a href="#myModalFb" id="fbBtn"  data-toggle="modal" role="button" class="zocial facebook">Facebook - Sigue y Comparte con Amigos</a>







                                            </div>

                                        </div>

                                    </form>
                                    <!-- Modal Foursquare-->
                                    <div id="myModalFsq" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h3 id="myModalLabel">Personaliza tu experiencia en Nest5 conectando tu cuenta de Foursquare</h3>
                                        </div>
                                        <div class="modal-body">
                                            <p><strong>Dale clic al botón conectar.</strong> <br>Por tu seguridad serás redirigido a foursquare.com y allí iniciaras sesíon en tu cuenta, autorizas Nest5 y regresas automáticamente. ¡Es Todo! :)</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn" data-dismiss="modal" aria-hidden="true">Cerrar</button>
                                            <button  onclick="window.location='${fsqLink}'" class="btn btn-primary">Conectar</button>
                                        </div>
                                    </div>
                                    <!-- Modal Facebook-->
                                    <div id="myModalFb" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h3 id="myModalLabel">Comparte con amigos de Facebook y Síguelos en Nest5</h3>
                                        </div>
                                        <div class="modal-body">
                                            <p><strong>Dale clic al botón conectar.</strong> <br>Por tu seguridad serás redirigido a facebook.com y allí iniciaras sesíon en tu cuenta, autorizas Nest5 y regresas automáticamente. ¡Es Todo! :)</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn" data-dismiss="modal" aria-hidden="true">Cerrar</button>
                                            <button  onclick="window.location='${grailsApplication.config.grails.serverURL}/j_spring_security_facebook_redirect'" class="btn btn-primary">Conectar</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="privacy">
                                    <div class="alert alert-block">
                                        <h4>¡Pronto!</h4>
                                        Nos sentimos mal por no tener esto listo para ti, pero te aseguramos que muy pronto con lo que podrás configurar aquí, lograrás que las Marcas te enamoren y los tendrás en la palma de tu mano ;)
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>







                    %{--<p><a class="btn" href="#">View details &raquo;</a></p>--}%
                </div><!--/span-->

                <div class="span6">
                <h2></h2>

                </div><!--/span-->
            </div><!--/row-->
        </div><!--/span-->
    </div><!--/row-->

 <script>
    $("[id^='gener']").click(function(e){e.preventDefault();
        var id = $(this).attr('id');
        var split = id.split('gener');
        var genre =  split[1][0];
        var sexo = genre === "a" ? "female": "male";
        var html = sexo === "female" ? "Mujer" : "Hombre";
        $("[name='gender']").val(sexo);
        $("#gen_m1").val(html);

    });

    $(document).ready(function(){
        $("#address_label").popover();
        <g:if test="${extended}">
        var valor1 = '${extended.gender}' == 'male' ? "Hombre" : "Mujer";
        $("#gen_m1").val(valor1);
        </g:if>

        <g:if test="${extended.fqAccessToken!= "0"}">
            $("#fsqBtn").removeClass("foursquare").addClass("pressedfsq").css("color","#777").html("Foursquare - Experiencia Vinculada");
            $("body").on('click',"#fsqBtn", function(e){return false;});
        </g:if>
        <g:if test="${(extended.accessToken!="0") && (extended.accessToken!="sadasdadas")}">
            $("#fbBtn").removeClass("facebook").addClass("pressedfb").css("color","#777").html("Facebook - Compartiendo con Amigos");
            $("body").on('click',"#fbBtn", function(e){return false;});
        </g:if>


        $(".city_select").click(function(e){e.preventDefault();
            var code = $(this).attr('id');
            var html = "";
            switch(code){
                case "medellin": html = "Medellín";
                    break;
                case "bogota": html = "Bogotá";
                    break;
            }

            $("#city_val").val(code);
            $("#city_selected").val(html);

        });
        var valCity = '${extended.city.code}';

        var input = $("#city_selected");
        var hidden = $("#city_val");
        switch(valCity){
            case "medellin": input.val("Medellín");
                hidden.val("medellin");
                break;
            case "bogota": input.val("Bogotá");
                hidden.val("bogota");
                break;
        }

        $("body").on('click','#edit-details', function(e){
            e.preventDefault();
            $(this).attr('disabled','disabled');
            $.when(updateDetails())
                    .then(function(response){
                        console.log(response);
                        $("#edit-details").removeAttr('disabled');
                    })
                    .fail(callError);
        });

        callMyBrands();

    });

    function updateDetails(){
        var url = "${createLink(controller: 'user', action: 'saveDetails')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: $("#update-form").serialize(),
            dataType: "json"
        }).promise();
    }
    function callError(response){
        console.log("error ajax: "+response);
    }
 </script>
</body>
</html>
