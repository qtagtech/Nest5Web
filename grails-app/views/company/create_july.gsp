<!DOCTYPE html>
<html lang="es">
<head>
    <meta name="layout" content="new_main"/>
    <title>¡Empieza Ya con Nest5! - Enamora a tus clientes, aumenta tus ventas y crece tu Empresa.</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus Marcas, Tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://nest5.com/company/join" />
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'orangebox.css')}" type="text/css" />


    <r:require modules="orangebox,waypoints,gritter,juvi"/>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'orangebox.css')}" type="text/css" />
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<style type="text/css">ol{margin:0;padding:0}.c3{list-style-type:decimal;margin:0;padding:0}.c0{padding-left:0pt;direction:ltr;margin-left:36pt}.c8{max-width:468pt;background-color:#ffffff;padding:72pt 72pt 72pt 72pt}.c11{list-style-type:lower-latin;margin:0;padding:0}.c2{color:inherit;text-decoration:inherit}.c7{padding-left:0pt;margin-left:72pt}.c9{color:#1155cc;text-decoration:underline}.c6{height:11pt}.c4{font-weight:bold}.c1{font-size:18pt}.c5{direction:ltr}.c10{font-size:14pt}.title{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:36pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}.subtitle{padding-top:18pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:24pt;font-family:"Georgia";padding-bottom:4pt}p{color:#000000;font-size:11pt;margin:0;font-family:"Arial"}h1{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:18pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}h2{padding-top:18pt;line-height:1.15;text-align:left;color:#000000;font-size:14pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h3{padding-top:14pt;line-height:1.15;text-align:left;color:#666666;font-size:12pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h4{padding-top:12pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:11pt;font-family:"Arial";padding-bottom:2pt}h5{padding-top:11pt;line-height:1.15;text-align:left;color:#666666;font-size:10pt;font-family:"Arial";font-weight:bold;padding-bottom:2pt}h6{padding-top:10pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:10pt;font-family:"Arial";padding-bottom:2pt;}</style>

<r:script disposition="head">
    var geocoder;
    var map;
    var infowindow;
    var marker;
    var input;
    var latInp;
    var lngInp;
    function initialize() {
        geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(-34.397, 150.644);

        var myOptions = {
            zoom: 15,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        latInp = document.getElementById("lati");
        lngInp = document.getElementById("longi");
        // Try HTML5 geolocation
        if(navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos = new google.maps.LatLng(position.coords.latitude,
                        position.coords.longitude);

                /*var infowindow = new google.maps.InfoWindow({
                 map: map,
                 position: pos,
                 content: 'Location found using HTML5.'
                 });*/

                map.setCenter(pos);
            }, function() {
                handleNoGeolocation(true);
            });
        } else {
            // Browser doesn't support Geolocation
            handleNoGeolocation(false);
        }

        input = document.getElementById('direccionLocal');

        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);
        infowindow = new google.maps.InfoWindow();
        marker = new google.maps.Marker({
            map: map,
            animation: google.maps.Animation.DROP,
            draggable: true
        });
        google.maps.event.addListener(marker, 'click', toggleBounce);
        google.maps.event.addListener(marker, 'dragend', function(evt){
            //alert('Marker dropped: Current Lat: ' + evt.latLng.lat().toFixed(3) + ' Current Lng: ' + evt.latLng.lng().toFixed(3));
            $(latInp).val(evt.latLng.lat());
            $(lngInp).val(evt.latLng.lng());
            codeLatLng( evt.latLng.lat(),evt.latLng.lng());
        });

        google.maps.event.addListener(marker, 'dragstart', function(evt){
            infowindow.close();

            //document.getElementById('current').innerHTML = '<p>Currently dragging marker...</p>';
        });
        google.maps.event.addListener(autocomplete, 'place_changed', function() {
            infowindow.close();
            var place = autocomplete.getPlace();
            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZoom(17);  // Why 17? Because it looks good.
            }

            var image = new google.maps.MarkerImage(
                    place.icon,
                    new google.maps.Size(71, 71),
                    new google.maps.Point(0, 0),
                    new google.maps.Point(17, 34),
                    new google.maps.Size(35, 35));
            marker.setIcon(image);
            marker.setPosition(place.geometry.location);

            $(latInp).val(place.geometry.location.lat());
            $(lngInp).val(place.geometry.location.lng());
            var address = '';
            if (place.address_components) {
                address = [(place.address_components[0] &&
                        place.address_components[0].short_name || ''),
                    (place.address_components[1] &&
                            place.address_components[1].short_name || ''),
                    (place.address_components[2] &&
                            place.address_components[2].short_name || '')
                ].join(' ');
            }

            infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
            infowindow.open(map, marker);
        });

    }

    function toggleBounce() {
        infowindow.close();

        if (marker.getAnimation() != null) {
            marker.setAnimation(null);
        } else {
            marker.setAnimation(google.maps.Animation.BOUNCE);
        }
    }

    function handleNoGeolocation(errorFlag) {
        if (errorFlag) {
            var content = 'Error: La ubicación automática falló';
        } else {
            var content = 'Error: Tu navegador no soporta el servicio de ubicación.';
        }

        var options = {
            map: map,
            position: new google.maps.LatLng(60, 105),
            content: content
        };

        infowindow = new google.maps.InfoWindow(options);
        map.setCenter(options.position);
    }

    function codeAddress() {

        var address = document.getElementById("direccionLocal").value;

        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });
            } else {
                alert("No se encuentra la dirección por la siguiente razón: " + status);
            }
        });
    }

    function codeLatLng(lat,lng) {



        var latlng = new google.maps.LatLng(lat, lng);
        geocoder.geocode({'latLng': latlng}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[1]) {
                    //map.setZoom(11);
                    //console.log(results);
                    infowindow.setContent(results[0].formatted_address);
                    infowindow.open(map, marker);
//                    $(input).val(results[0].formatted_address);
                    $.gritter.add({
                        title: 'Dirección actualizada',
                        text: 'Has actualizado el punto en el mapa por: '+results[0].formatted_address,
                        sticky: false,
                        time: '3000'
                    });
                } else {
                    $.gritter.add({
                        title: 'Error de Dirección',
                        text: 'La dirección del punto actual no fue encontrada.',
                        sticky: false,
                        time: ''
                    });
                }
            } else {
                $.gritter.add({
                    title: 'Error de Dirección',
                    text: status,
                    sticky: false,
                    time: ''
                });
            }
        });
    }
