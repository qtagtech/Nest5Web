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
    %{--<link href="${resource(dir:'dashboard/plugins/misc/qtip',file:'jquery.qtip.css')}" rel="stylesheet" type="text/css" />--}%
    %{--<link href="${resource(dir:'dashboard/plugins/forms/uniform',file:'uniform.default.css')}" type="text/css" rel="stylesheet" />--}%
    %{--<link href="${resource(dir:'dashboard/plugins/forms/select',file:'select2.css')}" type="text/css" rel="stylesheet" />--}%
    %{--<link href="${resource(dir:'dashboard/plugins/forms/validate',file:'validate.css')}" type="text/css" rel="stylesheet" />--}%
    %{--<link href="${resource(dir:'dashboard/plugins/forms/togglebutton',file:'toggle-buttons.css')}" type="text/css" rel="stylesheet" />--}%



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
                    <div class="panel panel-default gradient">
                        <div class="panel-heading">
                            <h4><span>${youarehere?: "Creaci&oacute;n de Ingrediente"}</span></h4>

                        </div>
                        <div class="panel-body noPad clearfix">
                            <form id="wizard" class="form-horizontal" role="form">
                                <div class="msg"></div>
                                <div class="wizard-steps clearfix"></div>

                                <div class="step" id="category-details">
                                    <span class="step-info" data-num="1" data-text="Clasificaci&oacute;n"></span>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label" for="category">Categor&iacute;a de Ingrediente: </label>
                                        <div class="col-lg-8">
                                            <select name="category" id="select-category" class="nostyle form-control" placeholder="Selecciona una Categor&iacute;a">
                                                <option></option>

                                            </select>
                                        </div>
                                    </div><!-- End .form-group  -->


                                </div>
                                <div class="step" id="ingredient-details">
                                    <span class="step-info" data-num="2" data-text="Detalles de Ingrediente"></span>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label" for="name">Nombre</label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="name" name="name" type="text" />
                                            <span class="help-block blue">E.g. Carne</span>
                                        </div>
                                    </div><!-- End .form-group  -->
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label" for="lname">Descripci&oacute;n</label>
                                        <div class="col-lg-10">
                                            <textarea rows="3" cols="10" class="form-control" id="description" name="description" type="text" ></textarea>
                                            <span class="help-block blue">(Opcional)</span>
                                        </div>
                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="step" id="order-details">
                                    <span class="step-info" data-num="3" data-text="Detalles de Costo"></span>
                                    <div class="form-group">
                                        <label class="col-lg-1 control-label" for="cost">Costo:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control" id="cost" name="cost" type="number" step="any"  />
                                        </div>
                                        <label class="col-lg-1 control-label" for="quantity">Cantidad:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control" id="quantity" name="quantity" type="number" step="any" />
                                        </div>
                                        <label class="col-lg-1 control-label" for="unit">Unidad:</label>
                                        <div class="col-lg-2">
                                            <select name="measurament-unit" id="units" class="nostyle form-control" placeholder="Selecciona una Medida">
                                                <option></option>
                                            </select>
                                        </div>
                                        <label class="col-lg-1 control-label" for="unit">Sub-Medida:</label>
                                        <div class="col-lg-2">
                                            <select name="multiplier" id="multipliers" class="nostyle form-control" placeholder="Selecciona una Medida y luego una sub-medida">
                                                <option></option>
                                            </select>
                                        </div>
                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="step" id="price-details">   %{--Este era submit_step--}%
                                    <span class="step-info" data-num="4" data-text="Detalles de Venta"></span>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label" for="checkboxes">&iquest;Est&aacute; este Ingrediente disponible a la venta?</label>
                                        <div class="col-lg-2">
                                            <input type="checkbox" class="nostyle"  id="is_sellable" checked data-on-text="SI" data-off-text="NO"/>
                                        </div>
                                    </div> <!-- End .form-group  -->
                                    <div class="form-group">
                                        <label class="col-lg-1 control-label" for="sell_cost">Costo:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control" id="sell_cost" name="sell_cost" type="number" step="any"  />
                                        </div>
                                        <label class="col-lg-1 control-label" for="sell_quantity">Cantidad:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control" id="sell_quantity" name="sell_quantity" type="number" step="any" />
                                        </div>
                                        <label class="col-lg-1 control-label" for="sell_unit">Unidad:</label>
                                        <div class="col-lg-2">
                                            <select name="sell_measurament-unit" id="sell_units" class="nostyle form-control" placeholder="Selecciona una Medida">
                                                <option></option>
                                            </select>
                                        </div>
                                        <label class="col-lg-1 control-label" for="sell_unit">Sub-Medida:</label>
                                        <div class="col-lg-2">
                                            <select name="sell_multiplier" id="sell_multipliers" class="nostyle form-control" placeholder="Selecciona una Medida y luego una sub-medida">
                                                <option></option>
                                            </select>
                                        </div>
                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="wizard-actions">
                                    <button class="btn btn-default pull-left" type="reset"> Atr&aacute;s </button>
                                    <button class="btn btn-default pull-right" type="submit"> Siguiente </button>
                                </div><!-- End .form-group  -->
                            </form>
                        </div>
                    </div><!-- End .panel -->

                </div><!-- End .span12 -->


            <!-- End contentwrapper -->
        </div><!-- End #content -->


    <r:script>
        var medidas = new Object();
        $(document).ready(function(){

            $.when(fetchProperty('ingredient_category'))
            .then(function(response){
                if(response.status == 200){
                    var cantidad = response.elements.length;
                    if(cantidad > 0) {
                       for(var i = 0; i < cantidad; i++){
                        $("#select-category").append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.name+'</option>');
                       }
                    }
                    else{
                        $("#select-category").attr("placeholder","Aún no tienes categorías creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addIngredientCategory')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $("#select-category").attr("placeholder","Aún no tienes categorías creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addIngredientCategory')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                }
                $("#select-category").select2();
            })
            .fail(callError);

            $.when(fetchProperty('measurament_unit'))
            .then(function(response){
                if(response.status == 200){
                    var cantidad = response.elements.length;
                    if(cantidad > 0) {

                       for(var i = 0; i < cantidad; i++){
                        $("#units").append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.initials+'</option>');
                        medidas[response.elements[i].syncId] = response.elements[i].fields.multipliers;
                       }
                    }
                    else{
                        $("#units").attr("placeholder","Aún no tienes unidades de medida creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $("#units").attr("placeholder","Aún no tienes unidades de medidas creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                }
                $("#units").select2();
                console.log(medidas);
            })
            .fail(callError);

            $("form").on('change',"#units",function(){
            $("#multipliers").empty();
            var syncid =  $( "#units option:selected" ).val();
            var submedidas = medidas[syncid];
            if(!_.isUndefined(submedidas)){
               if(_.size(submedidas) > 0){
                    console.log(submedidas);
                    for(var k in submedidas) {
                        $("#multipliers").append('<option value="'+submedidas[k]+'">'+k+'</option>');
                    }
                }
            }


            $("#multipliers").select2();
             //console.log($( "#units option:selected" ).val());
            });

        });



        function saveRow(multi_string){
            var url = "${createLink(controller: 'company',action: 'saveRow')}";
            var table = $("[name='table']").val();
            var rowid = $("[name='row_id']").val();
            var syncrowid = $("[name='sync_row_id']").val();
            var fields = "{\"name\":"+$("[name='name']").val()+",\"initials\":"+$("[name='initials']").val()+",\"multipliers\":"+multi_string+"}";

            return  $.ajax({
                type: "POST",
                url: url,
                data:{table:table,row_id:rowid,sync_row_id:syncrowid,fields:fields},
                dataType: 'json'
            }).promise();
        }
        function fetchProperty(table){
          var url = "${createLink(controller: 'company',action: 'fetchProperty')}";
            return  $.ajax({
                type: "GET",
                url: url,
                data:{table: table},
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
