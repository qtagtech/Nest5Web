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
                                <li><h3>Mostrando Fechas:</h3></li>
                                <li><span class="icon16 icomoon-icon-arrow-right-3" id="dias"><g:formatDate date="${new Date()}" type="date" dateStyle="SHORT" locale="en_US"></g:formatDate></span></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                        <h4>Cantidad De Transacciones</h4>
                        <div id="poneraca">
                            <h3>${data.size()}</h3>
                            <g:each in="${data}" status="i" var="factura">

                                <h4>FACTURA DE VENTA #:<span class="red" id=""> <g:formatNumber number="${(factura?.key ?: 0)}" type="number" maxFractionDigits="0" minIntegerDigits="9" /></span></h4>

                                <table class="responsive table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>ITEM</th>
                                        <th>CANTIDAD</th>
                                        <th>VALOR UNITARIO</th>
                                        <th>SUBTOTAL</th>
                                        <th>IMPUESTOS</th>
                                        <th>TOTAL</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${factura?.value?.items}" var="item" status="j">
                                        <tr>
                                            <td>${item?.item ?: "Sin Nombre"}</td>
                                            <td><g:formatNumber number="${(item?.cantidad ?: 0)}" type="number" maxFractionDigits="0"/></td>
                                            <td><g:formatNumber number="${(item?.precio ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                            <td><g:formatNumber number="${(item?.precio ?: 0) * (item?.cantidad ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                            <td><g:formatNumber number="${(item?.impuestos ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                            <td><g:formatNumber number="${(item?.precio ?: 0) * (item?.cantidad ?: 0) + (item?.impuestos ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>

                                <div class="total">
                                    <h4>TOTAL:<span class="red"> <g:formatNumber number="${(factura?.value?.venta ?: 0) + (factura?.value?.impuestos ?: 0) + (factura?.value?.propinas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="total">
                                    <h4>Propina:<span class="red"> <g:formatNumber number="${(factura?.value?.propinas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="total">
                                    <h4>Imp.:<span class="red"> <g:formatNumber number="${(factura?.value?.impuestos ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="total">
                                    <h4>SUBTOTAL:<span class="red"> <g:formatNumber number="${(factura?.value?.venta ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="clearfix"></div>
                            </g:each>
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
        $("#poneraca").empty();
            $.when(fetchData(strDate))
            .then(function(response){
            $(".loader").toggleClass("hidden");
                if(response.status == 1){
                if(response.code == 1){
                console.log(response);
                    var cantidad = _.size(response.data);
                   var html = "<h3>"+cantidad+"<h3>";

                   for (var factura in response.data){
                   html += '<h4>FACTURA DE VENTA #:<span class="red">'+factura+'</span></h4>';
                   html += '<table class="responsive table table-bordered">' +
                    '<thead>' +
                     '<tr>' +
                      '<th>ITEM</th>' +
                       '<th>CANTIDAD</th>' +
                        '<th>VALOR UNITARIO</th>' +
                         '<th>SUBTOTAL</th>' +
                          '<th>IMPUESTOS</th>' +
                           '<th>TOTAL</th>' +
                            '</tr>' +
                             '</thead>' +
                              '<tbody>';
                   var itema = _.size(response.data[factura].items);
                    for (var item = 0; item < itema; item ++){
                    var total = parseFloat(response.data[factura].items[item].precio) * parseFloat(response.data[factura].items[item].cantidad) + parseFloat(response.data[factura].items[item].impuesto);
                        html += '<tr>' +
                         '<td>'+response.data[factura].items[item].item+'</td>' +
                          '<td>'+response.data[factura].items[item].cantidad+'</td>' +
                           '<td>'+accounting.formatMoney(response.data[factura].items[item].precio, "$", 2, ".", ",")+'</td>' +
                            '<td>'+accounting.formatMoney(parseFloat(response.data[factura].items[item].precio) * parseFloat(response.data[factura].items[item].cantidad), "$", 2, ".", ",")+'</td>' +
                             '<td>'+accounting.formatMoney(response.data[factura].items[item].impuesto, "$", 2, ".", ",")+'</td>' +
                              '<td>'+accounting.formatMoney(total, "$", 2, ".", ",")+'</td>' +
                            '</tr>';
                    }
                    var tot = parseFloat(response.data[factura].venta) + parseFloat(response.data[factura].propinas) + parseFloat(response.data[factura].impuestos);
                    html += '</tbody></table><div class="total">' +
                     '<h4>TOTAL:<span class="red">'+accounting.formatMoney(tot, "$", 2, ".", ",")+'</span></h4>' +
                      '</div>' +
                       '<div class="total">' +
                        '<h4>Propina:<span class="red">'+accounting.formatMoney(response.data[factura].propinas, "$", 2, ".", ",")+'</span></h4>' +
                         '</div>' +
                          '<div class="total">' +
                           '<h4>Imp.:<span class="red">'+accounting.formatMoney(response.data[factura].impuestos, "$", 2, ".", ",")+'</span></h4>' +
                            '</div>' +
                             '<div class="total">' +
                              '<h4>SUBTOTAL:<span class="red">'+accounting.formatMoney(response.data[factura].venta, "$", 2, ".", ",")+'</span></h4>' +
                               '</div>' +
                                '<div class="clearfix"></div>';
                   }
                   console.log(html);
                   $("#poneraca").html(html);

                }else{
                   $.pnotify({

                         title: 'No hay registros',
                         text: '&iexcl;Oops! No hay registros con las fechas que utilizaste.',
                         icon: 'picon icon16 iconic-icon-check-alt white',
                         opacity: 0.95,
                         history: false,
                         sticker: true
                     });

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
        var url = "${createLink(controller: 'company', action: 'invoiceRequest')}";

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
