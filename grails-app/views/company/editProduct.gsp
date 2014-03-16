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



    <r:require modules="elastic,inputlimiter,maskedinput,bootstrapswitch,uniform,globalize,colorpicker,timentry,select2,duallistboxnew,duallistbox,bbq,formwizard,formvalidation"/>

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
                            <h4><span>${youarehere?: "dición de Producto"}</span></h4>

                        </div>
                        <div class="panel-body noPad clearfix">
                            <form id="wizard2" class="form-horizontal" role="form">
                                <div class="msg"></div>
                                <div class="wizard-steps clearfix"></div>

                                <div class="step" id="category-details">
                                    <span class="step-info" data-num="1" data-text="Clasificaci&oacute;n"></span>
                                    <div class="form-group">
                                        <label class="col-lg-2 control-label" for="category">Categor&iacute;a de Producto: </label>
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
                                            <span class="help-block blue">E.g. Pastas Carbonara.</span>
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
                                <div class="step" id="recepy-details">   %{--Este era submit_step--}%
                                    <span class="step-info" data-num="3" data-text="Receta de Producto"></span>
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4><span>&iquest;De qu&eacute; Ingredientes se compone este Producto?</span></h4>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="todo">
                                                        <h3 class="blue">Ingredientes</h3>
                                                        <div class="form-group">
                                                            <div class="col-lg-12">
                                                                <select multiple="multiple" name="duallistbox_demo1[]">
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- End .panel -->
                                        </div>
                                    </div>
                                </div>
                                <div class="step" id="recepy-quantities">
                                    <span class="step-info" data-num="4" data-text="Cantidades Espec&iacute;ficas"></span>
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4><span>Especifica la cantidad de cada Ingrediente en este Producto</span></h4>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="todo">
                                                        <h4>Ingredientes Seleccionados</h4>
                                                        <ul id="ingredient_quantities">
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div><!-- End .panel -->
                                        </div><!-- End .span12 -->
                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="step" id="order-details">
                                    <span class="step-info" data-num="5" data-text="Detalles de Costo y Precio"></span>
                                    <div class="form-group">
                                        <div class="col-lg-5">
                                            <h4 class="blue">Detalles de Costo</h4>
                                            <label class="col-lg-5 control-label left" for="cost">Costo:</label>
                                            <div class="col-lg-4">
                                                <input class="form-control mask uniform-input text" name="cost" id="cost_edit" value="${element?.fields?.cost ?: 0}"  />
                                            </div>
                                        </div>
                                        <div class="col-lg-5">
                                            <h4 class="blue">Detalles de Precio</h4>
                                            <label class="col-lg-5 control-label left" for="cost">Precio:</label>
                                            <div class="col-lg-4">
                                                <input class="form-control mask uniform-input text" name="price" id="price_edit" value="${element?.fields?.price ?: 0}"  />
                                            </div>
                                        </div>
                                        <div class="col-lg-10">
                                            <h4 class="blue">Detalles de Impuestos</h4>
                                            <div class="form-group">
                                                <label class="col-lg-5 control-label" for="checkboxes">&iquest;Aplica algún Impuesto de venta para este Ingrediente?</label>
                                                <div class="col-lg-2">
                                                    <input type="checkbox" class="nostyle"  id="is_taxable" data-on-text="SI" data-off-text="NO"/>
                                                </div>
                                            </div> <!-- End .form-group  -->
                                            <div class="form-group invisible"  id="tax_properties">
                                                <label class="col-lg-4 control-label" for="category">Impuesto que aplica: </label>
                                                <div class="col-lg-8">
                                                    <select name="tax" id="tax" class="nostyle form-control" placeholder="Selecciona un Impuesto">
                                                        <option></option>

                                                    </select>
                                                </div>
                                            </div><!-- End .form-group  -->
                                        </div>
                                     
                                        <div class="col-lg-10">
                                            <h4 class="blue">Opciones Adicionales</h4>
                                            <div class="form-group">
                                                <label class="col-lg-5 control-label" for="checkboxes">&iquest;Este producto puede ser ingrediente de otro producto?</label>
                                                <div class="col-lg-2">
                                                    <input type="checkbox" class="nostyle"  id="is_ingredient" data-on-text="SI" data-off-text="NO"/>
                                                </div>
                                            </div> <!-- End .form-group  -->
                                            <div class="form-group invisible"  id="ingredientable_properties">
                                                <label class="col-lg-4 control-label" for="category">Unidad de Mededia: </label>
                                                <div class="col-lg-8">
                                                    <select name="ing_units" id="ing_units" class="nostyle form-control" placeholder="Selecciona una Unidad">
                                                        <option></option>

                                                    </select>
                                                </div>
                                            </div><!-- End .form-group  -->
                                        </div>



                                    </div><!-- End .form-group  -->
                                </div>
                                <div class="wizard2-actions">
                                    <button class="btn btn-default pull-left" type="reset"> Atr&aacute;s </button>
                                    <button class="btn btn-default pull-right" type="submit"> Siguiente </button>
                                </div><!-- End .form-group  -->
                                <input type="hidden" name="table" value="${element?.table ?: "product"}"/>
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
        var ing_medidas = new Object();
        var ingredients = new Object();   //ingId:name
        var specialproducts = new Object();  // sppId: pId
        $(document).ready(function(){

        $("#wizard2").bind("before_step_shown", function(event, data){
            if(data.currentStep == 'recepy-quantities'){
            $("#ingredient_quantities").empty();
               var options = $('[name="duallistbox_demo1[]"] option:selected') || [];
              options.each(function(index){
//                console.log($(this).val());
                    var ingName = $(this).text();
                    var ingId = $(this).val();
                    var isproduct = $(this).attr("data-as-ingredient") ? true : false;
                    var html = '<li class="clearfix">'
                          +'<div class="row">'
                                +'<h3>'+ingName+'</h3>'
                              +'</div>'
                             +'<div class="row">'
                                +'<label class="col-lg-3" for="'+ingId+'_quantity">Cantidad: </label>'
                                  +'<div class="col-lg-3">';
                                  if(isproduct)
                                      html+='<input type="text" id="'+ingId+'_quantity" data-product="true"  name="'+ingId+'_quantity" value="0" >';
                                  else
                                      html+='<input type="text" id="'+ingId+'_quantity" data-product="false"  name="'+ingId+'_quantity" value="0" >';
                                  html+='<span class="help-block blue">E.g. 250gr.</span>'
                                  +'</div>'
                                  +'<label  class="col-lg-3" for="'+ingId+'_unit">Unidad: </label>'
                                  +'<div class="col-lg-3">'
                                      +'<select name="'+ingId+'_unit" id="'+ingId+'_unit" class="nostyle form-control" placeholder="Selecciona una Medida">'
                                                +'<option></option>'
                                            +'</select>'
                                  +'</div>'
                              +'</div>'
                                 +'</li>';
            $("#ingredient_quantities").append(html);

            //una vez puesto el html, llenar los valores de los que haya que ya tenia antes de empezar a editarlo


            /*Add medidas a cada ingrediente basandose en el objeto global que dice que medida usa (ing_medida) y tomando submedidas para ese del objeto global medidas*/
            var submedidas = medidas[ing_medidas[ingId]];
            if(!_.isUndefined(submedidas)){
               if(_.size(submedidas) > 0){
                    for(var k in submedidas) {
                        $("#"+ingId+"_unit").append('<option value="'+submedidas[k]+'">'+k+'</option>');
                    }
                }
            }

             $("#"+ingId+"_unit").select2();


              });
            }
            <g:each in="${element?.fields?.ingredients}" var="ingrediente">
                $('#${ingrediente?.sync_id}_quantity').val(${ingrediente?.qty});
                var submedidas = medidas[ing_medidas[${ingrediente?.sync_id}]];
                var sub = (_.invert(submedidas))[1];
            $("#${ingrediente?.sync_id}_unit").select2("data", {id: 1, text: sub});
            </g:each>
        });


            $.when(fetchProperty('product_category'))
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
                        after('<a href="${createLink(controller: 'company',action: 'addProductCategory')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $("#select-category").attr("placeholder","Aún no tienes categorías creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addProductCategory')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
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

                        $("#ing_units").append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.initials+'</option>');


                        medidas[response.elements[i].syncId] = response.elements[i].fields.multipliers;
                       }
                    }
                    else{
                        $("#units").attr("placeholder","Aún no tienes unidades de medida creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                        $("#sell_units").attr("placeholder","Aún no tienes unidades de medida creadas.").
                        after('<a href="${createLink(controller: 'company',action: 'addMeasuramentUnit')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                        $("#ing_units").attr("placeholder","Aún no tienes unidades de medida creadas.").
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
                $("#ing_units").select2();
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

            $.when(fetchProperty('ingredient'))
            .then(function(response){
                if(response.status == 200){
                    var cantidad = response.elements.length;
                    if(cantidad > 0) {
                       for(var i = 0; i < cantidad; i++){
                        $('[name="duallistbox_demo1[]"]').append('<option value="'+response.elements[i].syncId+'">'+response.elements[i].fields.name+'</option>');
                        ing_medidas[response.elements[i].syncId] = response.elements[i].fields.unit_id;
                        ingredients[response.elements[i].syncId] = response.elements[i].fields.name;
                       }
                    }
                    else{
                        $('[name="duallistbox_demo1[]"]').after("<span>Aún no tienes ingredientes creados.</span>").
                        after('<a href="${createLink(controller: 'company',action: 'addIngredient')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $('[name="duallistbox_demo1[]"]').after("<span>Aún no tienes ingredientes creados.</span>").
                        after('<a href="${createLink(controller: 'company',action: 'addIngredient')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                }

                //agrehgar los que sean del producto
                <g:each in="${element?.fields?.ingredients}" var="ingrediente">
                    $('[name="duallistbox_demo1[]"] option[value="${ingrediente?.sync_id}"]').attr("selected","selected");
                </g:each>

                //var demo2 = $('[name="duallistbox_demo1[]"]').bootstrapDualListbox();
            })
            .fail(callError);

            $.when(fetchProperty('special_product'))
            .then(function(response){
                if(response.status == 200){
                    var cantidad = response.elements.length;
                    if(cantidad > 0) {
                       for(var i = 0; i < cantidad; i++){
                        $('[name="duallistbox_demo1[]"]').append('<option data-as-ingredient="true" value="'+response.elements[i].syncId+'">'+response.elements[i].fields.name+'</option>');
                        ing_medidas[response.elements[i].syncId] = response.elements[i].fields.unit_id;
                        specialproducts[response.elements[i].syncId] = response.elements[i].fields.name;
                       }
                    }
                    else{
                        $('[name="duallistbox_demo1[]"]').after("<span>Aún no tienes productos creados.</span>").
                        after('<a href="${createLink(controller: 'company',action: 'addProduct')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');

                    }

                }
                else{
                  $('[name="duallistbox_demo1[]"]').after("<span>Aún no tienes productos creados.</span>").
                        after('<a href="${createLink(controller: 'company',action: 'addProduct')}" class="btn btn-info">Crear Ahora <span class="icon16 icomoon-icon-arrow-right-3 white"></span></a>');
                }
                <g:each in="${element?.fields?.products}" var="ingrediente">
                    $('[name="duallistbox_demo1[]"] option[value="${ingrediente?.sync_id}"]').attr("selected","selected");
                </g:each>
//                $.configureBoxes();
                var demo1 = $('[name="duallistbox_demo1[]"]').bootstrapDualListbox();

                var demo2 = $('[name="duallistbox_demo1[]"]').bootstrapDualListbox();

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

            $('#is_ingredient').on('switchChange', function (e, data) {
              var $element = $(data.el),
                  value = data.value;
                  $("#ingredientable_properties").toggleClass('invisible');
              //console.log(e, $element, value);
            });


            //Edición
            $("#select-category").select2('val','${element?.fields?.category_id}');
            if(${element?.fields?.tax_id ?: 0} != 0){
                $('#is_taxable').bootstrapSwitch('state', true);
                $("#tax").select2('val','${element?.fields?.tax_id}');
            }



        });



        function saveRow(multi_string){
            var url = "${createLink(controller: 'company',action: 'saveRow')}";
            var table = $("[name='table']").val();
            var rowid = $("[name='row_id']").val();
            var syncrowid = $("[name='sync_row_id']").val();
            var quantity = parseFloat($("#quantity").val()) * parseFloat($("#multipliers option:selected").val());
            var cost = parseFloat($("#cost_edit").val());
            var price = parseFloat($("#price_edit").val());
            var tax
            if($('#is_taxable').bootstrapSwitch('state'))
                tax = $("#tax option:selected").val();
            else
                tax = 0;

            var ingredients = [];
            var otherproducts= [];

              /*Save multiple productingredient relationships taking ingredients present in box2View*/
                     var options = $('[name="duallistbox_demo1[]"] option:selected') || [];
                     var total = options.length;
                     options.each(function(index){
                         var ingName = $(this).text();
                         var ingId = $(this).val();
                         var quantity = parseFloat($("#"+ingId+"_quantity").val()) || 0.0;
                         var multiplier = parseFloat($("#"+ingId+"_unit option:selected").val()) || 1.0;
                         var real_quantity = quantity * multiplier;
                         var isproduct = $(this).attr('data-as-ingredient') ? true : false;
                         if(!isproduct){
                             var productingredient = new Object();
                             productingredient['sync_id'] = ingId;
                             productingredient['qty'] = real_quantity;
                             ingredients.push(productingredient);
                             //armar vector de objectos [{sync_id: xx, qty: xxx},{...}]
                         }
                         else{
                             var productproduct = new Object();
                             productproduct['sync_id'] = ingId;
                             productproduct['qty'] = real_quantity;
                             otherproducts.push(productproduct);
                             //armar vector de objectos [{sync_id: xx, qty: xxx},{...}]
                         }

                     });


            var fields = "{" +
              "\"name\":"+$("[name='name']").val()+
              ",\"category_id\":"+$("#select-category option:selected").val()+
              ",\"cost\":"+cost+
              ",\"price\":"+price+
              ",\"tax_id\":"+tax+
              ",\"automatic_cost\":"+0+
              ",\"ingredients\":"+JSON.stringify(ingredients)+
              ",\"products\":"+JSON.stringify(otherproducts)+
              "}";

            return  $.ajax({
                type: "POST",
                url: url,
                data:{table:table,row_id:rowid,sync_id:syncrowid,sync_row_id:syncrowid,fields:fields},
                dataType: 'json'
            }).promise();
        }

        function saveSpecialRow(product){
            var url = "${createLink(controller: 'company',action: 'saveRow')}";
            var table = 'special_product';
            var rowid = '0';
            var syncrowid = ${special ?: 0};
            var unit = $( "#ing_units option:selected" ).val();
            var fields = "{" +
             "\"name\":"+$("[name='name']").val()+
              ",\"product_id\":"+product+
              ",\"unit_id\":"+unit+
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
