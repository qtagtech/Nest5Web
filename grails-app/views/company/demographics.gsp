<!doctype html>
<html>
<head>
    <meta name="layout" content="controlPanel"/>
    <title>Nest5, Tu cupón de descuentos en las mejores Marcas - Panel de Control de Marca.</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://nest5.com/company/panel" />

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
            <h1>Panel General</h1>

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
                    <div class="column width6 first">
                        <h3>Bienvenido, <a href="#">${user.name}</a></h3>

                    </div>

                </div>
                <div class="colgroup leading">
                    <div class="column width6 first">
                        <h4>Distrubución de Edades</h4>
                        <canvas id="canvas2" height="300" width="739"></canvas>
                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />Edades de tus Usuarios</h3>
                            </header>
                            <section>
                                <p>La edad de tus usuarios es vital para definir tus estrategias. Con base en estos datos podrás saber que beneficios ofrecer que enamoren de acuerdo a la etapa de la vida en la que se encuentren:</p>
                                <table class="no-style full">
                                    <tbody>
                                    <tr>
                                        <td><b>Edad Promedio: </b></td>
                                        <td class="ta-right" id="mean_age">11</td>
                                    </tr>
                                    <tr>
                                        <td><b>La mayoría tiene: </b></td>
                                        <td class="ta-right" id="majority_age">22</td>
                                    </tr>
                                    <tr>
                                        <td><b>Usuario de Mayor Edad</b></td>
                                        <td class="ta-right" id="oldest_user">332</td>
                                    </tr>
                                    <tr>
                                        <td><b>Usuario de Menor Edad</b></td>
                                        <td class="ta-right" id="youngest_user">332</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </section>
                        </div>



                    </div>


                </div>

                <div class="colgroup leading">
                    <div class="column width3 first">
                        <h4>Distrubución de Géneros</h4>
                        <canvas id="canvas3" height="350" width="350"></canvas>
                    </div>
                    <div class="column width3">
                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />Repartición de géneros</h3>
                            </header>
                            <section>
                                <p>Tusu usarios se pueden clasificar en 3 géneros y varias subcategorías a medida que aumentan las interacciones. Los géneros pueden ser: Maculino, Femenino o Indefinido. Éste último hace referencia a los usuarios que no han especificado su genero. Las subcategorías las irá creando el tiempo, es decir a medida que tusu usuarios interactúen con otras Marcas, amigos, etc, se irán formando preferencias dentro de los géneros, como preferencias sexuales que te servirán para enamorarlos aún más con las cosas que les interesesn.</p>
                                <table class="no-style full">
                                    <tbody>
                                    <tr>
                                        <td><b><span class="label label-red">Mujeres</span></b></td>
                                        <td class="ta-right" id="gender_women">11</td>
                                    </tr>
                                    <tr>
                                        <td><b><span class="label label-green">Hombres</span></b></td>
                                        <td class="ta-right" id="gender_men">22</td>
                                    </tr>
                                    <tr>
                                        <td><b><span class="label label-silver">Sin Especificar</span></b></td>
                                        <td class="ta-right" id="gender_unknown">332</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </section>
                        </div>
                    </div>

                </div>

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

    $(document).ready(function(){
        $.when(getAges())
                .then(function(response){
                    $("#mean_age").html(response[5].value);
                    $("#majority_age").html(response[8].value);
                    $("#oldest_user").html(response[6].value);
                    $("#youngest_user").html(response[7].value);
               console.log(response);
                    var barChartData = {
                        labels : [response[0].rangeMin+' - '+response[0].rangeMax,response[1].rangeMin+' - '+response[1].rangeMax,response[2].rangeMin+' - '+response[2].rangeMax,response[3].rangeMin+' - '+response[3].rangeMax,response[4].rangeMin+' - '+response[4].rangeMax],
                        datasets : [
                            {
                                fillColor : "rgba(151,187,205,0.5)",
                                strokeColor : "rgba(151,187,205,1)",
                                data : [response[0].size,response[1].size,response[2].size,response[3].size,response[4].size]
                            },
                            /*{
                                fillColor : "rgba(151,187,205,0.5)",
                                strokeColor : "rgba(151,187,205,1)",
                                data : [28,48,40,19,96,27,100]
                            }*/
                        ]

                    }
                    var myLine = new Chart(document.getElementById("canvas2").getContext("2d")).Bar(barChartData);
                })
                .fail(callError);

        $.when(getGender())
                .then(function(response){
                    console.log(response);
                    $("#gender_women").html(response[1].percentage+"%");
                    $("#gender_men").html(response[0].percentage+"%");
                    $("#gender_unknown").html(response[2].percentage+"%");
                    var pieData = [
                        {
                            value: response[0].male,
                            color:"#4BA508"
                        },
                        {
                            value : response[1].female,
                            color : "#df0000"
                        },
                        {
                            value : response[2].unknown,
                            color : "#ccc"
                        }

                    ];

                    var myPie = new Chart(document.getElementById("canvas3").getContext("2d")).Pie(pieData);
                })
                .fail(callError);
    });





    function getAges(){
        var url = "${createLink(controller: 'statistics', action: 'ages')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: 'json'
        }).promise();
    }
    function getGender(){
        var url = "${createLink(controller: 'statistics', action: 'gender')}";

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