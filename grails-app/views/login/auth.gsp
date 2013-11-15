<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main_users_new"/>
    <title>Sky Forms</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

    <link rel="stylesheet" href="${resource(dir: 'sky_forms/css', file: 'sky-forms.css')}">

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'buttons/zocial/css',file: 'zocial.css')}" />
    <!--[if lt IE 9]>
			<link rel="stylesheet" href="${resource(dir: 'sky_forms/css', file: 'sky-forms-ie8.css')}">
		<![endif]-->

    <!--[if lt IE 10]>

			<script src="${resource(dir: 'sky_forms/js', file: 'jquery.placeholder.min.js')}"></script>
		<![endif]-->
    <!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="${resource(dir: 'sky_forms/js', file: 'sky-forms-ie8.js')}"></script>

		<![endif]-->
    %{--<link rel="stylesheet" href="${resource(dir: 'sky_forms/css', file: 'sky-forms-orange.css')}">--}%
</head>
<body>
<div class="body body-s">
   <div class="container-fluid">
       <div class="row-fluid">
           <div class="span4 offset4" >
               <form action='${postUrl}' method='POST' id='loginForm' class="sky-form">
                   <header>Inicia Sesión en tu Cuenta</header>

                   <fieldset>
                       <section>


                           <div class="row">

                               <div class="col col-8" style="margin-bottom: 10px; width: 100%;">
                                   <a href="${grailsApplication.config.grails.serverURL}/j_spring_security_facebook_redirect"style="font-size: 1.2em;" id="fbBtn"  class="zocial facebook">Login con Facebook</a>
                               </div>
                           </div>
                           <div class="row">
                               <label class="label col col-4">Usuario</label>
                               <div class="col col-8">
                                   <label class="input">
                                       <i class="icon-append icon-user login"></i>
                                       <input type="text" name="j_username" id="username">
                                   </label>
                               </div>
                           </div>
                       </section>

                       <section>
                           <div class="row">
                               <label class="label col col-4">Contraseña</label>
                               <div class="col col-8">
                                   <label class="input">
                                       <i class="icon-append icon-lock login"></i>
                                       <input type="password" name="j_password" id="password">
                                   </label>
                                   <div class="note"><a href="#">¿Olvidaste tu Contraseña?</a></div>
                               </div>
                           </div>
                       </section>

                       %{--<section>
                           <div class="row">
                               <div class="col col-4"></div>
                               <div class="col col-8">
                                   <label class="checkbox"><input type="checkbox"  name="checkbox-inline" checked><i></i>Mantenerme conectado</label>
                               </div>
                           </div>
                       </section>--}%
                   </fieldset>
                   <footer>
                       <button type="submit" class="loginButton button" style="font-size: 1.5em;">¡Conéctate!</button>
                       %{--<a href="#" class="button button-secondary">Register</a>--}%
                   </footer>
               </form>
           </div>
           <g:if test='${flash.message}'>
               <div class="span4 offset4">
                <h3 style="color: red;">${flash.message}</h3>
               </div>

           </g:if>
       </div>


   </div>
   </div>

</body>
</html>