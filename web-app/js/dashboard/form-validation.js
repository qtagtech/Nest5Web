// document ready function
$(document).ready(function() {

    //------------- Select plugin -------------//
//	$("#select-category").select2();

    //create success msg for wizard
    function createSuccessMsg (loc, msg) {
        loc.append(
            '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><strong><i class="icon24 i-checkmark-circle"></i> ¡}muy Bien!</strong> '+ msg + ' </div>'
        );
    }

    //------------- Masked input fields -------------//
    $("#mask-percent").mask("99%");
    $.mask.definitions['~'] = '([0-9] )?';
    $("#cost").mask("99~~~~~~~.00($COP)");
    $("#price").mask("99~~~~~~~.00($COP)");



    /*TOGGLE BUTTONS*/

    $('#is_sellable').bootstrapSwitch();
    $('#is_taxable').bootstrapSwitch();
<<<<<<< HEAD
    $('#is_ingredient').bootstrapSwitch();
=======
>>>>>>> e60b27611bd7dcd82492489847aeabd84fb42457

    /*Multiple Select Boxes*/
//    $.configureBoxes();

    //------------- Form wizard with steps-------------//
    $("#wizard").formwizard({
     formPluginEnabled: true,
     validationEnabled: true,
     focusFirstInput : true,
     textSubmit: "Guardar",
     formOptions :{
     success: function(data){
     //produce success message
         var btn = $("body").find(":submit");
         btn.hide(20);
         var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
         $(".wizard-actions").append(lElement);
         $.when(saveRow())
             .then(function(response){
                 if(response.status == 1){
                     $.pnotify({
                         type: 'success',
                         title: '&iexcl;&Eacute;xito!',
                         text: 'Se ha guardado la categor&iacute;a con &eacute;xito. Actualiza tus dispositivos.',
                         icon: 'picon icon16 iconic-icon-check-alt white',
                         opacity: 0.95,
                         history: false,
                         sticker: false
                     });
                     $("#wizard").formwizard("reset");
                     $("#wizard").formwizard("update_steps");
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
                 $("body").find(":submit").show(20);
                 $(lElement).remove();



             })
             .fail(callError);
         return false;
     createSuccessMsg($("#wizard .msg"), "&iexcl;Ingrediente Guardado con éxito!");
     },
     resetForm: false
     },
     disableUIStyles: true,
     showSteps: true, //show the step
     validationOptions: {
     errorPlacement: function(error, element) {
     wrap = element.parent();
     if(wrap.hasClass('selector')) {
     error.insertAfter(wrap);
     } else {
     error.insertAfter(element);
     }
     },
     rules: {
         category: {
         required: true
         },
         name: {
             required: true,
             minlength: 4
         },
         cost: {
             required: true
         },
         quantity:{
             required: true,
             number: true
         },
         units:{
             required: true
         },
         multipliers:{
             required: true
         },
         price: {
             required: {
                 depends: function(element) {
                     return $('#is_sellable').bootstrapSwitch('state');
                 }
             }
         },
         sell_quantity: {
             required: {
                 depends: function(element) {
                     return $('#is_sellable').bootstrapSwitch('state');
                 }
             },
             number:{
                 depends: function(element) {
                     return $('#is_sellable').bootstrapSwitch('state');
                 }
             }
         },
         sell_units: {
             required: {
                 depends: function(element) {
                     return $('#is_sellable').bootstrapSwitch('state');
                 }
             }
         },
         sell_multipliers: {
             required: {
                 depends: function(element) {
                     return $('#is_sellable').bootstrapSwitch('state');
                 }
             }
         },
         tax: {
             required: {
                 depends: function(element) {
                     return $('#is_taxable').bootstrapSwitch('state');
                 }
             }
         }

     },
     messages: {
         category: "Debes seleccionar una categor&iacute;a",
         name: {
             required: "Debes poner un nombre para reconocer el ingrediente",
             minlength: "El nombre debe tener al menos 4 caract&eacute;res."
         },
         cost: "Por favor indica un costo del ingrediente.",
         quantity: {
             required:"&iquest;Qu&eacute; cantidad de este ingrediente compraste?",
             number: "No has puesto un n&uacute;mero v&aacute;lido."
            },
         units: "Indica la unidad base en que mides el ingrediente",
         multipliers: "Debes indicar la medida que se us&oacute; para medir la cantidad que indicaste de este ingrediente.",
         price: "Has dicho que se puede vender este ingrediente, &iquest;A qu&eacute; precio?",
         sell_quantity: {
             required: "&iquest;Qu&eacute; cantidad vendes de este ingrediente?",
             number:  "No has puesto un n&uacute;mero v&aacute;lido."
         },
         sell_units: "Indica en que unidad se mide la cantidad que se vende de este ingrediente.",
         sell_multipliers: "Debes seleccionar una para indicar como medir la cantidad que has ingresado que se vende.",
         tax: "Has indicado que este ingrediente al venderse se le aplica un impuesto. Selecciona cual."

     }
     }
     });
    $("#wizard2").formwizard({
     formPluginEnabled: true,
     validationEnabled: true,
     focusFirstInput : true,
     textSubmit: "Guardar",
     formOptions :{
     success: function(data){
     //produce success message
         var btn = $("body").find(":submit");
         btn.hide(20);
         var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
         $(".wizard-actions").append(lElement);
         $.when(saveRow())
             .then(function(response){
<<<<<<< HEAD

                 if(response.status == 1){
                     $.when(saveSpecialRow(response.syncId))
                         .then(function(response){

                             if(response.status == 1){
                                 $.pnotify({
                                     type: 'success',
                                     title: '&iexcl;&Eacute;xito!',
                                     text: 'Se ha guardado el Producto con &eacute;xito. Actualiza tus dispositivos.',
                                     icon: 'picon icon16 iconic-icon-check-alt white',
                                     opacity: 0.95,
                                     history: false,
                                     sticker: false
                                 });
                                 $("#wizard2").formwizard("reset");
                                 $("#wizard2").formwizard("update_steps");
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
                             $("body").find(":submit").show(20);
                             $(lElement).remove();



                         })
                         .fail(callError);
=======
                 if(response.status == 1){
                     $.pnotify({
                         type: 'success',
                         title: '&iexcl;&Eacute;xito!',
                         text: 'Se ha guardado el Producto con &eacute;xito. Actualiza tus dispositivos.',
                         icon: 'picon icon16 iconic-icon-check-alt white',
                         opacity: 0.95,
                         history: false,
                         sticker: false
                     });
                     $("#wizard2").formwizard("reset");
                     $("#wizard2").formwizard("update_steps");
>>>>>>> e60b27611bd7dcd82492489847aeabd84fb42457
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
                 $("body").find(":submit").show(20);
                 $(lElement).remove();



             })
             .fail(callError);
         return false;
     createSuccessMsg($("#wizard2 .msg"), "&iexcl;Producto Guardado con éxito!");
     },
     resetForm: false
     },
     disableUIStyles: true,
     showSteps: true, //show the step
     validationOptions: {
     errorPlacement: function(error, element) {
     wrap = element.parent();
     if(wrap.hasClass('selector')) {
     error.insertAfter(wrap);
     } else {
     error.insertAfter(element);
     }
     },
     rules: {
         category: {
         required: true
         },
         name: {
             required: true,
             minlength: 4
         },
         cost: {
             required: true
         },
         price: {
             required: true
         },
         tax: {
             required: {
                 depends: function(element) {
                     return $('#is_taxable').bootstrapSwitch('state');
                 }
             }
         }

     },
     messages: {
         category: "Debes seleccionar una categor&iacute;a",
         name: {
             required: "Debes poner un nombre para reconocer el ingrediente",
             minlength: "El nombre debe tener al menos 4 caract&eacute;res."
         },
         cost: "Por favor indica un costo del ingrediente.",
         quantity: {
             required:"&iquest;Qu&eacute; cantidad de este ingrediente compraste?",
             number: "No has puesto un n&uacute;mero v&aacute;lido."
            },
         price: "Has dicho que se puede vender este ingrediente, &iquest;A qu&eacute; precio?",
         tax: "Has indicado que este ingrediente al venderse se le aplica un impuesto. Selecciona cual."

     }
     }
     });
    $("#wizard3").formwizard({
     formPluginEnabled: true,
     validationEnabled: true,
     focusFirstInput : true,
     textSubmit: "Guardar",
     formOptions :{
     success: function(data){
     //produce success message
         var btn = $("body").find(":submit");
         btn.hide(20);
         var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
         $(".wizard-actions").append(lElement);
         $.when(saveRow())
             .then(function(response){
                 if(response.status == 1){
                     $.pnotify({
                         type: 'success',
                         title: '&iexcl;&Eacute;xito!',
                         text: 'Se ha guardado el Producto con &eacute;xito. Actualiza tus dispositivos.',
                         icon: 'picon icon16 iconic-icon-check-alt white',
                         opacity: 0.95,
                         history: false,
                         sticker: false
                     });
                     $("#wizard3").formwizard("reset");
                     $("#wizard3").formwizard("update_steps");

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
                 $("body").find(":submit").show(20);
                 $(lElement).remove();
             })
             .fail(callError);
         return false;
     createSuccessMsg($("#wizard3 .msg"), "&iexcl;Producto Guardado con éxito!");
     },
     resetForm: false
     },
     disableUIStyles: true,
     showSteps: true, //show the step
     validationOptions: {
     errorPlacement: function(error, element) {
     wrap = element.parent();
     if(wrap.hasClass('selector')) {
     error.insertAfter(wrap);
     } else {
     error.insertAfter(element);
     }
     },
     rules: {

         name: {
             required: true,
             minlength: 4
         },
         cost: {
             required: true
         },
         price: {
             required: true
         },
         tax: {
             required: {
                 depends: function(element) {
                     return $('#is_taxable').bootstrapSwitch('state');
                 }
             }
         }

     },
     messages: {
         name: {
             required: "Debes poner un nombre para reconocer el ingrediente",
             minlength: "El nombre debe tener al menos 4 caract&eacute;res."
         },
         cost: "Por favor indica un costo del ingrediente.",
         quantity: {
             required:"&iquest;Qu&eacute; cantidad de este ingrediente compraste?",
             number: "No has puesto un n&uacute;mero v&aacute;lido."
            },
         price: "Has dicho que se puede vender este ingrediente, &iquest;A qu&eacute; precio?",
         tax: "Has indicado que este ingrediente al venderse se le aplica un impuesto. Selecciona cual."

     }
     }
     });



    //--------------- Form validation ------------------//
//	$('#select1').select2({placeholder: "Select"});
    $("#form-ingredient-category").validate({
        ignore: null,
        ignore: 'input[type="hidden"]',
        rules: {

            name: {
                required: true,
                minlength: 4
            }
        },
        messages: {

            name: {
                required: "Este campo es obligatorio.",
                minlength: "Este campo debe tener al menos 4 caract&eacute;res."
            }
        },
        submitHandler: function(form) {
            var btn = $(form).find(":submit");
            btn.hide(20);
            var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
            $(form).append(lElement);
          $.when(saveRow())
         .then(function(response){
         if(response.status == 1){
             $.pnotify({
                 type: 'success',
                 title: '&iexcl;&Eacute;xito!',
                 text: 'Se ha guardado la categor&iacute;a con &eacute;xito. Actualiza tus dispositivos.',
                 icon: 'picon icon16 iconic-icon-check-alt white',
                 opacity: 0.95,
                 history: false,
                 sticker: false
             });
             $("[name='name']").val("");
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
          $(form).find(":submit").show(20);
          $(lElement).remove();



              })
         .fail(callError);
            return false;
         }

    });

    $("#form-tax").validate({
        ignore: null,
        ignore: 'input[type="hidden"]',
        rules: {

            name: {
                required: true,
                minlength: 1
            },
            'mask-percentage': {
                required: true
            }

        },
        messages: {

            name: {
                required: "Este campo es obligatorio.",
                minlength: "Este campo debe tener al menos 4 caract&eacute;res."
            },
            percentage: {
                required: "Este campo es obligatorio"
            }
        },
        submitHandler: function(form) {
            var btn = $(form).find(":submit");
            btn.hide(20);
            var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
            $(form).append(lElement);
            $.when(saveRow())
                .then(function(response){
                    if(response.status == 1){
                        $.pnotify({
                            type: 'success',
                            title: '&iexcl;&Eacute;xito!',
                            text: 'Se ha guardado el Impuesto &eacute;xito. Actualiza tus dispositivos.',
                            icon: 'picon icon16 iconic-icon-check-alt white',
                            opacity: 0.95,
                            history: false,
                            sticker: false
                        });
                        $("[name='name']").val("");
                        $("[name='percentage']").val("");
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
                    $(form).find(":submit").show(20);
                    $(lElement).remove();



                })
                .fail(callError);
            return false;
        }

    });

    $("#form-measurament-unit").validate({
        ignore: null,
        ignore: 'input[type="hidden"]',
        rules: {

            name: {
                required: true,
                minlength: 2
            },
            initials: {
                required: true,
                minlength: 1
            }

        },
        messages: {

            name: {
                required: "Este campo es obligatorio.",
                minlength: "Este campo debe tener al menos 4 caract&eacute;res."
            },
            initials: {
                required: "Este campo es obligatorio.",
                minlength: "Este campo debe tener al menos 1 caracter."
            }
        },
        submitHandler: function(form) {

            var btn = $(form).find(":submit");
            btn.hide(20);
            var lElement = $('<div class="margin padding center"><img src="/dashboard/images/loaders/circular/070.gif" alt=""></div>');
            $(form).append(lElement);
            var multi_string = "{";
            var multiplicadores = $("[name='mult_initials']");
            if(multiplicadores.length < 1){
                $(lElement).remove();
                btn.show(20);

            }
            var perfect = true;
            multiplicadores.each(function(index){
                var initial = $(this);
                var value = $(this).nextInDOM('input');
                var ok = true;
                if(index != 0) multi_string += ",";
                if(!initial.val()) {
                    $(this).css("background","red");
                    ok = false;
                }
                if(!value.val()){
                    value.css("background","red");
                    ok = false;
                }
                if(ok){
                    multi_string += "'"+initial.val()+"':"+value.val();
                }
                else{
                    perfect = false;
                }
            });
            if(perfect){
                multi_string += "}";
                console.log(multi_string);
            }
            else{
                $(lElement).remove();
                btn.show(20);
            }
            $.when(saveRow(multi_string))
                .then(function(response){
                    if(response.status == 1){
                        $.pnotify({
                            type: 'success',
                            title: '&iexcl;&Eacute;xito!',
                            text: 'Se ha guardado la categor&iacute;a con &eacute;xito. Actualiza tus dispositivos.',
                            icon: 'picon icon16 iconic-icon-check-alt white',
                            opacity: 0.95,
                            history: false,
                            sticker: false
                        });
                        $("[name='name']").val("");
                        $("[name='initials']").val("");
                        $("[name='initials']").removeAttr("disabled");
                        $("#multipliers").empty();
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
                    $(form).find(":submit").show(20);
                    $(lElement).remove();



                })
                .fail(callError);
            return false;
        }

    });

});//End document ready functions

//sparkline in sidebar area
var positive = [1,5,3,7,8,6,10];
var negative = [10,6,8,7,3,5,1]
var negative1 = [7,6,8,7,6,5,4]

$('#stat1').sparkline(positive,{
    height:15,
    spotRadius: 0,
    barColor: '#9FC569',
    type: 'bar'
});
$('#stat2').sparkline(negative,{
    height:15,
    spotRadius: 0,
    barColor: '#ED7A53',
    type: 'bar'
});
$('#stat3').sparkline(negative1,{
    height:15,
    spotRadius: 0,
    barColor: '#ED7A53',
    type: 'bar'
});
$('#stat4').sparkline(positive,{
    height:15,
    spotRadius: 0,
    barColor: '#9FC569',
    type: 'bar'
});
//sparkline in widget
$('#stat5').sparkline(positive,{
    height:15,
    spotRadius: 0,
    barColor: '#9FC569',
    type: 'bar'
});

$('#stat6').sparkline(positive, {
    width: 70,//Width of the chart - Defaults to 'auto' - May be any valid css width - 1.5em, 20px, etc (using a number without a unit specifier won't do what you want) - This option does nothing for bar and tristate chars (see barWidth)
    height: 20,//Height of the chart - Defaults to 'auto' (line height of the containing tag)
    lineColor: '#88bbc8',//Used by line and discrete charts to specify the colour of the line drawn as a CSS values string
    fillColor: '#f2f7f9',//Specify the colour used to fill the area under the graph as a CSS value. Set to false to disable fill
    spotColor: '#e72828',//The CSS colour of the final value marker. Set to false or an empty string to hide it
    maxSpotColor: '#005e20',//The CSS colour of the marker displayed for the maximum value. Set to false or an empty string to hide it
    minSpotColor: '#f7941d',//The CSS colour of the marker displayed for the mimum value. Set to false or an empty string to hide it
    spotRadius: 3,//Radius of all spot markers, In pixels (default: 1.5) - Integer
    lineWidth: 2//In pixels (default: 1) - Integer
});