var selectedAction = "comprar";
</r:script>


</head>
<body>






<!-- Start App Info -->
<div id="app_info" class="company_join">
    <!-- Start Logo -->
    <a href="#home" class="logo">
        <img src="${resource(dir: 'minisite/images',file: 'LogoNest5.png' )}" alt="Nest5 - Beneficios en tu teléfono móvil" />
    </a>
    <!-- End Logo -->
    <span class="tagline">En menos de <srong>5 minutos</strong> estarás listo para publicar tu empresa en la <stronng>App Móvil Nest5</strong>, con el fin  de enamorar miles de usuarios que no conocían tu Marca, hacer regresar a quienes alguna vez fueron tus fans, y premiar a los fieles.</span>

        %{--<iframe src="http://player.vimeo.com/video/39363057?title=0&amp;byline=0&amp;portrait=0" height="400" width="100%" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>--}%

    <h2>¿Qué debes hacer? - Inscribirte - ¡Empezar es <strong>COMPLETAMENTE GRATIS</strong>!</h2>
        <p><span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0 10px;">1</span><span>Inscríbe tu Marca o Empresa en el formulario.</span> </p>
        <p><span style="font-family: Fyra-NumericCircleClosed;; font-size: 5em;  margin: 0 10px;">2</span><span>Diseña un beneficio que se publicará en <strong>Nest5</strong>. Puede ser un Producto, un Descuento, un abrazo, en fin, <strong>¡Lo que quieras!</strong>, mientras más creativo, mejor respuesta obtendrás de tus clientes.</span></p>
        <p><span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0 10px;">3</span><span>Indica en el mapa la ubicación de uno de los locales en el que los Usuarios podrán hacer válido el beneficio usando su teléfono movil.</span></p>
        <p><span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0 10px;">4</span><span>Ingresa a tu Panel de Control <strong>Nest5</strong> y mejora tu estrategia constantemente, aumenta tus ventas, enamora a tus clientes y dedícate a lo que realmente importa:.</span></p>
        <h4>Crecer tu Marca y tu Empresa</h4>



    <div id="slider">

        <div class="slide" data-effect-out="slide">

            <div class="background">
                <img  src="${resource(dir: 'images/partners', file: 'logo_mrpastor.jpg')}" alt="" >
            </div>
            <div class="foreground">
                <img  src="${resource(dir: 'images/partners', file: 'logo_pastelitos.png')}" alt="" >
            </div>

        </div>



        <div class="slide">

        <div class="background">
            <img src="${resource(dir: 'images/partners', file: 'logo_winners.png')}" alt="" >
        </div>
        <div class="foreground">
            <img  src="${resource(dir: 'images/partners', file: 'logo_goandenjoy.png')}" alt="" >
        </div>

    </div>
        <div class="slide">

            <div class="background">
                <img src="${resource(dir: 'images/partners', file: 'logo_puertocamaron.jpg')}" alt="" >
            </div>
            <div class="foreground">
                <img  src="${resource(dir: 'images/partners', file: 'logo_laostreria.jpg')}" alt="" >
            </div>

        </div>
        <div class="slide">

            <div class="background">
                <img src="${resource(dir: 'images/partners', file: 'logo_lamiscelanea.jpg')}" alt="" >
            </div>
            <div class="foreground">
                <img  src="${resource(dir: 'images/partners', file: 'logo_pizzetas.jpg')}" alt="" >
            </div>

        </div>
        <div class="slide">

            <div class="background">
                <img src="${resource(dir: 'images/partners', file: 'logo_noproject.jpg')}" alt="" >
            </div>
            <div class="foreground">
                <img  src="${resource(dir: 'images/partners', file: 'logo_eltrio.jpg')}" alt="" >
            </div>

        </div>




    </div>


    <div class="price centered"> <!-- Alignments options: right_align, left_align, centered -->
        <h3>Estas son algunas de las marcas que ya han decidido usar Nest5</h3>


    </div>



