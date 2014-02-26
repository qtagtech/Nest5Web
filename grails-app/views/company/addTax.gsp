<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="dashboardLayout"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nest5 Admin - ${youarehere}</title>
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


    <r:require modules="elastic,inputlimiter,maskedinput,bootstrapswitch,uniform,globalize,colorpicker,timentry,select2,duallistbox,bbq,formwizard,formvalidation"/>

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
    				
                <!-- Build page from here: Usual with <div class="row-fluid"></div> -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4><span>${youarehere}</span></h4>
                                </div>
                                <div class="panel-body">
                                   
                                    <form class="form-horizontal" id="form-tax" action="nada.html" role="form" >

                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="name">Nombre de Impuesto</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="name" name="name">
                                                <span class="help-block blue">E.g. IVA, Impo. Consumo, etc.</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="name">Porcentaje de Venta</label>
                                            <div class="col-lg-1">
                                                <input type="text" class="form-control mask uniform-input text" name="mask-percentage" id="mask-percent">
                                                <span class="help-block blue">E.g. 16%,8%, etc</span>
                                            </div>
                                        </div>
                                        <input type="hidden" name="table" value="tax"/>
                                        <input type="hidden" name="row_id" value="0"/>
                                        <input type="hidden" name="sync_row_id" value="0"/>
                                        <div class="form-group">
                                            <div class="col-lg-offset-2">
                                                <button type="submit" class="btn btn-default marginR10">Guardar Cambios</button>
                                                <button class="btn btn-danger">Cancelar</button>
                                            </div>
                                        </div><!-- End .form-group  -->                                      
                                    </form>
                                </div>
                            </div><!-- End .panel -->
                        </div><!-- End .span12 -->
                    </div><!-- End .row -->
            </div><!-- End contentwrapper -->
        </div><!-- End #content -->


    <r:script>

        function saveRow(){
            var url = "${createLink(controller: 'company',action: 'saveRow')}";
            var table = $("[name='table']").val();
            var rowid = $("[name='row_id']").val();
            var syncrowid = $("[name='sync_row_id']").val();
            var per =  parseFloat($("[name='mask-percentage']").val())/100;
            var fields = "{\"name\":"+$("[name='name']").val()+",\"percentage\":"+per+"}";

            return  $.ajax({
                type: "POST",
                url: url,
                data:{table:table,row_id:rowid,sync_row_id:syncrowid,fields:fields},
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
