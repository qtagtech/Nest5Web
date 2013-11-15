<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title>Estás A punto de ganar ${challenge.points} por pasar el reto "${challenge.name}"</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://www.nest5.com/user/qrchallenge" />




</head>
<body>

<sec:ifNotLoggedIn>
    <div id="fb-root"></div>
    <script>

        window.fbAsyncInit = function() {
            FB.init({
                appId      : '${grailsApplication.config.grails.plugins.springsecurity.facebook.appId}', // App ID
                channelUrl : "//${grailsApplication.config.grails.serverURL}/special/channel", // Channel File
                status     : true, // check login status
                cookie     : true, // enable cookies to allow the server to access the session
                xfbml      : true  // parse XFBML
            });

            // Additional initialization code here
            FB.Event.subscribe('auth.login', function(response) {
                window.location.reload();
            });



        };

        // Load the SDK Asynchronously
        (function(d){
            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement('script'); js.id = id; js.async = true;
            js.src = "//connect.facebook.net/es_LA/all.js";
            ref.parentNode.insertBefore(js, ref);
        }(document));

    </script>
    <h1>Estás a Punto de Ganarte +${challenge.points} puntos, solo debes inciar sesión o registrarte con el formulario de más abajo. ¿Qué Esperas?</h1>
    <div id='login'>
        <div class='inner'>
            <div class='fheader'><g:message code="springSecurity.login.header" default="Por favor haz Log in."/></div>

            <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div>
            </g:if>

            <form action='${grailsApplication.config.grails.serverURL}/j_spring_security_check' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <p>
                    <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                    <input type='text' class='text_' name='j_username' id='username'/>
                </p>

                <p>
                    <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                    <input type='password' class='text_' name='j_password' id='password'/>
                </p>

                <p id="remember_me_holder">
                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                    <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                </p>

                <p>
                    <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
                </p>
            </form>
            <div class="fb-login-button" data-scope="email,user_about_me,user_birthday,user_checkins,user_education_history,user_groups,user_hometown,user_interests,user_likes,user_location,user_questions,user_relationships,user_relationship_details,user_status,publish_checkins,publish_stream" >Login con facebook</div>
        </div>
    </div>
    <g:render template="subForm"/>
</sec:ifNotLoggedIn>



</body>
</html>