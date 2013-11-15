<!doctype html>
<html  xmlns:fb="http://ogp.me/ns/fb#">
<head>
    <meta name="layout" content="main_users_new"/>
    <title>Nest5, Beneficios en las mejores Marcas.</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="no-index,no-follow">
    <link rel="canonical" href="http://nest5.com/user/feed" />
    %{--<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Nothing+You+Could+Do|Quicksand:400,700,300">--}%
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'profile-card/css',file:'style.css')}"/>
    <link href="${resource(dir:'foursquare/js/leaflet/dist', file: 'leaflet.css')}" type="text/css" rel="stylesheet" />
    <script src="${resource(dir:'foursquare/js/leaflet/dist', file: 'leaflet.js')}" type="text/javascript"></script>
    <script src="${resource(dir:'foursquare/js', file: 'wax.leaf.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'profile-card',file:'prefixfree.min.js')}"></script>
    <script>

        window.fbAsyncInit = function() {
            // init the FB JS SDK

            FB.init({
                appId      : '${grailsApplication.config.grails.plugins.springsecurity.facebook.appId}', // App ID
                channelUrl : "${grailsApplication.config.grails.serverURL}special/channel", // Channel File
                status     : true, // check login status
                cookie     : true, // enable cookies to allow the server to access the session
                xfbml      : true,  // parse XFBML
                frictionlessRequests : true
            });

            // Additional initialization code such as adding Event Listeners goes here
            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    // the user is logged in and has authenticated your
                    // app, and response.authResponse supplies
                    // the user's ID, a valid access token, a signed
                    // request, and the time the access token
                    // and signed request each expire
                    var uid = response.authResponse.userID;
                    var accessToken = response.authResponse.accessToken;
//                FB.api('/me', function(user) {
//                    //alert(user.name);
//                    //guardar datos de usuario en base de datos con ajax, ponerlos en el formulario y sale...
////                    $("#ipt-email").val(user.email);
//
//                });


                    // alert("Logged");
                    //window.location = "/user/account"
                } else if (response.status === 'not_authorized') {
                    // the user is logged in to Facebook,
                    // but has not authenticated your app
                    //alert("Logged but not author");
                } else {
                    // the user isn't logged in to Facebook.
                    //alert("not logged");
                }
            });

        };

        // Load the SDK's source Asynchronously
        (function(d, debug){


            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement('script'); js.id = id; js.async = true;
            js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
            ref.parentNode.insertBefore(js, ref);

        }(document, /*debug*/ false));

        /* HTML 5 geolocation. */
        navigator.geolocation.getCurrentPosition(function(data) {
         var lat = data['coords']['latitude'];
         var lng = data['coords']['longitude'];

         var map = new L.Map('map_canvas')
         .setView(new L.LatLng(lat, lng), 18);
         var mapboxUrl = 'http://a.tiles.mapbox.com/v3/qtagtech.map-xsxvh4u4.jsonp';
         wax.tilejson(mapboxUrl, function(tilejson) {
         map.addLayer(new wax.leaf.connector(tilejson));
         });
            $.when(getPlaces(lat,lng))
                    .then(function(response){
//                        console.log(response);
                        var venues = response.response.venues
                        for(var i = 0; i < venues.length; i++){

                            var latLng = new L.LatLng(
                                    venues[i].location.lat,
                                    venues[i].location.lng
                            );

                       var leafletIcon = L.Icon.extend({
                            iconUrl: venues[i]['categories'][0]['icon'].prefix+venues[i]['categories'][0]['icon'].suffix,
                            shadowUrl: null,
                                    iconSize: new L.Point(32,32),
                                    iconAnchor: new L.Point(16, 41),
                                    popupAnchor: new L.Point(0, -51)
                        });

                        var marker = new L.Marker(latLng)
                                .bindPopup(venues[i].name, { closeButton: false })
                                .on('mouseover', function(e) { this.openPopup(); })
                                .on('mouseout', function(e) { this.closePopup(); });
                        map.addLayer(marker);
                    }
                    })
                    .fail(callError);




         var latLng = new L.LatLng(
         lat,
         lng
         );

         /*var leafletIcon = L.Icon.extend({
         //iconUrl: venues[i]['venue']['categories'][0]['icon'],
         shadowUrl: null,
         iconSize: new L.Point(32,32),
         iconAnchor: new L.Point(16, 41),
         popupAnchor: new L.Point(0, -51)
         });*/
         //                var icon = new Icon();
         var marker = new L.Marker(latLng)
         .bindPopup("Tu estás aquí", { closeButton: false })
         .on('mouseover', function(e) { this.openPopup(); })
         .on('mouseout', function(e) { this.closePopup(); });
         map.addLayer(marker);

         });

        function getPlaces(lat, lng){
            var url = "${createLink(controller: 'foursquare', action: 'searchVenues')}";

            return  $.ajax({
                type: "POST",
                url: url,
                data: {lat: lat, lng: lng},
                dataType: "json"
            }).promise();
        }
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
                                <li class="active"><a href="${createLink(uri: '/user/feed')}">Inicio</a></li>
                                <li><a href="${createLink(uri: '/user/cards')}">Mis Tarjetas</a></li>
                                <li><a href="${createLink(uri: '/user/benefits')}">Mis Beneficios</a></li>
                                <li><a href="${createLink(uri: '/user/profile')}">Mi Cuenta</a></li>
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
                <div class="row-fluid">
                    <div class="span12">
                        <a href="#" id="tour_button" class="btn btn-block btn-follow" style="padding-top: 15px; padding-bottom: 15px; font-size: 1.4em;">Aprende a usar Nest5, haz clic aqu&iacute; >></a>
                    </div>

                </div>
                <div class="row-fluid" style="margin-top: 20px;">

                        <div class="span12">

                            <div class="well normal" id="list_of_friends">
                                <h2 style="color: #111;">Tus Amigos Nest5</h2>

                            </div>

                        </div>



                </div>
                <div class="row-fluid" style="margin-top: 20px;">

                    <div class="span12">

                        <div class="well normal" id="list_of_chats">
                            <h2>Conversaciones Activas</h2>

                        </div>

                    </div>



                </div>
                <!--/.well -->
            </div><!--/span-->
            <div class="span9">
                <div class="row-fluid">
                    <div class="span12">
                        <div id="map_canvas"></div>
                    </div>
                </div>
                <div  class="row-fluid" style="margin-top: 20px;">
                     <div class="span12">
                         <div class="well well-large normal">
                             <textarea class='tagged_text span12' placeholder="&iquest;Tienes algo para decir que una Marca o tus amigos deban saber? (Etiqueta Marcas con @)"></textarea>
                             <a href="#" id="publish_message" style="margin-top: 10px;" class="get-syntax-text btn btn-primary">Publicar</a>

                         </div>
                     </div>
                </div>
                    <div class="row-fluid">

                    <div class="span12">
                        <!-- Start Home -->
                        <div id="home" class="page">

                        <div class="alert alert-block alert-invite bootstro" data-bootstro-title="Invita Amigos a Nest5 y Gana Premios" data-bootstro-content="Puedes invitar amigos y as&iacute;, tanto ellos como t&uacute; obtener premios por referir." id="invite_container"   style="margin-top: 20px; margin-bottom: 20px;">
                            <button  type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4 style="color: #000;">¡${userInstance.name.split(" ")[0]}! Invita amigos, si se inscriben en Nest5 ambos obtendrán regalos en las dirección que cada uno haya configurado.</h4>
                            <h6>Si no has configurado una dirección física aún, hazlo en tu configuración de cuenta o haciendo <a href="${createLink(uri: '/user/info')}">clic aquí</a> </h6>
                            <form class="form-search">
                                <label for="emails"><abbr id="emails_label" data-toggle="popover" data-placement="bottom" data-content="Puedes invitar hasta 10 amigos a inscribirse a Nest5. Escribe sus correos eléctronicos en el campo, separados por comas y nosotros haremos el resto. Si se inscriben, tanto tú como ellos, recibiran un regalo sorpresa de Nest5 en la dirección que tengas configurada en tu cuenta." title="" data-original-title="¿Cómo Invito mis amigos?">Direcciones de e-mail de tus Invitados <small>Separados por comas</small></abbr></label>
                                <div class="input-append">
                                    <input type="text" id="emails" name="emails" class="span12 search-query">
                                    <button  type="submit" id="inviteBtn" class="btn">¡Invitar a Nest5!</button>
                                </div>

                            </form>

                        </div>
                        <div class="alert alert-block alert-friends bootstro" id="friend_container" data-bootstro-title="Amigos de Facebook" data-bootstro-content="Si tienes conectada tu cuenta de facebook, puedes agregar a los amigos que ya est&acute;n en Nest5, dando clic en seguir, si no, puedes invitar a aquellos que no se encuentran inscritos para que compartas tus experiencias de compra con ellos en Nest5."   style="display: none; margin-top: 20px; margin-bottom: 20px;">
                            <button  type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4  id="suggest_title">¡${userInstance.name.split(" ")[0]}! tienes Amigos en Nest5, síguelos y compartan sus experiencias de compra.</h4>


                        </div>

                        <div class="alert alert-block alert-friends bootstro" data-bootstro-title="Sigue Marcas en Nest5" data-bootstro-content="Al seguir Marcas te mantendr&aacute;s alerta de lo que &eacute;stas hagan, las promociones y beneficios que ofrezcan, eventos y todo lo que ellas tienen para t&iacute;. Adem&aacute;s, podr&aacute;s conocer personas con gustos similares a los tuyos y ver qu&eacute; amigos van a las mismas marcas que t&uacute;." id="brand_container">
                            <h4 id="brand_title">Marcas que puedes seguir en Nest5</h4>





                        </div>

                        <div class="alert alert-block alert-friends bootstro" id="taste_container" data-bootstro-title="Tus Gustos y Preferencias" data-bootstro-content="Nest5 es mejor para t&iacute; si indicas qu&eacute; te gusta, por ejemplo, &iquest;Eres amante de los deportes? &iquest;Los Animales? en fin, todo lo que te gusta ayuda a que las Marcas te ofrezcan cosas que te interesan como premios, que tus amigos sepan qu&eacute; te gusta y que Nest5 te pueda recomendar personas y Marcas que te podr&iacute;an gustar. &iexcl;Vu&eacute;lvete loco haciendo clic en los corazones!">
                            <h4 id="taste_title">${userInstance.name.split(" ")[0]}, ¿Qué te gusta?, ¡Selecciona y personaliza Marcas, premios y amigos!</h4>
                            <div class="row-fluid">
                                <div class="span12">
                                    <ul class="thumbnails" id="taste-list">

                                    </ul>
                                    <a style="display: block; margin-left: auto; margin-right: auto; max-width: 9%;" id="load_taste"  href="#" class="btn btn-follow bootstro" data-bootstro-title="&iquest;No ves lo que te gusta?" data-bootstro-content="Dale a este bot&oacute;n y Nest5 te dar&aacute; m&aacute;s opciones. Puedes hacer esto indefinidamente.">Ver +</a>
                                    <ul class="nav nav-list"><li class="divider"></li></ul>
                                </div>

                            </div>




                        </div>

                            %{--<div class="well well-large" >

                                <div id="Content">
                                    <h4>Tienes Amigos en Nest5, siguelos y compartan sus experiencias de compra.</h4>
                                    --}%%{--<ul id="flip" class="profiles cf">


                                    </ul>--}%%{--



                                </div>

                            </div>--}%

                            <div class="well well-large normal bootstro" id="feed_container" data-bootstro-title="&iexcl;Disfruta!" data-bootstro-content="Ya est&aacute;s listo, ahora mira lo que hacen tu Amigos, tus Marcas y comienza a sellar tus tarjetas. Es muy sencillo, debes ver que te ofrecen las Marcas, ir, decir que tienes Nest5 y dar tu nombre de usuario o usar la App M&oacute;vil que est&aacute; disponible para Android.">


                                <!-- main container -->
                                <div class="main_container">

                                    %{--<!-- pin element 1 -->
                                    <div class="pin">
                                        <div class="holder">
                                            <div class="actions" pin_id="1">
                                                <a href="#" class="button">Repin</a>
                                                <a href="#" class="button">Like</a>
                                                <a href="#" class="button disabled comment_tr">Comment</a>
                                            </div>

                                                Hola como estas yo muy bien tratando de que esto funcione

                                        </div>
                                        <p class="desc">Photo number 1 description</p>
                                        <p class="info">
                                            <span>1 likes</span>
                                            <span>1 repins</span>
                                        </p>
                                        <form class="comment" method="post" action="">
                                            <input type="hidden" name="id" value="1" />
                                            <textarea placeholder="Add a comment..." maxlength="1000"></textarea>
                                            <button type="button" class="button">Comment</button>
                                        </form>
                                    </div>--}%

                                    %{--<!-- pin element 2 -->
                                    <div class="pin">
                                        <div class="holder">
                                            <div class="actions" pin_id="2">
                                                <a href="#" class="button">Repin</a>
                                                <a href="#" class="button">Like</a>
                                                <a href="#" class="button comment_tr">Comment</a>
                                            </div>
                                            <a class="image ajax" href="#" title="Photo number 2">
                                                <img alt="Photo number 2" src="${resource(dir: 'feed/photos',file: 'pic2.jpg')}">
                                            </a>
                                        </div>
                                        <p class="desc">Photo number 2 description</p>
                                        <p class="info">
                                            <span>2 likes</span>
                                            <span>2 repins</span>
                                        </p>
                                        <form class="comment" method="post" action="" style="display: none">
                                            <input type="hidden" name="id" value="2" />
                                            <textarea placeholder="Add a comment..." maxlength="1000"></textarea>
                                            <button type="button" class="button">Comment</button>
                                        </form>
                                    </div>

                                    <!-- pin element 3 -->
                                    <div class="pin">
                                        <div class="holder">
                                            <div class="actions" pin_id="3">
                                                <a href="#" class="button">Repin</a>
                                                <a href="#" class="button">Like</a>
                                                <a href="#" class="button comment_tr">Comment</a>
                                            </div>
                                            <a class="image ajax" href="#" title="Photo number 3">
                                                <img alt="Photo number 3" src="${resource(dir: 'feed/photos',file: 'pic3.jpg')}">
                                            </a>
                                        </div>
                                        <p class="desc">Photo number 3 description</p>
                                        <p class="info">
                                            <span>3 likes</span>
                                            <span>3 repins</span>
                                        </p>
                                        <form class="comment" method="post" action="" style="display: none">
                                            <input type="hidden" name="id" value="3" />
                                            <textarea placeholder="Add a comment..." maxlength="1000"></textarea>
                                            <button type="button" class="button">Comment</button>
                                        </form>
                                    </div>

                                    <!-- pin element 4 -->
                                    <div class="pin">
                                        <div class="holder">
                                            <div class="actions" pin_id="4">
                                                <a href="#" class="button">Repin</a>
                                                <a href="#" class="button">Like</a>
                                                <a href="#" class="button comment_tr">Comment</a>
                                            </div>
                                            <a class="image ajax" href="#" title="Photo number 4">
                                                <img alt="Photo number 4" src="${resource(dir: 'feed/photos',file: 'pic4.jpg')}">
                                            </a>
                                        </div>
                                        <p class="desc">Photo number 4 description</p>
                                        <p class="info">
                                            <span>4 likes</span>
                                            <span>4 repins</span>
                                        </p>
                                        <form class="comment" method="post" action="" style="display: none">
                                            <input type="hidden" name="id" value="4" />
                                            <textarea placeholder="Add a comment..." maxlength="1000"></textarea>
                                            <button type="button" class="button">Comment</button>
                                        </form>
                                    </div>--}%

                                </div>
                            </div>

                        </div>
                        <!-- End Home -->
                    </div>
                </div>


            </div><!--/span-->

    </div><!--/row-->



