<%@ page import="com.nest5.Nest5Client.Company" %>
<%@ page import="com.nest5.Nest5Client.Promo" %>
<%@ page import="com.nest5.Nest5Client.Store" %>




<g:formRemote id="CompanyForm" name="CompanyForm" before="changeButton()"   onSuccess="checkResponse(data)" method="POST" action="${createLink(controller: 'company', action: 'save')}" url="[controller: 'company', action: 'save']">

    <span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0; display: block; width:100%; margin-bottom:0.5em; text-align: center;">1</span>
    <div class="clearfix"></div>
    <span style="font-family: BebasNeue; font-size: 3em;  margin: 0 0px;">Activa Tu Marca o Empresa en Nest5</span>
    <div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'email', 'error')} required">
        <label for="email">
            <g:message code="company.email.label" default="Email" />
            <span class="required-indicator">*</span>

        </label>
        <g:textField name="email" placeholder="juan.perez@miempresa.com" required="" value="${companyInstance?.email}" _juvi_type="email" _juvi_min_length="5" _juvi_error_message="Ingresa un email válido"/>
    </div>
<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="company.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required=""  value="${companyInstance?.password}" _juvi_type="alpha" _juvi_min_length="5" _juvi_error_message="Ingresa una contraseña" />
</div>
<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="company.name.label" default="Name" />
        <span class="required-indicator">*</span>

    </label>
    <g:textField name="name" placeholder="Mi Empresa Co." required="" value="${companyInstance?.name}" _juvi_type="alpha" _juvi_min_length="5" _juvi_error_message="DEbes poner un nombre de Empresa"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="company.category.label" default="Category" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="category" name="category.id" from="${com.nest5.Nest5Client.Category.list()}" optionKey="id" required="" value="${companyInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="company.address.label" default="Address" />
        <span class="required-indicator">*</span>
		
	</label>
	<g:textField name="address" placeholder="Av. Nueva #30-125" required="" _juvi_type="alpha" _juvi_min_length="5" _juvi_error_message="No pusiste una dirección válida" value="${companyInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'telephone', 'error')} required">
    <label for="telephone">
        <g:message code="company.telephone.label" default="Telephone" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="telephone" placeholder="5745555555" required="" value="${companyInstance?.telephone}" _juvi_type="number" _juvi_min_length="7" _juvi_error_message="Ingresa un teléfono válido"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'url', 'error')} ">
    <label for="url">
        <g:message code="company.url.label" default="Url" />

    </label>
    <g:textField name="url"  value="${companyInstance?.url}" _juvi_type="url" _juvi_min_length="5" _juvi_error_message="La URL no es válida."/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'contactName', 'error')} required">
	<label for="contactName">
		<g:message code="company.contactName.label" default="Contact Name" />
        <span class="required-indicator">*</span>
	</label>
	<g:textField name="contactName" placeholder="Juan Perez" required="" value="${companyInstance?.contactName}" _juvi_type="alpha" _juvi_min_length="3" _juvi_error_message="No pusiste un contacto."/>
</div>
    <a id="termsCaller" href="#termsContent" rel="lightbox">Acepto los términos y Condiciones.</a>
    <g:checkBox name="terms" value="accepted" checked="false" />
    <div id="errorMessage" class="validation"></div>

    <input type="submit" value="¡Enamora a Tus Clientes con Nest5!" id="subBtn"/>
    <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
</g:formRemote>
  %{--

  FORMULARIO DE BENEFICIO PASO 2

  --}%