</div>
<!-- End App Info -->

<!-- Start Pages -->
<div id="pages">
<div class="top_shadow"></div>

<!-- Start Home -->
<div id="home" class="page">




        <g:formRemote class="form-company" id="CompanyForm" name="CompanyForm" before="changeButton()"   onSuccess="checkResponse(data)" method="POST" action="${createLink(controller: 'company', action: 'save')}" url="[controller: 'company', action: 'save']">

            <span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0; display: block; width:100%; margin-bottom:0.5em; text-align: center;">1</span>
            <div class="clearfix"></div>
            <span style="font-family: BebasNeue; font-size: 3em;  margin: 0 0px;">Activa Tu Marca o Empresa en Nest5</span>

            <div class="row ${hasErrors(bean: companyInstance, field: 'password', 'error')} required">
                <p class="left ">
                    <label for="email"><g:message code="company.email.label" default="Email*" /></label>
                    <input type="text" name="email" id="email" value="${companyInstance?.email}" required="" _juvi_type="email" _juvi_min_length="5" _juvi_error_message="Ingresa un email válido" />
                </p>

            </div>
            <div class="row ${hasErrors(bean: companyInstance, field: 'password', 'error')} required">
                <p class="left ">
                <label for="password_type">
                    <g:message code="company.password.label" default="Password*" />

                </label>
                <g:textField name="password_type" required=""  value="" _juvi_type="alpha" _juvi_min_length="5" _juvi_error_message="Ingresa una contraseña" />
                <g:hiddenField name="password" required=""  value="" />
                </p>
            </div>
            <div class="row ${hasErrors(bean: companyInstance, field: 'name', 'error')} required">
                <p class="left"><label for="name">
                    <g:message code="company.name.label" default="Name" />
                    <span class="required-indicator">*</span>

                </label>
                <g:textField name="name" placeholder="" required="" value="${companyInstance?.name}" _juvi_type="alpha" _juvi_min_length="5" _juvi_error_message="DEbes poner un nombre de Empresa"/>
                </p>
            </div>

            <div class="row ${hasErrors(bean: companyInstance, field: 'category', 'error')} required">
                <p class="left">
                <g:select id="category" name="category.id" from="${com.nest5.Nest5Client.Category.list()}" optionKey="id" required="" value="${companyInstance?.category?.id}" class="many-to-one"/>
                </p>
            </div>

            <div class="row ${hasErrors(bean: companyInstance, field: 'address', 'error')} required">
                <p class="left"><label for="address">
                    <g:message code="company.address.label" default="Address" />
                    <span class="required-indicator">*</span>

                </label>
                <g:textField name="address" placeholder="" required="" _juvi_type="alpha" _juvi_min_length="5" _juvi_error_message="No pusiste una dirección válida" value="${companyInstance?.address}"/>
                </p>
            </div>

            <div class="row ${hasErrors(bean: companyInstance, field: 'telephone', 'error')} required">
                <p class="left"><label for="telephone">
                    <g:message code="company.telephone.label" default="Telephone" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="telephone" placeholder="" required="" value="${companyInstance?.telephone}" _juvi_type="number" _juvi_min_length="7" _juvi_error_message="Ingresa un teléfono válido"/>
                </p>
            </div>

            <div class="row ${hasErrors(bean: companyInstance, field: 'url', 'error')} ">
                <p class="left"><label for="url">
                    <g:message code="company.url.label" default="Url" />

                </label>
                <g:textField name="url"  value="${companyInstance?.url}" _juvi_type="url" _juvi_min_length="5" _juvi_error_message="La URL no es válida."/>
                </p>
            </div>

            <div class="row ${hasErrors(bean: companyInstance, field: 'contactName', 'error')} required">
                <p class="left"><label for="contactName">
                    <g:message code="company.contactName.label" default="Contact Name" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="contactName" placeholder="" required="" value="${companyInstance?.contactName}" _juvi_type="alpha" _juvi_min_length="3" _juvi_error_message="No pusiste un contacto."/>
                </p>
            </div>
            %{--<a id="termsCaller" href="#termsContent" --}%%{--rel="lightbox"--}%%{-->Acepto los términos y Condiciones.</a>--}%
            <g:checkBox name="terms" value="accepted" checked="true" />
            <div id="errorMessage" class="validation"></div>


            <input type="submit" value="¡Enamora a Tus Clientes con Nest5!" id="subBtn" class="button white big"/>
            <p class="terms">Al registrarse aceptas nuestros <a href="#" target="_blank">Términos y Condiciones</a> además de nuestra  <a href="${createLink(uri: '/privacy')}" target="_blank">Política de Privacidad</a>.</p>
            <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
        </g:formRemote>