<script>
var globalOffset = 0;
    $(document).ready(function(){
        $('body').on('click','#tour_button',function(e){
            e.preventDefault();
            bootstro.start('.bootstro',{prevButton: '<button class="btn btn-follow btn-mini bootstro-prev-btn"><< Regresar</button>',nextButton: '<button class="btn btn-follow btn-mini bootstro-next-btn">&iexcl;Quiero M&aacute;s! >></button>',finishButton: '<button class="btn btn-follow btn-mini bootstro-finish-btn">&iexcl;Estoy Listo!</button>'});
        });
        $("#emails_label").popover({trigger: 'hover'});
        $(".tool").popover({trigger: 'hover'});
        var opts = {
            lines: 9, // The number of lines to draw
            length: 0, // The length of each line
            width: 8, // The line thickness
            radius: 4, // The radius of the inner circle
            corners: 1, // Corner roundness (0..1)
            rotate: 90, // The rotation offset
            direction: 1, // 1: clockwise, -1: counterclockwise
            color: '#000', // #rgb or #rrggbb
            speed: 1.6, // Rounds per second
            trail: 45, // Afterglow percentage
            shadow: true, // Whether to render a shadow
            hwaccel: true, // Whether to use hardware acceleration
            className: 'spinner', // The CSS class to assign to the spinner
            zIndex: 2e9, // The z-index (defaults to 2000000000)
            top: 'auto', // Top position relative to parent in px
            left: 'auto' // Left position relative to parent in px
        };

        var target = $("#friend_container").after();
        var spinner1 = new Spinner(opts).spin();
        $(spinner1.el).css("marginLeft", "50%");
        target.html(spinner1.el);
        loading1 = spinner1;

            $('#content').masonry({
                // options
                itemSelector : '.friend_picture',
                columnWidth : 240
            });

        $("body").on('click','#load_taste',function(e){
            e.preventDefault();
            callTastes(10,globalOffset);
            globalOffset += 10;
            $(this).attr('disabled','disabled');

        });



        $.when(getSuggestions())
                .then(function(response){
                    setSuggestions(response);
                })
                .fail(callError);

        $.when(getActivity(20,0))
                .then(function(response){
                    //console.log(response);
                    var len = response.length;
                    var i = 0;
                    var html = "";
                    while(i < len){
                        if(response[i].type.code == "NEI004") //It means it's an add friend event
                        {
                          var comments = "";
                            var j = 0;
                            while(j < response[i].comments.length){
                                var actual = response[i].comments[j];
                                comments += '<p class="user_comment"><span class="comment_image"><img src="'+actual.user.picture+'"></span><span class="comment_body"><span class="comment_user">'+actual.user.name+'</span><span class="comment_date">'+actual.date+'</span><span class="comment_text">'+actual.content+'</span></span></p>';
                                j++;
                            }

                            var hearts = response[i].userHearts ? '<a href="#" class="buttoncito disabled heart-liked" id="heart_'+response[i].id+'">&hearts;</a>' : '<a href="#" class="buttoncito heart" id="heart_'+response[i].id+'">&hearts;</a>';


                          html +=   '<div class="pin">'
                                        +'<div class="holder">'
                                            +'<div class="actions" pin_id="1">'
//                                                +'<a href="#" class="buttoncito">Compartir</a>'
                                                + hearts
                                                +'<a href="#" class="buttoncito comment_tr">Comentar</a>'
                                            +'</div>'
                                        +'</div>'
                                        +'<div>' +
                                        '<a href="${createLink(controller: 'user', action: 'profile')}/'+response[i].user.id+'"><img src="'+response[i].user.picture+'" style="width: 17%; height: auto;"/></a>' +
                                        '<a href="${createLink(controller: 'user', action: 'profile')}/'+response[i].user.id+'" class="friend_name">'+response[i].user.name+'</a>' +
                                        '</div>'
                                        +' <a class="image ajax" href="${createLink(controller: 'user', action: 'profile')}/'+response[i].element.id+'" title="Photo number 2">'
                                        +'<img alt="'+response[i].element.name+'" src="'+response[i].element.picture+'">'
                                        +'</a>'
                                        +'<p class="desc">'+response[i].message+'</p>'
                                        +comments
                                        +'<form class="comment" method="post" action="" style="display: none" id="eventform_'+response[i].id+'">'
                                          +'<input type="hidden" name="id" value="1" />'
                                          +'<textarea placeholder="¿Qué Opinas?" maxlength="1000"></textarea>'
                                          +'<button type="button" class="buttoncito comment_event" id="event_'+response[i].id+'">Comentar</button>'

                                          +'</form>'
                                    +'</div>';
                        }
                        if((response[i].type.code == "NEI001") || (response[i].type.code == "NEI002")) //It means it's an add friend event
                        {

                            var comments = "";
                            var j = 0;
                            while(j < response[i].comments.length){
                                var actual = response[i].comments[j];
                                comments += '<p class="user_comment"><span class="comment_image"><img src="'+actual.user.picture+'"></span><span class="comment_body"><span class="comment_user">'+actual.user.name+'</span><span class="comment_date">'+actual.date+'</span><span class="comment_text">'+actual.content+'</span></span></p>';
                                j++;
                            }
                            var hearts = response[i].userHearts ? '<a href="#" class="buttoncito disabled heart-liked" id="heart_'+response[i].id+'">&hearts;</a>' : '<a href="#" class="buttoncito heart" id="heart_'+response[i].id+'">&hearts;</a>';
                            html +=   '<div class="pin" style="width: 300px;">'
                                    +'<div class="holder">'
                                    +'<div class="actions" pin_id="1">'
                                    +'<a href="#" class="buttoncito">Compartir</a>'
                                    +hearts
                                    +'<a href="#" class="buttoncito  comment_tr">Comentar</a>'
                                    +'</div>'
                                    +'</div>'
                                    +'<div>' +
                                    '<a href="${createLink(controller: 'user', action: 'profile')}/'+response[i].user.id+'"><img src="'+response[i].user.picture+'" style="width: 17%; height: auto;"/></a>' +
                                    '<a href="${createLink(controller: 'user', action: 'profile')}/'+response[i].user.id+'" class="friend_name">'+response[i].user.name+'</a>' +
                                    '</div>'
                                    +' <a class="image ajax" href="#" title="Photo number 2">'
                                    +'<img style="min-width: 292px;" alt="'+response[i].element.name+'" src="'+response[i].element.picture+'" />'
                                    +'</a>'
                                    +'<p class="desc">'+response[i].message+'</p>'
                                    +comments
                                    +'<form class="comment" method="post" action="" style="display: none" id="eventform_'+response[i].id+'">'
                                    +'<input type="hidden" name="id" value="1" />'
                                    +'<textarea placeholder="¿Qué Opinas?" maxlength="1000"></textarea>'
                                    +'<button type="button" class="buttoncito comment_event" id="event_'+response[i].id+'">Comentar</button>'
                                    +'</form>'
                                    +'</div>';
                        }
                        if((response[i].type.code == "NEI005")) //It means it's an status update event
                        {

                            var comments = "";
                            var j = 0;
                            while(j < response[i].comments.length){
                                var actual = response[i].comments[j];
                                comments += '<p class="user_comment"><span class="comment_image"><img src="'+actual.user.picture+'"></span><span class="comment_body"><span class="comment_user">'+actual.user.name+'</span><span class="comment_date">'+actual.date+'</span><span class="comment_text">'+actual.content+'</span></span></p>';
                                j++;
                            }
                            var hearts = response[i].userHearts ? '<a href="#" class="buttoncito disabled heart-liked" id="heart_'+response[i].id+'">&hearts;</a>' : '<a href="#" class="buttoncito heart" id="heart_'+response[i].id+'">&hearts;</a>';
                            html +=   '<div class="pin" style="width: 300px;">'
                                    +'<div class="holder">'
                                    +'<div class="actions" pin_id="1">'
//                                    +'<a href="#" class="buttoncito">Compartir</a>'
                                    +hearts
                                    +'<a href="#" class="buttoncito  comment_tr">Comentar</a>'
                                    +'</div>'
                                    +'</div>'
                                    +'<div>' +
                                    '<a href="${createLink(controller: 'user', action: 'profile')}/'+response[i].user.id+'"><img src="'+response[i].user.picture+'" style="width: 17%; height: auto;"/></a>' +
                                    '<a href="${createLink(controller: 'user', action: 'profile')}/'+response[i].user.id+'" class="friend_name">'+response[i].user.name+'</a>' +
                                    '</div>'
                                    /*+' <a class="image ajax" href="#" title="Photo number 2">'
                                    +'<img style="min-width: 292px;" alt="'+response[i].user.name+'" src="'+response[i].user.picture+'" />'
                                    +'</a>'*/
                                    +'<p class="desc">'+response[i].message+'</p>'
                                    +comments
                                    +'<form class="comment" method="post" action="" style="display: none" id="eventform_'+response[i].id+'">'
                                    +'<input type="hidden" name="id" value="1" />'
                                    +'<textarea placeholder="¿Qué Opinas?" maxlength="1000"></textarea>'
                                    +'<button type="button" class="buttoncito comment_event" id="event_'+response[i].id+'">Comentar</button>'
                                    +'</form>'
                                    +'</div>';
                        }
                        i++;
                    }
                     if(len > 0){
                         $(".main_container").append(html)
                                 .imagesLoaded(function() {
                                     $('.main_container').masonry('reload');
                                 });
                     }

                   loading1.stop();
                })
                .fail(callError);
        $.when(getBrandSuggestions())
                .then(function(response){
                    var target = $("#brand_title");
                    var cantidad = response.length;

                    var i = 0;
                    var html = "";
                    while(i < cantidad){
                    html += '<div id="brand_'+response[i].id+'" class="view view-tenth">'
                                +'<img src="'+response[i].picture+'" alt="'+response[i].name+' en Nest5" style="width: 100%; height: auto;" />'
                                +'<div class="mask">'
                                +'<h2>'+response[i].name+'</h2>'
                                +'<p>¿Te gusta '+response[i].name+'? Dale Ya al Corazón y enamórate para seguir su actividad, participar por sus beneficios y muchas cosas más.</p>'
                                +'<a href="#" class="btn btn-follow love_brand" id="love_'+response[i].id+'">&hearts;</a>'
//                                +'<a href="#" id="love_'+response[i].id+'"  class="informa love_brand">&hearts;</a>'
                                +'</div>'
                            +'</div>';
                        i++;
                    }

                    target.after(html);
                })
                .fail(callError);

        callTastes(10,0);
        globalOffset += 10;
        callMyBrands();



        var loading = null;

        $('.main_container').on('click','.comment_event', function(e){
            e.preventDefault();
            var attr = $(this).attr('id');
            var splitted = attr.split('_');
            var event = splitted[1];
            var content = $("#eventform_"+event+"> textarea").val();
            var target = $("#eventform_"+event);
            var spinner = new Spinner(opts).spin();
            $(spinner.el).css("marginLeft", "50%");
            $("#eventform_"+event).html("");
            target.html(spinner.el);
            loading = spinner;
            $.when(commentEvent(event, content))
                .then(function(response){
                        console.log(response);
                        if(response.status == 1)
                        {
                            var formHtml = '<form class="comment" method="post" action=""  id="eventform_'+response.event.id+'">'
                                    +'<input type="hidden" name="id" value="1" />'
                                    +'<textarea placeholder="¿Qué Opinas?" maxlength="1000"></textarea>'
                                    +'<button type="button" class="buttoncito comment_event" id="event_'+response.event.id+'">Comentar</button>'
                                    +'</form>';
                            loading.stop();
                            loading = null;
                            var html = "";
                            $("#eventform_"+event).before('<p class="user_comment"><span class="comment_image"><img src="'+response.user.picture+'"></span><span class="comment_body"><span class="comment_user">'+response.user.name+'</span><span class="comment_date">'+response.date+'</span><span class="comment_text">'+response.content+'</span></span></p>');
                            $("#eventform_"+event).html(formHtml);
                            $('.main_container').masonry('reload');
                        }
                    })
                    .fail(callError);
        });

        $('.main_container').on('click','.heart', function(e){
            e.preventDefault();
            var attr = $(this).attr('id');
            var splitted = attr.split('_');
            var event = splitted[1];
            $(this).toggleClass('disabled');
            $(this).removeClass('heart');
            $(this).addClass('heart-liked');
            $.when(heartEvent(event))
                    .then(function(response){

                        if(response.status != 1)
                        {
                            $(this).toggleClass('disabled');
                            $(this).removeClass('heart-liked');
                            $(this).addClass('heart');
                        }

                    })
                    .fail(callError);

        });

        $('.main_container').on('click','.heart-liked', function(e){
            e.preventDefault();
            var attr = $(this).attr('id');
            var splitted = attr.split('_');
            var event = splitted[1];
            $(this).toggleClass('disabled');
            $(this).removeClass('heart-liked');
            $(this).addClass('heart');
            $.when(unheartEvent(event))
                    .then(function(response){

                        if(response.status != 1)
                        {
                            $(this).toggleClass('disabled');
                            $(this).removeClass('heart');
                            $(this).addClass('heart-liked');
                        }

                    })
                    .fail(callError);

        });

        $("body").on('click', ".follow_button",function(e){
            e.preventDefault();
            var id = $(this).attr('id');
            var splitted = id.split("_");
            var user = splitted[1];
            $(this).attr('disabled','disabled').addClass('disabled');
            $.when(addFriend(user))
                    .then(function(response){
                        console.log(response);
                        if(response.status == 1){
                            $("#user_"+response.friend.id).fadeOut(2500, function(){
                                $(this).remove();
                            });
                        }
                    })
                    .fail(callError);
        });


        $("body").on('click', ".like_button",function(e){
            e.preventDefault();
            var id = $(this).attr('id');
            var splitted = id.split("_");
            var elId = splitted[1];
            var elTy = splitted[2];
            $(this).attr('disabled','disabled').addClass('disabled');
            $.when(likeElement(elId,elTy))
                    .then(function(response){
                        console.log(response);
                        if(response.status == 1){
                           $("#likelement_"+response.element.id).fadeOut(1500,function(){
                               $("#likelement_"+response.element.id).remove();
                           });
                            $("#likelement_"+response.element.id).remove();
                        }
                    })
                    .fail(callError);
        });

        $("#inviteBtn").click(function(e){
            e.preventDefault();
            var vals = $("#emails").val();
            $("#emails").attr('disabled','disabled');
            $(this).attr('disabled','disabled');
            $.when(sendEmailsBackend(vals))
                    .then(function(response){
                        console.log(response);
                        var vals = $("#emails").val("");
                        $("#emails").removeAttr('disabled');
                        $("#inviteBtn").removeAttr('disabled');
                    })
                    .fail(callError);
        });




        $("body").on('click','.invite_button',function(e){
            e.preventDefault();
            var vario = $(this).attr('id');
            var split = vario.split("_");
            var uid = split[1];
            sendRequestViaMultiFriendSelector(uid);
        });

        $("body").on('click','.love_brand',function(e){
            e.preventDefault();
            var vario = $(this).attr('id');
            var split = vario.split("_");
            var id = split[1];
            $(this).closest("a")
                    .attr('disabled','disabled')
                    .fadeOut(200);
            $.when(loveBrand(id))
                    .then(function(response){
                        if(response.status == 1){
                            $("#brand_"+response.brand.id).fadeOut(1500,function(){
                             $(this).remove();
                            });
                            $.when(getSuggestions())
                                    .then(function(response){
                                        setSuggestions(response);
                                    })
                                    .fail(callError);
                        }
                    })
                    .fail(callError);

        });

        $.when(getMyFriends())
                .then(setMyFriends)
                .fail(callError);

        $.when(getMyChats())
                .then(setMyChats)
                .fail(callError);

        $('body').on('click','.chat',function(e){
            e.preventDefault();
            var id = $(this).attr('id');
            $('.chatBox').each(function(index){
                $(this).fadeOut(1500);
            });
            setCompleteChat(id);
        });

        $('textarea.tagged_text').textntags({
            onDataRequest:function (mode, query, triggerChar, callback) {
                $.getJSON('${createLink(controller: 'company',action: 'findCompanies')}?term='+query, function(responseData) {
//                    console.log(responseData);
                    query = query.toLowerCase();
                    responseData = _.filter(responseData, function(item) {return item.username.toLowerCase().indexOf(query) > -1; });
                    callback.call(this, responseData);
                });
            },
            keys_map:{
                id: 'id',
                title: 'username',
                description: '',
                img: 'img',
                no_img_class: 'icon',
                type: 'type'
            }
        });

        $('.get-syntax-text').click(function(e) {
            e.preventDefault();
            $(this).attr('disabled','disabled');
            $('.tagged_text').attr('disabled','disabled');
            $('textarea.tagged_text').textntags('val', function(text) {
                $('textarea.tagged_text').textntags('parseTaggedText',text,function(real){
                    console.log(real);
                    var cant = real.tagsCollection.length;
                    if(cant == 0){
                        $.when(setStatus(real.plain_text))
                                .then(function(){
                                    $("#publish_message").removeAttr('disabled');
                                    $('.tagged_text').removeAttr('disabled');
                                    $('.tagged_text').val("");
                                })
                                .fail(callError);
                    }
                    else{
                        var i = 0;
                        var sent = cant;
                        while(i < cant){
                            $.when(messageBrand(real.tagsCollection[i][3].id,real.plain_text))
                                    .then(function(response){
                                        console.log(response);

                                        sent--;
                                        if(sent == 0){
                                            console.log("termino de enviar mensajes");
                                            $("#publish_message").removeAttr('disabled');
                                            $('.tagged_text').removeAttr('disabled');
                                            $('.tagged_text').val("");
                                        }
                                    })
                                    .fail(callError);
                            i++;
                        }
                    }

                });

            });
        });


    });

    function getSuggestions()
    {
        var url = "${createLink(uri: '/user/syncFriends')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: "json"
        }).promise();
    }

    function messageBrand(brand, message)
    {
        var url = "${createLink(controller: 'user', action: 'messageBrand')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {id: brand, message: message},
            dataType: "json"
        }).promise();
    }
    function setStatus(message)
    {
        var url = "${createLink(controller: 'user', action: 'setStatus')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {message: message},
            dataType: "json"
        }).promise();
    }
    function getActivity(max, offset)
    {
        var url = "${createLink(uri: '/user/activity')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {max: max, offset: offset},
            dataType: "json"
        }).promise();
    }
    function getProposalsObjects(max, offset)
    {
        var url = "${createLink(uri: '/taste/listObject')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {max: max, offset: offset},
            dataType: "json"
        }).promise();
    }
    function getProposalsCategories(max, offset)
    {
        var url = "${createLink(uri: '/taste/listCategory')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {max: max, offset: offset},
            dataType: "json"
        }).promise();
    }
    function getProposalsFamilies(max, offset)
    {
        var url = "${createLink(uri: '/taste/listFamily')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {max: max, offset: offset},
            dataType: "json"
        }).promise();
    }
    function getProposalsUniverses(max, offset)
    {
        var url = "${createLink(uri: '/taste/listUniverse')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {max: max, offset: offset},
            dataType: "json"
        }).promise();
    }



    function commentEvent(event, content)
    {
        var url = "${createLink(uri: '/event/comment')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {event: event, content: content},
            dataType: "json"
        }).promise();
    }
    function heartEvent(event)
    {
        var url = "${createLink(uri: '/event/heart')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {event: event},
            dataType: "json"
        }).promise();
    }
    function unheartEvent(event)
    {
        var url = "${createLink(uri: '/event/unheart')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {event: event},
            dataType: "json"
        }).promise();
    }
    function getBrandSuggestions()
    {
        var url = "${createLink(uri: '/user/suggestBrands')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: "json"
        }).promise();
    }
    function getMyFriends()
    {
        var url = "${createLink(controller: 'user', action: 'myFriends')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: "json"
        }).promise();
    }
