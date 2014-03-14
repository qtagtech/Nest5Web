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
    <!-- Plugin stylesheets -->
    <link href="${resource(dir:'dashboard/plugins/misc/qtip',file:'jquery.qtip.css')}" rel="stylesheet" type="text/css" />
    <link href="${resource(dir:'dashboard/plugins/forms/uniform',file:'uniform.default.css')}" type="text/css" rel="stylesheet" />
    <link href="${resource(dir:'dashboard/plugins/forms/select',file:'select2.css')}" type="text/css" rel="stylesheet" />
    <link href="${resource(dir:'dashboard/plugins/forms/validate',file:'validate.css')}" type="text/css" rel="stylesheet" />


    <r:require modules="uniform,select2,validate,bbq,form,formwizard,formvalidation"/>

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
                        <li>Estás Aquí:</li>
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

                    <div class="col-lg-12">

                        <div class="page-header">
                            <h4>Perfil Nest5 - ${user?.name}</h4>
                        </div>

                        <form class="form-horizontal seperator" role="form">


                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Nombre Legal:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="name" type="text" value="${user?.name}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Nombre Comercial:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="name" type="text" value="${user?.name}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">N.I.T o Cédula:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="email" type="text" value="${user?.nit}" />
                                </div>
                            </div><!-- End .form-group  -->
                            
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Dirección:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="email" type="text" value="${user?.address}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Teléfono:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="email" type="text" value="${user?.telephone}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Email:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="email" type="text" value="${user?.email}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Sitio Web:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="email" type="text" value="${user?.url}" />
                                </div>
                            </div><!-- End .form-group  -->

                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="text">Mensaje de Propina</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control limit elastic" id="textarea2" rows="3" cols="5"></textarea>
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="text">Mensaje de Factura</label>
                                <div class="col-lg-10">
                                    <textarea class="form-control limit elastic" id="textarea2" rows="3" cols="5">${user?.invoiceMessage}</textarea>
                                </div>
                            </div><!-- End .form-group  -->
                                                      

                            
                            <div class="form-group">
                                <div class="col-lg-offset-2">
                                    <button type="submit" class="btn btn-info marginR10 marginL10">Guardar cambios</button>
                                    <button class="btn btn-danger">Cancelar</button>
                                </div>
                            </div><!-- End .form-group  -->
                            

                        </form>
                      
                    </div><!-- End .span12 -->

                </div><!-- End .row -->

                <div class="modal fade hide" id="myModal1">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span class="icon12 minia-icon-close"></span></button>
                        <h3>Chat layout</h3>
                    </div>
                    <div class="modal-body">
                        <ul class="messages">
                            <li class="user clearfix">
                                <a href="#" class="avatar">
                                    <img src="images/avatar2.jpeg" alt="" />
                                </a>
                                <div class="message">
                                    <div class="head clearfix">
                                        <span class="name"><strong>Lazar</strong> says:</span>
                                        <span class="time">25 seconds ago</span>
                                    </div>
                                    <p>
                                        Time to go i call you tomorrow.
                                    </p>
                                </div>
                            </li>
                            <li class="admin clearfix">
                                <a href="#" class="avatar">
                                    <img src="images/avatar3.jpeg" alt="" />
                                </a>
                                <div class="message">
                                    <div class="head clearfix">
                                        <span class="name"><strong>Sugge</strong> says:</span>
                                        <span class="time">just now</span>
                                    </div>
                                    <p>
                                        OK, have a nice day.
                                    </p>
                                </div>
                            </li>

                            <li class="sendMsg">
                                <form class="form-horizontal" action="#">
                                    <textarea class="elastic" id="textarea1" rows="1" placeholder="Enter your message ..." style="width:98%;"></textarea>
                                    <button type="submit" class="btn btn-info marginT10">Send message</button>
                                </form>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <a href="#" class="btn" data-dismiss="modal">Close</a>
                    </div>
                </div>
                
            </div><!-- End contentwrapper -->
        </div><!-- End #content -->


    </body>
</html>
