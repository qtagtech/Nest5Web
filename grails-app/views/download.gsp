<!DOCTYPE html>
<html lang="es">
<head>
    <title>¡Descarga Ya Nest5! - Beneficios en tu teléfono Móvil</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="Nest5 es una plataforma para ganar premios en tus marcas favoritas, compartiendo con estas y con tus amigos lo que te gusta comprar y visitar." />
    <meta name="keywords" content="red social compras, red social negocios, compartir gustos con amigos, compartir gustos,cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <meta property="og:url" content="http://nest5.com"/>
    <meta property="og:title" content="Nest5 - Premios por compartir con amigos y Marcas lo que te gusta comprar y visitar"/>
    <meta property="og:description" content="Nest5 es una plataforma para ganar premios en tus marcas favoritas, compartiendo con estas y con tus amigos lo que te gusta comprar y visitar."/>
    <meta property="og:image" content="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/1.jpg"/>
    <meta property="og:site_name" content="Nest5 - Premios por compartir con Marcas y Amigos lo que te gusta comprar y visitar"/>
    <meta property="og:type" content="website"/>
    <link rel="canonical" href="http://nest5.com" />

    <r:require modules="jquerybrowserfix"/>
    <r:layoutResources />
    <!-- Stylesheets -->

    <!-- BOOTSTRAP -->

    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'reset.css')}"> <!-- CSS reset -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'bootstrap.min.css')}"> <!-- Twitter Bootstrap -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'bootstrap-responsive.min.css')}"> <!-- Twitter Bootstrap (responsive) -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'prettyPhoto.css')}"> <!-- Lightbox gallery -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'style.css')}"> <!-- main stylesheet (change this to modify template) -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'style-responsive.css')}"> <!-- main stylesheet (responsive) -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'flexslider.css')}"> <!-- Flex slider -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css/color-themes', file:'orange.css')}"> <!-- color theme -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css/fonts', file:'passion.css')}"> <!-- font -->
    <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'font-awesome.min.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'buttons/zocial/css',file: 'zocial.css')}" />

    <!--[if IE 7]>
<link rel="stylesheet" href="${resource(dir: 'landing/css', file:'font-awesome-ie7.min.css')}">
<![endif]-->
    <!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <!--  IE8 fixes -->
    <!--[if IE 8]>
  <link rel="stylesheet" href="${resource(dir: 'landing/css', file:'ie8.css')}">
<![endif]-->


    <!-- Main THEMe -->


    <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/stylesheets', file: 'base.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/stylesheets', file: 'media.queries.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/stylesheets', file: 'tipsy.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/javascripts/fancybox', file: 'jquery.fancybox-1.3.4.css')}" />
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Nothing+You+Could+Do|Quicksand:400,700,300">



    <!-- Javascripts -->

    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'html5shiv.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.tipsy.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts/fancybox', file: 'jquery.fancybox-1.3.4.pack.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts/fancybox', file: 'jquery.easing-1.3.pack.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.touchSwipe.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.mobilemenu.js')}"></script>
   %{-- <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.infieldlabel.js')}"></script>--}%
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.echoslider.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'fluidapp.js')}"></script>

    <!-- Favicons -->
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon-57x57-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114-precomposed.png')}">
    <script src="${resource(dir: 'js/validate/', file: 'jquery.validate.min.js')}" type="text/javascript"></script>

</head>
<body>
<div id="fb-root"></div>
<sec:ifLoggedIn>
   <script>
       window.location = '${grailsApplication.config.grails.serverURL}${createLink(uri:'/user/feed')}';
   </script>
</sec:ifLoggedIn>
<script>
    window.fbAsyncInit = function() {
        // init the FB JS SDK
        console.log("ACA3");
        FB.init({
            appId      : '${grailsApplication.config.grails.plugins.springsecurity.facebook.appId}', // App ID
            channelUrl : "${grailsApplication.config.grails.serverURL}special/channel", // Channel File
            status     : true, // check login status
            cookie     : true, // enable cookies to allow the server to access the session
            xfbml      : true  // parse XFBML
        });
        console.log("ACA4");
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

        console.log("ACA");
        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement('script'); js.id = id; js.async = true;
        js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
        ref.parentNode.insertBefore(js, ref);
        //console.log("ACA2");
    }(document, /*debug*/ false));
     $(document).ready(function(){
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

                 $("#register-form").submit(function(e){e.preventDefault(); return false;});
                 // set &nbsp; as text for IE
                 label.removeClass('label-important');
                 label.addClass('label-success');
                 label.html('¡Muy Bien!');
             },
             errorElement: "span",
             errorClass: "label label-important",
             submitHandler: function(form){

                 spinner1.spin();
                 subBtn.attr('disabled','disabled');
                 subBtn.before(spinner1.el);
                 subBtn.fadeOut(500);
                 $.when(saveSimpleUser(form))
                         .then(function(response){
                             if(response.status == 0){

                                 $("#form-errors").append('<h3>Error: </h3><br>'+status.errors);
                                 $("#form-errors").removeClass("hidden");
                                 spinner1.stop();
                                subBtn.removeAttr('disabled');
                                 subBtn.fadeIn(500);

                             }
                             else{
                                 $("#register-space").html('<h2 style="color:#000;">Bienvenido a Nest5</h2><h4>Comienza ya tu experiencia de enamorarte de Marcas y compartir con tus amigos</h4><a href="${createLink(uri: '/user/feed')}" class="btn btn-primary btn-large">¡Haz Clic Aquí! »</a>');
                                 $("#register-space").css('text-align','center');
                             }

                         })
                         .fail(callError);
                 return false;
             }
         });
     });


</script>

<!-- Start Wrapper -->
<div id="page_wrapper">

<!-- Start Header -->
<header class="home">
    <div class="container">
        <!-- Start Social Icons -->
        %{--<aside>
            <ul class="social">
                <li class="facebook"><a href="http://www.facebook.com/Nest5Oficial">Facebook</a></li>
                <li class="twitter"><a href="http://www.twitter.com/Nest5_Oficial">Twitter</a></li>
                <li class="email"><a href="mailto://soporte@nest5.com" title="">Email</a></li>
                <li class="pinterest"><a href="" title="App Updates">RSS</a></li>
                <!-- More Social Icons:
					<li class="dribbble"><a href="">Dribbble</a></li>
					<li class="google"><a href="">Google</a></li>
					<li class="flickr"><a href="">Flickr</a></li>
					-->
            </ul>
        </aside>--}%
        <!-- End Social Icons -->

        <!-- Start Navigation -->
        <nav id="navigation" class="home">
            <ul>
                <li><a href="#home">Inicio</a></li>
                <li><a href="#features">¿Qué es Nest5?</a></li>
                <li><a href="#vive">Vive Nest5</a></li>
                <li><a href="#team">Los Responsables</a></li>
                <li style="margin-top: -10px;"><a href="${createLink(uri:'/')}"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/bola_80.png" alt="Nest5" /></a></li>
                <li><a href="#press">¿Qué dicen de Nest5?</a></li>
                <li><a href="#screenshots">Galería de Imágenes</a></li>
                <li><a href="#updates">Actualizaciones</a></li>
                <li> <a href="${createLink(uri: '/user/feed')}" id=""  class="zocial guest nest" style=" padding: 0; width: 51px; background: none; color:#f39c12; margin-top: -5px;"><strong>Tu Cuenta &raquo;</strong></a> </li>
            </ul>

