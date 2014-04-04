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
                                <label class="col-lg-2 control-label" for="readonly">ID Único</label>
                                <div class="col-lg-10">
                                    <input type="text" name="uid" id="uid" class="form-control uniform-input text" readonly="readonly" value="${element?.uid ?: 0000000000}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="username">Nombre</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="name" name="name" type="text" value="${element?.name ?: "Sin Nombre"}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="readonly">Fecha de Registro</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control uniform-input text" readonly="readonly" value="<g:formatDate date="${element?.registeredOn ?: new Date()}" type="datetime" style="LONG" timeStyle="SHORT" locale="es_CO"/>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="resolution">Resolución de Facturación:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="resolution" name="resolution" type="text" value="${element?.resolutionMessage ?: ""}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="currentSale">Prefijo de Facturación:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="prefix" name="prefix" type="text" value="${element?.prefix ?: ""}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="currentSale">Inicio de Facturación:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="currentSale" name="currentSale" type="text" value="${element?.currentSale ?: 0}" />
                                </div>
                            </div><!-- End .form-group  -->
                            <div class="form-group">
                                <label class="col-lg-2 control-label" for="maxSale">Final de Facturación:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" id="maxSale" name="maxSale" type="text" value="<g:formatNumber number="${element?.maxSale ?: 0}" type="number" maxFractionDigits="0" />" />
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
            </div><!-- End contentwrapper -->
        </div><!-- End #content -->

    <r:script>

    $(document).ready(function(){
        if(${element?.currentSale ?: 0} != 0){
            $("input#currentSale").attr("readonly","readonly");
        }
        $( "form" ).submit(function( e ) {
             e.preventDefault();
             var btn = $("form").find(":submit");
         btn.hide(20);
         var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
         $("form").append(lElement);
         $.when(saveInfo())
             .then(function(response){


                 if(response.status == 1){
                     $.pnotify({
                                         type: 'success',
                                         title: '&iexcl;&Eacute;xito!',
                                         text: 'Se ha actualizado la informaci&oacute;n con &eacute;xito.',
                                         icon: 'picon icon16 iconic-icon-check-alt white',
                                         opacity: 0.95,
                                         history: false,
                                         sticker: false
                                     });
                 }else{
                     $.pnotify({
                         type: 'error',
                         title: '&iexcl;Lo sentimos!',
                         text: 'Ha pasado algo inesperado. Int&eacute;ntalo de nuevo por favor.',
                         icon: 'picon icon24 typ-icon-cancel white',
                         opacity: 0.95,
                         hide:false,
                         history: false,
                         sticker: false
                     });

                 }
                 $("form").find(":submit").show(20);
                 $(lElement).remove();



             })
             .fail(callError);
        });
    });
        function saveInfo(){
            var url = "${createLink(controller: 'company',action: 'saveDevice')}";
            return  $.ajax({
                type: "POST",
                url: url,
                data:$("form").serialize(),
                dataType: 'json'
            }).promise();
        }
        function callError(response){
            console.log("error ajax");
            console.log(response);
        }
    </r:script>
    </body>
</html>
