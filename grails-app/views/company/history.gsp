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


    <r:require modules="jquerydatatables,tabletools,zeroclipboard,responsivetables,uniform,datatables"/>

</head>
      
    <body>



        <!--Body content-->
        <div id="content" class="clearfix">
            <div class="contentwrapper"><!--Content wrapper-->

                <div class="heading">

                    <h3>Data tables</h3>                    

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
                        <li>Te encuentras en:</li>
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

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default gradient">
                                <div class="panel-heading">
                                    <h4>
                                        <span>Tu Historial de Ventas</span>
                                    </h4>
                                </div>
                                <div class="panel-body noPad clearfix">
                                    <table cellpadding="0" cellspacing="0" border="0" class="tableTools display table table-bordered" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Dispositivo</th>
                                                <th>Método</th>
                                                <th>¿Domicilio?</th>
                                                <th>Valor</th>
                                                <th>Descuento</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in="${sales}" status="i" var="venta">
                                            <tr class="<g:if test="${i % 2 == 0}">even</g:if><g:else>odd</g:else> gradeX">
                                                <td><g:formatDate date="${venta?.fields?.date}" type="datetime" style="LONG" timeStyle="SHORT" locale="es_CO"/></td>
                                                <td>${venta?.device?.uid}</td>
                                                <td>${venta?.fields?.payment_method}</td>
                                                <td class="center">${venta?.fields?.delivery}</td>
                                                <td class="center"><g:formatNumber number="${venta?.fields?.received}" type="currency" currencyCode="COP" locale="es_CO" /></td>
                                                <td class="center"><g:formatNumber number="${venta?.fields?.discount}" type="percent" maxFractionDigits="2" /></td>
                                                <td class="center"><g:formatNumber number="${venta?.fields?.received - (venta?.fields?.received * venta?.fields?.discount)}" type="currency" currencyCode="COP" locale="es_CO"/></td>
                                            </tr>
                                        </g:each>

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Dispositivo</th>
                                                <th>Método</th>
                                                <th>¿Domicilio?</th>
                                                <th>Valor</th>
                                                <th>Descuento</th>
                                                <th>Total</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                            </div><!-- End .panel -->

                        </div><!-- End .span12 -->

                    </div><!-- End .row -->
               
    			<!-- Page end here -->
    				
            </div><!-- End contentwrapper -->
        </div><!-- End #content -->




    </body>
</html>