</div>
<!-- End Home -->


<!--Start Step 2 -->

<div id="step2" class="page">
        <g:formRemote class="form-company" id="BenefitForm" name="BenefitForm" before="changeButton2()"   onSuccess="checkResponseBenefit(data)" method="POST" action="${createLink(controller: 'promo', action: 'save')}" url="[controller: 'promo', action: 'save']">

            <span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0; display: block; width:100%; margin-bottom:0.5em; text-align: center;">2</span>
            <div class="clearfix"></div>
            <span class="create-title">Diseña tu Primer Beneficio</span>

            <div class="actionIcons">
                <a href="#" id="buySelect" style="width: 50%; margin:0;padding:0; opacity: 1;"><img src="${resource(dir: 'images', file: 'comprar_up.png')}" style="margin:0;padding:0;height:auto;" /></a>
                <a href="#" id="visitSelect" style="width: 50%; margin:0;padding:0;opacity: 0.25;"><img src="${resource(dir: 'images', file: 'visitar_down.png')}" style="margin:0;padding:0;height:auto;" /></a>
            </div>

        %{--<div class="row ${hasErrors(bean: promoInstance, field: 'cantArt', 'error')} required">
                <p class="left"><label for="cantArt">
                    <g:message code="promo.cantArt.label" default="Cant Art" />
                    <span class="required-indicator">*</span>
                </label>
                <g:field type="number" name="cantArt" required="" value="${fieldValue(bean: promoInstance, field: 'cantArt')}"/>
             </p>
            </div>
        --}%
            <div class="row ${hasErrors(bean: promoInstance, field: 'article', 'error')} ">
                <p class="left"><label for="article">
                    <g:message code="promo.article.label" default="Article" />

                </label>
                <g:textField name="article" value="${promoInstance?.article}"/>
                </p>
            </div>

            <div class="row ${hasErrors(bean: promoInstance, field: 'wins', 'error')} ">
                <p class="left"><label for="wins">
                    <g:message code="promo.wins.label" default="Wins" />

                </label>
                <g:textField name="wins" value="${promoInstance?.wins}"/>
                </p>
            </div>


            <g:hiddenField name="company.id" value="" id="newCompanyId"/>
            <g:hiddenField name="activity" value="Compra" id="activityField"/>

            <div id="errorMessage2" class="validation"></div>
            <h2>Clic en el botón y sigue configurando Nest5: Crear un Local de tu Marca.</h2>
            <input type="submit" value="¡Ir Al Paso 3!" id="subBtn2" class="button white big"/>

            <span id="loading2" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
        </g:formRemote>
