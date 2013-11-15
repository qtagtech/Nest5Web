<div id="pageBody">
<!-- Page title -->
<div id="pagetitle">
<div class="wrapper">
<h1>Inteligencia Nest5 <small>*Beta*</small></h1>
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

                    <div class='expansion'>
                        <div>
                            <h3>Hola, <a href="#">${user.name}</a></h3>
                        </div>
                        <div>
                            <p>

                                Esta página reúne toda la inteligencia que Nest5 tiene a tu servico, estadísticas en tiempo real, solucione y propuestas de mercadeo basadas en completos y novedosos análisis a la información de interacción de tus Clientes con tu Marca.<br>
                                Te invitamos a revisarla constantemente, tomar nota de los mensajes que te damos, aplicarlos y mejorar tu estrategía con base en resultados. Esta página se encuentra en "Beta perpetuo" Es decir, ¡Siempres estaremos innovando, creando y mejorando tu experiencia con Nest5, para que así puedas sacarle el mejor porvecho!
                            </p>
                        </div>
                    </div>

                </div>
                <div class="column width3">
                    <h4>Información de Usuarios:</h4>
                    <hr/>
                    <h6>Número de usuarios que han interactuado desde</h6>
                    <h6><g:formatDate date="${userStats.referenceDate}" type="date" style="LONG"/></h6>
                    <p style="font-family: 'fyra-numericcircleclosed'; font-size: 6em; text-align: center; width: 100%; margin-top: 50px;">
                       ${userStats.lastMonthStamps}<br />

                    </p>
                </div>
            </div>

            <div class="colgroup leading">
                <div class="column width3 first">
                    <h4>Estadísticas de Promociones: </h4>
                    <hr/>
                    <table class="no-style full" id="promos">
                        <thead>
                        <tr>
                            <th>Promoción</th><th class="ta-center info-link" title="Describe que porcentaje de tus usuarios han usado este beneficio o sellado su tarjeta gracias a esta promoción.">Penetración en Marca</th><th class="ta-center info-link" title="Describe que porcentaje del TOTAL de usuarios de Nest5 han usado este beneficio o sellado su tarjeta gracias a esta promoción.">Penetración Global</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${userStats.promoStats}" status="i" var="promocion">
                        <tr>
                            <td class="ta-left"><strong>${i + 1}.- ${promocion.promo}</strong></td>
                            <td class="ta-center"><g:formatNumber number="${promocion.companyPenetration}" type="percent" /></td>
                            <td class="ta-center"><g:formatNumber number="${promocion.globalPenetration}" type="percent" /></td>
                        </tr>
                        </g:each>
                       </tbody>
                    </table>
                </div>
                <div class="column width3">


                    <div id='jqxChart' style="width:100%; height:${userStats.promoStats.size() * 80 + 20}px; position: relative; left: 0px; top: 0px;">

                    </div>
            </div>
            <div class="colgroup leading">
                <div class="column width6 first">
                    <h1 class="ui-widget-header">Inteligencia de Mercado</h1>


                </div>
            </div>

            <div class="colgroup leading">
                <div id="firstTimeDiv" class="column width6 first" style=" visibility: hidden;">
                    <h4>Calificación de Promociones <a href="#"></a></h4>
                    <hr/>
                    <div class="ta-center column width3">

                    </div>


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

