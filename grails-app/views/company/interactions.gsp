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
                        <h4>Interacciones Vs. Usuarios</h4>
                        <canvas id="canvas" width="739" height="150"></canvas>
                    </div>

                </div>
                <div class="colgroup leading">
                    <div class="column width6 first">
                        <h4>Actividad del Mes</h4>

                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />Usuarios únicos y sellos desde:</h3><h4 id="last_month_date"></h4>
                            </header>
                            <section>
                                <p>Los usuarios únicos son personas que de alguna manera hayan interactuado con tu Marca: Sellar su tarjeta, seguir la actividad, etc.</p>
                                <p>Los sellos representan el número de veces que tus usuarios han ido a tu tienda y cumplido el requisito para recibir el beneficio que estás promocionando. Un usuario puede realizar hasta 5 sellos, por lo que este valor no representa usuarios únicos sino mas bien, interacciones.</p>
                                <table class="no-style full">
                                    <tbody>
                                    <tr>
                                        <td><b>Usuarios Únicos: </b></td>
                                        <td class="ta-right" id="last_month_users">11</td>
                                    </tr>
                                    <tr>
                                        <td><b>Sellos: </b></td>
                                        <td class="ta-right" id="last_month_stamps">22</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </section>
                        </div>



                    </div>


                </div>
                <div class="colgroup leading">
                    <div class="column width6 first">
                        <h4>Penetración de tus Tarjetas</h4>

                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />Rendimiento de tus tarjetas</h3>
                            </header>
                            <section>
                                <h5>El rendimiento de tus tarjetas se mide en porcentaje de usuarios que las sellan. </h5>
                                <p>Por ejemplo, si tienes 2 tarjetas que tus usuarios pueden sellar, y un total de 300 usuarios, el rendimiento de cada una será el porcentaje de tus usuarios que sellen su tarjeta en cada una de las que hay disponibles</p>
                                <p>Este mismo rendimiento se mide de manera global, es decir, en términos del total de usuarios que haya registrados en Nest5 así no sean tus usuarios. Este dato te sirve para compararte y proponerte mejorar ya que te dirá que universo de usuarios aún no has enamorado.</p>
                                <h2 id="penetration_label"></h2>
                                <h3>Penetración/Tarjeta - Por Marca</h3>
                                <canvas id="canvas2" width="250" height="250"></canvas>
                                <h3>Penetración/Tarjeta - Global</h3>
                                <canvas id="canvas3" width="250" height="250"></canvas>

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
        $.when(getPerMonth())
                .then(function(response){
                    var ranges = response.length;
                    var labels = [];
                    var data1 = [];
                    var data2 = [];
                    var i = 0;

                    if(ranges == 1){
                        labels.push("Inicio");
                        data1.push(0);
                        data2.push(0);
                    }


                    while(i < ranges){
                        labels.push(response[i].label);
                        data1.push(response[i].users);
                        data2.push(response[i].stamps);
                        i++;
                    }


                    var lineChartData = {


                        labels : labels,
                        datasets : [
                            {
                                fillColor : "rgba(220,220,220,0.5)",
                                strokeColor : "rgba(220,220,220,1)",
                                pointColor : "rgba(220,220,220,1)",
                                pointStrokeColor : "#fff",
                                data : data1
                            },
                            {
                                fillColor : "rgba(151,187,205,0.5)",
                                strokeColor : "rgba(151,187,205,1)",
                                pointColor : "rgba(151,187,205,1)",
                                pointStrokeColor : "#fff",
                                data : data2
                            }
                        ]

                    }

                    var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);
                })
                .fail(callError);

        $.when(getLastMonth())
                .then(function(response){
                    $("#last_month_date").html(response.referenceDate);
                    $("#last_month_users").html(response.lastMonthUsers);
                    $("#last_month_stamps").html(response.lastMonthStamps);
                })
                .fail(callError);

        $.when(getPenetrations())
                .then(function(response){
                    var promos = response.length;
                    var labels = [];
                    var data1 = [];
                    var data2 = [];
                    var i = 0;
                    var html1 = "";
                    var colors = ['red#df0000', 'green#4ba508', 'blue#0085cc', 'purple#6e0a9e','gray#555','yellow#ffc806','gold#b90','silver#ccc','black#111'];
                    if (promos == 1){
                        data1.push({value: 0, color: "#ffffff"});
                        data2.push({value: 0, color: "#ffffff"});
                    }
                    while(i < promos){
                        var text = response[i].promo.text;
                        var splitted = text.split(":");
                        var lab = splitted[1];
                        var textcolor = colors.shift();
                        var colorsplitted = textcolor.split("#");
                        var name = colorsplitted[0];
                        var hexa = colorsplitted[1];
                        html1 += '<span class="label label-'+name+'">'+lab.trim()+'</span>';
                        var val1 = parseFloat(response[i].companyPenetration) //promo[i]local
                        var val2 = parseFloat(response[i].globalPenetration)  //promo[i]global
                        var obje1 = {value: val1 * 100, color: "#"+hexa};
                        var obje2 = {value: val2 * 100, color: "#"+hexa};
                        data1.push(obje1);
                        data2.push(obje2);
                        i++;
                    }

                    var myPolar1 = new Chart(document.getElementById("canvas2").getContext("2d")).PolarArea(data1);
                    var myPolar2 = new Chart(document.getElementById("canvas3").getContext("2d")).PolarArea(data2);
                    $("#penetration_label").html(html1);
                })
                .fail(callError);
    });





    function getPerMonth(){
        var url = "${createLink(controller: 'statistics', action: 'usersPerMonth')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: 'json'
        }).promise();
    }
    function getLastMonth(){
        var url = "${createLink(controller: 'statistics', action: 'lastMonthUsers')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: 'json'
        }).promise();
    }
    function getPenetrations(){
        var url = "${createLink(controller: 'statistics', action: 'penetrations')}";

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