</div>
<!--End Step 2 -->


<!--Start Step 3 -->

<div id="step3" class="page">
    <g:formRemote class="form-company"  id="StoreForm" name="StoreForm" before="changeButton3()"   onSuccess="checkResponseStore(data)" method="POST" action="${createLink(controller: 'store', action: 'save')}" url="[controller: 'store', action: 'save']">

        <span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0; display: block; width:100%; margin-bottom:0.5em; text-align: center;">3</span>
        <div class="clearfix"></div>
        <span style="font-family: BebasNeue; font-size: 3em;  margin: 0 0px;">Estás muy cerca de terminar. Indica un Local en el que es válido el Beneficio.</span>


        <div class="row ${hasErrors(bean: storeInstance, field: 'name', 'error')} ">
            <p class="left"><label for="nameLocal">
                <g:message code="store.name.label" default="Name" />

            </label>
            <g:textField id="nameLocal" name="name" value="${storeInstance?.name}"/>
            </p>
        </div>

        <div class="row ${hasErrors(bean: storeInstance, field: 'latitude', 'error')} ">
            <p class="left">
            <g:textField id="direccionLocal" name="direccionLocal" value=""/>
            %{--<input type="button" value="Geocode" onclick="codeAddress()">--}%
            </p>
        </div>


        <g:hiddenField name="lati" value="${storeInstance?.latitude}"/>
        <g:hiddenField name="longi" value="${storeInstance?.longitude}"/>
        <g:hiddenField name="createdPromo" value="" id="newPromoId"/>
        <g:hiddenField name="company.id" value="" id="existingCompanyId"/>
        <div id="errorMessage3" class="validation"></div>
        <h2>Estás listo. Haz clic en el botón y ¡Mira lo que sucede!.</h2>
        <input type="submit" value="¡Sigamos al paso 4!" id="subBtn3" class="button white big"/>
        <span id="loading3" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
    </g:formRemote>
</div>

<!--End Step 3 -->

<!--Start Step 4 -->

<div id="step4" class="page">
    <h1>¡FELICIDADES!</h1>
    <p><iframe src="http://player.vimeo.com/video/63169585?title=0&amp;byline=0&amp;portrait=0" height="400" width="100%" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></p>
    <p>Ya haces parte de Nest5. Si no sabes como continuar, contacta a <a href="${createLink(uri: 'team/catalina.moreno')}" >Cata</a>, nuestra manager para que te ayude a seguir adelante con esta historia de amor con tus clientes.<br/>
    Si lo que quieres es comenzar de inmediato, como todos queremos, ve a tu panel de control y empieza a perfeccionar tus beneficios, agrega más locales donde los usuarios podrán visitarte, y conoce todo lo que Nest5 te ofrece.
    </p>
    <a href="${createLink(uri:'/company/panel')}" class="large_button_long" id="panel"><span class="icon"></span><span class="text">¡Finalizar!</span></a>
