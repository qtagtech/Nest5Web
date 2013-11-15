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

    <h3>Tus Mensajes y Menciones.</h3>

    <div class="box box-info">Clic En un link para expandir las conversaciones.</div>

    <table id="report" class="stylized full" style="">
        <thead>
        <tr>
            <th>Usuario</th>
            <th>Fecha &uacute;ltimo Mensaje</th>
            <th class="ta-right">Sin Leer</th>
            <th class="ta-right">Total</th>
        </tr>
        </thead>
        <tbody>

        <g:each in="${distribution}">
            <tr <g:if test="${it.unread > 0}"> style="background-color: #c4ffc4;" </g:if> >
                <td class="title">
                    <div>
                        <a href="${createLink(controller: 'company', action: 'chat',params: [id: it?.user?.id])}"><b>${it?.user?.name}</b></a>

                    </div>
                </td>
                <td ><g:formatDate style="LONG" locale="es_CO" type="datetime" date="${it.last}"/> </td>
                <td class="ta-right" style="font-weight: bolder; font-size: 1.5em;">${it.unread}</td>
                <td class="ta-right" style="font-weight: bolder; font-size: 1.5em;">${it.total}</td>
            </tr>
        </g:each>
        </tbody>
    </table>


    <div class="clear">&nbsp;</div>

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

        function getObject(){
            var url = "${createLink(controller: 'statistics', action: 'objectStats')}";

            return  $.ajax({
                type: "POST",
                url: url,
                data: null,
                dataType: 'json'
            }).promise();
        }


    function callError(response){
        console.log("Error ajax");
        console.log(response);
    }
</script>
</body>
</html>