<g:formRemote style="display: none;" id="BenefitForm" name="BenefitForm" before="changeButton2()"   onSuccess="checkResponseBenefit(data)" method="POST" action="${createLink(controller: 'promo', action: 'save')}" url="[controller: 'promo', action: 'save']">

    <span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0; display: block; width:100%; margin-bottom:0.5em; text-align: center;">2</span>
    <div class="clearfix"></div>
    <span style="font-family: BebasNeue; font-size: 3em;  margin: 0 0px;">Diseña tu Primer Beneficio</span>
    <div class="clearfix"></div>
    <span style="font-family: BebasNeue; font-size: 1em;  margin: 0 0px;">Selecciona una cantidad de sellos con el control de estrellas de la izquierda.<br>Selecciona la acción que debe hacer el usuario, y especifica que le darás por alcanzar el número de sellos.</span>

    %{--<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'activity', 'error')} ">
        <label for="activity">
            <g:message code="promo.activity.label" default="Activity" />

        </label>
        <g:select name="activity" from="${promoInstance.constraints.activity.inList}" value="${promoInstance?.activity}" valueMessagePrefix="promo.activity" noSelection="['': '']"/>
    </div>--}%
    <div class="actionIcons">
        <a href="#" id="buySelect" style="width: 50%; margin:0;padding:0;display:block;float:left; opacity: 1;"><img src="${resource(dir: 'images', file: 'comprar_up.png')}" style="width: 100%; margin:0;padding:0;height:auto;"></a>
        <a href="#" id="visitSelect" style="width: 50%; margin:0;padding:0;display:block;float:left; opacity: 0.25;"><img src="${resource(dir: 'images', file: 'visitar_down.png')}" style="width: 100%; margin:0;padding:0;height:auto;"></a>
    </div>

    %{--<div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'cantArt', 'error')} required">
        <label for="cantArt">
            <g:message code="promo.cantArt.label" default="Cant Art" />
            <span class="required-indicator">*</span>
        </label>
        <g:field type="number" name="cantArt" required="" value="${fieldValue(bean: promoInstance, field: 'cantArt')}"/>
    </div>
--}%
    <div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'article', 'error')} ">
        <label for="article">
            <g:message code="promo.article.label" default="Article" />

        </label>
        <g:textField name="article" value="${promoInstance?.article}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: promoInstance, field: 'wins', 'error')} ">
        <label for="wins">
            <g:message code="promo.wins.label" default="Wins" />

        </label>
        <g:textField name="wins" value="${promoInstance?.wins}"/>
    </div>


    <g:hiddenField name="company.id" value="" id="newCompanyId"/>
    <g:hiddenField name="activity" value="Compra" id="activityField"/>
    <g:hiddenField name="cantArt" value="" id="cantArtField"/>
    <div id="errorMessage2" class="validation"></div>
    <label for="">Clic en el botón y sigue configurando Nest5: Crear un Local de tu Marca.</label>
    <input type="submit" value="¡Ir Al Paso 3!" id="subBtn2"/>
    <span id="loading2" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
</g:formRemote>


%{--

  FORMULARIO DE BENEFICIO PASO 3

  --}%
<g:formRemote style="display: none;" id="StoreForm" name="StoreForm" before="changeButton3()"   onSuccess="checkResponseStore(data)" method="POST" action="${createLink(controller: 'store', action: 'save')}" url="[controller: 'store', action: 'save']">

    <span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0; display: block; width:100%; margin-bottom:0.5em; text-align: center;">4</span>
    <div class="clearfix"></div>
    <span style="font-family: BebasNeue; font-size: 3em;  margin: 0 0px;">Estás muy cerca. Indica un Local en el que es válido el Beneficio.</span>


    <div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'name', 'error')} ">
        <label for="name">
            <g:message code="store.name.label" default="Name" />

        </label>
        <g:textField name="name" value="${storeInstance?.name}"/>
    </div>





    <div class="fieldcontain ${hasErrors(bean: storeInstance, field: 'latitude', 'error')} ">
        <label for="address">
            <g:message code="store.address.label" default="Direccion" />


        </label>
        <g:textField name="direccionLocal" value=""/>
        %{--<input type="button" value="Geocode" onclick="codeAddress()">--}%
    </div>





    <g:hiddenField name="lati" value="${storeInstance?.latitude}"/>
    <g:hiddenField name="longi" value="${storeInstance?.longitude}"/>
    <g:hiddenField name="createdPromo" value="" id="newPromoId"/>
    <g:hiddenField name="company.id" value="" id="existingCompanyId"/>
    <div id="errorMessage3" class="validation"></div>
    <label for="">Estás cerca de terminar, haz clic en el botón y ¡Mira lo que sucede!.</label>
    <input type="submit" value="¡Sigamos al paso 4!" id="subBtn3"/>
    <span id="loading3" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