</header>
<!-- End Header -->

<section class="container">

<!-- Start App Info -->
<div id="app_info">
    <div id="teaser" class="home">
    <div id="calltoaction-form" class="teaser-form home">
        <div id="form-title" class="form-title">
            <h3>¡Inscríbete Ya!</h3>
            <p style="font-family: 'Passion One', cursive!important; text-align: center; width: 90%; margin-top: 5px; color: #fff; line-height: 100%; padding-left: 10px; padding-bottom: 10px; font-size: 15px;" class="callus">Sigue Marcas y Amigos, cuéntales que te gusta comprar y así Enamórate de las que mejor te cuiden</p>
        </div>


        <ul class="nav nav-list">
            <li class="divider"></li>
        </ul>
                <a href="${grailsApplication.config.grails.serverURL}/j_spring_security_facebook_redirect"style="font-size: 1.5em; margin-top: 5px;" id="fbBtn"  class="zocial facebook">Login con Facebook</a>
        <ul class="nav nav-list">
            <li class="divider"></li>
        </ul>

        <div id="register-space">
            <form id="register-form" action="#" method="post">
                <div class="form-section">
                    <span id="error_name"></span><label for="">¿Cómo te Llamas?</label>
                    <input id="name" name="name" type="text" placeholder="Tu Nombre Completo">
                </div>
                <div class="form-section">
                    <span id="error_email"></span><label for="">¿A dónde te podemos escribir?</label>
                    <input id="email" name="email" type="text" placeholder="Dirección de Email" value="">
                </div>
                <div class="form-section">
                    <span id="error_password"></span> <label for="password">Asegura tu cuenta con una contraseña</label>
                    <input id="password" name="password" type="password">
                </div>
                <div class="form-section">
                    <span id="error_address"></span><label for="address"><abbr id="address_label" data-toggle="popover" data-placement="right" data-content="No es obligación, pero si la pones te enviaremos un detalle con amor por inscribirte en Nest5. Prometemos que se mantendrá privada. Visita nest5.com/privacy para saber más."title="" data-original-title="¿Para qué poner tu dirección?">¿Dónde quieres recibir tu Obsequio Nest5?</abbr></label>
                    <input id="address" name="address" type="text" placeholder="Dirección">
                </div>

                <div class="form-section">
                    <span id="error_city"></span><label for="city">¿En qué ciudad te encuentras?</label>
                    <select id="city" name="city">
                        <option value=""> - Escoge tu ciudad, (Pronto en más) - </option>
                        <option value="medellin">Medellín</option>
                        <option value="bogota">Bogotá</option>
                    </select>
                </div>
                <span id="error_agree"></span><label style="width: 84%; text-align: center">
                Acepto los <a href="http://nest5.com/termsandconditions" style="color: #000;" target="_blank">Términos y Condiciones</a>
            </label>
                <input type="checkbox" name="agree" id="agree"/>
                <br>
                <input id="registerBtn"  type="submit" name="_submit" class="btn" value="¡Empezar Ya!">
            </form>
        </div>

    </div>
    </div>
</div>
<!-- End App Info -->

<!-- Start Pages -->
<div id="pages">
<div class="top_shadow"></div>

<!-- Start Home -->
<div id="home" class="page">

    <div id="slider">

       %{-- <div class="slide" data-effect-out="slide">

            <div class="background iphone-black">
                <img src="${resource(dir: 'minisite/images/slider', file: 'iphonescreen1.png')}" alt="" />
            </div>

            <div class="foreground iphone-black">
                <img src="${resource(dir: 'minisite/images/slider', file: 'iphonescreen2.png')}" alt="" />
            </div>

        </div>--}%



        <div class="slide">

            <div class="background android">
                <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/cel2.jpg" alt="" />
            </div>

            <div class="foreground android">
                <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/cel.jpg" alt="" />
            </div>

        </div>


        <div class="slide">

            <div class="background ipad-white">
                <iframe src="http://player.vimeo.com/video/39363057?title=0&amp;byline=0&amp;portrait=0" width="230" height="345" frameborder="0"></iframe>
            </div>

        </div>

    </div>

</div>
<!-- End Home -->

<!-- Start Team -->
<div id="team" class="page">

    <h1>Conoce nuestro maravilloso Equipo</h1>
    <div  style="padding: 0; margin: 0; width: 100%; margin-top: 10px; margin-bottom: 25px;"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/equipogris.jpg" height="110" width="640"></div>
    <div class="about_us content_box">

            <h2>¿Por qué nosotros?</h2>
            <p>Nuestro equipo es multidisciplinario y cuenta con personas jóvenes y emprendedoras que gracias al talento y la entrega han logrado la experiencia en desarollo, mercadeo y servicio que miles de empresas amarían tener en su staff.</p>
            <p>Queremos que sepas quiénes están detrás de Nest5, así cuando tengas una duda seas empresa, cliente o curioso, puedas comunicarte con nosotros y seguro te atenderemos como te lo mereces. Nuestra filosofía empieza en "Casa" y por eso, ¡Queremos que te enamores de Nest5!</p>




    </div>

    <div class="team_members">
        <div class="person one_half">
            <img src="${resource(dir: 'images/team',file: 'juanda.png' )}" alt="" />
            <h3>Juanda</h3>
            <span>Head Programmer</span>
            <a href="http://nest5.com/team/juan.arroyave">http://nest5.com/team/juan.arroyave</a>
            <ul class="social">

                <li class="twitter"><a href="http://twitter.com/juanda6">Twitter</a></li>

            </ul>
        </div>
        <div class="person one_half column_last">
            <img src="${resource(dir: 'images/team',file: 'pablo.png' )}" alt="" />
            <h3>Pablo Andrés, ¿Si me entiende?</h3>
            <span>Head Tech-Support</span>
            <a href="http://nest5.com/team/pablo.quiroga">http://nest5.com/team/pablo.quiroga</a>
            <ul class="social">

                <li class="twitter"><a href="http://twitter.com/pablottz">Twitter</a></li>

            </ul>
        </div>
        <div class="person one_half">
            <img src="${resource(dir: 'images/team',file: 'julian.png' )}" alt="" />
            <h3>Julián</h3>
            <span>Head Marketing - Designer</span>
            <a href="http://nest5.com/team/julian.echeverri">http://nest5.com/team/julian.echeverri</a>
            <ul class="social">

                <li class="twitter"><a href="http://twitter.com/juleche">Twitter</a></li>

            </ul>
        </div>
        <div class="person one_half column_last">
            <img src="${resource(dir: 'images/team',file: 'cata.png' )}" alt="" />
            <h3>Cata</h3>
            <span>Marketing B2B</span>
            <a href="http://nest5.com/team/catalina.moreno">http://nest5.com/team/catalina.moreno</a>
            <ul class="social">

                <li class="twitter"><a href="http://twitter.com/cmorenoa">Twitter</a></li>

            </ul>
        </div>


        <div class="person one_half">
            <img src="${resource(dir: 'images/team',file: 'ana.png' )}" alt="" />
            <h3>Ana Morena</h3>
            <span>Marketing B2C - Community Manager</span>
            <a href="http://nest5.com/team/ana.escobar">http://nest5.com/team/ana.escobar</a>
            <ul class="social">

                <li class="twitter"><a href="http://twitter.com/laanamorena">Twitter</a></li>

            </ul>
        </div>
    </div>

