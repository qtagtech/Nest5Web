<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="dashboardLayout"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nest5 Admin</title>
    <meta name="author" content="Nest5.com" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="application-name" content="Nest5" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Force IE9 to render in normal mode -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="${resource(dir: 'dashboard/plugins/tables/dataTables',file: 'jquery.dataTables.css')}" type="text/css" rel="stylesheet" />
    <link href="${resource(dir: 'js/dashboard/plugins/tables/dataTables',file: 'TableTools.css')}" type="text/css" rel="stylesheet" />


    <r:require modules="jquerydatatables,tabletools,zeroclipboard,responsivetables,uniform,datatables,datepicker,accounting,printing"/>

</head>

<body>



<!--Body content-->
<div id="content" class="clearfix">
    <div class="contentwrapper"><!--Content wrapper-->

        <div class="heading">

            <h3>${youarehere}</h3>

            <div class="resBtnSearch">
                <a href="#"><span class="icon16 icomoon-icon-search-3"></span></a>
            </div>

            <div class="search">

                <form id="searchform" action="search.html">
                    <input type="text" id="tipue_search_input" class="top-search" placeholder="Buscar ..." />
                    <input type="submit" id="tipue_search_button" class="search-btn" value=""/>
                </form>

            </div><!-- End search -->

            <ul class="breadcrumb">
                <li>You are here:</li>
                <li>
                    <a href="#" class="tip" title="back to dashboard">
                        <span class="icon16 icomoon-icon-screen-2"></span>
                    </a>
                    <span class="divider">
                        <span class="icon16 icomoon-icon-arrow-right-3"></span>
                    </span>
                </li>
                <li class="active">${youarehere}</li>
            </ul>

        </div><!-- End .heading-->

    <!-- Build page from here: -->
        <div class="row">
        <div class="col-lg-4 col-lg-offset-4">

            <div class="panel panel-default">

                <div class="panel-heading">

                    <h4>
                        <span>Rango de Fechas</span>
                    </h4>
                    <span class="loader hidden"><img src="${resource(dir: 'dashboard/images/loaders/circular',file:'059.gif')}" width="16" height="16" alt=""></span>
                    <a href="#" class="minimize">Minimizar</a>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2">
                            <div class="input-daterange input-group" id="datepicker">
                                <input type="text" class="input-sm form-control" name="start" />
                                <span class="input-group-addon"> - </span>
                                <input type="text" class="input-sm form-control" name="end" />
                            </div>
                        </div>
                    </div>
                </div>

            </div><!-- End .panel -->

        </div><!-- End .span4 -->

    </div>
        <div class="row">

            <div class="col-lg-12">

                <div class="panel panel-default gradient invoice">

                    <div class="panel-heading clearfix">

                        <h4 class="left">
                            <span><img src="${picture}" alt="" class="image" /></span>
                        </h4>
                        <div class="print">
                            <a href="#" class="tip" title="Imprimir o Exportar" id="imprimir"><span class="icon24 icomoon-icon-print"></span></a>
                        </div>
                        <div class="invoice-info">
                            <span class="number">Generado: <strong class="red"><g:formatDate date="${new Date()}" type="datetime" dateStyle="SHORT" timeStyle="SHORT" locale="es_CO"></g:formatDate></strong></span>
                            <span class="data gray">Entre <strong id="startDate"><g:formatDate date="${new Date()}" type="date" dateStyle="SHORT" locale="en_US"></g:formatDate></strong> y <strong id="endDate"><g:formatDate date="${new Date()}" type="date" dateStyle="SHORT" locale="en_US"></g:formatDate></strong></span>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                    <div class="panel-body">
                        <div class="you">
                            <ul class="list-unstyled">
                                <li><h3>${user?.name}</h3></li>
                                <li><span class="icon16 icomoon-icon-arrow-right-3"></span>N.I.T: <strong class="red">${user?.nit}</strong></li>
                                <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Direcci&oacute;n: <strong class="red">${user?.address}</strong></li>
                                <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Tel&eacute;fono: <strong class="red">${user?.telephone}</strong></li>
                                <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Email: <strong class="red">${user?.email}</strong></li>
                            </ul>
                        </div>
                        <div class="client">
                            <ul class="list-unstyled">
                                <li><h3>Cierre D&iacute;a(s) (Z)</h3></li>
                                <li><span class="icon16 icomoon-icon-arrow-right-3" id="dias"><g:formatDate date="${new Date()}" type="date" dateStyle="SHORT" locale="en_US"></g:formatDate></span></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>

                        <table class="responsive table table-bordered">
                            <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>VALOR</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Valor Ventas Brutas</td>
                                <td id="ventas"><g:formatNumber number="${data?.ventas ?: 0}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            <tr>
                                <td>Descuentos (-)</td>
                                <td id="descuentos"><g:formatNumber number="${data?.descuentos ?: 0}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            <tr>
                                <td>Impuesto de Ventas</td>
                                <td id="impuestos"><g:formatNumber number="${data?.impuestos ?: 0}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="total">
                            <h4>Subtotal Ventas:<span class="red" id="subtotalVentas"> <g:formatNumber number="${(data?.ventas ?: 0) - (data?.descuentos ?: 0) + (data?.impuestos ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                        </div>


                        <div class="clearfix"></div>
                        <table class="responsive table table-bordered">
                            <tbody>
                            <tr>
                                <td>Devoluciones (-)</td>
                                <td id="devoluciones">$0</td>
                            </tr>
                            <tr>
                                <td>Impuesto Ventas Devoluciones (-)</td>
                                <td id="impDevoluciones">$0</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="total">
                            <h4>Ventas Netas:<span class="red" id="ventasNetas"> <g:formatNumber number="${(data?.ventas ?: 0) - (data?.descuentos ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>  %{--Aca se deben restar las devoluciones al valor que hay ahora--}%
                        </div>

                        <div class="clearfix"></div>
                        <table class="responsive table table-bordered">
                            <tbody>
                            <tr>
                                <td>Propinas</td>
                                <td id="propinas"><g:formatNumber number="${(data?.propinas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="total">
                            <h4>Ingresos A Caja: <span class="red" id="ingresosCaja"> <g:formatNumber number="${(data?.ventas ?: 0) - (data?.descuentos ?: 0) + (data?.propinas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                        </div>
                        <div class="clearfix"></div>
                        <h3>Desglose Por Medios</h3>
                        <table class="responsive table table-bordered">
                            <thead>
                                <th>MEDIO</th>
                                <th>VALOR</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td>DOMICILIO</td>
                                <td id="domicilios"><g:formatNumber number="${(data?.domicilios ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            <tr>
                                <td>LLEVAR</td>
                                <td id="llevar"><g:formatNumber number="${(data?.llevar ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            <tr>
                                <td>EFECTIVO</td>
                                <td id="efectivo"><g:formatNumber number="${(data?.efectivo ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            <tr>
                                <td>TARJETA</td>
                                <td id="tarjeta"><g:formatNumber number="${(data?.tarjeta ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="total">
                            <h4>Ventas de Contado: <span class="red" id="contado"> <g:formatNumber number="${(data?.ventas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                        </div>
                        <div class="total">
                            <h4>Ingreso Real:<span class="red" id="ingresosReales"> <g:formatNumber number="${(data?.domicilios ?: 0) + (data?.llevar ?: 0) + (data?.efectivo ?: 0) + (data?.tarjeta ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                        </div>
                        <div class="clearfix"></div>
                        <h3>Contabilizador De Transacciones</h3>
                        <table class="responsive table table-bordered">
                            <thead>
                            <th>MEDIO</th>
                            <th>Cantidad</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td>DOMICILIO</td>
                                <td id="contDomicilios"><g:formatNumber number="${(data?.contDomicilio ?: 0)}" type="number" maxFractionDigits="0" /></td>
                            </tr>
                            <tr>
                                <td>LLEVAR</td>
                                <td id="contLlevar"><g:formatNumber number="${(data?.contLlevar ?: 0)}" type="number" maxFractionDigits="0" /></td>
                            </tr>
                            <tr>
                                <td>EFECTIVO</td>
                                <td id="contEfectivo"><g:formatNumber number="${(data?.contEfectivo ?: 0)}" type="number" maxFractionDigits="0" /></td>
                            </tr>
                            <tr>
                                <td>TARJETA</td>
                                <td id="contTarjeta"><g:formatNumber number="${(data?.contTarjeta ?: 0)}" type="number" maxFractionDigits="0" /></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="total">
                            <h4>Total de Transacciones:<span class="red" id="totalTransacciones"> <g:formatNumber number="${(data?.contEfectivo ?: 0)+(data?.contTarjeta ?: 0)}" type="number" maxFractionDigits="0" /></span></h4>
                        </div>

                                <div class="clearfix"></div>

                        <div class="invoice-footer">
                            <p>Consecutivo de Ventas: <strong class="green" id="conseFirst">${data?.consecutivos?.size() > 0 ? data?.consecutivos?.first() : 0}</strong> a <strong class="green" id="conseLast">${data?.consecutivos?.size() > 0 ? data?.consecutivos?.last() : 0}</strong> </p>
                            <p>Total De Transacciones Atendidas: <strong class="blue" id="atendidas"><g:formatNumber number="${data?.consecutivos.size() > 0 ? data?.consecutivos?.size() : 0}" type="number" maxFractionDigits="0" /></strong></p>
                        </div>

                    </div>

                </div><!-- End .panel -->

            </div>

        </div><!-- End .row -->



    </div><!-- End contentwrapper -->