</g:formRemote>

<r:script>

    $(function() {
        $( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1940:2012',
            defaultDate: '01/13/1986',
            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
            monthNames:['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthNamesShort:['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic']
        });
    });




    function changeButton(){
        $("#subBtn").fadeOut(0,function(){
            $("#loading").fadeIn(50);
        });
        ;
    }

    function changeButton2(){
        $("#subBtn2").fadeOut(0,function(){
            $("#flecha1").hide(100);
            $("#flecha2").hide(100);
            $("#punta1").hide(100);
            $("#punta2").hide(100);
            $("#loading2").fadeIn(50);
        });
        ;
    }

    function changeButton3(){
        $("#subBtn3").fadeOut(0,function(){
            $("#loading3").fadeIn(50);
        });
        ;
    }

    function checkResponse(data){
        var html ="";
        $("#loading").fadeOut(500,function(){
            $("#subBtn").fadeIn(500);
        });

        if(data.errors == "1")
        {
            if(data.errorType == "1")
            {
                html = +"<ul>";
                for(var i = 0; i < data.messages.value.errors.length ; i++)
                {
                    html += "<li>"+data.messages.value.errors[i].message+"</li>" ;
                }
                html += "</ul>"
            }
            if(data.errorType == "2")
            {
                html += "<ul>";
                for(var i = 0; i < data.messages.length ; i++)
                {
                    html += "<li>"+data.messages[i].value+"</li>" ;
                }
                html += "</ul>"
            }
            console.log(html);
            $("#errorMessage").html(html)
                    .fadeIn(300);


        }
        else{
            $("#CompanyForm").fadeOut(200,function(){
                var thanks = '<div id="thankyounote" style="display:none;">'+data.messages[0].value+'</div>';

                $("#CompanyForm").parent().append(thanks);

                    $("#thankyounote").fadeIn(200);
                $("#newCompanyId").val(data.companyId);
                $("#existingCompanyId").val(data.companyId);
//                console.log($("#newCompanyId").val());

            });


        }



    }

    function checkResponseBenefit(data){
        var html ="";
        $("#loading2").fadeOut(500,function(){
            $("#subBtn2").fadeIn(500);
        });

        if(data.errors == "1")
        {
            if(data.errorType == "1")
            {
                html = +"<ul>";
                for(var i = 0; i < data.messages.value.errors.length ; i++)
                {
                    html += "<li>"+data.messages.value.errors[i].message+"</li>" ;
                }
                html += "</ul>"
            }
            if(data.errorType == "2")
            {
                html += "<ul>";
                for(var i = 0; i < data.messages.length ; i++)
                {
                    html += "<li>"+data.messages[i].value+"</li>" ;
                }
                html += "</ul>"
            }
            console.log(html);
            $("#errorMessage2").html(html)
                    .fadeIn(300);


        }
        else{
            $("#BenefitForm").fadeOut(200,function(){
                var htmlMain = "<h2>Crea un Local en el que vendas tu producto o prestes tu Servicio.</h2><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">V</span><span>Indícanos donde queda al menos uno de los locales en los que los usuarios, usando la App Móvil de Nest5 desde sus teléfonos móviles, podrán encontrar tu Marca, comprarte, visitarte o cumplir con el requisito que has diseñado para darles beneficios.<br>Si deseas poner más de un local, podras hacerlo una vez termines este asistente de configuración inicial en tu Panel de Control.</span> </p><div id=\"map_canvas\" style=\"width: 100%; height: 300px;\" ></div>";
                $("#main > article").html(htmlMain);

                    $("#newPromoId").val(data.promoId);
                    $("#StoreForm").fadeIn(200);
                initialize(); //Google Maps



            });


        }



    }

    function checkResponseStore(data){
        var html ="";
        $("#loading3").fadeOut(500,function(){
            $("#subBtn3").fadeIn(500);
        });

        if(data.errors == "1")
        {
            if(data.errorType == "1")
            {
                html = +"<ul>";
                for(var i = 0; i < data.messages.value.errors.length ; i++)
                {
                    html += "<li>"+data.messages.value.errors[i].message+"</li>" ;
                }
                html += "</ul>"
            }
            if(data.errorType == "2")
            {
                html += "<ul>";
                for(var i = 0; i < data.messages.length ; i++)
                {
                    html += "<li>"+data.messages[i].value+"</li>" ;
                }
                html += "</ul>"
            }
//            console.log(html);
            $("#errorMessage3").html(html)
                    .fadeIn(300);


        }
        else{
            $("#StoreForm").fadeOut(200,function(){
                var htmlMain = "<h1>Con esto has terminado la configuración inicial de Tu Marca en Nest5</h2><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">O</span><span>Ya puedes hacer clic en el botón e ir a el Panel de Control de Tu Marca en Nest5, para analizar estadísticas, comunicarte con los clientes que interactúen contigo por medio de Nest5 y muchas cosas más que ofrecemos para que los enamores y tengas un negocio exitoso.</span> </p>";
                $("#main > article").html(htmlMain);
                var thanks = '<div id="thankyounote" style="display:none;">'+data.messages[0].value+'</div>';

                $("#StoreForm").parent().append(thanks);

                $("#thankyounote").fadeIn(200);
//                $("#newCompanyId").val(data.companyId);
//                console.log($("#newCompanyId").val());

            });


        }



    }


    $(document).ready(function(){
        $("#gosteptwo").live('click',function(e){
            e.preventDefault();
            var htmlMain = "<h2>Diseña Un Beneficio Inicial</h2><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">N</span><span>Piensa en algo con lo que te gustaría llamar a tus clientes. No tiene que ser un descuento o un producto, puede ser algo creativo que en ocasiones funciona incluso mejor para enamorar a las personas de tu Marca. <br>Una vez lo tengas claro, indica cuántas veces debe u cliente comprar un producto o visitar tu local para obtener dicho beneficio y continúa con el tercer paso de Nest5. </span> </p><div id=\"container\"></div>";
            $("#main > article").html(htmlMain);

            $("#thankyounote").fadeOut(200,function(){

                $("#BenefitForm").fadeIn(200);
                $("#thankyounote").remove();
                //Acciones stamp Card
                width = $("#container").parent().width();
//     alert(width)
     var w = (width - 130)/10;
//     alert(w)
     var h = ((w / 1.055))+40;
//     alert(h)
     height = (h * 3) + 40;
//     alert(height)
    stage = new Kinetic.Stage({
            container: "container",
            width: width - 20,
            height: height
        });
        layer = new Kinetic.Layer();
        stage.add(layer);
        drawText("Selecciona la cantidad de sellos de tu promoción",30);
        $("#container").mousedown(function(e){
        e.preventDefault();
        pressing = true;
        });
        $("#container").mouseup(function(e){
        e.preventDefault();
        pressing = false;
        });
    var sources = {
            star_gray: "${resource(dir: 'images', file: 'estrella_cupon_gray.png')}",
            star_color: "${resource(dir: 'images', file: 'estrella_cupon.png')}",
            bg: "${resource(dir: 'images', file: 'cellphone.png')}"
            };

       loadImages(sources, function(images) {
       graphics = images;
        var i = 0;
        var x = 10;
        var y = 60;
        var w = (width - 130)/10;
        var h = w / 1.055;
        while (i < 30)
        {
            if((i % 10 == 0) && (i != 0))
            {
                x = 10;
                y += h+10;
            }
          draw(images,x,y,w,h,function(image){

                    stars.push(image);
                    image.id = i;

                    image.on("mouseover touchstart", function() {
                    //this.setImage(images.star_color);
                    selectStars(this.id);
                    //layer.draw();
                });

                image.on("mouseout touchend", function() {
                    //console.log("out of:"+this.id);
                    whipe();
                });

            });
           x += 10 + w;
           i++;
        }



        });
            });
            $(".actionIcons").append("<div id='stop2'></div>");

            tutorialize();

        });

        $("#gotopanel").live('click',function(){
           window.location = '/company/panel';
        });


        $("#buySelect").live('mouseover',function(e){
            e.preventDefault();
            $(this).animate({
                opacity: 1
                }, 200, function() {
                // Animation complete.
              });
             });


        $("#visitSelect").live('mouseover',function(e){
            e.preventDefault();
            $(this).animate({
                opacity: 1,
                }, 200, function() {
                // Animation complete.
              });
             });
        $("#buySelect").live('mouseout',function(e){
            e.preventDefault();
            if(selectedAction != "comprar")
            {
             $(this).animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });
            }

             });
         $("#visitSelect").live('mouseout',function(e){
            e.preventDefault();
            if(selectedAction != "visitar")
            {
             $(this).animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });
            }

             });

         $("#buySelect").live('click',function(e){
            e.preventDefault();
            $("#activityField").attr("value","Compra");
            selectedAction = 'comprar';
            $('#buySelect > img').attr("src","${resource(dir:'images',file: 'comprar_up.png')}");
            $('#visitSelect > img').attr("src","${resource(dir:'images',file: 'visitar_down.png')}");
            $('#visitSelect').animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });

        });
        $("#visitSelect").live('click',function(e){
            e.preventDefault();
            $("#activityField").attr("value","Visita");
            selectedAction = 'visitar';
            $('#visitSelect > img').attr("src","${resource(dir:'images',file: 'visitar_up.png')}");
            $('#buySelect > img').attr("src","${resource(dir:'images',file: 'comprar_down.png')}");
            $('#buySelect').animate({
                opacity: 0.25,
                }, 200, function() {
                // Animation complete.
              });

        });
    });


    function tutorialize(){
    var inicio = "<p id=\"startTut\" style=\"opacity: 0;\"><img style=\"width: 100%; height:auto; \" src=\"${resource(dir:'images',file:'inicio.png')}\"></p>";
    var segundo = "<p style=\"width:100%;textAlign: center;\"><img style=\"width: 20%; height:auto; \" src=\"${resource(dir:'images',file:'inicio.png')}\"></p>";
    var stick = '<div class=\"stick-vertical\"  id=\"flecha1\">&nbsp;</div>';
    var stick2 = '<div class=\"stick-horizontal\"  id=\"flecha2\">&nbsp;</div>';
    var arrowDown = '<div class="arrow-down" id="punta1"></div>';
    var arrowRight = '<div class="arrow-right" id="punta2"></div>';
    var pos1 = $("#container").offset();

    var x1 = pos1.left;
    var y1 = pos1.top;
    var pos2 = $("aside").offset();
    var x2 = pos2.left;
    var y2 = pos2.top;
    var width = 15;



    $('body').append(stick);
    $('body').append(arrowDown);
     $('body').append(stick2);
    $('body').append(arrowRight);

    $("#flecha1").css({
        'position': 'absolute',
        'top': 0+"px",
        'left': x1 - width/2+"px"

    })
    .animate({
        height: y1+"px"
    },1500);
    $("#punta1").css({
        'position': 'absolute',
        'top': 0+"px",
        'left': x1 - 20+"px"

    })
    .animate({
        top: y1+"px"
    },1500,function(){
        $("#flecha2").css({
        'position': 'absolute',
        'top': y1+"px",
        'left': x1 + 20+"px"

    })
    .animate({
        width: x2-x1-20-20+"px"
    },1500);
    $("#punta2").css({
        'position': 'absolute',
        'top': y1-10+"px",
        'left': x1 + 20+"px"

    })
    .animate({
        left: x2-20+"px"
    },1500);
    });



    };


</r:script>