function getMyChats()
{
    var url = "${createLink(controller: 'user', action: 'myChats')}";

    return  $.ajax({
        type: "POST",
        url: url,
        data: null,
        dataType: "json"
    }).promise();
}
    function likeElement(id, type)
    {
        var url = "${createLink(uri: '/taste/userLike')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {element: type, elementid:id},
            dataType: "json"
        }).promise();
    }

    function callError(response){
        console.log("Error ajax: "+response);
    }
    function shuffle(o){ //v1.0
        for(var j, x, i = o.length; i; j = parseInt(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
        return o;
    };

    function addFriend(user){
        var url = "${createLink(uri: '/user/addFriend')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {friendid: user},
            dataType: "json"
        }).promise();
    }
    function loveBrand(user){
        var url = "${createLink(uri: '/user/followBrand')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {company: user},
            dataType: "json"
        }).promise();
    }
    function sendRequestToRecipients() {
        var user_ids = document.getElementsByName("user_ids")[0].value;
        FB.ui({method: 'apprequests',
            message: 'My Great Request',
            to: user_ids
        }, requestCallback);
    }

    function sendRequestViaMultiFriendSelector(id) {
        FB.ui({method: 'apprequests',
            title: 'Nest5 - Compra, Comparte y Gana Premios',
            message: '¡Con una tarjeta de sellos virtual ganamos beneficios! La sellamos 5 veces en una Marca, y esta nos da un regalo. Podemos tambien compartir nuestros gustos y conocer gente que le gusten Marcas que nos gustan.',
            to: id
        }, requestCallback);
    }

    function requestCallback(response) {
     console.log(response);
        $("#userinvite_"+response.to[0]).fadeOut(3500,function(){
            $(this).remove();
        });
    }



    function sendEmailsBackend(emails){
        var url = "${createLink(uri: '/user/inviteFriends')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {emails: emails},
            dataType: "json"
        }).promise();
    }

    function callTastes(max,offset){
        $.when(getProposalsObjects(max,offset),
                        getProposalsCategories(max,offset),
                        getProposalsFamilies(max,offset),
                        getProposalsUniverses(max,offset))
                .then(function(response1,response2,response3,response4){
                    var totalLength = response1[0].length + response2[0].length +response3[0].length +response4[0].length;

                    var response = [].concat(response1[0].elements).concat(response2[0].elements).concat(response3[0].elements).concat(response4[0].elements);

                    if(totalLength > 0){
                        var i = 0;
                        var html = "";
                        while(i < totalLength){
                            if(i == 0 || i % 6 == 0){
                                html+= '<div class="row-fluid" style="margin-top: 20px;"><div class="span12">';
                            }

                            html += '<li  class="span2" id="likelement_'+response[i].id+'">'
                                    +'<div class="thumbnail">'
                                    +'<img  style="margin-top: 20px;" src="'+response[i].picture+'" alt="">'
                                    +'<div class="caption">'
                                    +'<h3 style="word-wrap:break-word; line-height: 0.9em;">'+response[i].name+'</h3>'
                                    +'<p style="word-wrap:break-word; ">'+response[i].description+'</p>'
                                    +'<p><a style="word-wrap:break-word; line-height: 0.9em;" href="#" style="display: block; max-width: 10%; margin-left: auto; margin-right: auto;" data-toggle="popover" title="Indica que te gusta '+response[i].name+'" data-content="Conoce gente con los mismos gustos y personaliza tu experiencia en Nest5." class="btn btn-follow like_button tool" id="like_'+response[i].id+'_'+response[i].type+'">&hearts;</a></p>'
                                    +'</div>'
                                    +'</div>'
                                    +'</li>';
                            if(((i+1)%6==0) || (response[i+1] == null)){
                                html+='</div></div>';
                            }

                            i++;
                        }

                        $("#taste-list").append(html);

//
                        $(".tool").popover({trigger: 'hover'});
                        $("#load_taste").removeAttr('disabled');

                    }
                })
                .fail(callError);
    }