</div>
<!-- End Team -->







<!-- Start Features -->
<div id="features" class="page">


   <h1>Nest5 - Una tarjeta de sellos virtual para volver tus compras sociales</h1>
    <span class="tagline" style=" font-style: italic;">Úsala 5 veces en cualquier Marca y gánate beneficios. Cuéntale a tus amigos que te gusta, y conoce sus preferencias.</span>
    <div  style="padding: 0; margin: 0; width: 100%; margin-top: 15px; margin-bottom: 25px;"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/quees.jpg"></div>

    <p>
        Nest5 es una tarjeta de sellos virtual que te permite obtener beneficios en las Marcas que verdaderamente te interesan.<br />
        Visita o Compra 5 veces en una Marca y obtén un beneficio, además para que sea más fácil, en cada tarjeta que empieces, desde Nest5 <strong>¡Te regalamos el primer sello!</strong>
        <br />
        Encontrarás Restaurantes, Moda, Artículos de Hogar, Salud, Belleza, Hoteles y muchos más, en los que usando tu celular, o diciendo tu nombre de usuario a la persona que te atienda, sellaras tu tarjeta en busca de premios y beneficios.


    </p>

    %{--<div class="buttons">
        --}%%{--<a href="#" class="large_button" id="apple">
            <span class="icon"></span>
            <em>Descárgala para tu</em> iPhone
        </a>--}%%{--
        <a href="https://play.google.com/store/apps/details?id=com.nest5.androidClient" class="large_button" id="android">
            <span class="icon"></span>
            <em>Descárgala para tu</em> Android
        </a>
    </div>--}%
    <div class="store-buttons">
        <a href="https://play.google.com/store/apps/details?id=com.nest5.androidClient" target="_blank" style="opacity: 0.3499999940395355;"><img src="/landing/images/googleplay.png" alt="GooglePlay"></a>
    </div>

    <div class="price centered"> <!-- Alignments options: right_align, left_align, centered -->
        <p>¡Totalmente GRATIS para siempre!</p>
    </div>



</div>
<!-- End Features -->

<!-- Start Screenshots -->
<div id="screenshots" class="page">

    <h1>Galería de Imágenes</h1>

    <p>Familiarízate con Nest5, estas son las diferentes formas en que la encontrarás, tanto para Web como para Android.</p>

    <div class="screenshot_grid content_box">



        <div class="one_third">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/1.jpg" class="fancybox" rel="group" title="Nest5, ¡Has Ganado Un Beneficio! - Android v.1.0.11"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/1.jpg" alt="Nest Android, pantalla de cupón o entrega de beneficio" /></a>
        </div>

        <div class="one_third column_last">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/2.jpg" class="fancybox" rel="group" title="El nuevo inicio Súper Avanzado de Nest5 en iPhone."><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/2.jpg" alt="El nuevo inicio Súper Avanzado de Nest5 en iPhone." /></a>
        </div>

        <div class="one_third">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/3.jpg" class="fancybox" rel="group" title="Interfaz de iPhone, Limpia, completa y sobretodo, útil"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/3.jpg" alt="Interfaz de iPhone, Limpia, completa y sobretodo, útil" /></a>
        </div>

        <div class="one_third">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/4.jpg" class="fancybox" rel="group" title="¡Nest5 en tu teléfono móvil, te enamora de las mejores Marcas GRATIS!"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/4.jpg" alt="¡Nest5 en tu teléfono móvil, te enamora de las mejores Marcas GRATIS!" /></a>
        </div>

        <div class="one_third column_last">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/5.jpg" class="fancybox" rel="group" title="¡Amamos nuestra Mascota!"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/5.jpg" alt="Mascota Nest5" /></a>
        </div>

        <div class="one_third">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/6.jpg" class="fancybox" rel="group" title="La Adorada Esposa de nuestra Mascota."><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/6.jpg" alt="Mascota Nest5 femenina" /></a>
        </div>

        <div class="one_third">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/7.jpg" class="fancybox" rel="group" title="Nest5 Pantalla de Inicio - Android v.1.011"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/7.jpg" alt="Nest5 Pantalla de Inicio Android v.1.011" /></a>
        </div>

        <div class="one_third">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/8.jpg" class="fancybox" rel="group" title="Nest5 por el Mundo."><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/8.jpg" alt="Nest5 muy pronto estará a nivel mundial" /></a>
        </div>

        <div class="one_third column_last">
            <a href="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/9.jpg" class="fancybox" rel="group" title="Nuestra Mascota, donde siempre debe estar, !En su casa Nest5!"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/galeria/1.jpg" alt="Logo Nest5 con cerdito mascota" /></a>
        </div>

    </div>

</div>
<!-- End Screenshots -->

