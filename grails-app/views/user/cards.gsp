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




</head>
<body>

    <div class="row-fluid">


        <div class="span3">
            <div class="row-fluid">
                <div class="span12">
                    <div class="well sidebar-nav">
                        <ul class="nav nav-list">
                            <li class="nav-header">Menú Nest5</li>
                            <li ><a href="${createLink(uri: '/user/feed')}">Inicio</a></li>
                            <li class="active"><a href="${createLink(uri: '/user/cards')}">Mis Tarjetas</a></li>
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
            <!--/.well -->
        </div><!--/span-->
            <div class="span9">

                    <div class="row-fluid">

                    <div class="span12">
                        <!-- Start Home -->
                        <div id="home" class="page">

                        <div class="alert alert-block alert-invite" id="invite_container"   style="margin-top: 20px; margin-bottom: 20px;">
                            <button  type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>¡${userInstance.name.split(" ")[0]}! Invita amigos, si se inscriben en Nest5 ambos obtendrán regalos en las dirección que cada uno haya configurado.</h4>
                            <h6>Si no has configurado una dirección física aún, hazlo en tu configuración de cuenta o haciendo <a href="${createLink(uri: '/user/info')}">clic aquí</a> </h6>
                            <form class="form-search">
                                <label for="emails"><abbr id="emails_label" data-toggle="popover" data-placement="bottom" data-content="Puedes invitar hasta 10 amigos a inscribirse a Nest5. Escribe sus correos eléctronicos en el campo, separados por comas y nosotros haremos el resto. Si se inscriben, tanto tú como ellos, recibiran un regalo sorpresa de Nest5 en la dirección que tengas configurada en tu cuenta." title="" data-original-title="¿Cómo Invito mis amigos?">Direcciones de e-mail de tus Invitados <small>Separados por comas</small></abbr></label>
                                <div class="input-append">
                                    <input type="text" id="emails" name="emails" class="span12 search-query">
                                    <button  type="submit" id="inviteBtn" class="btn">¡Invitar a Nest5!</button>
                                </div>

                            </form>

                        </div>
                        <div class="alert alert-block alert-friends" id="friend_container"   style="display: none; margin-top: 20px; margin-bottom: 20px;">
                            <button  type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4  id="suggest_title">¡${userInstance.name.split(" ")[0]}! tienes Amigos en Nest5, síguelos y compartan sus experiencias de compra.</h4>


                        </div>

                        <div class="alert alert-block alert-friends" id="card_container">
                            <h4 id="card_title">Tus Tarjetas de Sellos Nest5</h4>

                            <ul class="thumbnails" id="card-list">

                            </ul>



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






        var loading = null;





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



        //when calls

        $.when(getUserCards())
                .then(function(response){
                    console.log(response);
                    var totalLength = response.length;



                    if(totalLength > 0){
                        var i = 0;
                        var html = "";
                        while(i < totalLength){
                            if(i == 0 || i % 3 == 0){
                                html+= '<div class="row-fluid" style="margin-top: 20px;"><div class="span12">';
                            }
                            var image
                            switch(response[i].stamps.length){
                                case 2: image =  "https://s3-us-west-2.amazonaws.com/com.nest5.assets/cards/sellos2.jpg";
                                    break;
                                case 3: image =  "https://s3-us-west-2.amazonaws.com/com.nest5.assets/cards/sellos3.jpg";
                                    break;
                                case 4: image =  "https://s3-us-west-2.amazonaws.com/com.nest5.assets/cards/sellos4.jpg";
                                    break;
                                case 5: image =  "https://s3-us-west-2.amazonaws.com/com.nest5.assets/cards/sellos5.jpg";
                                    break;
                                default : image =  "https://s3-us-west-2.amazonaws.com/com.nest5.assets/cards/sellos1.jpg";
                                    break;
                            }

                            html += '<li  class="span4">'
                                    +'<div class="thumbnail">'
                                    +'<h2>'+response[i].company.name+'</h2>'
                                    +'<img  style="margin-top: 20px;" src="'+image+'" alt="">' /*depende de la cantidad de sellos se pone una imagen diferente*/
                                    +'<div class="caption">'
                                    +'<h3 style="word-wrap:break-word; line-height: 0.9em;">Tienes '+response[i].stamps.length+' Sellos.</h3>'
                                    +'<p style="word-wrap:break-word; ">'+response[i].promocion.action+' '+response[i].promocion.requirement+' y con Nest5 obten: '+response[i].promocion.perk+'</p>'
//                                    +'<p><a style="word-wrap:break-word; line-height: 0.9em;" href="#" style="display: block; max-width: 10%; margin-left: auto; margin-right: auto;" data-toggle="popover" title="Indica que te gusta '+response[i].name+'" data-content="Conoce gente con los mismos gustos y personaliza tu experiencia en Nest5." class="btn btn-follow like_button tool" id="like_'+response[i].id+'_'+response[i].type+'">&hearts;</a></p>'
                                    +'</div>'
                                    +'</div>'
                                    +'</li>';
                            if(((i+1)%3==0) || (response[i+1] == null)){
                                html+='</div></div>';
                            }

                            i++;
                        }
                    }
                    else{
                        html += "A&uacute;n no tienes tarjetas de sellos, pero hay posibilidades, &iexcl;A continuaci&oacute;n te las mostramos!";
                    }

                        $("#card-list").append(html);

//
//                        $(".tool").popover({trigger: 'hover'});
                })
                .fail(callError);

        $.when(getNotUserCards())
                .then(function(response){
                    console.log(response);
                    var totalLength = response.length;



                    if(totalLength > 0){
                        var i = 0;
                        var html = "<h3>Marcas que a&uacute;n no usas pero sabemos te interesan:</h3>";
                        while(i < totalLength){
                            if(i == 0 || i % 3 == 0){
                                html+= '<div class="row-fluid" style="margin-top: 20px;"><div class="span12">';
                            }
                            var image = "https://s3-us-west-2.amazonaws.com/com.nest5.assets/cards/sellos.jpg";


                            html += '<li  class="span4">'
                                    +'<div class="thumbnail">'
                                    +'<h2>'+response[i].company.name+'</h2>'
                                    +'<img  style="margin-top: 20px;" src="'+image+'" alt="">' /*depende de la cantidad de sellos se pone una imagen diferente*/
                                    +'<div class="caption">'
                                    +'<h3 style="word-wrap:break-word; line-height: 0.9em;">&iquest;Por qu&eacute; no usar esta tarjeta?</h3>'
                                    +'<p style="word-wrap:break-word; ">'+response[i].promocion.action+' '+response[i].promocion.requirement+' y con Nest5 obten: '+response[i].promocion.perk+'</p>'
//                                    +'<p><a style="word-wrap:break-word; line-height: 0.9em;" href="#" style="display: block; max-width: 10%; margin-left: auto; margin-right: auto;" data-toggle="popover" title="Indica que te gusta '+response[i].name+'" data-content="Conoce gente con los mismos gustos y personaliza tu experiencia en Nest5." class="btn btn-follow like_button tool" id="like_'+response[i].id+'_'+response[i].type+'">&hearts;</a></p>'
                                    +'</div>'
                                    +'</div>'
                                    +'</li>';
                            if(((i+1)%3==0) || (response[i+1] == null)){
                                html+='</div></div>';
                            }

                            i++;
                        }
                    }

                    $("#card-list").append(html);

//
//                        $(".tool").popover({trigger: 'hover'});
                })
                .fail(callError);

        callMyBrands();

    });


    function getUserCards()
    {
        var url = "${createLink(controller: 'promo', action: 'showMyDeals')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: "json"
        }).promise();
    }
    function getNotUserCards()
    {
        var url = "${createLink(controller: 'promo', action: 'showNotMyDeals')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
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








    function sendEmailsBackend(emails){
        var url = "${createLink(uri: '/user/inviteFriends')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {emails: emails},
            dataType: "json"
        }).promise();
    }



</script>
</body>
</html>