function setSuggestions(response){
    console.log(response);
    var qtyAmigos = response.existing.length;
    var qtyInvites = response.invite.length;
    console.log(qtyAmigos+" :Amigos - Invites: "+qtyInvites);
    var html = "";
    if(qtyAmigos > 0)
    {
        $("#suggest_title").html("Tienes "+qtyAmigos+" Amigos en Nest5, agrégalos y sigue sus actualizaciones con marcas, compras y cosas que les gustan.");
        var i = 0;
        while(i < qtyAmigos){
            html += '<div class="avatar_holder" id="user_'+response.existing[i].id+'">'
                    +'<div class="avatar" style="background-image:url(http://graph.facebook.com/'+response.existing[i].uid+'/picture?width=80&height=120)"></div>'
                    +'<a href="${createLink(uri:"/user/profile/")}'+response.existing[i].id+'" class="avatar_name">'+response.existing[i].name+'</a>'
                    +'<a href="#" class="btn btn-follow follow_button" id="follow_'+response.existing[i].id+'">Seguir</a>'
                    +'</div>' ;

            i++;
        }
        $("#friend_container").append(html);
        $("#friend_container").append('<ul class="nav nav-list"><li class="divider"></li></ul>');
        $("#friend_container").fadeIn(1500);

    }

    else{
        if(qtyInvites >= 18)
        {
            $("#suggest_title").html("Invita amigos a Nest5, agregalos para seguir sus actualizaciones con marcas, compras y cosas que le gustan.");
            var desordenado = shuffle(response.invite);
            var i = 0;
            while(i < 18){
                html += '<div class="avatar_holder" id="userinvite_'+response.invite[i].id+'">'
                        +'<div class="avatar" style="background-image:url(http://graph.facebook.com/'+response.invite[i].id+'/picture?width=80&height=120)"></div>'
                        +'<a href="http://facebook.com/'+response.invite[i].id+'" target="_blank" class="avatar_name">'+response.invite[i].name+'</a>'
                        +'<a href="#" class="btn btn-invite invite_button" id="invite_'+response.invite[i].id+'">Invitar</a>'
                        +'</div>' ;
                i++;
            }
            $("#friend_container").append("<h4>Invita tus amigos de facebook que aún no están en Nest5</h4>").append(html).append('<ul class="nav nav-list"><li class="divider"></li></ul>');
            $("#friend_container").fadeIn(1500);
        }
    }
    if(response.followers.length > 0){
        var total = response.followers.length < 18 ? response.followers.length : 18;
        var i = 0;
        var html = "";

        while(i < total){
            html += '<div class="avatar_holder" id="user_'+response.followers[i].id+'">'
                    +'<div class="avatar" style="background-image:url('+response.followers[i].picture+')"></div>'
                    +'<a href="${createLink(uri:"/user/profile/")}'+response.followers[i].id+'" class="avatar_name">'+response.followers[i].name+'</a>'
                    +'<a href="#" class="btn btn-follow follow_button" id="follow_'+response.followers[i].id+'">Seguir</a>'
                    +'</div>';

            i++;
        }
        $("#friend_container").append("<h4>Sigue personas en Nest5 que te siguen, pero tú no a ellos.</h4>").append(html).append('<ul class="nav nav-list"><li class="divider"></li></ul>');
        $("#friend_container").fadeIn(1500);
    }
    if(response.followedByFriends.length > 0){
        var total = response.followedByFriends.length < 18 ? response.followedByFriends.length : 18;
        var i = 0;
        var html = "";

        while(i < total){
            html += '<div class="avatar_holder" id="user_'+response.followedByFriends[i].id+'">'
                    +'<div class="avatar" style="background-image:url('+response.followedByFriends[i].picture+')"></div>'
                    +'<a href="${createLink(uri:"/user/profile/")}'+response.followedByFriends[i].id+'" class="avatar_name">'+response.followedByFriends[i].name+'</a>'
                    +'<a href="#" class="btn btn-follow follow_button" id="follow_'+response.followedByFriends[i].id+'">Seguir</a>'
                    +'</div>';

            i++;
        }
        $("#friend_container").append("<h4>Sigue Amigos de las personas que sigues en Nest5.</h4>").append(html).append('<ul class="nav nav-list"><li class="divider"></li></ul>');
        $("#friend_container").fadeIn(1500);
    }
    if(response.followMyBrands.length > 0){
        var total = response.followMyBrands.length < 18 ? response.followMyBrands.length : 18;
        var i = 0;
        var html = "";

        while(i < total){
            html += '<div class="avatar_holder" id="user_'+response.followMyBrands[i].id+'">'
                    +'<div class="avatar" style="background-image:url('+response.followMyBrands[i].picture+')"></div>'
                    +'<a href="${createLink(uri:"/user/profile/")}'+response.followMyBrands[i].id+'" class="avatar_name">'+response.followMyBrands[i].name+'</a>'
                    +'<a href="#" class="btn btn-follow follow_button" id="follow_'+response.followMyBrands[i].id+'">Seguir</a>'
                    +'</div>';

            i++;
        }
        $("#friend_container").append("<h4>Sigue Personas que también están enamorados de las mismas Marcas que tú en Nest5.</h4>").append(html).append('<ul class="nav nav-list"><li class="divider"></li></ul>');
        $("#friend_container").fadeIn(1500);
    }

    if(response.followedByFriends.length == 0 && response.followers.length == 0 && response.existing == 0 && response.invite.length == 0) {

        $("#feed_container").append("<h4>¿Nuevo en Nest5?</h4>");
        $("#feed_container").append("<p>Nest5 funciona mejor con Amigos y Marcas. Con las Marcas podrás interactuar, sellar tu tarjeta en sus locales y ganar beneficios enamórandote de ellas. Con tu Amigos podrás compartir cosas que te gustan, saber que quieren y encontrar personas similares con las que podrías ¡salir de compras!</p>");
        $("#feed_container").append("<h4>Sigue Marcas</h4>");
        $("#feed_container").append("<p>Busca Marcas que te gusten, por categorías (p.ej. Restaurantes, Spa, etc), o por nombre y síguelas. Te mantendrás al tanto de lo que hacen por enamorarte. Una vez veas algo que te guste, puedes ir a sus locales, y usando tu nombre de usuario o la App Mívl de Nest5, sellar tu tarjeta para ganar beneficios.</p>");
        $("#feed_container").append("<h4>Sigue y haz que te sigan tus Amigos</h4>");
        $("#feed_container").append("<p>Con Amigos Nest5 es Social: No solo podrás hacer que las Marcas sepan que te gusta para enamorarte, sino que tus amigos podrán conocerte mejor, así como tú a ellos.</p>");
    }
}

