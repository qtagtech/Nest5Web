<!doctype html>
<html  xmlns:fb="http://ogp.me/ns/fb#">
<head>
    <meta name="layout" content="main"/>
    <title>Nest5, Beneficios en las mejores Marcas.</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://www.nest5.com/confirmEmail" />
    <r:require modules="orangebox, tiptip,gritter,waypoints,canvas2image"/>


    <link rel="stylesheet" href="${resource(dir: 'css',file: 'orangebox.css')}" type="text/css" />
    <link rel="stylesheet" href="${resource(dir: 'js/libs/tiptip',file: 'tipTip.css')}" type="text/css" />
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'jquery.gritter.css')}" type="text/css" />





    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Nothing+You+Could+Do|Quicksand:400,700,300">

    %{--<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4f7638461be80563"></script>--}%
    %{--<script type="text/javascript" src="https://www.google.com/jsapi"></script>--}%
    <r:script disposition="head">

        /*google.load('visualization', '1.0', {'packages':['corechart']});
        google.load('visualization', '1', {packages:['table']});*/
        /*function checkLikesPage(f)
        {

            if(fbLoaded)
            {

                FB.getLoginStatus(function(response) {

                    if (response.authResponse) {

                        // logged in and connected user, someone you know
                        var user_id = response.authResponse.userID;
                        var page_id = "311527055577900";
                        var fql_query = "SELECT uid FROM page_fan WHERE page_id = "+page_id+"and uid="+user_id;
                        var the_query = FB.Data.query(fql_query);

                        the_query.wait(function(rows) {

                            if (rows.length == 1 && rows[0].uid == user_id) {
                                if (typeof f == "function") f(true);
                            } else {
                                if (typeof f == "function") f(false);
                                // user doesn't like our page yet
                            }
                        });
                    } else {
                        // no user session available, someone not known, not logged into fb
                    }
                });
            }

        }*/


    </r:script>

</head>
<body>
<div id="fb-root"></div>
<script>

   var fbLoaded = false;
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '${grailsApplication.config.grails.plugins.springsecurity.facebook.appId}', // App ID
            channelUrl : "//${grailsApplication.config.grails.serverURL}/special/channel", // Channel File
            status     : true, // check login status
            cookie     : true, // enable cookies to allow the server to access the session
            xfbml      : true  // parse XFBML
        });

        // Additional initialization code here
        fbLoaded = true;
        //check if already likes Nest5's Facebook Page
        /*
        checkLikesPage(function(response){
            if(response){

                //alert("Le gusta")
                $.when(setAchievement("02_like"))
                        .then(checkResponseAchievement)
                        .fail(callError);
            }

        });
        //Post something done with a challenge on facebook
        <g:if test="${postAction?.postSomething}">
        var wallPost = {
            message : "${(user.name.split(" "))[0]} acaba de cumplir el reto ${postAction.challenge} en La Experiencia Nest5",
            picture: "${postAction.challenge.image ?: "http://www.nest5.com/images/logo.png"}",
            link: "http://www.nest5.com/laexperiencia/fbchallenge",
            name: "La Experiencia Nest5",
            description: "La Experiencia Nest5 es una carrera de observaciones en la que cumples retos reales y virtuales para Ganarte Un Samsung Galaxy Note.",
            caption: "Gánate un Samsung Galaxy Note haciendo clic aquí."
        };
        postChallengeToWall(wallPost,function(response){
            if(response){
                $.gritter.add({

                    title: '¡Felicitaciones!',

                    text: 'Acabas de cumplir el reto ${postAction.challenge}.',

                    sticky: true,

                    time: ''
                });

            }
            else {
                $.gritter.add({

                    title: '¡Hay Errores con tu cuenta de facebook!',

                    text: 'Intenataremos arreglarlo y discúlpanos.',

                    sticky: true,

                    time: ''
                });
            }
        });
        </g:if>

        //Check if already Follows Nest5 in Twitter
        */
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

%{----}%
<script>
// First, load the widgets.js file asynchronously
/*window.twttr = (function (d,s,id) {
var t, js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return; js=d.createElement(s); js.id=id;
js.src="//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs);
return window.twttr || (t = { _e: [], ready: function(f){ t._e.push(f) } });
}(document, "script", "twitter-wjs"));*/
</script>
%{--<script src="http://platform.twitter.com/anywhere.js?id=D11kDlGbXtLHX54nsE35Hg&v=1" type="text/javascript"></script>--}%
%{--<div id="points-counter">
    <h4>Tu Puntaje</h4>
    <span id="points-value">${userPoints}</span>
</div>--}%
<div id="main-container">
    <div id="main" class="wrapper clearfix">

        <article id="page-content">

            %{--<g:render template="${template}"/>--}%
            <g:render template="profile"/>


        </article>

        <aside class="user-menu">
            <g:render template="menu"/>
            %{--Descarga La App Móvil de Nest5 haciendo clic en este botón:<br>
            <a href="http://play.google.com/store/apps/details?id=com.nest5.androidClient" target="_blank">
                <img alt="Android app on Google Play"
                     src="http://www.android.com/images/brand/android_app_on_play_logo_large.png" />
            </a>--}%
        </aside>
        <div class="fixed-container-social">

        </div>





    </div> <!-- #main -->
</div> <!-- #main-container -->

<r:script>
var myWidth = 0, myHeight = 0;
          if( typeof( window.innerWidth ) == 'number' ) {
            //Non-IE
            myWidth = window.innerWidth;
            myHeight = window.innerHeight;
          } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {
            //IE 6+ in 'standards compliant mode'
            myWidth = document.documentElement.clientWidth;
            myHeight = document.documentElement.clientHeight;
          } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {
            //IE 4 compatible
            myWidth = document.body.clientWidth;
            myHeight = document.body.clientHeight;
          }
