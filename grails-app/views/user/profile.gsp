<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main_users_new"/>

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'timeline/css',file:'timeline.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'timeline/css',file:'timeline_light.css')}" />
    <script type="text/javascript" src="${resource(dir: 'timeline/javascript',file:'timeline.min.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'buttons/zocial/css',file: 'zocial.css')}" />
    <link href="${resource(dir:'foursquare/js/leaflet/dist', file: 'leaflet.css')}" type="text/css" rel="stylesheet" />
    <script src="${resource(dir:'foursquare/js/leaflet/dist', file: 'leaflet.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'foursquare/js', file: 'wax.leaf.min.js')}" type="text/javascript"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
    <style type="text/css">ol{margin:0;padding:0}.c3{list-style-type:decimal;margin:0;padding:0}.c0{padding-left:0pt;direction:ltr;margin-left:36pt}.c8{max-width:468pt;background-color:#ffffff;padding:72pt 72pt 72pt 72pt}.c11{list-style-type:lower-latin;margin:0;padding:0}.c2{color:inherit;text-decoration:inherit}.c7{padding-left:0pt;margin-left:72pt}.c9{color:#1155cc;text-decoration:underline}.c6{height:11pt}.c4{font-weight:bold}.c1{font-size:18pt}.c5{direction:ltr}.c10{font-size:14pt}.title{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:36pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}.subtitle{padding-top:18pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:24pt;font-family:"Georgia";padding-bottom:4pt}p{color:#000000;font-size:11pt;margin:0;font-family:"Arial"}h1{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:18pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}h2{padding-top:18pt;line-height:1.15;text-align:left;color:#000000;font-size:14pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h3{padding-top:14pt;line-height:1.15;text-align:left;color:#666666;font-size:12pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h4{padding-top:12pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:11pt;font-family:"Arial";padding-bottom:2pt}h5{padding-top:11pt;line-height:1.15;text-align:left;color:#666666;font-size:10pt;font-family:"Arial";font-weight:bold;padding-bottom:2pt}h6{padding-top:10pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:10pt;font-family:"Arial";padding-bottom:2pt;}</style>
    <script src="${resource(dir: 'js/validate/', file: 'jquery.validate.min.js')}" type="text/javascript"></script>
    <script type="text/javascript">
        <%
         def specialCharsRegex = /[^\w@*-+.\\/ \t\r\n\v\f !,#\u0024%^&@_\-\?\+()><~\!:]/
        %>

        $(document).ready(function() {
            $('#address_label').popover();
            var timeline_data = [
                    <g:each in="${eventList}" status="i" var="event">
                    <g:if test="${event.type.code == 'NEI005'}">
                {
                    type:     'blog_post',
                    date:     '${event.date}',
                    title:    'Opini&oacute;n',
                    width:    '90%',
                    content:  '${(event.message)?.replaceAll(specialCharsRegex, {"%${Integer.toHexString(it.codePointAt(0)).toUpperCase().padLeft(2, '0')}"})}',
                    image:    null
                },
                    </g:if>
                {
                    type:     'blog_post',
                    date:     '${event.date}',
                    title:    '${(event.type.name)?.replaceAll(specialCharsRegex, {"%${Integer.toHexString(it.codePointAt(0)).toUpperCase().padLeft(2, '0')}"})}: ${(event.element.name)?.replaceAll(specialCharsRegex, {"%${Integer.toHexString(it.codePointAt(0)).toUpperCase().padLeft(2, '0')}"})}',
                    width:    '90%',
                    content:  '${(event.message)?.replaceAll(specialCharsRegex, {"%${Integer.toHexString(it.codePointAt(0)).toUpperCase().padLeft(2, '0')}"})}',
                    image:    '${event.element.picture}'
                },
                    </g:each>

            ];

            var timeline = new Timeline($('#timeline'), timeline_data);
            timeline.setOptions({
                animation:   true,
                lightbox:    true,
                showYear:    true,
                allowDelete: false,
                columnMode:  'dual',
                order:       'desc'
            });
            timeline.display();

            var map = new L.Map('map_canvas');
//                    .setView(new L.LatLng(lat, lng), 15);
            var mapboxUrl = 'http://a.tiles.mapbox.com/v3/qtagtech.map-xsxvh4u4.jsonp';
            wax.tilejson(mapboxUrl, function(tilejson) {
                map.addLayer(new wax.leaf.connector(tilejson));
            });
            var venues = [<g:each in="${stores}">['${it.name}',${it.latitude}, ${it.longitude}, '${it.company.name}']</g:each>];
            //create the marker group
            var markers = new L.featureGroup();
            if(venues.length >0){
                plotMarkers(venues);
                //add the markers to the map
                map.addLayer(markers);
                //fit the map to the markers
                map.fitBounds(markers.getBounds());
//            map.setCenterZoom(10);
            }


            function plotMarkers(MarkerItems)
            {
                if(MarkerItems)
                {
                    var len = MarkerItems.length;
                    for(var i = 0; i<len; i++)
                    {
                        var latLng = new L.LatLng(
                                MarkerItems[i][1],
                                MarkerItems[i][2]
                        );
                        var marker = new L.Marker(latLng)
                                .bindPopup(MarkerItems[i][3]+' - '+MarkerItems[i][0], { closeButton: false })
                                .on('mouseover', function(e) { this.openPopup(); })
                                .on('mouseout', function(e) { this.closePopup(); });
                        markers.addLayer(marker);
                    }
                }

            }
          /**/

        });

    </script>
<g:if test="${vUSer == null}">
<script>
  $(document).ready(function(){
      var latitude=$("#latitude"),longitude=$("#longitude"),
              location={
                  latitude:'',
                  longitude:''
              };

      if (navigator.geolocation){
          navigator.geolocation.getCurrentPosition(showPosition);
      }
      else{
          //latitudeAndLongitude.innerHTML="Geolocation is not supported by this browser.";
      }

      function showPosition(position){
          location.latitude=position.coords.latitude;
          location.longitude=position.coords.longitude;
          latitude.val(position.coords.latitude);
          longitude.val(position.coords.longitude);

          var geocoder = new google.maps.Geocoder();
          var latLng = new google.maps.LatLng(location.latitude, location.longitude);

          if (geocoder) {
              geocoder.geocode({ 'latLng': latLng}, function (results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                      console.log(results[0]);

                      var city
                      var country
                      console.log(city);
                      console.log(country);
                      if(results[0].address_components.length == 6){
                          city =  results[0].address_components[3].short_name.toLowerCase();
                          country = results[0].address_components[5].short_name;
                      }
                      if(results[0].address_components.length == 5){
                          city =  results[0].address_components[2].short_name.toLowerCase();
                          country = results[0].address_components[4].short_name;
                      }
                      $("#city").val(city);
                      $("#country").val(country);
                      var html = "";
                      switch(city){
                          case "medellin": html = "Medellín";
                              break;
                          case "bogota": html = "Bogotá";
                              break;
                      }
                      $("#city_selected").val(html);
//                      $('#address_aut').html('Address:'+results[0].formatted_address);
                  }
                  else {
//                      $('#address_aut').html('Geocoding failed: '+status);
                      console.log("Geocoding failed: " + status);
                  }
              });
          }

      }

      $(".city_select").click(function(e){e.preventDefault();
          var code = $(this).attr('id');
          var html = "";
          switch(code){
              case "medellin": html = "Medellín";
                  break;
              case "bogota": html = "Bogotá";
                  break;
          }

          $("#city").val(code);
          $("#city_selected").val(html);

      });


      /*
      *
      *
      *
      * FORM VALIDATION
      *
      *
      * */
      var validator = $("#register-form").validate({
          rules: {
              name: "required",

              email: {
                  required: true,
                  email: true
              },
              password: {
                  required: true,
                  minlength: 5
              },
              agree: "required"
          },
          messages: {
              name: "Ingresa un nombre válido",
              email: {
                  required: "Ingresa un email válido",
                  minlength: "Ingresa por lo menos 5 caractéres"
              },
              password: {
                  required: "Indica una clave",
                  rangelength: "Ingresa por lo menos 5 caractéres"
              },
              agree: "Debes leer y aceptar los términos y condiciones"

          },
          // the errorPlacement has to take the layout into account
          errorPlacement: function(error, element) {
              //alert("error");
              var nombre = element.attr('name');
              $("#error_"+nombre).html(error);
//             error.insertBefore("#label_"+nombre);
              element.removeClass('label');
              element.removeClass('label-important');

          },

          // set new class to error-labels to indicate valid fields
          success: function(label) {
              // set &nbsp; as text for IE
              label.removeClass('label-important');
              label.addClass('label-success');
              label.html('¡Muy Bien!');
          },
          errorElement: "span",
          errorClass: "label label-important",
          submitHandler: function(form){
              $.when(saveSimpleUser(form))
                      .then(function(response){
                          if(response.status == 0){

                              $("#form-errors").append('<h3>Error: </h3><br>'+status.errors);
                              $("#form-errors").removeClass("hidden");
                          }
                          else{
                              $("#register-space").html('<h2>Bienvenido a Nest5</h2><h4>Comienza ya tu experiencia de enamorarte de Marcas y compartir con tus amigos</h4><a href="${createLink(uri: '/user/feed')}" class="btn btn-primary btn-large">¡Haz Clic Aquí! »</a>');
                          }

                      })
                      .fail(callError);
              return false;
          }
      });

   });
</script>
</g:if>
    <style>
    #timeline {
        width: 600px;
        margin: 0px auto;
    }
    @media screen and (max-width: 600px) {
        #timeline {
            width: 100%;
        }
    }
    @media screen and (orientation:portrait) {
        #timeline {
            width: 100%;
        }
    }
    </style>