</div>
<!--End Step 4 -->



<div class="bottom_shadow"></div>
</div>
<!-- End Pages -->

<div class="clear"></div>




<r:script>


var passOk = false;




   var pass = "";
            $("#password_type")
    .unbind('keyup')
            .bind('keyup', function(e){

               //console.log(e);

               if(e.keyCode > 47 && e.keyCode < 91 )   //es alfanumérico
               {
                if(e.shiftKey)
                {
                  pass += String.fromCharCode(e.keyCode);
                }
                else
                {
                  pass += (String.fromCharCode(e.keyCode)).toLowerCase();
                }

               }
               else
               {
                   if(e.keyCode == 8)
                   {
                    var length = pass.length;
                    pass = pass.substring(0,length - 1);
                    if($(this).val().length == 0)
                    {
                        pass = "";
                    }
                   }
                   if(e.keyCode == 46)
                   {
                       $(this).val("");
                       pass = "";

                   }
               }

               var length = $(this).val().length;
               var newVal = "";
               for(var i = 0; i < length; i++)
               {
                newVal += "*";
               }
               $(this).val(newVal);
                //var val = $(this).val();
               $('#password').val(pass);
               //console.log(pass);
               if(pass.length > 3)
               {
                passOk = true;
               }
               else
               {
                 passOk = false;
               }


            });