<script type="text/javascript">
    $(document).ready(function(){
        $(".info-link").tipTip({defaultPosition: 'top'});
        var theme = getTheme();
        $(".expansion").each(function(index) {
            $(this).jqxExpander({ width: '100%', theme: theme,expanded:true });
        });

        //Gráficas

        // prepare chart data
        var sampleData = [
           // {Promotion: '1',Penetration: 1.0},
                <g:each status="i" var="actual" in="${userStats.promoStats}">
                    {Promotion: '${i + 1}',Penetration: ${actual.companyPenetration}},
                </g:each>
            ];

        // prepare jqxChart settings
        var settings = {
            title: "Penetración de Prmociones A nivel de Compañía",
            description: "Estadísticas en Tiempo Real",
            showLegend: true,
            enableAnimations: true,
            padding: { left: 20, top: 5, right: 20, bottom: 5 },
            titlePadding: { left: 90, top: 0, right: 0, bottom: 10 },
            source: sampleData,
            categoryAxis:
            {
                dataField: 'Promotion',
                showGridLines: true,
                flip: false
            },
            colorScheme: 'scheme01',
            seriesGroups:
                    [
                        {
                            type: 'column',
                            orientation: 'horizontal',
                            columnsGapPercent: 1,
                            toolTipFormatSettings: { thousandsSeparator: ',' },
                            valueAxis:
                            {
                                flip: true,
                                unitInterval: 0.1,
                                minValue: 0,
                                maxValue: 1,
                                displayValueAxis: true,
                                description: '',
                                formatFunction: function (value) {
                                    return parseInt(value * 100);
                                }
                            },
                            series: [
                                { dataField: 'Penetration', displayText: 'Porcentaje de Penetración' }
                            ]
                        }
                    ]
        };

        // setup the chart
        $('#jqxChart').jqxChart(settings);

        $("#firstTimeDiv").waypoint(function(event, direction) {
            var listSource = [];
            if(direction = "down")
            {
                $(this).html('<img src="${resource(dir: 'images', file: 'marranito_reloaded.gif')}" alt="" style="width: 12%; height: auto;"/>');
                $(this).css("visibility","visible");
                //Traer FirstTimers
                $.when(getFirstTimers())
                        .then(function(response){

                            //console.log(response)
                            $("#firstTimeDiv").waypoint('destroy');
                            var i = 0;
                            var html = '<h4>¿Qué Clientes ha traído cada promoción a tu Marca?</h4><div id="jqxTabs" class="jqx-rc-all"><ul id="unorderedList">';
                            while(i < response.length)
                            {
                                   html+= '<li style="margin-left: 40px;">'
                                            +'<div>'
                                                +'<img style="float: left;" width="32" height="32" src="${resource(dir: "images", file: "logo.png")}" alt="" class="small-image" />'
                                                +'<div style="float: left; margin-left: 6px; text-align: center; margin-top: 5px; font-size: 13px;">'
                                                    +response[i].promo.activity+' '+response[i].promo.cantArt+' '+response[i].promo.article
                                                +'</div>'
                                            +'</div>'
                                    +'</li>';
                                i++;
                            }
                            html += '</ul>';

                            i = 0;
                            while(i < response.length)
                            {
                                html += '<div class="content-container">'
                                        +'<div style="height: 300px">';
                                            html+='<div id="listbox">';
                                            var j = 0;

                                            while(j < response[i].newbies.length)
                                            {
                                                listSource.push({
                                                    label: response[i].newbies[j].user.email,
                                                    value: response[i].newbies[j].user.email,
                                                    group: "Nuevo Usuario"
                                                });
                                                //html+= '<div id="listbox"></div>';

                                                /*html += '<div id="window'+(j+1)+'" style="height: 220px;">'
                                                            +'<div>'
                                                                 +response[i].newbies[j].user.email
                                                            +'</div>'
                                                            +'<div style="overflow: hidden;">'
                                                                +'Primera Interacción el '+response[i].newbies[j].date
                                                            +'</div>'
                                                        +'</div>';*/


                                                j++;
                                            }


                                            html+="</div>"
                                          +'</div>'
                                        +'</div>';

                                i++;
                            }
                            html += "</div>";
                            $("#firstTimeDiv").fadeOut(200,function(){
                                $("#firstTimeDiv").html(html);
                                $('#jqxTabs').jqxTabs({ width: '100%', theme: theme, selectionTracker: true, animationType: 'fade' });


                                $("#listbox").jqxListBox({ itemHeight: 30, source: listSource, width: '100%', height: '100%', theme: theme });
                                //$("#listbox").jqxListBox({ touchMode: true, keyboardNavigation: false, enableMouseWheel: true });
                                $("#firstTimeDiv").fadeIn(1500);
                            });




                        })
                        .fail(callError);
            }
            event.stopPropagation();

        }, {
            offset: '100px'  // middle of the page
        });



            //event.stopPropagation();




    });








    function getFirstTimers()
    {
        var url = "${createLink(controller: 'company', action: 'firstInteraction')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {companyid : '${user.email}' },
            dataType: "json"
        }).promise();
    }




</script>