var globalChallenge = "";
var globalObject = "";
var twittTitle = "NA";
var twittMessage = "NA";

      /*$(document).bind('oB_closed', function(){

          oB = undefined;

          setOb();
          if (typeof orangebox_vars !== "undefined") { $('a[rel*=lightbox]').orangeBox(orangebox_vars); }
          else { $('a[rel*=lightbox]').orangeBox(); }
      });*/
     /*$(document).ajaxStop(function(){
         $(".item-enabled > a").tipTip();

          oB = undefined;

          setOb();
          if (typeof orangebox_vars !== "undefined") { $('a[rel*=lightbox]').orangeBox(orangebox_vars); }
          else { $('a[rel*=lightbox]').orangeBox(); }

          if(twittTitle !== "NA"){
            postTwitter(twittTitle,twittMessage);
            twittMessage = "NA";
            twittTitle = "NA";
          }

          $( "#datepicker" ).datepicker({
              changeMonth: true,
              changeYear: true,
              yearRange: '1940:2012',
              defaultDate: '01/13/1986',
              dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
              monthNames:['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
              monthNamesShort:['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic']
          });
          $('#check').bind('change',function(){
              $('#smartList').toggle($(this).is(':checked'));
          });

     });*/

    $(function(){
        $(".item-enabled > a").tipTip();
    });
    $(document).ready(function(){
     oB = undefined;

          setOb();
          if (typeof orangebox_vars !== "undefined") { $('a[rel*=lightbox]').orangeBox(orangebox_vars); }
          else { $('a[rel*=lightbox]').orangeBox(); }





//        addthis.button('#prueba', {}, {url: "http://example.com/blog/24", title: "The 24th post"});
         $('aside').waypoint(function(event, direction) {
                var offset = $(this).offset();


                $(this).toggleClass('fixed-container', direction === "down");
                $(this).css("left",offset.left+"px");
                event.stopPropagation();
	    });


        $(".help-item").live('click',function(e){
            $(".item-explanation").hide(200,function(){
              $('.item-explanation').remove();
            });

            e.preventDefault();
            var html = '<div class="item-explanation" style="display:none;"><img src="${resource(dir: "images", file: "preloader.gif")}" style="height: 1.5em; width: auto;" alt="Nest5 - Loading" ></div>';
            $(this).closest('li').after(html);
            $(".item-explanation").show(300);
            var str = $(this).attr('id');
            var item = (str.split("__"))[1];
            var code = (str.split("__"))[3];

             $.when(getHelpInfo(item))
                          .then(setExp)
                          .fail(callError);

    });




        $(".item-disabled > .item-lock").each(function(i){

           $(this).html("U");
        });


        %{--$(".item-enabled:not(.item-done) > a").live('click',function(e){--}%
            %{--e.preventDefault();--}%
            %{--var str = $(this).attr('id');--}%

            %{--var challenge = (str.split("__"))[1];--}%
            %{--var code = (str.split("__"))[3];--}%
            %{--switch(code){--}%
            %{--case "01_subs": {--}%
                            %{--$(this).html('<img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Loading..." style="height:2%; width: auto;">');--}%
                            %{--$.when(setAchievement(challenge))--}%
                            %{--.then(checkResponseAchievement)--}%
                            %{--.fail(callError);--}%
                            %{--break--}%

            %{--}--}%
            %{--case "01_face": {--}%
                            %{--$(this).html('<img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Loading..." style="height:2%; width: auto;">');--}%
                            %{--startFbLogin(challenge);--}%
                            %{--break;--}%
            %{--}--}%
            %{--case "01_twit": {--}%
                              %{--twttr.anywhere(function (T) {  --}%
                                  %{--globalChallenge = challenge--}%
                                  %{--T.signIn();--}%
                              %{--});--}%
                              %{--break;--}%
            %{--}--}%
            %{--case "02_foll": {--}%
                                %{--globalChallenge = challenge;--}%
                                %{--$(this).html('<a href="https://twitter.com/nest5_oficial" class="twitter-follow-button" data-show-count="true" data-lang="es">Follow @twitterapi</a>');--}%
                                %{--twttr.widgets.load();--}%
                                %{--break;--}%

            %{--}--}%
            %{--case "02_like":{--}%
                              %{--globalChallenge = challenge;--}%
                              %{--var element = $(this);--}%
                              %{--checkLikesPage(function(response){--}%

                                %{--if(response){--}%
                                %{--//alert("Le gusta")--}%
                                    %{--$.when(setAchievement(challenge))--}%
                                   %{--.then(checkResponseAchievement)--}%
                                   %{--.fail(callError);--}%
                                %{--}--}%
                                %{--else{--}%


                                    %{--element.html('<fb:like href="http://www.facebook.com/pages/Nest5/311527055577900" send="false" layout="box_count" width="450" show_faces="false" font="verdana"></fb:like>');--}%

                                    %{--if(fbLoaded)--}%
                                    %{--{--}%
                                        %{--FB.XFBML.parse();--}%
                                         %{--console.log("ACA2");--}%
                                        %{--FB.Event.subscribe('edge.create',--}%
                                        %{--function(response) {--}%
                                            %{--//alert('You liked the URL: ' + response);--}%
                                            %{--checkLikesPage(function(response){--}%
                                                %{--if(response){--}%
                                                    %{--//alert("Le gusta")--}%
                                                    %{--$.when(setAchievement(challenge))--}%
                                                   %{--.then(checkResponseAchievement)--}%
                                                   %{--.fail(callError);--}%
                                                %{--}--}%
                                            %{--});--}%

                                        %{--});--}%

                                %{--}--}%
                              %{--}--}%

                              %{--});--}%
                              %{--break;--}%
            %{--}--}%
            %{--case "02_own": {--}%
                                %{--var element = $(this);--}%
                                %{--var html = element.html();--}%
                                %{--element.html('<img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Loading..." style="height:2%; width: auto;">');--}%
                                %{--postToWall(function(response){--}%
                                    %{--if(response)--}%
                                    %{--{--}%
                                       %{--$.when(setAchievement("02_own"))--}%
                                       %{--.then(checkResponseAchievement)--}%
                                       %{--.fail(callError);--}%
                                    %{--}--}%
                                    %{--else{--}%
                                        %{--element.html(html);--}%
                                        %{--$.gritter.add({--}%

                                        %{--title: 'Cancelaste el reto.',--}%
                                        %{--text: 'No has aumentado tu puntaje.',--}%
                                        %{--sticky: false,--}%
                                        %{--time: ''--}%
                                    %{--});--}%
                                    %{--}--}%
                                %{--});--}%
                                %{--break;--}%

                            %{--}--}%
            %{--}--}%



                %{--//alert(challenge)--}%
        %{--});--}%
        /*$(".item-enabled:not(.item-done) > .noActionPopUp").live('click',function(e){
            var str = $(this).attr('id');
            var challenge = (str.split("__"))[1];
            var code = (str.split("__"))[3];
            $.when(getChallengeInfo(challenge))
            .then(setPopContent)
            .fail(callError);


        });*/
        /*$(".item-enabled:not(.item-done) > .romantic_question").live('click',function(e){
            var str = $(this).attr('id');
            var challenge = (str.split("__"))[1];
            var code = (str.split("__"))[3];
//            alert(challenge)
            $.when(getQuestionInfo(challenge))
            .then(setAnswerContent)
            .fail(callError);


        });*/



        /*$(".item-disabled > a").live('click',function(e){
            e.preventDefault();
            $.gritter.add({
				// (string | mandatory) the heading of the notification
				title: 'Aún no puedes participar en este reto.',
				// (string | mandatory) the text inside the notification
				text: 'Este reto solo está permitido completarlo una vez.<br>¿No tienes más retos que puedas hacer porque te faltan puntos?<br>Recuerda que hay muchos qu no requieren un mínimo de puntos y otros que podrás hacer las veces que quieras para aumentar tu puntaje constantemente.',
				// (string | optional) the image to display on the left
				//image: 'http://a0.twimg.com/profile_images/59268975/jquery_avatar_bigger.png',
				// (bool | optional) if you want it to fade out on its own or just sit there
				sticky: false,
				// (int | optional) the time you want it to be alive for before fading out
				time: ''
			});

        });*/

        /*$(".item-done > a").live('click',function(e){
             e.preventDefault();
            $.gritter.add({
				// (string | mandatory) the heading of the notification
				title: 'Ya has pasado este reto...',
				// (string | mandatory) the text inside the notification
				text: 'Recuerda: Hay retos que puedes repetir las veces que quieras para ganar más puntos. ¡Este no es uno!.',
				// (string | optional) the image to display on the left
				//image: 'http://a0.twimg.com/profile_images/59268975/jquery_avatar_bigger.png',
				// (bool | optional) if you want it to fade out on its own or just sit there
				sticky: false,
				// (int | optional) the time you want it to be alive for before fading out
				time: ''
			});
        });*/

        enable_smooth_scroll();

        /*$("#sharePoints").live('click',function(e){
            e.preventDefault();

            $.when(getPoints())
                .then(publishPoints)
                .fail(callError);

        });*/
    });
    /*function changeButton(){
        $("#subBtn").fadeOut(0,function(){
            $("#loading").fadeIn(50);
        });
        ;
    }*/

    /*function checkResponse(data){
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



    }*/
 /*Scripts para guardar, traer resultados y recargar contendio con los achievements
 *
 *          PROFILE
 *
 * */
     %{--function setAchievement(challenge){--}%

        %{--var url = "${createLink(controller: 'achievements', action: 'save')}";--}%

        %{--return  $.ajax({--}%
        %{--type: "POST",--}%
        %{--url: url,--}%
        %{--data: {challenge : challenge },--}%
        %{--dataType: "json"--}%
    %{--}).promise();--}%
    %{--}--}%



    /*function callConfirm(data){
    console.log("Success");
    console.log(data);




    }*/
   /* function callError(data){
    console.log("Error");
    console.log(data);
    }*/

%{--function getContent(){--}%
%{--var url = "${createLink(controller: 'user', action: 'account')}";--}%

        %{--return  $.ajax({--}%
        %{--type: "POST",--}%
        %{--url: url,--}%
        %{--data: {activity : "profile" }--}%

    %{--}).promise();--}%
%{--}--}%
%{--function getPoints(){--}%
%{--var url = "${createLink(controller: 'user', action: 'points')}";--}%

        %{--return  $.ajax({--}%
        %{--type: "POST",--}%
        %{--url: url--}%


    %{--}).promise();--}%
%{--}--}%

/*function setContent(data){

$("#page-content").html(data);
$.when(getPoints())
    .then(setPoints)
    .fail(callError);

}*/
/*
function setPoints(data)
{
    var points = $("#points-value");
    points.hide(0,function(){
    points.html(data.userPoints)
            .fadeIn(300)
            .animate({
            'fontSize' : '6em'
            },150,function(){
               points.animate({
                  'fontSize' : '4em'
               },150);
            });
    });
//    console.log(data);
}*/

 %{--function publishPoints(points){--}%

%{--//     objeto points trae puntaje en points.userPoints--}%
    %{--var wallPost = {--}%
            %{--message : "!Llevo +"+points.userPoints+" puntos en La Experiencia Nest5, por cada reto que cumpla y persona que traiga, gano mas puntos. Inscríbete acá: http://www.nest5.com/user/qrcode?id=${URLEncoder.encode(user.id.toString().bytes.encodeBase64().toString())}",--}%
            %{--picture: "http://www.nest5.com/images/logo.png",--}%
            %{--link: "http://www.nest5.com/user/qrcode?id=${URLEncoder.encode(user.id.toString().bytes.encodeBase64().toString())}",--}%
             %{--caption: "Inscríbete en este link y comienza con más puntos.",--}%
             %{--source: "https://vimeo.com/39363057"};--}%

       %{--postChallengeToWall(wallPost,function(response){--}%
            %{--if(response){--}%
               %{--$.gritter.add({--}%
                    %{--title: '¡Has compartido tu Experiencia Nest5 exitosamente!',--}%
                    %{--text: 'Por cada persona que traigas gracias al link que has publicado, ganarás +10pts.',--}%
                    %{--sticky: false,--}%
                    %{--time: '3000'--}%
                %{--});--}%
            %{--}--}%
            %{--else {--}%
                %{--$.gritter.add({--}%
                    %{--title: '¡Hay Errores con tu cuenta de facebook!',--}%
                    %{--text: 'Intenataremos arreglarlo y discúlpanos.',--}%
                    %{--sticky: true,--}%
                    %{--time: ''--}%
                %{--});--}%
            %{--}--}%
        %{--});--}%
        %{--};--}%



    function changeButton(){


        $("#subBtn").fadeOut(0,function(){
            $("#loading").fadeIn(50);
        });

    }

  /*  function checkResponseAchievement(data){
       var html ="";
//        $("#loading").fadeOut(500,function(){
//            $("#subBtn").fadeIn(500);
//        });

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

//            $("#errorMessage").html(html)
//                    .fadeIn(300);


        }
        else{
             $.when(getContent())
            .then(setContent)
            .fail(callError);
        }



    }*/
    %{--function getChallengeInfo(id){--}%
        %{--var url = "${createLink(controller: 'challenge', action: 'showInfo')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {id : id }--}%

    %{--}).promise();--}%

    %{--}--}%

    %{--function getQuestionInfo(id){--}%
         %{--var url = "${createLink(controller: 'answers', action: 'showInfo')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {id : id }--}%

    %{--}).promise();--}%
    %{--}--}%
    %{--function checkAnswer(challenge,answer){--}%
         %{--var url = "${createLink(controller: 'answers', action: 'checkAnswer')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {challenge : challenge, answer: answer }--}%

    %{--}).promise();--}%
    %{--}--}%

    %{--function setPopContent(data){--}%
%{--//             console.log(data);--}%
%{--//            $.getScript('http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4f7638461be80563');--}%
            %{--var userAddress = "http://www.nest5.com/user/qrcode?id=${URLEncoder.encode(user.id.toString().bytes.encodeBase64().toString())}";--}%
            %{--var shareURL = userAddress; //Poner aca la direccion del codigo personal del usuario con una explicacion--}%
            %{--var title = "Quiero un Galaxy Note en la Experiecia Nest5, @Nest5_Oficial,lee el código QR de este enlace y comienza con más puntos.";--}%
            %{--$("#popCaller").attr('title',data.name);--}%
            %{--$("#popContent").html(data.description);--}%






                %{--//addthis.init();--}%

            %{--if(data.code === "03_refe")--}%
            %{--{--}%

                %{--$("#popContent > #personalURL").html(userAddress);--}%

            %{--}--}%
            %{--if(data.code === "01_vid")--}%
            %{--{--}%
              %{--shareURL = "http://www.nest5.com/user/qrvideo?id=${user.id}";--}%
%{--//                shareURL = "https://chart.googleapis.com/chart?chs=400x400&cht=qr&chl=http://www.nest5.com/user/qrvideo?id=${user.id}";--}%
            %{--}--}%
            %{--if(data.code === "02_kobivid")--}%
            %{--{--}%
                  %{--shareURL = "http://www.nest5.com/user/qrvideo?id=${user.id}&thirdparty=kobi";--}%
                  %{--title = "Esto Es Kobi, La Cobija con Mangas, marca que está patrocinando La Experiencia Nest5. ¡Me puedo ganar un Galaxy Note 4G por conocerlo y compartirlo!";--}%
%{--//                shareURL = "https://chart.googleapis.com/chart?chs=400x400&cht=qr&chl=http://www.nest5.com/user/qrvideo?id=${user.id}";--}%
            %{--}--}%


			%{--$('#popCaller').orangeBox('create');--}%
			%{--var add = $('<a id="addButton"></a>');--}%

			%{--$('#ob_window').append(add);--}%
                %{--addthis.button('#addButton', {}, {url: shareURL, title: title,ui_cobrand: "Nest5"});--}%

		%{--}--}%

        function getHelpInfo(id){
        var url = "${createLink(controller: 'helpItem', action: 'showInfo')}";

            return  $.ajax({
            type: "POST",
            url: url,
            data: {id : id }

    }).promise();

    }


    function setAnswerContent(data){
        //console.log(data)
        $("#popCaller").attr('title',data.description);
        var letters = ['A','B','C','D'];
        var resps = [data.respA,data.respB,data.respC,data.respD] ;
        var i = 0;
        globalObject = data;

        var html =  '<ul class="race-steps" style="width:100%;">';
        while (i < 4 ){
           html += '<li class="item-enabled answer-button" rel="'+data.challenge.id+'" id="answer_'+i+'" style="width:100%; left: 50%; cursor : pointer;">'
                +'<span class="item-icon" style="font-family: BebasNeue;">'+letters[i]+'</span><span class="race-item"  title="">'+resps[i]+'</span>'
                +'<div class="clearfix"></div>'
                +'</li>';

            i++;

        }


         html +='</ul>';
        $("#popContent").html(html);
        $('#popCaller').orangeBox('create');
        $(".answer-button.item-enabled").click(function(e){
           var challenge = $(this).attr('rel');
           var selection = $(this).attr('id');
           selection = (selection.split('_'))[1];
           var prevHtml = $(this).html();
           //console.log(globalObject);
           $('.answer-button.item-enabled').removeClass('item-enabled')
                            .removeClass('answer-button')
                            .toggleClass('item-disabled');
           $(this).html('<img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Loading..." style="height:10%; width: auto;">');
           $.when(checkAnswer(challenge,selection))
            .then(function(data){
                $('#popCaller').orangeBox('destroy');
                if(data == "correct")
                {
                    setFacebookMessage(globalObject);
                    //console.log(globalObject)
                    twittMessage = "Acabo de responder la pregunta de "+globalObject.twitter+" en #LaExperienciaNest5: "+globalObject.description+".";
                    twittTitle = "Cuenta en Twitter que has respondido correctamente y gánate otros +5 puntos extra.";
                    $.gritter.add({
                                        title: '¡Respuesta Correcta!',
                                        text: 'Felicitaciones. Responde más y gana puntos.',
                                        sticky: false,
                                        time: ''
                                    });
                  $.when(getContent())
                    .then(setContent)
                    .fail(callError);
                }
                else{
                  $.gritter.add({
                                        title: 'Respuesta Incorrecta.',
                                        text: 'Inténtalo de nuevo y gánate los puntos..',
                                        sticky: false,
                                        time: ''
                                    });
                }

            })
            .fail(callError);


        });
    }



/*function test(data){
console.log(data);
}*/

function setExp(data){
$(".item-explanation").html(data.description)
}
/*FUNCIONES FACEBOOK
*
* */


%{--function setFacebookMessage(obj){--}%
    %{--var wallPost = {--}%
            %{--message : "${(user.name.split(" "))[0]} acaba de responder correctamente la pregunta de "+obj.company+" en La Experiencia Nest5: "+obj.description+".",--}%
            %{--link: "http://www.nest5.com/laexperiencia/fbchallenge",--}%
            %{--name: "La Experiencia Nest5, patrocinada por: "+obj.company,--}%
            %{--description: "La Experiencia Nest5 es una carrera de observaciones en la que cumples retos reales y virtuales para Ganarte Un Samsung Galaxy Note.",--}%
            %{--caption: "Gánate un Samsung Galaxy Note haciendo clic aquí.",--}%
            %{--picture: obj.image--}%
        %{--};--}%
        %{--postChallengeToWall(wallPost,function(response){--}%
            %{--if(response){--}%

            %{--}--}%
            %{--else {--}%
                %{--$.gritter.add({--}%
                    %{--title: '¡Hay Errores con tu cuenta de facebook!',--}%
                    %{--text: 'Intenataremos arreglarlo y discúlpanos.',--}%
                    %{--sticky: true,--}%
                    %{--time: ''--}%
                %{--});--}%
            %{--}--}%
        %{--});--}%
   %{--}--}%

%{--function startFbLogin(challenge)     //Vincular cuenta de facebook de usuario registrado directamente--}%
%{--{--}%
%{--if(fbLoaded){--}%
  %{--FB.login(function(response) {--}%
      %{--if (response.authResponse) {--}%
         %{--// console.log(response);--}%
          %{--$.when(updateUserUid(response.authResponse.userID),facebookUserCreated(response.authResponse.userID,response.authResponse.accessToken))--}%
             %{--.then(userUpdated(challenge))--}%
            %{--.fail(callError);--}%
          %{--/*FB.api('/me', function(response) {--}%
              %{--//console.log('Good to see you, ' + response.name + '.');--}%


          %{--});*/--}%
      %{--} else {--}%
          %{--console.log('Cancelled.');--}%
      %{--}--}%
  %{--},{scope: 'email,user_about_me,user_birthday,user_checkins,user_education_history,user_groups,user_hometown,user_interests,user_likes,user_location,user_questions,user_relationships,user_relationship_details,user_status,publish_checkins,publish_stream'});--}%
%{--}--}%

%{--}--}%





%{--function postToWall(f){--}%
%{--if(fbLoaded){--}%

%{--FB.ui(--}%
%{--{--}%
%{--method: 'feed',--}%
%{--message: '¡${(user.name.split(" ")[0])} sigue adelantándose en la carrera por un Samsung Galaxy 4G! Tu también puedes, sigue este link y obtendrás tus primeros puntos por seguir a uno de los mejores.',--}%
           %{--name: '¡La Experiencia Nest5!',--}%
           %{--caption: 'Nest5, Una Historia de Amor entre las Marcas y los Consumidores, ¡te regala un Samsung Galaxy Note 4G y muchos beneficios más!',--}%
              %{--description: (--}%
              %{--'Nest5 es una App Móvil que te permite nuevas formas de ahorrar y mayor poder de compra, haciendo que las Marcas se preocupen por enamorarte.'--}%
           %{--),--}%
           %{--link: 'http://www.nest5.com/user/qrcode?id=${user.id}',--}%
           %{--picture: 'https://si0.twimg.com/profile_images/1916426550/thumbnailfacebook.png',--}%
           %{--actions: [--}%
                %{--{ name: 'Nest5', link: 'http://www.nest5.com/user/qrcode?id=${user.id}' }--}%
           %{--],--}%
          %{--user_message_prompt: '¡Soy de los mejores en La Experiencia Nest5 y cada vez estoy más cerca de ganarme un Samsung Galaxy 4G o muchos beneficios en mis Tiendas y Marcas favoritas!'--}%
          %{--},--}%
          %{--function(response) {--}%
            %{--if (response && response.post_id) {--}%
              %{--if (typeof f == "function") f(true);--}%
            %{--} else {--}%
              %{--if (typeof f == "function") f(false);--}%
            %{--}--}%
          %{--}--}%
        %{--);--}%
      %{--}--}%
      %{--/**/--}%
      %{--}--}%

      %{--function postChallengeToWall(wallpost,f){--}%

      %{--if(fbLoaded){--}%
%{--//        console.log("1.-facebook loaded");--}%

                %{--FB.getLoginStatus(function(response) {--}%

                  %{--if (response.status === 'connected') {--}%
%{--//                  console.log("2.-User Connected");--}%

                    %{--var uid = response.authResponse.userID;--}%
                    %{--var accessToken = response.authResponse.accessToken;--}%
                    %{--FB.api('/me/feed', 'post', wallpost , function(response) {--}%
%{--//                        console.log("3.- Entro FB.Api");--}%
%{--//                        console.log("4.-WallPost: ");--}%
%{--//                        console.log(wallpost);--}%
%{--//                        console.log("5.-Response FB.Api: ");--}%
%{--//                        console.log(response);--}%
                      %{--if (!response || response.error) {--}%
                        %{--if(typeof f == "function") f(false)--}%
                      %{--} else {--}%
                        %{--if(typeof f == "function") f(true)--}%
                      %{--}--}%
                    %{--});--}%
                  %{--} else if (response.status === 'not_authorized') {--}%
%{--//                    console.log("6.-Not Authorized user");--}%
                    %{--// the user is logged in to Facebook,--}%
                    %{--// but has not authenticated your app--}%
                    %{--if(typeof f == "function") f(false)--}%
                  %{--} else {--}%
%{--//                    console.log("7.-Not Logged in");--}%
                    %{--// the user isn't logged in to Facebook.--}%
                    %{--if(typeof f == "function") f(false)--}%
                  %{--}--}%
                 %{--});--}%



      %{--}--}%


      %{--}--}%



      %{--/*FUNCIONES TWITTER--}%
      %{--*--}%
      %{--*--}%
      %{--*--}%
      %{--* */--}%

        %{--$(document).ready(function(){--}%

           %{--twttr.anywhere(function (T) {--}%

            %{--T.bind("authComplete", function (e, user) {--}%
                %{--//alert(user.id)--}%
              %{--// hacer el resto de guardar achievement y recargar pagina ademas de guardar twitter user--}%
              %{--$.when(updateUserTUid(user.id))--}%
                         %{--.then(userUpdated(globalChallenge))--}%
                        %{--.fail(callError);--}%
            %{--});--}%

            %{--T.bind("signOut", function (e) {--}%
              %{--// triggered when user logs out--}%

            %{--});--}%

         %{--});--}%

         %{--/*Clics en imprimir codigo--}%
         %{--*--}%
         %{--* */--}%

    %{--$("#saveProfile").live('click',function(e){--}%
            %{--e.preventDefault();--}%
            %{--var canvas = document.getElementById("myCanvas");--}%
%{--//            Canvas2Image.saveAsPNG(canvas,false,200,200);--}%






            %{--//Canvas2Image.saveAsPNG(canvas);--}%
            %{--//window.open(img);--}%
        %{--});--}%
        %{--});--}%

        %{--twttr.ready(function (twttr) {--}%
          %{--twttr.events.bind('follow',   followIntent);--}%
         %{--});--}%
  %{--function followIntent(intent_event)--}%
  %{--{--}%
    %{--if (intent_event) {--}%
      %{--/*var label = intent_event.data.user_id + " (" + intent_event.data.screen_name + ")";--}%
      %{--alert(label)*/--}%
      %{--$.when(setAchievement(globalChallenge))--}%
               %{--.then(checkResponseAchievement)--}%
               %{--.fail(callError);--}%

    %{--}--}%
  %{--}--}%


  %{--function postTwitter(title,message)--}%
  %{--{--}%

        %{--$("#twitterBox").html("");--}%
        %{--$("#twitterBox").html("<h3>"+title+"</h3><div id='tbox'></div>");--}%
        %{--twttr.anywhere(function (T) {--}%


            %{--T("#tbox").tweetBox({--}%
                %{--height: 100,--}%
                %{--width: 400,--}%
                %{--defaultContent: message,--}%
                %{--onTweet: function(tw,twit){--}%

                    %{--$.when(setAchievement('02_Twitt'))--}%
                   %{--.then(checkResponseAchievement)--}%
                   %{--.fail(callError);--}%
                %{--}--}%
            %{--});--}%

            %{--$("#twitterBox").show(100,function(){--}%
            %{--scrollTo("twitterBox");--}%
            %{--});--}%

        %{--});--}%
    %{--/*$("#twitterPost").attr('title',title);--}%





            %{--twttr.anywhere(function (T) {--}%


            %{--T("#ob_inline").tweetBox({--}%
                %{--height: 100,--}%
                %{--width: 400,--}%
                %{--defaultContent: message--}%
            %{--});--}%

        %{--});--}%
        %{--$("#twitterPost").orangeBox('create');*/--}%


  %{--}--}%

     %{--/*FUNCIONES DE AJAX*/--}%
      %{--function checkResponseNewInfo(data){--}%
          %{--var html ="";--}%
          %{--$("#loading").fadeOut(500,function(){--}%
              %{--$("#subBtn").fadeIn(500);--}%
          %{--});--}%

          %{--if(data.errors == "1")--}%
          %{--{--}%
              %{--if(data.errorType == "1")--}%
              %{--{--}%
                  %{--html = +"<ul>";--}%
%{--for(var i = 0; i < data.messages.value.errors.length ; i++)--}%
%{--{--}%
%{--html += "<li>"+data.messages.value.errors[i].message+"</li>" ;--}%
%{--}--}%
%{--html += "</ul>"--}%
              %{--}--}%
              %{--if(data.errorType == "2")--}%
              %{--{--}%
                  %{--html += "<ul>";--}%
%{--for(var i = 0; i < data.messages.length ; i++)--}%
%{--{--}%
%{--html += "<li>"+data.messages[i].value+"</li>" ;--}%
%{--}--}%
%{--html += "</ul>"--}%
              %{--}--}%
              %{--console.log(html);--}%
              %{--$("#errorMessage").html(html)--}%
                      %{--.fadeIn(300);--}%


          %{--}--}%
          %{--else{--}%
              %{--$.when(getContent())--}%
                      %{--.then(setContent)--}%
                      %{--.fail(callError);--}%
          %{--}--}%



      %{--}--}%

      %{--function updateUserUid(value){--}%

          %{--var url = "${createLink(controller: 'user', action: 'update')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {'uid' : value, 'user.id': "${user?.id}" }--}%

        %{--}).promise();--}%

      %{--}--}%
      %{--function updateUserTUid(value){--}%

          %{--var url = "${createLink(controller: 'user', action: 'update')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {'tuid' : value, 'user.id': "${user?.id}" }--}%

        %{--}).promise();--}%

      %{--}--}%
      %{--function facebookUserCreated(id,token,user)--}%
      %{--{--}%
        %{--var url = "${createLink(controller: 'user', action: 'createFacebookUser')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {'uid' : id, 'userid': "${user?.id}",'token' : token }--}%

        %{--}).promise();--}%
      %{--}--}%


      %{--function userUpdated(challenge)--}%
      %{--{--}%
        %{--$.when(setAchievement(challenge))--}%
               %{--.then(checkResponseAchievement)--}%
               %{--.fail(callError);--}%
      %{--}--}%


      %{--/*GRAPH AND STATISTICS FUNCTIONS--}%
      %{--*--}%
      %{--* */--}%


    %{--function getAchDist(){--}%
        %{--var url = "${createLink(controller: 'user', action: 'achDist')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {}--}%

        %{--}).promise();--}%

    %{--}--}%
    %{--function getRankTable(cant)--}%
    %{--{--}%
        %{--var url = "${createLink(controller: 'user', action: 'rank')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {cant: cant}--}%

        %{--}).promise();--}%
    %{--}--}%
    %{--function getAchHistory(days)--}%
    %{--{--}%
      %{--var url = "${createLink(controller: 'user', action: 'achievementsByDate')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {days: days}--}%

        %{--}).promise();--}%
    %{--}--}%
    %{--function getPointsHistory(days)--}%
    %{--{--}%
      %{--var url = "${createLink(controller: 'user', action: 'pointsByDate')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {days: days}--}%

        %{--}).promise();--}%
    %{--}--}%
    %{--function getPointDist(){--}%
        %{--var url = "${createLink(controller: 'user', action: 'pointDist')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {}--}%

        %{--}).promise();--}%

    %{--}--}%

    %{--function getStatistics(){--}%
             %{--var url = "${createLink(controller: 'user', action: 'stats')}";--}%

            %{--return  $.ajax({--}%
            %{--type: "POST",--}%
            %{--url: url,--}%
            %{--data: {}--}%

        %{--}).promise();--}%
    %{--}--}%

    %{--function drawRankTable(datos){--}%
        %{--//console.log(datos)--}%
        %{--var data = new google.visualization.DataTable();--}%

        %{--data.addColumn('number', 'Posición');--}%
        %{--data.addColumn('string', 'Nombre');--}%
        %{--data.addColumn('number', 'Puntos');--}%
        %{--var ranking = datos.rank--}%
        %{--var own =  datos.own--}%
        %{--var position = datos.pos != null ? datos.pos : -1;--}%
        %{--var numRows = ranking.length--}%
        %{--data.addRows(numRows)--}%
        %{--jQuery.each(ranking,function(i,value){--}%
            %{--if(i == position){--}%
                %{--data.setCell(i,0,i+1,''+(i+1),{style: 'font-style:bold; font-size:2em; width: 1%; text-align: center; padding: 3px 0;'});--}%
                %{--data.setCell(i,1,value.name,value.name,{style: 'font-style:bold; font-size:2em;'});--}%
                %{--data.setCell(i,2,value.totalPoints,'+'+value.totalPoints,{style: 'font-style:bold; font-size:2em;'})--}%
            %{--}--}%
            %{--else{--}%
                %{--data.setCell(i,0,i+1,''+(i+1),{style: 'width: 1%; text-align: center; padding: 3px 0;'});--}%
                %{--data.setCell(i,1,value.name);--}%
                %{--data.setCell(i,2,value.totalPoints,'+'+value.totalPoints)--}%
            %{--}--}%

%{--//            data.addRow([i,value.name,value.totalPoints]);--}%
        %{--});--}%
        %{--if((own) && (own.before != 0)){--}%
                %{--data.addRows(1)--}%
                %{--data.setCell(numRows,0,own.before + 1,''+(own.before + 1),{style: 'font-style:bold; font-size:2em; width: 1%; text-align: center; padding: 3px 0;'});--}%
                %{--data.setCell(numRows,1,"Tú","Tú",{style: 'font-style:bold; font-size:2em;'});--}%
                %{--data.setCell(numRows,2,own.points,'+'+own.points,{style: 'font-style:bold; font-size:2em;'});--}%
        %{--}--}%
       %{--/* data.addRows(4);--}%
        %{--data.setCell(0, 0, 'Mike');--}%
        %{--data.setCell(0, 1, 10000, '$10,000');--}%
        %{--data.setCell(0, 2, true);--}%
        %{--data.setCell(1, 0, 'Jim');--}%
        %{--data.setCell(1, 1, 8000, '$8,000');--}%
        %{--data.setCell(1, 2, false);--}%
        %{--data.setCell(2, 0, 'Alice');--}%
        %{--data.setCell(2, 1, 12500, '$12,500');--}%
        %{--data.setCell(2, 2, true);--}%
        %{--data.setCell(3, 0, 'Bob');--}%
        %{--data.setCell(3, 1, 7000, '$7,000');--}%
        %{--data.setCell(3, 2, true);*/--}%

        %{--var table = new google.visualization.Table(document.getElementById('rank_table'));--}%
        %{--table.draw(data, {showRowNumber: false, allowHtml: true});--}%

    %{--}--}%

    %{--function drawAchHistChart(datos){--}%
        %{--var data = new google.visualization.DataTable();--}%
        %{--data.addColumn('date', 'Fecha');--}%
        %{--data.addColumn('number', 'Logros Conseguidos');--}%

        %{--jQuery.each(datos, function(i, val) {--}%
              %{--var vals = i.split("-");--}%
              %{--data.addRow([new Date(vals[0],vals[1]-1,vals[2]),val]);--}%
            %{--});--}%


        %{--var options = {--}%
          %{--title: 'Rendimiento por Día',--}%
          %{--hAxis: {title: 'Fecha',  titleTextStyle: {color: 'red'}}--}%
        %{--};--}%

        %{--var chart = new google.visualization.AreaChart(document.getElementById('ach_history_chart'));--}%
        %{--chart.draw(data, options);--}%
    %{--}--}%

    %{--function drawPointsHistChart(datos){--}%
        %{--var data = new google.visualization.DataTable();--}%
        %{--data.addColumn('date', 'Fecha');--}%
        %{--data.addColumn('number', 'Puntos Sumados');--}%

        %{--jQuery.each(datos, function(i, val) {--}%
              %{--var vals = i.split("-");--}%
              %{--data.addRow([new Date(vals[0],vals[1]-1,vals[2]),val]); //Arreglar Mees--}%
            %{--});--}%


        %{--var options = {--}%
          %{--title: 'Variación Diaria de tu Puntaje',--}%
          %{--hAxis: {title: 'Fecha',  titleTextStyle: {color: 'red'}},--}%
          %{--colors: ['red','#004411']--}%
        %{--};--}%

        %{--var chart = new google.visualization.AreaChart(document.getElementById('points_history_chart'));--}%
        %{--chart.draw(data, options);--}%
    %{--}--}%

    %{--function drawAchChart(datos) {--}%
            %{--var data = new google.visualization.DataTable();--}%
            %{--data.addColumn('string', 'Categoría');--}%
            %{--data.addColumn('number', 'Retos Logrados');--}%
            %{--jQuery.each(datos, function(name, cant) {--}%
              %{--data.addRow([name,cant])--}%
            %{--});--}%
            %{--var options = {'title':'¿En qué has enfocado tus esfuerzos?',--}%
                %{--'width':myWidth*0.3,--}%
                %{--'height':myHeight*0.4};--}%
           %{--var chart = new google.visualization.PieChart(document.getElementById('ach_chart'));--}%
            %{--chart.draw(data, options);--}%
        %{--}--}%
     %{--function drawPointChart(datos) {--}%
            %{--var data = new google.visualization.DataTable();--}%
            %{--data.addColumn('string', 'Categoría');--}%
            %{--data.addColumn('number', 'Puntos Alcanzados');--}%
            %{--jQuery.each(datos, function(name, cant) {--}%
              %{--data.addRow([name,cant])--}%
            %{--});--}%
            %{--var options = {'title':'¿Como se distribuyen tus puntos?',--}%
                %{--'width':myWidth*0.3,--}%
                %{--'height':myHeight*0.4};--}%
           %{--var chart = new google.visualization.PieChart(document.getElementById('point_chart'));--}%
            %{--chart.draw(data, options);--}%
        %{--}--}%

    %{--function setStatisticsText(data){--}%
        %{--var html = "";--}%
        %{--html += "<h4>Tienes +"+data.total.points+" puntos. Eres mejor que el <span style='font-size:1.5em; font-weight: bolder;'>"+data.total.percentage+"%</span> del resto de participantes en La Experiencia Nest5</h4>";--}%
        %{--html += "<h4>Con +"+data.social.points+" puntos, eres más social que el<span style='font-size:1.5em; font-weight: bolder;'> "+data.social.percentage+"%</span> de personas.</h4>";--}%
        %{--html += "<h4>Con +"+data.geek.points+" puntos, eres más Geek que el <span style='font-size:1.5em; font-weight: bolder;'>"+data.geek.percentage+"%</span> de personas.</h4>";--}%
        %{--html += "<h6>Datos actualizados hasta: "+data.updateTime+"</h6>";--}%

        %{--$("#statisticsText").html(html);--}%
    %{--}--}%


    /*

    AUTO SCROLL FUNCTIONS

    */

    function enable_smooth_scroll() {
            function filterPath(string) {
                return string
                        .replace(/^\//,'')
                        .replace(/(index|default).[a-zA-Z]{3,4}$/,'')
                        .replace(/\/$/,'');
            }

            var locationPath = filterPath(location.pathname);

            var scrollElement = 'html, body';
            $('html, body').each(function () {
                var initScrollTop = $(this).attr('scrollTop');
                $(this).attr('scrollTop', initScrollTop + 1);
                if ($(this).attr('scrollTop') == initScrollTop + 1) {
                    scrollElement = this.nodeName.toLowerCase();
                    $(this).attr('scrollTop', initScrollTop);
                    return false;
                }
            });

            $('a[href*=#]').each(function() {
                var thisPath = filterPath(this.pathname) || locationPath;
                if  (   locationPath == thisPath
                        && (location.hostname == this.hostname || !this.hostname)
                        && this.hash.replace(/#/, '')
                        ) {
                    if ($(this.hash).length) {
                        $(this).click(function(event) {
                            var targetOffset = $(this.hash).offset().top;
                            var target = this.hash;
                            event.preventDefault();
                            $(scrollElement).animate(
                                    {scrollTop: targetOffset},
                                    500,
                                    function() {
                                        location.hash = target;
                                    });
                        });
                    }
                }
            });
        }

    function scrollTo(target){
        var scrollElement = 'html, body';

        var targetOffset = $("#"+target).offset().top;

        //event.preventDefault();
        $(scrollElement).animate(
                {scrollTop: targetOffset},
                500,
                function() {
                    location.hash = target;
                });
    }



</r:script>

</body>
</html>