<!-- Start Updates -->
<div id="updates" class="page">

    <h1>Updates</h1>

    <div class="releases">
        <article class="release">
            <h2>Version 1.0</h2>
            <span class="date">Publicada el 7 de Noviembre de 2012</span>
            <ul>

                <li class="new"><span><b>New</b></span> Lanzamiento App iOS (iPhone & iPod Touch).</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.11</h2>
            <span class="date">Publicada el 15 de Septiembre de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Solucionado error de última versión que no permitía abrir la App.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.10</h2>
            <span class="date">Publicada el 15 de Septiembre de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Optimización de código.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.9</h2>
            <span class="date">Publicada el 15 de Septiembre de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Optimización de código</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.8</h2>
            <span class="date">Publicada el 8 de Septiembre de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Cambios menores en interfaz gráfica.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.7</h2>
            <span class="date">Publicada el 5 de Agosto de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Mejoras en estabilidad</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.6</h2>
            <span class="date">Publicada el 30 de Agosto de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Arreglo de otros Bugs menores.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.5</h2>
            <span class="date">Publicada el 20 de Agosto de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Correcciones de Bugs.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.4</h2>
            <span class="date">Publicada el 11 de Agosto de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Mejoras en conexión de red con servidor.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.3</h2>
            <span class="date">Publicada el 9 de Agosto de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span>Solucionado problema de layout cuando se sella tarjeta o redime cupón.</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.3</h2>
            <span class="date">Publicada el 6 de Agosto de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Mejoras en estabilidad</li>

            </ul>
        </article>
        <article class="release">
            <h2>Version 1.0.2</h2>
            <span class="date">Publicada el 5 de Agosto de 2012</span>
            <ul>
                <li class="new"><span><b>New</b></span> Nueva interfaz de inscripción</li>
                <li class="fix"><span><b>Fix</b></span> Mejoras en estabilidad</li>

            </ul>
        </article>

        <article class="release">
            <h2>Version 1.0.1</h2>
            <span class="date">Publicada el 31 de Julio de 2012</span>
            <ul>

                <li class="fix"><span><b>Fix</b></span> Mejoras en estabilidad y conexión con plataforma online</li>
                <li class="new"><span><b>New</b></span> Posibilidad de Compartir contenidos de la App.</li>
                <li class="fix"><span><b>Fix</b></span> Mejoras a la Interfaz Gráfica.</li>
            </ul>
        </article>

        <article class="release">
            <h2>Version 1.0</h2>
            <span class="date">Publicada el 29 de Julio de 2012</span>
            <ul>
                <li class="new"><span><b>New</b></span> Versión Inicial Para Android.</li>
            </ul>
        </article>
    </div>

</div>
<!-- End Updates -->

<!-- Start Press -->
<div id="press" class="page">

    <h1>¡Como nos ven los Medios!</h1>

    <div class="press_mentions">
        <ul>

            <li class="media">
                <div class="logo">
                    <img src="${resource(dir: 'images/press',file: 'soydigital.png' )}" alt="" />
                </div>
                <div class="details">
                    <p>"Nest5, una App Celestina entre Marcas y Usuarios"</p>
                    <address>
                        Soy Digital
                        <a href="http://yosoydigital.tumblr.com/post/31994855352/nest5" target="_blank">http://yosoydigital.tumblr.com/post/31994855352/nest5</a>
                    </address>
                </div>
            </li>
            <li class="media">
                <div class="logo">
                    <img src="${resource(dir: 'images/press',file: 'espacio.jpg' )}" alt="" />
                </div>
                <div class="details">
                    <p>"Tenemos el placer de presentarles al equipo de Nest5 que ahora trabaja desde ESPACIO."</p>
                    <address>
                        ESPACIO
                        <a href="https://www.facebook.com/photo.php?fbid=578947675466253&set=a.486081004752921.121154.485660451461643&type=1&relevant_count=1" target="_blank">https://www.facebook.com/photo.php?fbid=578947675466253&set=a.486081004752921.121154.485660451461643&type=1&relevant_count=1</a>
                    </address>
                </div>
            </li>
            <li class="media">
                <div class="logo">
                    <img src="${resource(dir: 'images/press',file: 'canalclick.jpg' )}" alt="" />
                </div>
                <div class="details">
                    <p>Entrevista equipo Nest5, Programa Clickeros Canal Click. Corporación Canal Universitario de Antioquia
                    Director: Andrés Gómez U / Productora: María Alejandra López
                   <a href="http://www.canalclick.tv" target="_blank">www.canalclick.tv</a></p>
                    <address>
                        Video - Canal Click
                        <a href="http://www.youtube.com/watch?v=P5YH8ezQHGk" target="_blank">http://www.youtube.com/watch?v=P5YH8ezQHGk</a>
                    </address>
                </div>
            </li>



        </ul>
    </div>

</div>
<!-- End Press -->