</head>

<body>

    <div class="row-fluid">
        <div class="span3">
            <g:if test="${vUser == null}">%{--No registrado--}%
              <div class="well normal" id="register-space">
                  <form name="register-form" id="register-form" method="post">
                      <fieldset>
                          <legend><h2>Regístrate <small>en Nest5</small></h2></legend>
                          <a href="${grailsApplication.config.grails.serverURL}/j_spring_security_facebook_redirect"style="font-size: 1.2em;" id="fbBtn"  class="zocial facebook">Regístrate con Facebook</a>
                          <span class="help-block">Es la mejor forma de hacerlo, así mejorarás tu experiencia en Nest5.</span>
                          <ul class="nav nav-list">
                              <li class="divider"></li>
                          </ul>
                          <span class="help-block" style="color: #f9b23e;"><small>O inscríbite de forma manual, luego podrás vincular tu cuenta de facebook para mejorar la experiencia en Nest5.</small></span>

                          <div class="span12"><span id="error_name"></span><label for="name">Nombres y Apellidos:</label></div>
                          <div class="input-prepend">
                              <span class="add-on"><i class="icon-user"></i></span>
                              <input class="span12" id="name" name="name" type="text">
                          </div>
                          <div class="span12"><span id="error_email"></span><label for="email">Email</label></div>
                          <div class="input-prepend">
                              <span class="add-on"><i class="icon-envelope"></i></span>
                              <input class="span12" id="email" name="email" type="text">
                          </div>
                          <div class="span12"><span id="error_password"></span><label for="password">Contraseña</label></div>
                          <div class="input-prepend">
                              <span class="add-on"><i class="icon-lock"></i></span>
                              <input class="span12" id="password" name="password" type="password">
                          </div>
                          <label><abbr id="address_label" data-toggle="popover" data-placement="right" data-content="No es obligación, pero si la pones te enviaremos un detalle con amor por inscribirte en Nest5. Prometemos que se mantendrá privada. Visita nest5.com/privacy para saber más."title="" data-original-title="¿Para qué poner tu dirección?">Dirección Física</abbr></label>
                          <div class="input-prepend">
                              <span class="add-on"><i class="icon-home"></i></span>
                              <input class="span12" id="address" name="address" type="text">
                          </div>
                          <label>Ciudad</label>
                          <div class="input-prepend">
                              <div class="btn-group">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown">
                                      Cambiar
                                      <span class="caret"></span>
                                  </button>
                                  <ul class="dropdown-menu">
                                      <li><a href="#" class="city_select" id="medellin">Medellín</a></li>
                                      <li><a href="#" class="city_select" id="bogota">Bogotá</a></li>
                                  </ul>
                              </div>
                              <input  class="span6" id="city_selected" name="city_selected" type="text" readonly />
                              <input type="hidden" id="city" name="city" value=""/>
                              <input type="hidden" id="country" name="country" value=""/>
                          </div>
                          <div class="span12"><span id="error_agree"></span><label class="checkbox">
                              <input type="checkbox" name="agree" id="agree" value="">
                              Acepto los <a href="http://nest5.com/termsandconditions" target="_blank">Términos y Condiciones</a>
                          </label>
                          </div>
                          <div class="form-actions">
                              <button class="btn btn-large btn-block btn-primary" type="submit">Registrar</button>
                              <button class="btn btn-large btn-block" type="button">Cancelar</button>
                          </div>


                      </fieldset>
                      <input type="hidden" name="lat" id="latitude" value="">
                      <input type="hidden" name="lng" id="longitude" value="">
                      <div class="alert alert-block alert-error hidden" id="form-errors">
                          <button type="button" class="close" data-dismiss="alert">&times;</button>
                      </div>
                  </form>
              </div>
            </g:if>
            <g:else>%{--Opciones para usuario registrado, no se diferencia en nada si es el dueño de perfil o no--}%
                <div class="well sidebar-nav">
                    <ul class="nav nav-list">
                        <li class="nav-header">Menú Nest5</li>
                        <li><a href="${createLink(uri: '/user/feed')}">Inicio</a></li>
                        <li><a href="${createLink(uri: '/user/cards')}">Mis Tarjetas</a></li>
                        <li><a href="${createLink(uri: '/user/benefits')}">Mis Beneficios</a></li>
                        <li class="active"><a href="${createLink(uri: '/user/profile')}">Mi Cuenta</a></li>
                        <li><a href="${createLink(uri: '/user/info')}">Configuración</a></li>
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
                </div><!--/.well -->
            </g:else>
        </div><!--/span-->
        <div class="span9">

            <div class="hero-unit">
                <div class="row-fluid">
                    <div class="span4">
                        <p>
                            <g:if test="${vUser == null}">

                                <h5>Si quieres saber lo que  ${(userInstance?.name).split(' ')[0]} hace con sus Marcas favoritas, ¿Qué esperas?</h5>
                                <a href="#" class="btn btn-primary btn-large">¡Regístrate Ya! &raquo;</a>
                                <h5>Y síguelo en Nest5</h5>
                            </g:if> %{--No está loggeado, se muestra nombre del usuario y botón a registrar--}%
                            <g:elseif test="${vUser != userInstance}"><a href="#" class="btn btn-primary btn-large" id="follow_button">Sigue a ${(userInstance?.name).split(' ')[0]} &raquo;</a></g:elseif> %{--está loggeado y no es el dueño del perfil, se muestra seguir a nombre--}%
                            <g:else><h2>${(userInstance?.name).split(' ')[0]},</h2><h4>esta es tu actividad en Nest5</h4></g:else> %{--Es el usuario dueño del perfil el que lo está viendo--}%

                        </p>


                    </div>

                    <div class="span6 offset2">
                        <div id="zimain"  class="visible-desktop" style="background: url(${picture}); background-position: center; background-size: cover">
                            <div id="zisub"></div>
                            %{--<div id="ziheader">NEST5</div>--}%
                            <div id="zicontent" >
                                %{--<p><i class="icon-cloud-upload"></i>Marcas:<span id="price">50</span></p>
                                <p><i class="icon-tasks"></i>Sellos:<span id="price">25</span></p>
                                <p><i class="icon-globe"></i>Beneficios:<span id="price">5</span></p>
                                <p><i class="icon-envelope-alt"></i>Sigue: <span id="price">250</span></p>
                                <p><i class="icon-th"></i>Seguidores:<span id="price">150</span></p>
                                <p><i class="icon-spinner"></i>Posición:<span id="price">12</span></p>--}%
                            </div>
                            %{--<div id="zifooter"><a href="#zipop">ORDER</a></div>--}%
                        </div>
                    </div>
                </div>


            </div>
            <div class="row-fluid">
                <div class="span4">
                    <address>
                        <h2>${userInstance?.name}</h2><br>
                        <p>
                            <g:if test="${vUser == null}">
                                <a href="#" class="btn btn-success btn-large">¡Regístrate Ya en Nest5! &raquo;</a>
                            </g:if>
                            <g:elseif test="${vUser != userInstance}">
                                <a href="#" class="btn btn-primary" id="follow_button2">Seguir</a>&nbsp;&nbsp;<a href="#" class="btn btn-success">Recomendar</a>
                            </g:elseif>
                            <g:else>
                                <div class="btn-group">
                                    <button class="btn btn-primary btn-large dropdown-toggle" data-toggle="dropdown">Acciones <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        %{--<li><a href="#"><span class="text-error" style="font-size: 2em;"><strong>&hearts;</strong></span> una Marca</a></li>
                                        <li class="divider"></li>
                                        <li><a href="${createLink(uri: '/user/info')}">Mi Configuración</a></li>
                                        <li><a href="#">Buscar Amigos</a></li>--}%
                                        <li>Mis Marcas</li>
                                        <li><a href="${createLink(controller: 'user', action: 'cards')}" >Mis Tarjetas de Sellos</a</li>
                                        <li>Mis Beneficios Ganados</li>
                                    </ul>
                                </div><!-- /btn-group -->
                            </g:else>
                        </p>
                    </address>



                    %{--<p><a class="btn" href="#">View details &raquo;</a></p>--}%
                </div><!--/span-->
                <div class="span4">
                    <h2>${connections?.totalIsFriend} Seguidores:</h2>

                <g:if test="${vUser != userInstance}">
                    <g:if test="${connections?.isFriend?.size() == 0}" >
                        <p>
                            <a href="#" class="btn-primary btn">¡Se el primer Seguidor!</a>
                        </p>
                    </g:if>
                    <g:else>
                        <ul class="thumbnails">
                            <g:each in="${connections?.isFriend}">
                                <li class="span2">
                                    <a href="${createLink(uri: '/user/profile/'+it.id)}" data-toggle="tooltip" title="${it.name}" class="thumbnail person">
                                        <img src="${it.picture}" style="min-width: 30px;">
                                    </a>
                                </li>
                            </g:each>
                        </ul>
                        <g:if test="${vUser != null}"><p><a class="btn" href="#">Ver Todos &raquo;</a></p></g:if>

                    </g:else>
                </g:if>







                </div><!--/span-->
                <div class="span4">
                <h2>${connections?.totalFriends} Siguiendo:</h2>
                <g:if test="${vUser != userInstance}">
                    <g:if test="${connections?.friend?.size() == 0}" >
                        <a href="#" class="btn-primary btn">¡Recomienda a ${userInstance.name.split(" ")[0]}!</a>
                    </g:if>
                    <g:else>
                        <ul class="thumbnails">
                            <g:each in="${connections?.friend}">
                                <li class="span2">
                                    <a href="${createLink(uri: '/user/profile/'+it.id)}" class="thumbnail" data-toggle="tooltip" title="${it.name}">
                                        <img src="${it.picture}" style="min-width: 30px;">
                                    </a>
                                </li>
                            </g:each>
                        </ul>
                        <g:if test="${vUser != null}"><p><a class="btn" href="#">Ver Todos &raquo;</a></p></g:if>
                    </g:else>
                </g:if>

                </div><!--/span-->
            </div><!--/row-->
            <div class="row-fluid">
                <div class="span6">
                    <h2>Actividad de ${userInstance?.name.split(" ")[0]}</h2>

                    <p><div id="timeline"></div>
                </p>
                </div><!--/span-->

                <div class="span4 offset2">
                    <h2>Últimos Sellos</h2>
                    <p><div id="map_canvas"></div></p>
                    <p><a class="btn" href="#">Ver Todas la Tiendas &raquo;</a></p>
                </div><!--/span-->
            </div><!--/row-->
        </div><!--/span-->
    </div><!--/row-->
