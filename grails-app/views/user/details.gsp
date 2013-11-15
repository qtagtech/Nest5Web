<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs" >
<head>
    <meta name="layout" content="main_users_new"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Nest5 - ${userInstance?.username} Tu Perfil</title>

    <!-- Free google font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300,600' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css/form', file: 'form-style.css')}" rel="stylesheet" type="text/css" />

    <script src="${resource(dir: 'js/form', file: 'script.js')}"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
    <style type="text/css">ol{margin:0;padding:0}.c3{list-style-type:decimal;margin:0;padding:0}.c0{padding-left:0pt;direction:ltr;margin-left:36pt}.c8{max-width:468pt;background-color:#ffffff;padding:72pt 72pt 72pt 72pt}.c11{list-style-type:lower-latin;margin:0;padding:0}.c2{color:inherit;text-decoration:inherit}.c7{padding-left:0pt;margin-left:72pt}.c9{color:#1155cc;text-decoration:underline}.c6{height:11pt}.c4{font-weight:bold}.c1{font-size:18pt}.c5{direction:ltr}.c10{font-size:14pt}.title{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:36pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}.subtitle{padding-top:18pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:24pt;font-family:"Georgia";padding-bottom:4pt}p{color:#000000;font-size:11pt;margin:0;font-family:"Arial"}h1{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:18pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}h2{padding-top:18pt;line-height:1.15;text-align:left;color:#000000;font-size:14pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h3{padding-top:14pt;line-height:1.15;text-align:left;color:#666666;font-size:12pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h4{padding-top:12pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:11pt;font-family:"Arial";padding-bottom:2pt}h5{padding-top:11pt;line-height:1.15;text-align:left;color:#666666;font-size:10pt;font-family:"Arial";font-weight:bold;padding-bottom:2pt}h6{padding-top:10pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:10pt;font-family:"Arial";padding-bottom:2pt;}</style>


<!-- CSS code for IE Browser -->
    <!--[if lt IE 10]>
    <link href="${resource(dir: 'css/form',file: 'form-style-ie.css')}" rel="stylesheet" type="text/css" />
  <![endif]-->
    <g:if test="${extended != "0"}">
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
                                $("#city_val").val(city);
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

                    $("#city_val").val(code);
                    $("#city_selected").val(html);

                });



            });
        </script>
    </g:if>
</head>
<body>
<g:if test="${(extended.accessToken != "0")}">
<script>
    window.fbAsyncInit = function() {
        // init the FB JS SDK

        FB.init({
            appId      : '${grailsApplication.config.grails.plugins.springsecurity.facebook.appId}', // App ID
            channelUrl : "${grailsApplication.config.grails.serverURL}special/channel", // Channel File
            status     : true, // check login status
            cookie     : true, // enable cookies to allow the server to access the session
            xfbml      : true  // parse XFBML
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
                FB.api('/me', function(user) {
                    //alert(user.name);
                    //guardar datos de usuario en base de datos con ajax, ponerlos en el formulario y sale...
//                    $("#ipt-email").val(user.email);

                });

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
</script>
</g:if>


<div class='form'>
    <h1>Completa tus Datos</h1>
    <div class='line'></div>
<div id="user-picture"><img src="${picture}"  alt="${user?.name}" /></div>

    <!-- If you don't want a social buttons, delete all of these code -->
    %{--<a class='btn-facebook' href='#'>Connect with Facebook</a>--}%
    %{--<a class='btn-twitter' href='#'>Connect with Twitter</a>--}%
    <!-- Till here -->

    <form class='input-form' id='registration-form' action="${createLink(uri: '/user/saveDetails')}" method="post">
        <label for="username">Nombre de Usuario</label>
        <span class='ie-placeholders'>Usuario:</span><input type='text' placeholder='Login' id='ipt-login' name="username" value="${userInstance?.username}"/>
        <label for="email">Email</label>
        <span class='ie-placeholders'>E-mail:</span><input type='text' placeholder='E-mail' id='ipt-email' name="email" value="${userInstance?.email}" readonly="" />
        <g:if test="${extended.accessToken != "0"}"><span class='ie-placeholders'>Password:</span><input type='password' placeholder='Password' name="password" id='ipt-password' />
        <span class='ie-placeholders'>Confirma Password:</span><input type='password' placeholder='Confirma password' id='ipt-repassword' /><br /></g:if>
        <g:if test="${extended.accessToken == "0"}">
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
                        <br>
                        <input  class="span5" id="gen_m1" name="gen_m1" type="text" readonly />
                        <input type="hidden" name="gender" value="${extended?.gender}"/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="birth_date">Fecha de Nacimiento</label>
                <div class="controls">
                               <input  class="span4" id="date" name="birth_date" type="date" />
                </div>
            </div>

        </g:if>
        <g:if test="${extended.accessToken != "0"}">
            <label><abbr id="address_label" data-toggle="popover" data-placement="right" data-content="No es obligación, pero si la pones te enviaremos un detalle con amor por inscribirte en Nest5. Prometemos que se mantendrá privada. Visita nest5.com/privacy para saber más."title="" data-original-title="¿Para qué poner tu dirección?">Dirección Física</abbr></label>

                <input class="span12" id="address" name="address" type="text" value="${extended.address}">

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
                </div><br>
                <input  class="span6" id="city_selected" name="city_selected" type="text" readonly />
                <input type="hidden" id="city_val" name="city_val" value=""/>
                <input type="hidden" id="country" name="country" value=""/>
            </div>
            <input type="hidden" name="lat" id="latitude" value="">
            <input type="hidden" name="lng" id="longitude" value="">
        </g:if>
        <br><input type='checkbox' id='tac-checkbox' /><label for='tac-checkbox'>Acepto los <a href='http://www.nest5.com/termsandconditions' target='_blank'>terminos y condiciones</a></label>
        <input type='submit' class='btn-register btn-orange' value='Actualizar' />
    </form>

    <!-- ERROR STATE -->
    <div class='error-box red'>
        <span class='error-message'>Por favor llena todos los datos.</span>
    </div>

    <div class='sign-link'>
        %{--Already have an account? <a href='signin.html'>Sign in</a>--}%
    </div>
</div>
 <script type="text/javascript">
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
         <g:if test="${extended.accessToken == "0"}">
         var valor1 = '${extended.gender}' == 'male' ? "Hombre" : "Mujer";
         $("#gen_m1").val(valor1);
         </g:if>
         <g:if test="${extended.accessToken != "0"}">
         $('#address_label').popover()
         </g:if>

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


     });
 </script>
</body>
</html>