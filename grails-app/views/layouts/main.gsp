<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="es"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="es"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="es"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="es"> <!--<![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="es" class="no-js"><!--<![endif]-->
<!--
/* @license
 * MyFonts Webfont Build ID 2300113, 2012-05-29T11:39:53-0400
 *
 * The fonts listed in this notice are subject to the End User License
 * Agreement(s) entered into by the website owner. All other parties are
 * explicitly restricted from using the Licensed Webfonts(s).
 *
 * You may obtain a valid license at the URLs below.
 *
 * Webfont: Fyra Numeric Circle Closed by Jonathan Hughes
 * URL: http://www.myfonts.com/fonts/jonathan-hughes/fyra/numeric-circle-closed/
 * Copyright: Copyright (c) 2009 by Jonathan Hughes. All rights reserved.
 * Licensed pageviews: unlimited
 *
 *
 * License: http://www.myfonts.com/viewlicense?type=web&buildid=2300113
 *
 * © 2012 Bitstream Inc
*/

-->
	<head>

	    <link href='http://fonts.googleapis.com/css?family=Terminal+Dosis|Varela' rel='stylesheet' type='text/css'>
	    <link rel="image_src" href="http://www.nest5.com/images/logo.png" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Nest5, Tu cupón de descuentos en las mejores Marcas"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'jquery-ui/css/ui-lightness', file: 'jquery-ui-1.10.3.custom.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir:'css',file:'twitter-auth.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'MyFontsWebfontsKit.css')}">
        <r:require modules="jquerybrowserfix"/>
    <meta name="robots" content="no-index,no-follow">
        <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <script src="${resource(dir: 'js/libs', file: 'modernizr-2.5.3-respond-1.1.0.min.js')}"></script>
        <!--[if gte IE 9]>
          <style type="text/css">
            .gradient {
               filter: none;
            }
          </style>
        <![endif]-->
		<g:layoutHead/>
        <r:layoutResources />
    <script type="text/javascript" src="${resource(dir: 'jquery-ui/js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>
	</head>
	<body>

    <!--[if lt IE 7]><p class=chromeframe>¡Lo Sentimos!, Nest5 aún no es tan maduro como para  soportar tu navegador.</em> <a href="http://browsehappy.com/">Actualízalo</a> o <a href="http://www.google.com/chromeframe/?redirect=true">Instala este complemento que te permitirá vivir La Experiencia,, se toma solo unos segundos y no tienes que salir del sitio.</a></p><![endif]-->
    <div id="header-container">
        <header class="wrapper clearfix" id="top">
           <a href="${createLink(uri: "/user/account")}"><img src="${resource(dir:'images', file: 'logo.png')}" id="logo" alt="" ></a>
            <h1 id="title">¡Descarga la App Móvil de Nest5 y compra en tus Tiendas y Marcas favoritas!</h1>
            %{--<nav>
                <ul>
                    <li><a href="/">Inicio</a></li>
                    <sec:ifNotLoggedIn><li><a href="/user/landing">Registro</a></li></sec:ifNotLoggedIn>
                    <sec:ifNotLoggedIn><li><a href="/user/account">Login</a></li></sec:ifNotLoggedIn>
                    <sec:ifLoggedIn><li><a href="/user/account">Mi Perfil</a></li></sec:ifLoggedIn>
                    <li><a href="http://blog.nest5.com" target="_blank">Blog</a></li>
                </ul>
            </nav>--}%
        </header>
    </div>
		<g:layoutBody/>
    <div id="footer-container">
        <footer class="wrapper">
            <h3>Nest5, una Historia de Amor entre Las Marcas y sus Clientes.</h3>
            <a href="/" class="">Nest5 - Página de Inicio</a>
            <a href="#" class="">¿Qué es Nest5?</a>
            <a href="#" class="">Condiciones de Uso de Nest5</a>
            <a href="${createLink([uri: '/privacy'])}" class="">Políticas de Privacidad en Nest5</a>
            <a href="http://www.qtagtech.com" target="_blank" class="">Equipo Nest5</a>
            <a href="http://www.qtagtech.com" target="_blank" class="">Trabajos en Nest5</a>
            <a href="mailto:soporte@nest5.com" class="">Contacta al Equipo Nest5</a>

        </footer>
        <nav>
            <ul class="social-links">
                <li><a href="http://www.pinterest.com/Nest5" target="_blank" ><img src="${resource(dir:'images', file: 'pinterest.png')}" alt="" ></a></li>
                <li><a href="http://www.facebook.com/Nest5Oficial" target="_blank" ><img src="${resource(dir:'images', file: 'facebook.png')}" alt="" ></a></li>
                <li><a href="http://www.twitter.com/Nest5_Oficial" target="_blank" ><img src="${resource(dir:'images', file: 'twitter.png')}" alt="" ></a></li>
                <li><a href="mailto:soporte@nest5.com" target="_blank" ><img src="${resource(dir:'images', file: 'phone.png')}" alt="" ></a></li>
            </ul>
        </nav>
    </div>

		<g:javascript library="application"/>
        <g:javascript library="plugins"/>
        <g:javascript library="script"  />

         <script>
            /*
             var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
             (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
             g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
             s.parentNode.insertBefore(g,s)}(document,'script'));
             */
        </script>
        <r:layoutResources />

        <!-- Start of HubSpot Logging Code  -->
    <script type="text/javascript" language="javascript">
        var hs_portalid=165853;
        var hs_salog_version = "2.00";
        var hs_ppa = "nest5.app12.hubspot.com";
        document.write(unescape("%3Cscript src='" + document.location.protocol + "//" + hs_ppa + "/salog.js.aspx' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <!-- End of HubSpot Logging Code -->

    <script>
        $(document).ready(function(){
            $("body").on('click','#uploadfile',function(e){
                e.preventDefault();
                $("#subBtn").attr('disabled','disabled');
                uploadFile();
            });
        });
        function uploadFile()
        {
            var formData = new FormData($('#file_upload_form')[0]);
            $.ajax({
                url: '${createLink(controller: 'imageuploader', action: 'iconUpload')}', //server script to process data
                type: 'POST',
                xhr: function() {  // custom xhr
                    myXhr = $.ajaxSettings.xhr();
                    if(myXhr.upload){ // check if upload property exists
                        // for handling the progress of the upload
                        myXhr.upload.addEventListener('progress',progressHandlingFunction, false);
                    }
                    return myXhr;
                },
                success: function(result)
                {
                    console.log(result);
                    //console.log($.ajaxSettings.xhr().upload);
                    //alert(result);
                    if(result.success)
                    {
                        $("#subBtn").removeAttr('disabled');
//                        $("#companyAvatar").html('<img src="'+result.ruta+'" style="max-width: 32px; height: auto;"/>');
                        //alert("Subida con éxito");
                        $("#iconid").val(result.fileId);
                        $("#filepreview").attr('src', result.ruta);
                    }


                },
                // Form data
                data: formData,
                //Options to tell JQuery not to process data or worry about content-type
                cache: false,
                contentType: false,
                processData: false
            });


        }
        function progressHandlingFunction(e){
            if(e.lengthComputable){
//            console.log("Porcentaje: "+e.loaded+"/"+e.total);
//                $("#progress").text(e.loaded + " / " e.total);
                var perc = (e.loaded / e.total) * 100;
            }
        }
    </script>
	</body>
</html>