<script>
    $(document).ready(function(){
        $(".person").tooltip();

    });
    function callError(response){
        console.log("Error ajax: "+response);
    }
</script>
 <g:if test="${vUser == null}">
<script>
    function saveSimpleUser(form)
    {
        var url = "${createLink(controller: 'user', action: 'simpleCreate')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: $("#register-form").serialize(),
            dataType: "json"
        }).promise();
    }


</script>
 </g:if>
<g:if test="${(vUser!= null) && (vUser != userInstance)}">
   <script>
       $(document).ready(function(){
           $("body").on('click', "#follow_button",function(e){
               e.preventDefault();
               $(this).attr('disabled','disabled').addClass('disabled');
               $.when(addFriend())
                       .then(function(response){
                           if(response.status == 1){
                               $("#follow_button")
                                       .removeClass("btn-primary")
                                       .addClass("btn-danger")
                                       .html("&laquo; Dejar de Seguir")
                                       .removeClass('disabled')
                                       .removeAttr('disabled');
                               $("#follow_button2")
                                       .removeClass("btn-primary")
                                       .addClass("btn-danger")
                                       .html("&laquo; Dejar de Seguir")
                                       .removeClass('disabled')
                                       .removeAttr('disabled');
                           }
                       })
                       .fail(callError);
           });

               $("body").on('click', "#follow_button2",function(e){
                   e.preventDefault();
                   $(this).attr('disabled','disabled').addClass('disabled');
                   $.when(addFriend())
                           .then(function(response){
                               if(response.status == 1){
                                   $("#follow_button2")
                                           .removeClass("btn-primary")
                                           .addClass("btn-danger")
                                           .html("&laquo; Dejar de Seguir")
                                           .removeClass('disabled')
                                           .removeAttr('disabled');
                                   $("#follow_button")
                                           .removeClass("btn-primary")
                                           .addClass("btn-danger")
                                           .html("&laquo; Dejar de Seguir")
                                           .removeClass('disabled')
                                           .removeAttr('disabled');
                               }
                           })
                           .fail(callError);
               });
       });

       $.when(checkFollowing())
               .then(function(response){
                   console.log(response);
                   var button = $("#follow_button");
                   var button2 = $("#follow_button2");
                   //possible friendship values : 0--> no, 1--> user1 follows user2, 2--> user1 is followed by user2, 3--> user1 follows user2 and user1 is followed by user2
                   if(response.status == 1){
                       if(response.friendship == 0){
//                         console.log("no son amigos");
                       }
                       else if(response.friendship == 1){
//                           console.log("el visitante sigue al del perfil");
                           button.removeClass("btn-primary").addClass("btn-danger").html("&laquo; Dejar de seguir");
                           button2.removeClass("btn-primary").addClass("btn-danger").html("&laquo; Dejar de seguir");
                       }
                       else if(response.friendship == 2){
//                           console.log("el del perfil sigue al visitante");
                           button.before("<h3>${vUser.name.split(" ")[0]}, ${userInstance.name.split(" ")[0]} te sigue.</h3>")
                           button.html("¡Síguelo tú! &raquo;");
                           button2.html("Seguir &raquo;");
                       }
                       else{
//                           console.log("ambos se siguen mutuamente");
                           button.removeClass("btn-primary").addClass("btn-danger").html("&laquo; Dejar de seguir");
                           button2.removeClass("btn-primary").addClass("btn-danger").html("&laquo; Dejar de seguir");
                       }
                   }
               })
               .fail(callError);

       function checkFollowing(){
           var url = "${createLink(controller: 'user', action: 'checkFriendship')}";

           return  $.ajax({
               type: "POST",
               url: url,
               data: {user1: ${vUser.id}, user2: ${userInstance.id}},
               dataType: "json"
           }).promise();
       }


       function addFriend(){
           var url = "${createLink(controller: 'user', action: 'addFriend')}";

           return  $.ajax({
               type: "POST",
               url: url,
               data: {friendid: ${userInstance.id}},
               dataType: "json"
           }).promise();
       }


   </script>
</g:if>

</body>
</html>
