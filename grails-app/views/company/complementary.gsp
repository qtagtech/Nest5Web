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
                    <div class="column width3 first">
                        <h4>Distribución de gustos Generales</h4>
                        <canvas id="canvas2" height="300" width="360"></canvas>
                        <h2 id="universe_label"></h2>
                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />Universos de Gustos</h3>
                            </header>
                            <section>
                                <p>Los universos son clasificaciones que abarcan todo en la vida, desde lo que el usuario visita y come hasta donde le gusta vivir, de manera muy general.</p>

                            </section>
                        </div>



                    </div>
                    <div class="column width3">
                        <h4>Familias de Gustos</h4>
                        <canvas id="canvas3" height="300" width="360"></canvas>
                        <h2 id="family_label"></h2>
                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />Conoce cada vez más a tusu usuarios.</h3>
                            </header>
                            <section>
                                <p>Las familias especifican a mayor detalle los gustos de tusu usarios, por ejemplo no solo dicen si les gusta un deporte, sino que tipo de deportes: Deportes de blaón, acuáticos, de equipo, individuales, etc.</p>
                            </section>
                        </div>
                    </div>


                </div>

                <div class="colgroup leading">
                    <div class="column width6 first">
                        <h4>Categorías de Gustos</h4>
                        <canvas id="canvas4" height="300" width="739"></canvas>
                        <h2 id="category_label"></h2>
                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />¿A donde van tus usuarios además de tue empresa?</h3>
                            </header>
                            <section>
                                <p>Estosdatos te dan una visión mucho más específica de cosas que le gustan a tus usuarios. Además, en las categroías se clasifica a los usurios por el tipo de empresas que visitan en Nest5, es decir, aquí puedes ver a que otro tipo de empresas les gusta ir a tus usuarios con el fin de saber con podrías hacer una alianza o incluso, en que mercado incursionar.</p>
                            </section>
                        </div>
                    </div>


                </div>
                <div class="colgroup leading">
                    <div class="column width6 first">
                        <h4>Gustos Específicos</h4>
                        <canvas id="canvas5" height="300" width="739"></canvas>
                        <h2 id="object_label"></h2>
                        <div class="content-box corners">
                            <header>
                                <h3><img src="${resource(dir: 'img', file: 'information.png')}" alt="" />¡El nivel más alto de detalle posible!</h3>
                            </header>
                            <section>
                                <p>Ten cuidado con la información de esta categoría. Estos son los gustos al nivel más detallado posible de tus clientes y bien manejado son extremadamente poderosos. Puedes saber cual es su equipo de fútbol favorito, su religión, etc. Úsalos de manera inteligente para enamorar a unos cuantos, o quizás ¿Tus usuarios en la gran mayoría son muy parecidos? (P.Ej. al 60% les gusta la banda de rock Aerosmith) - ¡Aprovecha esto! haz un evento temático y tus clientes ¡No te cambiarán por nadie!</p>
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

    var colors = ['red#df0000', 'green#4ba508', 'blue#0085cc', 'purple#6e0a9e','gray#555','yellow#ffc806','gold#b90','silver#ccc','black#111'];

        $.when(getUniverse())
                .then(function(response){
//                    console.log(response);


                    var cant = response.total;

                    var i = 0;
                    var pieData = [];

                    var html1 = "";
                    while(i < cant){

                        var label = response.labels[i];
//                        console.log(response.labels[i]+" - "+response.results[label]);
                        var textcolor = colors.shift();
                        var colorsplitted = textcolor.split("#");
                        var name = colorsplitted[0];
                        var hexa = colorsplitted[1];
                        html1 += '<span class="label label-'+name+'">'+label+'</span>';
                        pieData.push({

                            value: response.results[label],
                            color:"#"+hexa
                        });
                        i++
                    }
                      $("#universe_label").html(html1);


                    var myPie = new Chart(document.getElementById("canvas2").getContext("2d")).Pie(pieData);
                    if(cant == 0){
                        $("#canvas2").after("<h1>Aún no hay datos suficientes para darte datos.</h1></h3>Con el uso y el tiempo Nest5 mejora tus estádisticas</h3>");
                        $("#canvas2").remove();
                    }
                })
                .fail(callError);

        $.when(getFamily())
                .then(function(response){
//                    console.log(response);


                    var cant = response.total;

                    var i = 0;
                    var pieData = [];

                    var html1 = "";
                    while(i < cant){

                        var label = response.labels[i];
//                        console.log(response.labels[i]+" - "+response.results[label]);
                        var textcolor = colors.shift();
                        var colorsplitted = textcolor.split("#");
                        var name = colorsplitted[0];
                        var hexa = colorsplitted[1];
                        html1 += '<span class="label label-'+name+'">'+label+'</span>';
                        pieData.push({

                            value: response.results[label],
                            color:"#"+hexa
                        });
                        i++
                    }
                    $("#family_label").html(html1);
                        var myPie = new Chart(document.getElementById("canvas3").getContext("2d")).Pie(pieData);
                    if(cant == 0){
                        $("#canvas3").after("<h1>Aún no hay datos suficientes para darte datos.</h1></h3>Con el uso y el tiempo Nest5 mejora tus estádisticas</h3>");
                        $("#canvas3").remove();
                    }
                })
                .fail(callError);

    $.when(getCategory())
            .then(function(response){
//                    console.log(response);


                var cant = response.total;

                var i = 0;
                var pieData = [];

                var html1 = "";
                while(i < cant){

                    var label = response.labels[i];
//                        console.log(response.labels[i]+" - "+response.results[label]);
                    var textcolor = colors.shift();
                    var colorsplitted = textcolor.split("#");
                    var name = colorsplitted[0];
                    var hexa = colorsplitted[1];
                    html1 += '<span class="label label-'+name+'">'+label+'</span>';
                    pieData.push({

                        value: response.results[label],
                        color:"#"+hexa
                    });
                    i++
                }
                $("#category_label").html(html1);
                var myPie = new Chart(document.getElementById("canvas4").getContext("2d")).Pie(pieData);
                if(cant == 0){
                    $("#canvas4").after("<h1>Aún no hay datos suficientes para darte datos.</h1></h3>Con el uso y el tiempo Nest5 mejora tus estádisticas</h3>");
                    $("#canvas4").remove();
                }
            })
            .fail(callError);

    $.when(getObject())
            .then(function(response){
//                    console.log(response);


                var cant = response.total;

                var i = 0;
                var pieData = [];

                var html1 = "";
                while(i < cant){

                    var label = response.labels[i];
//                        console.log(response.labels[i]+" - "+response.results[label]);
                    var textcolor = colors.shift();
                    var colorsplitted = textcolor.split("#");
                    var name = colorsplitted[0];
                    var hexa = colorsplitted[1];
                    html1 += '<span class="label label-'+name+'">'+label+'</span>';
                    pieData.push({

                        value: response.results[label],
                        color:"#"+hexa
                    });
                    i++
                }
                $("#object_label").html(html1);
                var myPie = new Chart(document.getElementById("canvas5").getContext("2d")).Pie(pieData);

                if(cant == 0){
                    $("#canvas5").after("<h1>Aún no hay datos suficientes para darte datos.</h1></h3>Con el uso y el tiempo Nest5 mejora tus estádisticas</h3>");
                    $("#canvas5").remove();
                }
            })
            .fail(callError);






    function getUniverse(){
        var url = "${createLink(controller: 'statistics', action: 'universeStats')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: null,
            dataType: 'json'
        }).promise();
    }

        function getFamily(){
            var url = "${createLink(controller: 'statistics', action: 'familyStats')}";

            return  $.ajax({
                type: "POST",
                url: url,
                data: null,
                dataType: 'json'
            }).promise();
        }
        function getCategory(){
            var url = "${createLink(controller: 'statistics', action: 'categoryStats')}";

            return  $.ajax({
                type: "POST",
                url: url,
                data: null,
                dataType: 'json'
            }).promise();
        }
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