function setMyFriends(response){
    console.log(response);
 var total = parseInt(response.totalFriends);
    var i = 0;
    var html = "";
    while(i < total){
         html+= '<div class="row-fluid">'
                +'<div class="span12">'
                +'<span class="thumbnail span2">'
                +'<a href="${createLink(controller:'user',action: 'profile')}/'+response.friend[i].id+'" title="'+response.friend[i].name+'" class="person">'
                +'<img src="'+response.friend[i].picture+'" style="min-width: 30px;">'
                +'</a>'
                +'</span>'
                +'<span class="span10">'
                +'<a href="${createLink(controller:'user',action: 'profile')}/'+response.friend[i].id+'" title="'+response.friend[i].name+'" class="person"><h5 style="color: #111; padding-top: 11px; ">'+response.friend[i].name+'</h5></a>'
                +'</span>'
                +'</div>'
              +'</div>'
        i++;
    }

    $("#list_of_friends").append(html);
}
function setMyChats(response){

    var total = parseInt(response.totalChats);
    var i = 0;
    var html = "";
    while(i < total){
        html+= '<div class="row-fluid">'
                +'<div class="span12">'
                +'<span class="thumbnail span2">'
                +'<a href="#" title="" class="chat" id="'+response.chats[i].id+'">'
                +'<img src="'+response.chats[i].picture+'" style="min-width: 30px;">'
                +'</a>'
                +'</span>'
                +'<span class="span10" style="padding-bottom: 0; margin-bottom: 0;">'
                +'<a href="#" title="" class="chat" id="'+response.chats[i].id+'"><h5 style="padding-top: 11px; padding-bottom:0; margin:0;">'+response.chats[i].name+'</h5></a>'
                +'</span>'
                +'<span class="span10" style="font-size: 0.75em; font-style: italic; padding-left: 10px; margin: 0;">'
                +'- '+response.chats[i].lastMessage+''
                +'</span>'
                +'</div>'
                +'</div>'
        i++;
    }

    $("#list_of_chats").append(html);
}

function setCompleteChat(id){
     console.log(id);
    //Aca abrir cada que le de a un chat ycargue toda la conversacion con esa empresa.
}
</script>
</body>
</html>