</r:script>
<r:script>

    $(function() {
        $( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1940:2012',
            defaultDate: '01/13/1986',
            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
            monthNames:['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthNamesShort:['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic']
        });
    });




    function changeButton(){
        $("#subBtn").fadeOut(0,function(){
            $("#loading").fadeIn(50);
        });
        ;
    }

    function changeButton2(){
        $("#subBtn2").fadeOut(0,function(){

            $("#loading2").fadeIn(50);
        });
        ;
    }

    function changeButton3(){
        $("#subBtn3").fadeOut(0,function(){
            $("#loading3").fadeIn(50);
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
            console.log(html);
            $("#errorMessage").html(html)
                    .fadeIn(300);


        }
        else{
        //no hace fadeout del form sino que lleva a la segunda pagina, o da las gracias y pone link segundo paso
            $("#CompanyForm").fadeOut(200,function(){
                var thanks = '<div id="thankyounote" style="display:none;">'+data.messages[0].value+'</div>';

                $("#CompanyForm").parent().append(thanks);

                    $("#thankyounote").fadeIn(200);
                $("#newCompanyId").val(data.companyId);
                $("#existingCompanyId").val(data.companyId);
//                console.log($("#newCompanyId").val());

            });


        }



    }

    function checkResponseBenefit(data){
        var html ="";
        $("#loading2").fadeOut(500,function(){
            $("#subBtn2").fadeIn(500);
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
            console.log(html);
            $("#errorMessage2").html(html)
                    .fadeIn(300);


        }
        else{
            $("#BenefitForm").fadeOut(200,function(){
                var htmlMain = "<a href='#' class='logo'><img src='${resource(dir: 'minisite/images',file: 'LogoNest5.png' )}' alt='Nest5 - Beneficios en tu teléfono móvil' /></a><h2>Crea un Local en el que vendas tu producto o prestes tu Servicio.</h2><div id=\"map_canvas\" style=\"width: 100%; height: 300px;\" ></div><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">V</span><p>Indícanos donde queda al menos uno de los locales en los que los usuarios, usando la App Móvil, o su nombre de usuario en Nest5, podrán encontrar tu Marca, comprarte, visitarte o cumplir con el requisito que has diseñado para darles beneficios.<br>Si deseas poner más de un local, podras hacerlo una vez termines este asistente de configuración inicial en tu Panel de Control.</span> </p>";
                $("#app_info").html(htmlMain);

                    $("#newPromoId").val(data.promoId);
                    //$("#StoreForm").fadeIn(200);
                    FluidNav.goTo("step3");
                initialize(); //Google Maps



            });


        }



    }

    function checkResponseStore(data){
        var html ="";
        $("#loading3").fadeOut(500,function(){
            $("#subBtn3").fadeIn(500);
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
//            console.log(html);
            $("#errorMessage3").html(html)
                    .fadeIn(300);


        }
        else{
            $("#StoreForm").fadeOut(200,function(){
                var htmlMain = "<h1>Con esto has terminado la configuración inicial de Tu Marca en Nest5</h2><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">O</span><span>Ya puedes hacer clic en el botón e ir a el Panel de Control de Tu Marca en Nest5, para analizar estadísticas, comunicarte con los clientes que interactúen contigo por medio de Nest5 y muchas cosas más que ofrecemos para que los enamores y tengas un negocio exitoso.</span> </p>";
                $("#app_info").html(htmlMain);
                var thanks = '<div id="thankyounote" style="display:none;">'+data.messages[0].value+'</div>';

                //$("#StoreForm").parent().append(thanks);

                //$("#thankyounote").fadeIn(200);
                   FluidNav.goTo("step4");
//                $("#newCompanyId").val(data.companyId);
//                console.log($("#newCompanyId").val());

            });


        }



    }


    $(document).ready(function(){
        $("body").on('click','#goon',function(e){
            e.preventDefault();
            var htmlMain = "<a href='#' class='logo'><img src='${resource(dir: 'minisite/images',file: 'LogoNest5.png' )}' alt='Nest5 - Beneficios en tu teléfono móvil' /></a><h2>Diseña Un Beneficio Inicial</h2><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">N</span><p>Piensa en algo con lo que te gustaría llamar a tus clientes. No tiene que ser un descuento o un producto, puede ser algo creativo que en ocasiones funciona incluso mejor para enamorar a las personas de tu Marca. <br>Una vez lo tengas claro, indica cuántas veces debe u cliente comprar un producto o visitar tu local para obtener dicho beneficio y continúa con el tercer paso de Nest5. </p> </p><div id=\"container\"></div>";
            $("#app_info").html(htmlMain);

            $("#thankyounote").fadeOut(200,function(){

                $("#BenefitForm").fadeIn(200);
                $("#thankyounote").remove();

            });

        });

        $("body").on('click','#gotopanel',function(){
           window.location = '/company/panel';
        });


        $("body").on('mouseover','#buySelect',function(e){
            e.preventDefault();
            $(this).animate({
                opacity: 1
                }, 200, function() {
                // Animation complete.
              });
             });


        $("body").on('mouseover','#visitSelect',function(e){
            e.preventDefault();
            $(this).animate({
                opacity: 1,
                }, 200, function() {
                // Animation complete.
              });
             });
        $("body").on('mouseout','#buySelect',function(e){
            e.preventDefault();
            if(selectedAction != "comprar")
            {
             $(this).animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });
            }

             });
         $("body").on('mouseout','#visitSelect',function(e){
            e.preventDefault();
            if(selectedAction != "visitar")
            {
             $(this).animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });
            }

             });

         $("body").on('click','#buySelect',function(e){
            e.preventDefault();
            $("#activityField").attr("value","Compra");
            selectedAction = 'comprar';
            $('#buySelect > img').attr("src","${resource(dir:'images',file: 'comprar_up.png')}");
            $('#visitSelect > img').attr("src","${resource(dir:'images',file: 'visitar_down.png')}");
            $('#visitSelect').animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });

        });
        $("body").on('click','#visitSelect',function(e){
            e.preventDefault();
            $("#activityField").attr("value","Visita");
            selectedAction = 'visitar';
            $('#visitSelect > img').attr("src","${resource(dir:'images',file: 'visitar_up.png')}");
            $('#buySelect > img').attr("src","${resource(dir:'images',file: 'comprar_down.png')}");
            $('#buySelect').animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });

        });
    });





</r:script>

</body>
</html>