<!-- Start Start Contact -->
<div id="vive" class="page">
<div class="tabs">
    <ul class="nav">
        <li><a href="javascript:;" class="tab_1" id="user" style="font-family: 'Passion One', cursive!important;">Usuarios</a></li>
        <li><a href="javascript:;" class="tab_2" style="font-family: 'Passion One', cursive!important;">Empresas</a></li>

    </ul>
    <div id="tab_1" class="pane">
        <h1>¡Obtén todo esto <strong>GRATIS</strong> con Nest5!</h1>
        <div  style="padding: 0; margin: 0; width: 100%; margin-top: 20px; margin-bottom: 20px;"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/usuarios.jpg"></div>
        <div class="feature_list content_box">
            <div class="one_half">
                <h2 class="icon">Beneficios todo el tiempo</h2>
                <p>Compra 5 veces en cualquiera de las Marcas Nest5, sella tu tarjeta con tu smartphone y la App Móvil Nest5, o di tu email en el punto de venta y obtén un regalo o un beneficio. Por inscribirte, ¡Nest5 te regala el primer sello!</p>
            </div>

            <div class="one_half column_last">
                <h2 class="icon talk">Habla con tus Marcas favoritas.</h2>
                <p>¿Te gusta demasiado un producto o servicio de alguna Marca?<br />¿Quieres hacer recomendaciones para mejorar algo que no te pareció tan bueno?, Hazlo todo comunicándote directamente por Nest5, las Marcas lo apreciarán y tomarán las acciones necesarias para que sigas enamorado de ellas.</p>
            </div>

            <div class="one_half">
                <h2 class="icon interest">¡Interésate por cosas nuevas y excitantes!</h2>
                <p>Nest5 cuenta con uno de los sistemas de recomendación más avanzados que existen. De acuerdo a tus gustos, acciones y muchos otros comportamientos, La App te recomienda lugares que seguro te gustan y puede no conozcas. Así tendrás cada vez más opciones para enamorarte y comprar u obtener lo que realmente te interesa.</p>
            </div>

            <div class="one_half column_last">
                <h2 class="icon alert">Mantente alerta</h2>
                <p>Como cuando un GPS te indica tu posición actual, Nest5 te dice a tu alrededor que Marcas hay con algo para ti. No importa si estás en casa, una fiesta o de viaje, sabrás siempre al rededor que Marcas tratan de enamorarte y lo más importante, con cosas que realmente te interesan.</p>
            </div>

            <div class="one_half">
                <h2 class="icon learn">Aprende a vivir con la filosofía Nest5</h2>
                <p>Con nuestras estadísticas personales podrás saber cosas que nunca creías posible, como por ejemplo: Qué es lo que más consumes ¿Tal vez ropa? o ¿Comida en la calle?, pues ya no adivines, Nest5 te lo dice. Además podrás analizar de forma sencilla que otras cosas hacer, comprar y obtener para cambiar tu estilo de vida y ser Nest5.</p>
            </div>

            <div class="one_half column_last">
                <h2 class="icon listen">Te Escuchamos</h2>
                <p>En Nest5 todo el tiempo queremos escuchar a nuestros usuarios. Si crees que hay alguna Marca o producto que debería estar en nuestra plataforma, háznoslo saber, seguro te complaceremos. Si tienes algo que decirnos (Así sea personal) ¡Perfecto! Amamos hablar contigo</p>
            </div>
        </div>
    </div>
    <div id="tab_2" class="pane">
        <h1>¡Consigue la felicidad de tus Clientes, enamóralos y mejora tu empresa!</h1>
        <div  style="padding: 0; margin: 0; width: 100%; margin-top: 20px; margin-bottom: 20px;"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/home/empresas.jpg"></div>
        <div class="feature_list content_box">
            <div class="one_half">
                <h2 class="icon_company">Aumenta el número de Clientes</h2>
                <p>¿Te preguntas cómo? ¡Fácil! Definiremos unos beneficios muy atractivos para tus clientes, de esta manera garantizamos un número significativo de interacciones y por tanto, de compradores; éstos estarán enamorados de tu marca y así le contarán a sus amigos, creando una ola de buenas referencias, descargas e interacciones :)
                </p>
            </div>

            <div class="one_half column_last">
                <h2 class="icon_company sales">Aumenta tus Ventas.</h2>
                <p>Concretar una venta es importante, pero lograr la fidelidad de los clientes es vital. Con Nest5 apuntamos a ambas partes, la venta es el medio para alcanzar el objetivo final: la fidelización..</p>
            </div>

            <div class="one_half">
                <h2 class="icon_company communicate">Comúnicate en tiempo real con tus usuarios</h2>
                <p>El éxito de una relación está en la comunicación, Nest5 es la herramienta perfecta para transmitir mensajes a tus clientes de una manera segmentada, amistosa y no invasiva.</p>
            </div>

            <div class="one_half column_last">
                <h2 class="icon_company know">Conoce tu negocio al máximo nivel de detalle</h2>
                <p>Quién tiene la información, tiene el poder. Gracias a Nest5, la exhaustiva minería de datos realizada y la fácil interpretación entregada a las marcas,  podrás conocer tus clientes de una manera completa, permitiéndote redireccionar hacia el  éxito tus estrategias de mercadeo.
                </p>
            </div>

            <div class="one_half">
                <h2 class="icon_company marketing">Estrategia de mercadeo innovadora.</h2>
                <p>Nest5 es una solución estratégica de mercadeo que requiere mucho ingenio y sólo un poco de  presupuesto, capital humano y conocimiento. De una fácil manera podrás generar una efectiva estrategia que llegará al corazón de tus clientes.</p>
            </div>

            <div class="one_half column_last">
                <h2 class="icon_company satisfaction">&nbsp;</h2>
                <p>Conocemos nuestro producto y su efectividad por eso queremos hacer mucho énfasis en que la satisfacción está 100% GARANTIZADA.  ¿Ya mencionamos que aseguramos la satisfacción por el uso de la app? Déjanos recalcarlo !Vas a quedar feliz!
                </p>
            </div>
        </div>
    </div>

</div>
    %{--<div class="tabs">
        <ul class="nav">
            <li><a href="javascript:;" class="tab_3">Usuarios</a></li>
            <li><a href="javascript:;" class="tab_4">Empresas</a></li>

        </ul>
        <div id="tab_3" class="pane">
            <h1>Inscríbete, no importa si no tienes SmartPhone, cada vez son mas las Marcas en las que solo con tu email podras llenar tus tarjetas.</h1>

            <p>El proceso es muy sencillo, puedes llenar el formulario o inscribirte con facebook, twitter o tu cuenta de Google, una vez lo hagas ingresas a tu panel de control y comienzas a sellar tus tarjetas.</p>

            <div id="contact_form">

                <div class="validation">
                    <p>¡Oops!Por favor corrige los campos resaltados.</p>
                </div>

                <div class="success">
                    <p>¡Gracias! Ya estás listo apra iniciar con Nest5.</p>
                </div>
                <div class="fb-login-button" data-scope="email, user_about_me, user_birthday, user_checkins, user_education_history, user_groups, user_hometown, user_interests, user_likes, user_location, user_questions, user_relationships, user_relationship_details, user_status, publish_checkins, publish_stream" data-show-faces="false">Login with Facebook</div>

                --}%%{--<facebookAuth:connect permissions="email,user_about_me,user_birthday,user_checkins,user_education_history,user_groups,user_hometown,user_interests,user_likes,user_location,user_questions,user_relationships,user_relationship_details,user_status,publish_checkins,publish_stream"/>--}%%{--
                --}%%{-- <oauth:connect provider="twitter" id="twitter-connect-link">Twitter</oauth:connect>
              <oauth:connect provider="google" id="google-connect-link">Google</oauth:connect>--}%%{--
                <form style="margin-top: 10px;" action="javascript:;" method="post">
                    <div class="row">
                        <p class="left">
                        <h1>O llena tus datos en el siguiente formulario:</h1>
                    </p>

                    </div>
                    <div class="row">
                        <p class="left">
                            <label for="name">Nombre*</label>
                            <input type="text" name="name" id="name" value="" />
                        </p>

                    </div>

                    <div class="row">
                        <p class="left">
                            <label for="email">Email*</label>
                            <input type="text" name="email" id="email" value="" />
                        </p>
                        <p class="right">
                            <label for="email_verification">Repite tu Email*</label>
                            <input type="text" name="email_verification" id="email_verification" value="" />
                        </p>
                    </div>

                    <div class="row">
                        <p class="left">
                            <label for="password">Contraseña*</label>
                            <input type="text" name="password" id="password" value="" />
                        </p>

                    </div>

                    <div class="row">
                        <p class="left">

                            <g:select name="date.day" from="${1..31}" id="dayDate" value="${day}"
                                      noSelection="['':'-Día de Cumpleaños-']"/>
                            <g:select name="date.month" from="${1..12}" id="monthDate" value="${month}"
                                      noSelection="['':'-Mes-']"/>
                            <g:select name="date.year" from="${1948..1997}" id="yearDate" value="${year}"
                                      noSelection="['':'-Año-']"/>
                        </p>
                        <p class="right">

                            <g:select name="gender" id="gender" from="${['Femenino','Masculino','Otro']}" value="${gender}"
                                      noSelection="['':'-Selecciona tu Sexo-']"/>
                        </p>
                    </div>




                    <input type="submit" id="sendBtn" disabled="disabled" class="button white big" value="¡Comienza Ya!" />
                </form>

            </div>
        </div>
        <div id="tab_4" class="pane">

            <h1>En menos de 5 minutos tendrás una estrategia de mercadeo y fidelización en el celular de tus usuarios.</h1>

            <div class="row center">
                <a href="${createLink(uri: 'company/join')}" class="large_button_long" id="windows">
                    <span class="icon"></span>
                    <span class="text">¡Comienza Ya!</span>
                </a>

            </div>

            <h2>O contacta a <a href="${createLink(uri: 'team/catalina.moreno')}">Cata</a>, nuestra manager quién ademas de darte más información, te guiará y dará tips de como sacarle más provecho a Nest5.</h2>


            <form style="margin-top: 10px;" action="javascript:;" method="post">
                <div class="row">
                    <p class="left">
                    <h3>Pon tu correo o ve al <a href="${createLink(uri: 'team/catalina.moreno')}">perfil de Cata</a>  y en la sección contacto escríbele y cuéntale tus necesidades específicas.</h3>
                </p>

                </div>



                <div class="row">
                    <p class="left">
                        <label for="email-company">Escribe Aquí tu email*</label>
                        <input type="text" name="email-company" id="email-company" value="" />
                    </p>

                </div>
                <input type="submit" id="sendBtnCompany" class="button white big" value="¡Contáctame!" />
            </form>


        </div>
    </div>--}%



