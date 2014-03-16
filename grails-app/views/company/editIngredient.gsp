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
                            <h4><span>${youarehere?: "Edición de Ingrediente"}</span></h4>

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
                                            <input class="form-control" id="name" name="name" type="text" value="${element?.fields?.name ?: "Sin Nombre"}" />
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
                                            <input class="form-control mask uniform-input text" name="cost" id="cost_edited" value="${element?.fields?.cost_per_unit ?: 0}"  />
                                        </div>
                                        <label class="col-lg-1 control-label" for="quantity">Cantidad:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control" id="quantity" name="quantity" type="number" step="any" value="1" />
                                        </div>
                                        <label class="col-lg-1 control-label" for="units">Unidad:</label>
                                        <div class="col-lg-2">
                                            <select name="units" id="units" class="nostyle form-control" placeholder="Selecciona una Medida">
                                                <option></option>
                                            </select>
                                        </div>
                                        <label class="col-lg-1 control-label" for="multipliers">Sub-Medida:</label>
                                        <div class="col-lg-2">
                                            <select name="multipliers" id="multipliers" class="nostyle form-control" placeholder="Selecciona una Medida y luego una sub-medida">
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
                                    <div class="form-group" id="sell_properties">
                                        <label class="col-lg-1 control-label" for="price">Precio:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control mask uniform-input text" name="price" id="price_edit" value="${element?.fields?.price_per_unit ?: 0}"  />
                                        </div>
                                        <label class="col-lg-1 control-label" for="sell_quantity">Cantidad:</label>
                                        <div class="col-lg-2">
                                            <input class="form-control" id="sell_quantity" name="sell_quantity" type="number" step="any" value="1" />
                                        </div>
                                        <label class="col-lg-1 control-label" for="sell_units">Unidad:</label>
                                        <div class="col-lg-2">
                                            <select name="sell_units" id="sell_units" class="nostyle form-control" placeholder="Selecciona una Medida">
                                                <option></option>
                                            </select>
                                        </div>
                                        <label class="col-lg-1 control-label" for="sell_multipliers">Sub-Medida:</label>
                                        <div class="col-lg-2">
                                            <select name="sell_multipliers" id="sell_multipliers" class="nostyle form-control" placeholder="Selecciona una Medida y luego una sub-medida">
                                                <option></option>
                                            </select>
                                        </div>
                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="step submit_step" id="tax-details">   %{--Este era submit_step--}%
                                    <span class="step-info" data-num="5" data-text="Detalles de Impuestos"></span>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label" for="checkboxes">&iquest;Aplica algún Impuesto de venta para este Ingrediente?</label>
                                        <div class="col-lg-2">
                                            <input type="checkbox" class="nostyle"  id="is_taxable" data-on-text="SI" data-off-text="NO"/>
                                        </div>
                                    </div> <!-- End .form-group  -->
                                    <div class="form-group invisible"  id="tax_properties">
                                    <label class="col-lg-2 control-label" for="category">Impuesto que aplica: </label>
                                    <div class="col-lg-8">
                                        <select name="tax" id="tax" class="nostyle form-control" placeholder="Selecciona un Impuesto">
                                            <option></option>

                                        </select>
                                    </div>
                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="wizard-actions">
                                    <button class="btn btn-default pull-left" type="reset"> Atr&aacute;s </button>
                                    <button class="btn btn-default pull-right" type="submit"> Siguiente </button>
                                </div><!-- End .form-group  -->
                                <input type="hidden" name="table" value="${element?.table ?: "ingredient"}"/>
                                <input type="hidden" name="row_id" value="${element?.row_id ?:0}"/>
                                <input type="hidden" name="sync_row_id" value="${element?.syncId ?: 0}"/>
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

            $.when(fetchProperty('measurement_unit'))
            .then(function(response){
                if(response.status == 200){
                    var cantidad = response.elements.length;
                    if(cantidad > 0) {

                       for(var i = 0; i < cantidad; i++){
                        $("#units").append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.initials+'</option>');
                        $("#sell_units").append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.initials+'</option>');
                        medidas[response.elements[i].syncId] = response.elements[i].fields.multipliers;
                       }
                    }
                    else{
                        $("#units").attr("placeholder","Aún no tienes unidades de medida creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                        $("#sell_units").attr("placeholder","Aún no tienes unidades de medida creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $("#units").attr("placeholder","Aún no tienes unidades de medidas creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                  $("#sell_units").attr("placeholder","Aún no tienes unidades de medidas creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                }
                $("#units").select2();
                $("#sell_units").select2();
//                console.log(medidas);
            })
            .fail(callError);
            $.when(fetchProperty('tax'))
            .then(function(response){
                if(response.status == 200){
                    var cantidad = response.elements.length;
                    if(cantidad > 0) {

                       for(var i = 0; i < cantidad; i++){
                        $("#tax").append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.name+'</option>');
                       }
                    }
                    else{
                        $("#tax").attr("placeholder","Aún no tienes impuestos creados.").
                        after('<a href="${createLink(controller: 'company',action: 'addTax')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $("#tax").attr("placeholder","Aún no tienes impuestos creados.").
                        after('<a href="${createLink(controller: 'company',action: 'addTax')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                }
                $("#tax").select2();
            })
            .fail(callError);

            $("form").on('change',"#units",function(){
            $("#multipliers").empty();
            var syncid =  $( "#units option:selected" ).val();
            var submedidas = medidas[syncid];
            if(!_.isUndefined(submedidas)){
               if(_.size(submedidas) > 0){
//                    console.log(submedidas);
                    for(var k in submedidas) {
                        $("#multipliers").append('<option value="'+submedidas[k]+'">'+k+'</option>');
                    }
                }
            }
            $("#multipliers").select2();
            });
            $("form").on('change',"#sell_units",function(){
            $("#sell_multipliers").empty();
            var syncid =  $( "#sell_units option:selected" ).val();
            var submedidas = medidas[syncid];
            if(!_.isUndefined(submedidas)){
               if(_.size(submedidas) > 0){
//                    console.log(submedidas);
                    for(var k in submedidas) {
                        $("#sell_multipliers").append('<option value="'+submedidas[k]+'">'+k+'</option>');
                    }
                }
            }
            $("#sell_multipliers").select2();
            });



            $('#is_sellable').on('switchChange', function (e, data) {
              var $element = $(data.el),
                  value = data.value;
                  $("#sell_properties").toggleClass('invisible');
              //console.log(e, $element, value);
            });
            $('#is_taxable').on('switchChange', function (e, data) {
              var $element = $(data.el),
                  value = data.value;
                  $("#tax_properties").toggleClass('invisible');
              //console.log(e, $element, value);
            });

            //pponer selects en valores del ingrediente

            $("#select-category").select2('val','${element?.fields?.category_id}');
            $("#units").select2('val','${element?.fields?.unit_id}');
             $("#multipliers").empty();
             //get sub-measure with multiplier = 1


            var submedidas = medidas[${element?.fields?.unit_id}];
            if(!_.isUndefined(submedidas)){
               if(_.size(submedidas) > 0){
                    for(var k in submedidas) {
                        $("#multipliers").append('<option value="'+submedidas[k]+'">'+k+'</option>');
                    }
                }
            }
            var sub = (_.invert(submedidas))[1];
            console.log(sub);
            $("#multipliers").select2();
            $("#multipliers").select2("data", {id: 1, text: sub});
            if(${element?.fields?.price_per_unit ?: 0} != 0){  //está disponible a la venta
              $('#is_sellable').bootstrapSwitch('state', true);
              $("#sell_units").select2('val','${element?.fields?.unit_id}');
              if(!_.isUndefined(submedidas)){
               if(_.size(submedidas) > 0){
                    for(var k in submedidas) {
                        $("#sell_multipliers").append('<option value="'+submedidas[k]+'">'+k+'</option>');
                    }
                }
            }
              $("#sell_multipliers").select2();
              $("#sell_multipliers").select2("data", {id: 1, text: sub});

            }else{
               $('#is_sellable').bootstrapSwitch('state', false);
            }

        });



        function saveRow(multi_string){
            var url = "${createLink(controller: 'company',action: 'saveRow')}";
            var table = $("[name='table']").val();
            var rowid = $("[name='row_id']").val();
            var syncrowid = $("[name='sync_row_id']").val();
            var quantity = parseFloat($("#quantity").val()) * parseFloat($("#multipliers").select2("val"));
            console.log($("#quantity").val());
            console.log( parseFloat($("#multipliers").select2("val")));
            console.log(quantity);
            var costperunit = parseFloat($("#cost_edited").val()) / quantity;
            console.log(costperunit);
            var sellquantity = 0;
            var priceperunit = 0;
            if($('#is_sellable').bootstrapSwitch('state')){
                 sellquantity = parseFloat($("#sell_quantity").val()) * parseFloat($("#sell_multipliers").select2("val"));
                 priceperunit = parseFloat($("#price_edit").val()) / sellquantity;
            }
            var unit = $("#units option:selected").val();
            var tax
            if($('#is_taxable').bootstrapSwitch('state'))
                tax = $("#tax option:selected").val();
            else
                tax = 0;


            var fields = "{" +
              "\"name\":"+$("[name='name']").val()+
              ",\"category_id\":"+$("#select-category option:selected").val()+
              ",\"cost_per_unit\":"+costperunit+
              ",\"quantity\":"+quantity+
              ",\"unit_id\":"+unit+
              ",\"price_measure\":"+sellquantity+
              ",\"price_per_unit\":"+priceperunit+
              ",\"tax_id\":"+tax+
              "}";

            return  $.ajax({
                type: "POST",
                url: url,
                data:{table:table,row_id:rowid,sync_id:syncrowid,sync_row_id:syncrowid,fields:fields},
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
