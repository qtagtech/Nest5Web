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
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'chat.css')}" type="text/css" />
</head>
<body>
<div id="pageBody">
    <!-- Page title -->
    <div id="pagetitle">
        <div class="wrapper">
            <h1>Tus Mensajes</h1>

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
                <div class="box" id="message_box">
                    <div class="content">
                        <h2>${client.name}</h2>
                        <g:each in="${conversation}" status="i" var="mensaje">
                            <g:set var="actual" value="${mensaje.sender}"/>
                            <g:if test="${(i == 0) || ((conversation.collect {it.sender}.getAt(i - 1)) && (conversation.collect {it.sender}.getAt(i - 1) != actual))}">
                                <div class="mail">
                              <img class="img" src="<g:if test="${actual == 1}">${pictures.client}</g:if><g:else>${pictures.company}</g:else>" />
                                <div class="delete" id="date_${i}"><p><g:formatDate date="${mensaje.time}" style="LONG" locale="es_CO" type="datetime" /></p></div>
                              <p class="message"><span class="linet" id="line_${i}">${mensaje.message}</span><br>
                            </g:if>
                            <g:else>
                                <div class="delete" id="date_${i}"><p><g:formatDate date="${mensaje.time}" style="LONG" locale="es_CO" type="datetime" /></p></div>
                                <span class="linet" id="line_${i}">${mensaje.message}</span><br>
                            </g:else>
                            <g:if test="${(conversation.collect {it.sender}.getAt(i + 1))}">
                                <g:if test="${conversation.collect {it.sender}.getAt(i + 1) != actual}">
                                    </p>
                                </div>
                                </g:if>
                            </g:if>
                            <g:else>
                                </p>
                            </div>
                            </g:else>
                        </g:each>
                    <div class="box">
                        <textarea style="width: 100%;" rows="8" name="response" id="response_text" placeholder="Responde a ${client.name}"></textarea>
                        <a href="#" class="btn btn-blue" id="answer_button">Enviar ></a>
                    </div>

                    </div>
                </div>
            </section>
            %{--<section class="column width6 first">

    <h3>Tus Mensajes y Menciones.</h3>

    <div class="box box-info">Conversaci&oacuten con: <h2>${client.name}</h2></div>

    <div class="box" id="message_box">
        <g:each in="${conversation}" status="i" var="mensaje">

            <g:set var="actual" value="${mensaje.sender}"/>
            <g:if test="${(i == 0) || ((conversation.collect {it.sender}.getAt(i - 1)) && (conversation.collect {it.sender}.getAt(i - 1) != actual))}">
                <div <g:if test="${mensaje.sender == 2}"> class="bubble-right" </g:if> <g:else> class="bubble-left" </g:else>><h6 style="margin-top: 15px; margin-bottom: 1px; padding-bottom: 0;">${mensaje.message}</h6> <small>(<g:formatDate date="${mensaje.time}" style="LONG" locale="es_CO" type="datetime" />)</small><br>
            </g:if>
            <g:else>
               <h6 style="margin-top: 15px; margin-bottom: 1px; padding-bottom: 0;"> ${mensaje.message}</h6> <small>(<g:formatDate date="${mensaje.time}" style="LONG" locale="es_CO" type="datetime" />)</small><br>
            </g:else>

            <g:if test="${(conversation.collect {it.sender}.getAt(i + 1))}">
                <g:if test="${conversation.collect {it.sender}.getAt(i + 1) != actual}">
                    </div>
                </g:if>
            </g:if>
            <g:else>
                </div>
            </g:else>

        </g:each>


    <div class="box">
        <textarea style="width: 100%;" rows="8" name="response" id="response_text" placeholder="Responde a ${client.name}"></textarea>
        <a href="#" class="btn btn-blue" id="answer_button">Enviar ></a>
    </div>

    </div>


    <div class="clear">&nbsp;</div>



            </section>--}%


    %{--Prueba de nuevo chat--}%
    %{--<section class="column width6">


        <div class="wrapper">
            <div class="content">
                <h2>Messages</h2>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/t2222t.jpg" />
                    <p class="message">Stop licking my hand, you horse's ass! I've used one adjective to describe myself. What is it?</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/testteststestsste.jpg" />
                    <p class="message">Oh Gob, you could charm the black off a telegram boy. Daddy horny, Michael. Coo coo ca chaw. Coo coo ca chaw.</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/t2222t.jpg" />
                    <p class="message">Stop licking my hand, you horse's ass! I've used one adjective to describe myself. What is it?</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/testteststestsste.jpg" />
                    <p class="message">Oh Gob, you could charm the black off a telegram boy. Daddy horny, Michael. Coo coo ca chaw. Coo coo ca chaw.</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/t2222t.jpg" />
                    <p class="message">Stop licking my hand, you horse's ass! I've used one adjective to describe myself. What is it?</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/testteststestsste.jpg" />
                    <p class="message">Oh Gob, you could charm the black off a telegram boy. Daddy horny, Michael. Coo coo ca chaw. Coo coo ca chaw.</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/t2222t.jpg" />
                    <p class="message">Stop licking my hand, you horse's ass! I've used one adjective to describe myself. What is it?</p>
                </div>
                <div class="mail">
                    <div class="delete"><p>DELETE</p></div>
                    <img class="img" src="http://www.logistikanalys.se/version2/wp-content/uploads/2013/05/testteststestsste.jpg" />
                    <p class="message">Oh Gob, you could charm the black off a telegram boy. Daddy horny, Michael. Coo coo ca chaw. Coo coo ca chaw.</p>
                </div>
            </div>
        </div>

    </section>--}%
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
        $('body').on('click','#answer_button',function(e){
            e.preventDefault();
            $(this).attr('disabled','disabled');
            $("#response_text").attr('disabled','disabled');
            var text = $("#response_text").val();
            $.when(messageUser(text))
                    .then(function(response){
//                        console.log(response);
                            $("#answer_button").removeAttr('disabled');
                            $('.response_text').removeAttr('disabled');
                            $('.response_text').val("");
                        if(response.status == 1){
                        var html = '<div class="mail">'
                                    +'<img class="img" src="${pictures.company}" />'
                                    +'<div class="delete" id="date_45789998790738387"><p>Hace unos segundos.</p></div>'
                            +'<p class="message"><span class="linet" id="line_45789998790738387">'+response.message+'</span></p></div>';

                            $(".mail").last().after(html);
                            $("#answer_button").removeAttr('disabled');
                            $("#response_text").removeAttr('disabled');
                            $("#response_text").val('');
                        }

                    })
                    .fail(callError);
        })

         $(".linet").hover(function(){
             var line = $(this).attr('id');
             var split = line.split('_');
             var id = split[1];
             $("#date_"+id).fadeIn(100);
         },function(){
             var line = $(this).attr('id');
             var split = line.split('_');
             var id = split[1];
             $("#date_"+id).fadeOut(100);
         });

    });

        function getObject(){
            var url = "${createLink(controller: 'statistics', action: 'objectStats')}";

            return  $.ajax({
                type: "POST",
                url: url,
                data: null,
                dataType: 'json'
            }).promise();
        }

        function messageUser(message)
        {
            var url = "${createLink(controller: 'company', action: 'messageUser')}";


            return  $.ajax({
                type: "POST",
                url: url,
                data: {id: ${client.id}, message: message},
                dataType: "json"
            }).promise();
        }


    function callError(response){
        console.log("Error ajax");
        console.log(response);
    }
</script>
</body>
</html>