</div><!-- End #content -->

  <r:script>
    $(document).ready(function(){

         $("body").on('click','#imprimir', function(e) {
                    e.preventDefault();
                    $(".invoice").print({
                        //Use Global styles
                        globalStyles : true,
                        //Add link with attrbute media=print
                        mediaPrint : false,
                        //Print in a hidden iframe
                        iframe : true,
                        //Don't print this
                        noPrintSelector : ".avoid-this",
                        //Add this on top
                        append : "Free jQuery Plugins!!!<br/>",
                        //Add this at bottom
                        prepend : "<br/>jQueryScript.net!"
                    });
                    });


    });

    function checkDates(){
        var start = $("input[name=start]").val();
        var end = $("input[name=end]").val();
        var strDate = start.trim() + "-"+end.trim();
        if(start != "" && !start.isEmpty && end != "" && !end.isEmpty ){
        $(".loader").toggleClass("hidden");
            $.when(fetchData(strDate))
            .then(function(response){
            $(".loader").toggleClass("hidden");
                if(response.status == 1){
                if(response.code == 1){
                   $("#startDate").html(start);
                   $("#endDate").html(end);
                   $("#dias").html(strDate);
                   $("#ventas").html(accounting.formatMoney(response.data.ventas, "$", 2, ".", ","));
                   $("#descuentos").html(accounting.formatMoney(response.data.descuentos, "$", 2, ".", ","));
                   $("#impuestos").html(accounting.formatMoney(response.data.impuestos, "$", 2, ".", ","));
                   $("#subtotalVentas").html(accounting.formatMoney(response.data.ventas - response.data.descuentos, "$", 2, ".", ","));
                   $("#devoluciones").html(accounting.formatMoney(0, "$", 2, ".", ","));
                   $("#impDevoluciones").html(accounting.formatMoney(0, "$", 2, ".", ","));
                   $("#ventasNetas").html(accounting.formatMoney(response.data.ventas + response.data.impuestos - response.data.descuentos, "$", 2, ".", ","));
                   $("#propinas").html(accounting.formatMoney(response.data.propinas, "$", 2, ".", ","));
                   $("#ingresosCaja").html(accounting.formatMoney(response.data.ventas + response.data.impuestos + response.data.propinas - response.data.descuentos, "$", 2, ".", ","));
                   $("#domicilios").html(accounting.formatMoney(response.data.domicilios, "$", 2, ".", ","));
                   $("#llevar").html(accounting.formatMoney(response.data.llevar, "$", 2, ".", ","));
                   $("#efectivo").html(accounting.formatMoney(response.data.efectivo, "$", 2, ".", ","));
                   $("#tarjeta").html(accounting.formatMoney(response.data.tarjeta, "$", 2, ".", ","));
                   $("#contado").html(accounting.formatMoney(response.data.ventas - response.data.descuentos + response.data.impuestos, "$", 2, ".", ","));
                   $("#ingresosReales").html(accounting.formatMoney(response.data.ventas + response.data.impuestos - response.data.descuentos + response.data.propinas, "$", 2, ".", ","));
                   $("#contDomicilios").html( accounting.toFixed(response.data.contDomicilio, 0));
                   $("#contLlevar").html( accounting.toFixed(response.data.contLlevar, 0));
                   $("#contEfectivo").html( accounting.toFixed(response.data.contEfectivo, 0));
                   $("#contTarjeta").html( accounting.toFixed(response.data.contTarjeta, 0));
                   $("#totalTransacciones").html(accounting.toFixed(response.data.contTarjeta + response.data.contEfectivo, 0));
                   var long = response.data.consecutivos.length;
                   $("#conseFirst").html( accounting.toFixed(response.data.consecutivos[0], 0));
                   $("#conseLast").html( accounting.toFixed(response.data.consecutivos[long - 1], 0));
                   $("#atendidas").html( accounting.toFixed(long, 0));



                }else{
                   $.pnotify({

                         title: 'No hay registros',
                         text: '&iexcl;Oops! No hay registros con las fechas que utilizaste.',
                         icon: 'picon icon16 iconic-icon-check-alt white',
                         opacity: 0.95,
                         history: false,
                         sticker: true
                     });
                     $("#startDate").html(start);
                       $("#endDate").html(end);
                       $("#dias").html(strDate);
                       $("#ventas").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#descuentos").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#impuestos").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#subtotalVentas").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#devoluciones").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#impDevoluciones").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#ventasNetas").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#propinas").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#ingresosCaja").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#domicilios").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#llevar").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#efectivo").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#tarjeta").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#contado").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#ingresosReales").html(accounting.formatMoney(0, "$", 2, ".", ","));
                       $("#contDomicilios").html( accounting.toFixed(0, 0));
                       $("#contLlevar").html( accounting.toFixed(0, 0));
                       $("#contEfectivo").html( accounting.toFixed(0, 0));
                       $("#contTarjeta").html( accounting.toFixed(0, 0));
                       $("#totalTransacciones").html(accounting.toFixed(0, 0));
                       var long = 0;
                       $("#conseFirst").html( accounting.toFixed(0, 0));
                       $("#conseLast").html( accounting.toFixed(0, 0));
                       $("#atendidas").html( accounting.toFixed(long, 0));
                }


                }else{
                   $.pnotify({
                         type: 'error',
                         title: '&iexcl;Lo sentimos!',
                         text: 'Ha pasado algo inesperado en el servidor. Int&eacute;ntalo de nuevo por favor.',
                         icon: 'picon icon24 typ-icon-cancel white',
                         opacity: 0.95,
                         hide:false,
                         history: false,
                         sticker: false
                     });
                }
            })
            .fail(callError);
        }
    };

    function fetchData(dates){
        var url = "${createLink(controller: 'company', action: 'reportRequest')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {reportDate: dates},
            dataType: "json"
        }).promise();
    }
    function callError(data){
    $(".loader").toggleClass("hidden");
        console.log("Error");
        console.log(data);
    }
  </r:script>



</body>
</html>
