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
    <g:set var="factura" value="${data[0] ?: [:]}" />
    <g:each in="${data}" var="este" status="k"><g:set var="factura" value="${este}" /></g:each>
        <!--Body content-->
        <div id="content" class="clearfix">
            <div class="contentwrapper"><!--Content wrapper-->

                <div class="heading">

                    <h3>Invoice Page</h3>                    

                    <div class="resBtnSearch">
                        <a href="#"><span class="icon16 icomoon-icon-search-3"></span></a>
                    </div>

                    <div class="search">

                        <form id="searchform" action="search.html">
                            <input type="text" id="tipue_search_input" class="top-search" placeholder="Search here ..." />
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
                        <li class="active">Invoice Page</li>
                    </ul>

                </div><!-- End .heading-->

                <!-- Build page from here: -->
                <div class="row">

                    <div class="col-lg-12">

                        <div class="panel panel-default gradient invoice">

                            <div class="panel-heading clearfix">

                                <h4 class="left">
                                    <span><img style="max-width: 200px;" src="${picture}" alt="" class="image" /></span>
                                </h4>
                                <div class="print">
                                    <a href="#" class="tip" id="imprimir" title="Imprimir Factura"><span class="icon24 icomoon-icon-print"></span></a>
                                </div>
                                 <div class="invoice-info">
                                    <span class="number">Factura <strong class="red">#<g:formatNumber number="${(factura?.key ?: 0)}" type="number" maxFractionDigits="0" minIntegerDigits="9" /></strong></span>
                                    <span class="data gray">${factura?.value?.date ?: formatDate(date: new Date(),type: 'datetime',dateStyle: 'LONG',timeStyle: 'SHORT',locale: 'es_CO')}</span>
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
                                        <li><h3>Cliente: </h3></li>
                                        <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Dirección: </li>
                                        <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Cédula / N.I.T:</li>
                                        <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Teléfono: <strong class="red"></strong></li>
                                        <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Notas: <strong class="red"></strong></li>

                                    </ul>
                                </div>
                                <div class="clearfix"></div>

                                <table class="responsive table table-bordered">
                                    <thead>
                                      <tr>
                                        <th>Cantidad</th>
                                        <th>Producto</th>
                                        <th>Precio por Unidad</th>
                                        <th>Base Gravable</th>
                                        <th>Impuesto</th>
                                        <th>SubTotal</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${factura?.value?.items}" var="item" status="j">
                                        <tr>
                                            <td><g:formatNumber number="${(item?.cantidad ?: 0)}" type="number" maxFractionDigits="0"/></td>
                                            <td>${item?.item ?: "Sin Nombre"}</td>
                                            <td><g:formatNumber number="${(item?.precio ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                            <td><g:formatNumber number="${(item?.precio ?: 0) * (item?.cantidad ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                            <td><g:formatNumber number="${(item?.impuestos ?: 0) * ((item?.cantidad ?: 0)*(item?.precio ?: 0))}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                            <td><g:formatNumber number="${(item?.precio ?: 0) * (item?.cantidad ?: 0) + ((item?.impuestos ?: 0) * ((item?.cantidad ?: 0)*(item?.precio ?: 0)))}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table>


                                <div class="payment">
                                    <ul class="list-unstyled">
                                        <li><h3>M&eacute;todo de Pago: <span class="red"> ${factura?.value?.method}</span></h3></li>
                                        <li><span class="icon16 icomoon-icon-arrow-right-3"></span>Email: <strong class="red">${user?.email}</strong></li>
                                    </ul>
                                </div>

                                <div class="total">
                                    <h4>TOTAL:<span class="red"> <g:formatNumber number="${(factura?.value?.venta ?: 0) + (factura?.value?.impuestos ?: 0) + (factura?.value?.propinas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="total">
                                    <h4>Propina:<span class="red"> <g:formatNumber number="${(factura?.value?.propinas ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="total">
                                    <h4>Impuestos:<span class="red"> <g:formatNumber number="${(factura?.value?.impuestos ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="total">
                                    <h4>Base Gravable:<span class="red"> <g:formatNumber number="${(factura?.value?.venta ?: 0)}" type="currency" currencyCode="COP" locale="es_CO" /></span></h4>
                                </div>
                                <div class="clearfix"></div>


                                <div class="clearfix"></div>

                                <div class="invoice-footer">
                                    <p>&#x2606; ${factura?.value?.device?.resolution}</p>
                                    <p>&#x2606; ${user?.tipMessage}</p>
                                    <p>&#x2606; ${user?.invoiceMessage}</p>
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
                append : "",
                //Add this at bottom
                prepend : "<br/>Administra tu Negocio e la Nube: Facturación, Inventario, Clientes. Nest5.com"
            });
        });


    });
 </r:script>
    </body>
</html>