</div>
<!-- End Start Contact -->



<div class="bottom_shadow"></div>
</div>
<!-- End Pages -->

<div class="clear"></div>
</section>

<!-- Start Footer -->
<footer class="container">
    <p>Nest5 &copy; 2012. Todos los derechos reservados.</p>
</footer>
<!-- End Footer -->

</div>
<!-- End Wrapper -->

<script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'landing/js',file: 'jquery.prettyPhoto.js')}" type="text/javascript"></script><!-- Lightbox -->
<script src="${resource(dir: 'landing/js',file: 'jquery.flexslider.js')}" type="text/javascript"></script><!-- Slider -->
<script src="${resource(dir: 'landing/js',file: 'jquery.form.js')}" type="text/javascript"></script><!-- Ajax form handler -->
<script src="${resource(dir: 'landing/js',file: 'jquery.validate.js')}" type="text/javascript"></script><!-- Ajax form validator -->
%{--<script src="js/jquery.tweet.js" type="text/javascript"></script><!-- Twitter feed -->--}%
<script src="${resource(dir: 'landing/js',file: 'jquery.html5-placeholder-shim.js')}" type="text/javascript"></script><!-- placeholder fix for IE -->
<script src="${resource(dir: 'landing/js',file: 'jquery.quovolver.js')}" type="text/javascript"></script><!-- Twitter feed -->
<script src="${resource(dir: 'landing/js',file: 'common.js?v5')}" type="text/javascript"></script><!-- Custom JS effects, tweaks and inits -->
<script src="${resource(dir:'feed/js', file: 'spin.min.js')}"></script>
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

