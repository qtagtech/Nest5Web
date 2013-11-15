<!doctype html>
<html>
<head>
    <meta name="layout" content="controlPanel"/>
    <title>Nest5, Tu cupón de descuentos en las mejores Marcas - Panel de Control de Marca.</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://nest5.com/company/messages" />

    <r:require modules="orangebox,gritter,waypoints,anythingslider,tiptip,autoSuggest"/>
    %{--<script src="http://ajax.googleapis.com/ajax/libs/dojo/1.7.2/dojo/dojo.js"></script>--}%

    <script src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>


<link rel="stylesheet" href="${resource(dir: 'css',file: 'orangebox.css')}" type="text/css" />

    %{--<link rel="stylesheet" href="${resource(dir: 'js/libs/tiptip',file: 'tipTip.css')}" type="text/css" />--}%
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'jquery.gritter.css')}" type="text/css" />
    <link rel="stylesheet" href="${resource(dir: 'css/anythingslider',file: 'anythingslider.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/autoSuggest',file: 'autoSuggest.css')}" type="text/css" />

    <style>




    .contacts{
        width:90%;
        background:#f1f1f1;
        margin:50px auto 0;
        border:1px #ccc solid;
    }

    .contact{
        font-size:16px;
        background:#f1f1f1;
        position:relative;
    }

    .contacts li{
        height:40px;
        padding:5px;
        border-bottom:1px solid #ccc;
    }

    .contacts li:last-child{
        border:none;
    }

    .firstname, .lastname{
        position:relative;
        top:10px;
        font-family: 'Passion One', cursive!important;
        color:#444;
    }

    .firstname{
        margin-left:60px;
    }

    input[type="checkbox"]{
        display:none;
    }

    input[type="checkbox"] + label span{
        display:inline-block;
        position:absolute;
        right:10px;
        top:11px;
        width:25px;
        height:25px;
        cursor:pointer;
        -webkit-transition:.1s;
        -moz-transition:.1s;
        -o-transition:.1s;
        transition:.1s;
        background:url(http://cdn1.iconfinder.com/data/icons/Hand_Drawn_Web_Icon_Set/128/bullet_deny.png) no-repeat;
        -webkit-background-size:25px;
        -moz-background-size:25px;
        -o-background-size:25px;
        background-size:25px;
        background-position:center center;
    }

    input[type="checkbox"]:checked + label span{
        background:url(http://cdn1.iconfinder.com/data/icons/Hand_Drawn_Web_Icon_Set/128/bullet_accept.png) no-repeat;
        -webkit-background-size:25px;
        -moz-background-size:25px;
        -o-background-size:25px;
        background-size:25px;
        background-position:center center;
        height:40px;
        padding:5px;
        top:-1px;
        right:-35px;
        background-color:#f1f1f1;
        border:1px #ccc solid;
        border-left:none;
    }

        /* Pics of the contacts */


    .contact:before{
        width:40px;
        height:40px;
        content:"";
        position:absolute;
        display:block;
        -webkit-border-radius:15px;
        -moz-border-radius:15px;
        border-radius:15px;
        -webkit-background-size: cover;
        -moz-background-size:cover;
        -o-background-size:cover;
        background-size:cover;

    }

    button{
        appearance:none;
        -webkit-appearance:none;
        -moz-appearance:none;
        background:#e74c3c;
        border:none;
        width:250px;
        height:50px;
        color:white;
        font-size:24px;
        cursor:pointer;
        font-family: 'Passion One', cursive!important;
    }

    button:active{
        background:#67B500;
    }
        ul, ol {padding-left: 0; list-style: none;}

    </style>

</head>
<body>
<div id="pageBody">
    <!-- Page title -->
    <div id="pagetitle">
        <div class="wrapper">
            <h1>Te Presentamos tu Clientes Nest5</h1>

            <!-- Quick search box -->
            <form action="" method="get"><input class="" type="text" id="q" name="q" /></form>
        </div>
    </div>
    <!-- End of Page title -->

    <!-- Page content -->
    <div id="page">
        <!-- Wrapper -->
        <div class="wrapper">
            <!-- Left column/section -->
            <section class="column width6 first">
                <div class="colgroup leading">
                    <div class="column width3 first">
                        <h4>Clasificaci&oacute;n por Tiempo</h4>
                        <small>Los que han tenido en cuenta tu Marca.</small>
                        <hr/>
                        <ul class="nav nav-pills nav-justified">
                            <li class="active select_time"><a href="#" id="oneweek_select">Semana</a></li>
                            <li class="select_time"><a href="#"  id="onemonth_select">Mes</a></li>
                            <li class="select_time"><a href="#"  id="moreonemonth_select">+Mes</a></li>
                        </ul>
                        <hr />
                        <ul id="lastWeek" class="contacts">



                        </ul>

                    </div>
                    <div class="column width3">
                        <h4>Clasificaci&oacute;n por inactividad.</h4>
                        <small>Personas que han indicado que les gustas, pero nunca han sellado su tarjeta.</small>
                        <hr/>

                        <ul id="neverCame" class="contacts">



                        </ul>

                    </div>
                </div>
                <div class="colgroup leading">
                    <div class="column width3 first">
                        <h4>Clasificaci&oacute;n por baja Interacci&oacute;n</h4>
                        <small>Personas que solo tienen un sello y son f&aacute;ciles de atraer porque fue hace poco tiempo.</small>
                        <hr/>
                        <ul class="nav nav-pills nav-justified">
                            <li class="active select_low"><a href="#" id="lastweek_select">&Uacute;ltima Semana</a></li>
                            <li class="select_low"><a href="#"  id="lastmonth_select">&Uacute;ltimo Mes</a></li>
                        </ul>
                        <hr />
                        <ul id="lowInteraction" class="contacts">



                        </ul>

                    </div>
                    <div class="column width3">
                        <h4>Clasificaci&oacute;n por Fidelidad.</h4>
                        <small>Los usuarios que m&aacute;s quieren tu marca.</small>
                        <hr/>
                        <ul class="nav nav-pills nav-justified">
                            <li class="active select_fidelity"><a href="#" id="five_select">Primeros 5</a></li>
                            <li class="select_fidelity"><a href="#"  id="almost_select">Casi lo Logran</a></li>
                            <li class="select_fidelity"><a href="#"  id="most_select">Los + Fieles</a></li>
                        </ul>
                        <hr />
                        <ul id="mostFaithful" class="contacts">



                        </ul>

                    </div>

                </div>
                <div class="colgroup">
                    <div class="column width6">
                        <div class="box">
                            <textarea style="width: 98%; margin-left: auto; margin-right: auto;" rows="8" name="response" id="response_text" placeholder="Enviar Mensaje a M&uacute;ltiples Usuarios"></textarea>
                            <a href="#" class="btn btn-blue" id="answer_button">Enviar ></a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- End of Left column/section -->

            <!-- Right column/section -->
            <aside class="column width2">
                <div id="rightmenu">
                    <header>
                        <h3>Tu Cuenta</h3>
                    </header>
                    <dl class="first">
                        <dt><img width="16" height="16" alt="" src="${resource(dir: 'img',file:'key.png')}"></dt>
                        <dd><a href="#">${user.name} (Admin)</a></dd>
                        <dd class="last">Cuenta Full.</dd>

                        <dt><img width="16" height="16" alt="" src="${resource(dir: 'img',file:'help.png')}"></dt>
                        <dd><a href="#">Soporte</a></dd>
                        <dd class="last">Documentación y FAQ</dd>
                    </dl>
                </div>
                <div class="content-box">
                    <header>
                        <h3>Noticias Nest5</h3>
                    </header>
                    <section>
                        <dl>
                            <dt>Te damos la Bienvenida A Nest5</dt>
                            <dd><a href="#">Leer Más</a></dd>
                            <dt>¿Qué Es y Cómo funciona Nest5?.</dt>
                            <dd><a href="#">Leer Más</a></dd>
                        </dl>
                    </section>
                </div>
            </aside>
            <!-- End of Right column/section -->

        </div>
        <!-- End of Wrapper -->
    </div>
    <!-- End of Page content -->
</div>


<script>

    $(document).ready(function(){
        $("<style type='text/css' id='dynamic' />").appendTo("head");
        timeInteraction('oneweek');
        neverInteraction();
        lowInteraction('oneweek');
        faithfulInteraction('firstfive');





        $('body').on('click', '#oneweek_select',function(e){
            e.preventDefault();
            $("#lastWeek").html("");
            timeInteraction('oneweek');
            $(".select_time").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#onemonth_select',function(e){
            e.preventDefault();
            $("#lastWeek").html("");
            timeInteraction('onemonth');
            $(".select_time").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#moreonemonth_select',function(e){
            e.preventDefault();
            $("#lastWeek").html("");
            timeInteraction('moreonemonth');
            $(".select_time").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#lastweek_select',function(e){
            e.preventDefault();
            $("#lowInteraction").html("");
            lowInteraction('oneweek');
            $(".select_low").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#lastmonth_select',function(e){
            e.preventDefault();
            $("#lowInteraction").html("");
            lowInteraction('onemonth');
            $(".select_low").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#five_select',function(e){
            e.preventDefault();
            $("#mostFaithful").html("");
            faithfulInteraction('firstfive');
            $(".select_fidelity").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#almost_select',function(e){
            e.preventDefault();
            $("#mostFaithful").html("");
            faithfulInteraction('almostthere');
            $(".select_fidelity").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });
        $('body').on('click', '#most_select',function(e){
            e.preventDefault();
            $("#mostFaithful").html("");
            faithfulInteraction('mostactive');
            $(".select_fidelity").each(function(i,v){
                $(this).removeClass('active');
            });
            $(this).parent('li').toggleClass('active');
        });

        $('body').on('click','.user_select',function(e){
            var userid = $(this).data('user');

            if ($(this).is(':checked')) {
                var ind = selectedUsers.indexOf(userid);
                if(ind == -1){
                    selectedUsers.push(userid);
                }

            } else {
                var ind = selectedUsers.indexOf(userid);
                if(ind > -1){
                    selectedUsers.splice(ind, 1);
                }
            }
            checkAll();
        });
        $('body').on('click','#answer_button',function(e){
            e.preventDefault();
            $(this).attr('disabled','disabled');
            $("#response_text").attr('disabled','disabled');
            var text = $("#response_text").val();
            sendMulticast(text);
        });




    });

    function timeInteraction(type){
        $.when(getUsers(type))
                .then(function(response){
                    console.log(response);
                    var html = "";
                    var i = 0;
                    var length = response.length;
                    while(i < length){
                        html += '<li class="contact i'+(i+1)+'"><span class="firstname">'+response[i].name+'</span><span class="lastname"></span><input class="user_select" data-user="'+response[i].id+'" type="checkbox" id="foo'+(i+1)+'" /><label for="foo'+(i+1)+'"><span></span></label></li>';
                        var previous =  $("#dynamic").text();
//                        console.log(previous);
                        $("#dynamic").text(previous+".i"+(i+1)+":before{background:url(" +response[i].picture+ ") no-repeat center center;-webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;}");

                        i++;
                    }

                    $("#lastWeek").append(html);

                    if(length == 0){
                        $("#lastWeek").append("<h4 style='padding: 10px;'>No hubo usuarios en este per&iacute;odo de tiempo. Quiz&aacute;s puedas aumentar tus interacciones poniendo una <a href='${createLink(controller: 'company',action: 'panel')}?activity=addpromo'>nueva promoci&oacute;n aqu&iacute;</a></h4>")
                    }
                    checkAll();
                })
                .fail(callError);
    }

    function neverInteraction(){
        $.when(getUsers('nevercame'))
                .then(function(response){
//                    console.log(response);
                    var html = "";
                    var i = 0;
                    var length = response.length;
                    while(i < length){
                        html += '<li class="contact two_i'+(i+1)+'"><span class="firstname">'+response[i].name+'</span><span class="lastname"></span><input type="checkbox" class="user_select" data-user="'+response[i].id+'" id="two_foo'+(i+1)+'" /><label for="two_foo'+(i+1)+'"><span></span></label></li>';
                        var previous =  $("#dynamic").text();
//                        console.log(previous);
                        $("#dynamic").text(previous+".two_i"+(i+1)+":before{background:url(" +response[i].picture+ ") no-repeat center center;-webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;}");

                        i++;
                    }

                    $("#neverCame").append(html);

                    if(length == 0){
                        $("#neverCame").append("<h4 style='padding: 10px;'>No hay usuarios que nunca hayan venido y digan que les gustas. &iexcl;Esto es algo bueno! pues tus usuarios interact&uacute;n activamente con tu Marca.</h4>")
                    }
                    checkAll();
                })
                .fail(callError);
    }

    function lowInteraction(type){
        $.when(getUsers('onestamp'))
                .then(function(response){
//                    console.log(response);
                    var html = "";
                    var i = 0;
                    if(type == 'oneweek'){
                        var length = response.oneweek.length;
                        while(i < length){
                            html += '<li class="contact three_i'+(i+1)+'"><span class="firstname">'+response.oneweek[i].name+'</span><span class="lastname"></span><input type="checkbox" class="user_select" data-user="'+response.oneweek[i].id+'" id="three_foo'+(i+1)+'" /><label for="three_foo'+(i+1)+'"><span></span></label></li>';
                            var previous =  $("#dynamic").text();
//                        console.log(previous);
                            $("#dynamic").text(previous+".three_i"+(i+1)+":before{background:url(" +response.oneweek[i].picture+ ") no-repeat center center;-webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;}");

                            i++;
                        }

                        $("#lowInteraction").append(html);

                        if(length == 0){
                            $("#lowInteraction").append("<h4 style='padding: 10px;'>Tu Marca no cuenta con usuarios de baja interacci&oacute;n en la &uacute;ltima semana. <a href='${createLink(controller: 'company',action: 'panel')}?activity=addpromo'>Mot&iacute;valos creando beneficios para ellos aqu&iacute;</a></h4>")
                        }
                    }
                    if(type == 'onemonth'){
                        var length = response.onemonth.length;
                        while(i < length){
                            html += '<li class="contact three_i'+(i+1)+'"><span class="firstname">'+response.onemonth[i].name+'</span><span class="lastname"></span><input type="checkbox" class="user_select" data-user="'+response.onemonth[i].id+'" id="three_foo'+(i+1)+'" /><label for="three_foo'+(i+1)+'"><span></span></label></li>';
                            var previous =  $("#dynamic").text();
//                        console.log(previous);
                            $("#dynamic").text(previous+".three_i"+(i+1)+":before{background:url(" +response.onemonth[i].picture+ ") no-repeat center center;-webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;}");

                            i++;
                        }

                        $("#lowInteraction").append(html);

                        if(length == 0){
                            $("#lowInteraction").append("<h4 style='padding: 10px;'>Tu Marca no cuenta con usuarios de baja interacci&oacute;n en el &uacute;ltimo mes. <a href='${createLink(controller: 'company',action: 'panel')}?activity=addpromo'>Mot&iacute;valos creando beneficios para ellos aqu&iacute;</a></h4>")
                        }
                    }

                    checkAll();
                })
                .fail(callError);

    }
    function faithfulInteraction(type){

        $.when(getUsers(type))
                .then(function(response){
//                    console.log(response);
                    var html = "";
                    var i = 0;
                    var length = response.length;
                    while(i < length){
                        html += '<li class="contact four_i'+(i+1)+'"><span class="firstname">'+response[i].name+'</span><span class="lastname"></span><input type="checkbox" class="user_select" data-user="'+response[i].id+'" id="four_foo'+(i+1)+'" /><label for="four_foo'+(i+1)+'"><span></span></label></li>';
                        var previous =  $("#dynamic").text();
//                        console.log(previous);
                        $("#dynamic").text(previous+".four_i"+(i+1)+":before{background:url(" +response[i].picture+ ") no-repeat center center;-webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;}");

                        i++;
                    }

                    $("#mostFaithful").append(html);

                    if(length == 0){
                        $("#mostFaithful").append("<h4 style='padding: 10px;'>&iexcl;Oh Oh! No tienes usuarios en esta categor&iacute;a. Te recomendamos que crees formas de interactuar como beneficios para tus usuarios ya <a href='${createLink(controller: 'company',action: 'panel')}?activity=addpromo'>aqu&iacute;</a> </h4>")
                    }
                    checkAll();
                })
                .fail(callError);
    }


        function getUsers(type){
            var url = "${createLink(controller: 'company', action: 'selectUsers')}";

            return  $.ajax({
                type: "POST",
                url: url,
                data: {type: type},
                dataType: 'json'
            }).promise();
        }




    function callError(response){
        console.log("Error ajax");
        console.log(response);
    }
var selectedUsers = [];
function checkAll(){
//    console.log(selectedUsers);
    $(".user_select").prop('checked',false);
    var length = selectedUsers.length;
    var i = 0;
    while(i < length){
        $("input[data-user="+selectedUsers[i]+"]").prop('checked',true);
        i++;
    }
}
    function sendMulticast(message){

        var length = selectedUsers.length;
        var sent = [];
        var remain = length;
        var i = 0;
        while(i < length){
            remain--;
            var user = selectedUsers[i];
            $.when(messageUser(user,message))
                    .then(function(response){

                        if(response.status == 1){
                            sent.push(response.user);
                        }
                    })
                    .fail(callError);
            if(remain == 0){
                var diff = [];
                jQuery.grep(sent, function(el) {
                    if (jQuery.inArray(el, selectedUsers) == -1) diff.push(el);
                });
                selectedUsers = diff;
                //tomar todos los sent y quitarles el chulo recorriendolo y haciendo checkAll();
                $("#response_text").val('');
                $("#response_text").removeAttr('disabled');
                $("#answer_button").removeAttr('disabled');
            }
            i++;
        }
        checkAll();
    }
    function messageUser(user,message)
    {
        var url = "${createLink(controller: 'company', action: 'messageUser')}";


        return  $.ajax({
            type: "POST",
            url: url,
            data: {id: user, message: message},
            dataType: "json"
        }).promise();
    }

</script>
</body>
</html>