<r:script>
//var nameOk= false;
var emailOk= false;
/*var dateOk = false;
var genderOk = false;
var passOk = false;
var emailCompanyOk = false;

$("#name").unbind('keyup')
            .bind('keyup',function(){
            if($(this).val().length < 3)
            {
                nameOk = false;
                if(nameOk && emailOk && dateOk && genderOk && passOk)
                            {
                              $("#sendBtn").removeAttr("disabled");
                              $("#sendBtn").val("¡Comienza Ya! &#x2192;");
                            }
                            else
                            {
                               $("#sendBtn").attr("disabled","disabled");
                               $("#sendBtn").val("Llena todo para continuar");

                            }
            }
            else
            {
                nameOk = true;
            }
            if(nameOk && emailOk && dateOk && genderOk && passOk)
                            {
                              $("#sendBtn").removeAttr("disabled");
                              $("#sendBtn").val("¡Comienza Ya! &#x2192;");
                            }
                            else
                            {
                               $("#sendBtn").attr("disabled","disabled");
                               $("#sendBtn").val("Llena todo para continuar");
                            }

            });*/
    $("#email")
    .unbind('keyup')
            .bind('keyup', function(e){
                if ($(this).val().length < 3 && e.keyCode != 13)
                 {
                    /*emailOk = false;
                    if(nameOk && emailOk && dateOk && genderOk && passOk)
                            {
                              $("#sendBtn").removeAttr("disabled");
                              $("#sendBtn").val("¡Comienza Ya! &#x2192;");
                            }
                            else
                            {
                               $("#sendBtn").attr("disabled","disabled");
                               $("#sendBtn").val("Llena todo para continuar");

                            }*/
                  return;
                 }
                var val = $(this).val();
                /*if(val != $("#email_verification").val())
                {
                    emailOk = false;
                }
                else
                {
                    emailOk = true;
                }*/
                $.when(checkUser(val))
                        .then(function(response){
                        if(response.status == 1){
                            //usuario disponible
                            console.log("disponible");
//                            emailOk = true;
                            $("#email").css({
                                "backgroundColor": "#000"
                            });
                            subBtn.removeAttr("disabled");
                        }
                        else if (response.status == 2)
                        {
//                            emailOk = false;
                            console.log("error");
                            subBtn.removeAttr("disabled");
                            //error, no llegó usuario  a controlador
                        }
                        else
                        {
//                            emailOk = false;
                            console.log("no disponible");
                            subBtn.attr('disabled','disabled');
                            //usuario no disponible
                            $("#email").css({
                                "backgroundColor": "#ff0000"
                            });

                        }

                            /*if(nameOk && emailOk && dateOk && genderOk && passOk)
                            {
                              $("#sendBtn").removeAttr("disabled");
                              $("#sendBtn").val("¡Comienza Ya! &#x2192;");
                            }
                            else
                            {
                               $("#sendBtn").attr("disabled","disabled");
                               $("#sendBtn").val("Llena todo para continuar");
                            }*/

                        })
                        .fail(callError);
                        /*if(nameOk && emailOk && dateOk && genderOk && passOk)
                            {
                              $("#sendBtn").removeAttr("disabled");
                              $("#sendBtn").val("¡Comienza Ya! &#x2192;");
                            }
                            else
                            {
                               $("#sendBtn").attr("disabled","disabled");
                               $("#sendBtn").val("Llena todo para continuar");
                            }*/


            });
            %{--$("#email_verification").unbind('keyup')--}%
                                    %{--.bind('keyup',function(){--}%
                                        %{--if($(this).val() != $("#email").val())--}%
                                        %{--{--}%
                                           %{--emailOk = false;--}%
                                        %{--}--}%
                                        %{--else--}%
                                        %{--{   if($("#email").val().length > 3)--}%
                                        %{--{--}%
                                          %{--emailOk = true;--}%
                                        %{--}--}%
                                        %{--else--}%
                                        %{--{--}%
                                           %{--emailOk = false;--}%
                                        %{--}--}%

                                        %{--}--}%
                                        %{--if(nameOk && emailOk && dateOk && genderOk && passOk)--}%
                                        %{--{--}%
                                          %{--$("#sendBtn").removeAttr("disabled");--}%
                                          %{--$("#sendBtn").val("¡Comienza Ya! &#x2192;");--}%
                                        %{--}--}%
                                        %{--else--}%
                                        %{--{--}%
                                           %{--$("#sendBtn").attr("disabled","disabled");--}%
                                           %{--$("#sendBtn").val("Llena todo para continuar");--}%

                                        %{--}--}%
                                    %{--});--}%
   %{--var pass = "";--}%
            %{--$("#password")--}%
    %{--.unbind('keyup')--}%
            %{--.bind('keyup', function(e){--}%

               %{--//console.log(e);--}%

               %{--if(e.keyCode > 47 && e.keyCode < 91 )   //es alfanumérico--}%
               %{--{--}%
                %{--if(e.shiftKey)--}%
                %{--{--}%
                  %{--pass += String.fromCharCode(e.keyCode);--}%
                %{--}--}%
                %{--else--}%
                %{--{--}%
                  %{--pass += (String.fromCharCode(e.keyCode)).toLowerCase();--}%
                %{--}--}%

               %{--}--}%
               %{--else--}%
               %{--{--}%
                   %{--if(e.keyCode == 8)--}%
                   %{--{--}%
                    %{--var length = pass.length;--}%
                    %{--pass = pass.substring(0,length - 1);--}%
                    %{--if($(this).val().length == 0)--}%
                    %{--{--}%
                        %{--pass = "";--}%
                    %{--}--}%
                   %{--}--}%
                   %{--if(e.keyCode == 46)--}%
                   %{--{--}%
                       %{--$(this).val("");--}%
                       %{--pass = "";--}%

                   %{--}--}%
               %{--}--}%

               %{--var length = $(this).val().length;--}%
               %{--var newVal = "";--}%
               %{--for(var i = 0; i < length; i++)--}%
               %{--{--}%
                %{--newVal += "*";--}%
               %{--}--}%
               %{--$(this).val(newVal);--}%
                %{--//var val = $(this).val();--}%

               %{--//console.log(pass);--}%
               %{--if(pass.length > 3)--}%
               %{--{--}%
                %{--passOk = true;--}%
               %{--}--}%
               %{--else--}%
               %{--{--}%
                 %{--passOk = false;--}%
               %{--}--}%
               %{--if(nameOk && emailOk && dateOk && genderOk && passOk)--}%
                            %{--{--}%
                              %{--$("#sendBtn").removeAttr("disabled");--}%
                              %{--$("#sendBtn").val("¡Comienza Ya! &#x2192;");--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                               %{--$("#sendBtn").attr("disabled","disabled");--}%
                               %{--$("#sendBtn").val("Llena todo para continuar");--}%
                            %{--}--}%

            %{--});--}%

            %{--$("#dayDate").unbind('change')--}%
                        %{--.bind('change',function(){--}%
                            %{--if( $("#dayDate").val() != "-Día de Cumpleaños-" && $("#dayMonth").val() != "-Mes-" && $("#dayYear").val()!= "-Año-")--}%
                            %{--{--}%
                              %{--dateOk = true;--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                                %{--dateOk = false;--}%
                            %{--}--}%
                            %{--if(nameOk && emailOk && dateOk && genderOk && passOk)--}%
                            %{--{--}%
                              %{--$("#sendBtn").removeAttr("disabled");--}%
                              %{--$("#sendBtn").val("¡Comienza Ya! &#x2192;");--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                               %{--$("#sendBtn").attr("disabled","disabled");--}%
                               %{--$("#sendBtn").val("Llena todo para continuar");--}%
                            %{--}--}%
                        %{--});--}%

            %{--$("#monthDate").unbind('change')--}%
                        %{--.bind('change',function(){--}%
                            %{--if($("#dayDate").val()!= "-Día de Cumpleaños-" && $("#dayMonth").val()!= "-Mes-" && $("#dayYear").val()!= "-Año-")--}%
                            %{--{--}%
                              %{--dateOk = true ;--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                                %{--dateOk = false;--}%
                            %{--}--}%
                            %{--if(nameOk && emailOk && dateOk && genderOk && passOk)--}%
                            %{--{--}%
                              %{--$("#sendBtn").removeAttr("disabled");--}%
                              %{--$("#sendBtn").val("¡Comienza Ya! &#x2192;");--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                               %{--$("#sendBtn").attr("disabled","disabled");--}%
                               %{--$("#sendBtn").val("Llena todo para continuar");--}%
                            %{--}--}%
                        %{--});--}%
            %{--$("#yearDate").unbind('change')--}%
                        %{--.bind('change',function(){--}%
                            %{--if($("#dayDate").val()!= "-Día de Cumpleaños-" && $("#dayMonth").val()!= "-Mes-" && $("#dayYear").val()!= "-Año-")--}%
                            %{--{--}%
                              %{--dateOk = true ;--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                                %{--dateOk = false;--}%
                            %{--}--}%
                            %{--if(nameOk && emailOk && dateOk && genderOk && passOk)--}%
                            %{--{--}%
                              %{--$("#sendBtn").removeAttr("disabled");--}%
                              %{--$("#sendBtn").val("¡Comienza Ya! &#x2192;");--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                               %{--$("#sendBtn").attr("disabled","disabled");--}%
                               %{--$("#sendBtn").val("Llena todo para continuar");--}%
                            %{--}--}%
                        %{--});--}%

            %{--$("#gender").unbind('change')--}%
                        %{--.bind('change',function(){--}%
                            %{--if($(this).val()!= "-Selecciona tu Sexo-")--}%
                            %{--{--}%
                              %{--genderOk = true ;--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                                %{--genderOk = false;--}%
                            %{--}--}%
                            %{--if(nameOk && emailOk && dateOk && genderOk && passOk)--}%
                            %{--{--}%
                              %{--$("#sendBtn").removeAttr("disabled");--}%
                              %{--$("#sendBtn").val("¡Comienza Ya! &#x2192;");--}%
                            %{--}--}%
                            %{--else--}%
                            %{--{--}%
                               %{--$("#sendBtn").attr("disabled","disabled");--}%
                               %{--$("#sendBtn").val("Llena todo para continuar");--}%

                            %{--}--}%
                        %{--});--}%

            %{--$("#sendBtn")--}%
                %{--.unbind('click')--}%
                %{--.bind('click',function(e){--}%
                %{--e.preventDefault();--}%
                %{--var name = $("#name").val();--}%
                %{--var email = $("#email").val();--}%
                %{--var email2 = $("#email_verification").val();--}%
                %{--var date = $("#monthDate").val() + "/" + $("#dayDate").val() + "/" + $("#yearDate").val();--}%
                %{--var gender = $("#gender").val();--}%
                %{--var password = $("#password").val();--}%
                %{--if(email != email2)--}%
                %{--{--}%
                    %{--$("#email").css({--}%
                    %{--"backgroundColor": "#ff0000"--}%
                    %{--});--}%
                    %{--$("#email_verification").css({--}%
                    %{--"backgroundColor": "#ff0000"--}%
                    %{--});--}%
                    %{--emailOk = false;--}%

                %{--}--}%
                %{--else--}%
                %{--{--}%
                  %{--$("#email").css({--}%
                    %{--"backgroundColor": "#ffffff"--}%
                    %{--});--}%
                   %{--$("#email_verification").css({--}%
                    %{--"backgroundColor": "#ffffff"--}%
                    %{--});--}%
                    %{--emailOk = true;--}%
                %{--}--}%
                %{--if(name.length < 3)--}%
                %{--{--}%
                  %{--$("#name").css({--}%
                    %{--"backgroundColor": "#ff0000"--}%
                    %{--});--}%
                    %{--nameOk = false;--}%
                %{--}--}%
                %{--else--}%
                %{--{--}%
                  %{--$("#name").css({--}%
                    %{--"backgroundColor": "#ffffff"--}%
                    %{--});--}%
                    %{--nameOk = true;--}%
                %{--}--}%

                %{--if(nameOk && emailOk && dateOk && passOk && genderOk)--}%
                %{--{--}%
                    %{--var button = $("#sendBtn");--}%
                    %{--var parent = button.parent();--}%
                    %{--var previous = parent.html();--}%
                    %{--parent.html("Enviando...");--}%


                   %{--$.when(createUser(name,email,date,password,gender))--}%
                        %{--.then(function(response){--}%
                           %{--console.log(response);--}%
                           %{--if(response.errors == "0")--}%
                           %{--{--}%
                           %{--var newHtml = '<div clas="row"><p style="width: 100%;"><a href="${createLink(uri: "/user/account")}" style="margin-top: 30px; width: 100%;" class="button orange">¡Haz Clic Aquí Para Iniciar!</a></p><div class="price"><p>¡Ya estás listo en Nest5, ve a tu Panel de Control y enamórate de tus Marcas favoritas.!</p></div></div>';--}%
                           %{--parent.html(newHtml);--}%
                           %{--}--}%
                           %{--else--}%
                           %{--{--}%
                               %{--parent.html(previous);--}%
                           %{--}--}%

                        %{--})--}%
                        %{--.fail(callError);--}%
                %{--}--}%

                %{--});--}%








            $("#sendBtnCompany")
                .unbind('click')
                .bind('click',function(e){
                e.preventDefault();

                var email = $("#email-company").val();





                if(email.length > 3)
                {
                    var button = $("#sendBtnCompany");
                    var parent = button.parent();
                    var previous = parent.html();
                    parent.html("Enviando...");


                   $.when(contactCata(email))
                        .then(function(response){
                           console.log(response);
                           if(response.errors == "0")
                           {
                           var newHtml = '<div clas="row"><div class="price"><p>¡Gracias! <br />Muy pronto Cata, Manager de las compañias en Nest5, (Conócela haciendo clic en su nombre arriba) se comunicará contigo.</p></div></div>';
                           parent.html(newHtml);
                           }
                           else
                           {
                               parent.html(previous);
                           }

                        })
                        .fail(callError);
                }

                });


    function checkUser(user)
    {
        var url = "${createLink(controller: 'user', action: 'checkUserName')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {username : user },
            dataType: "json"
        }).promise();
    }

    function createUser(name,email,date,password,genero)
    {
        var url = "${createLink(controller: 'user', action: 'create')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {email : email,
                    name: name,
                    date: date,
                    password: password,
                    genero: genero,
                    terms: 'accepted'},
            dataType: "json"
        }).promise();
    }

    function contactCata(email){
        var url = "${createLink(controller: 'special', action: 'contact')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {email : email},
            dataType: "json"
        }).promise();
    }

    function callError(data){
    console.log("Error");
    console.log(data);
    }

    <!-- UserVoice JavaScript SDK (only needed once on a page) -->

</r:script>
<script>(function(){var uv=document.createElement('script');uv.type='text/javascript';uv.async=true;uv.src='//widget.uservoice.com/gICy2MZiAo4zjZQwfQ.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(uv,s)})()</script>

<!-- A tab to launch the Classic Widget -->
<script>
    var spinner1,target,subBtn;
    $(document).ready(function(){

        subBtn = $("#registerBtn");
        $("#address_label").popover();

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


        spinner1 = new Spinner(opts);
        $(spinner1.el).css("marginLeft", "50%");


    });
    UserVoice = window.UserVoice || [];
    UserVoice.push(['showTab', 'classic_widget', {
        mode: 'full',
        primary_color: '#f68b34',
        link_color: '#007dbf',
        default_mode: 'support',
        forum_id: 200770,
        support_tab_name: 'Soporte',
        feedback_tab_name: '¡Danos Sugerencias!',
        tab_label: 'Soporte y Comentarios',
        tab_color: '#f68b34',
        tab_position: 'middle-right',
        tab_inverted: false
    }]);
</script>
<r:layoutResources />

</body>
</html>