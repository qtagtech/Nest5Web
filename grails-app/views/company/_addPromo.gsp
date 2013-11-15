
 <div id="pageBody">
<!-- Page title -->
 <div id="pagetitle">
    <div class="wrapper">
        <h1>Agregar una Promoción</h1>
        <!-- Quick search box -->
        <form action="" method="get"><input class="" type="text" id="q" name="q" /></form>
    </div>
</div>
<!-- End of Page title -->

<!-- Page content -->
<div id="page">
    <!-- Wrapper -->
    <div class="wrapper">
        <!-- Left column/section -->
        <section class="column width6 first">

            <div class="colgroup leading">
                <div class="column width6 first">
                    <h2>Crea otra forma de Enamorar a tus clientes</h2>
                    <div id="container"></div>
                </div>

            </div>

            <div class="colgroup leading">
                <div class="column width6 first">
                    <h3>¿Qué debes hacer?</h3>
                    <p>
                        Enamorar a tus clientes es más fácil de lo que te imaginas. Recuerda el funcionamiento de Nest5: <br>
                        Cada cliente nuevo, va a tu local, dice que es usuario Nest5 y tú introduces su nombre de usuario en esta plataforma (O le entregas el código en caso que el cliente tenga un celular con la aplicación de Nest5 instaladal)<br>
                        en ese momento el cliente habrá ganado un sello, con 4 mas iguales, es decir, yendo o comprandote cuatro veces más, obtendrá algo que tu le darás para enamorarlo. Con los clientes funciona ser creativos, como regalar boletas para conciertos,
                        nombrar productos de tu carta con su nombre o incluso darles una clase para aprender a manejar algo que tu sepas y ellos no. Se trata de que a medida que los conoces con Nest5, aprendas como son cada uno de ellos y obtengas mejores formas de consentirlos, convertirlos en fieles y aumentar tus ingresos.
                    </p>

                    <p style="font-family: 'NoticeNotice';">
                    <g:formRemote  id="BenefitForm" name="BenefitForm" before="changeButton2()"   onSuccess="checkResponseBenefit(data)" method="POST" action="${createLink(uri: "promo/save")}" url="[controller: 'promo', action: 'save']">


                        <h4>Empezamos?, escoge que debe hacer un usuario para que obtener un sello tuyo:  </h4>
                        <p><div class="actionIcons">
                            <a href="#" id="buySelect" class="normal" style="width: 50%; margin:0;padding:0;display:block;float:left; opacity: 1;"><img src="${resource(dir: 'images', file: 'comprar_up.png')}" style="width: 100%; margin:0;padding:0;height:auto;"></a>
                            <a href="#" id="visitSelect" class="normal" style="width: 50%; margin:0;padding:0;display:block;float:left; opacity: 0.25;"><img src="${resource(dir: 'images', file: 'visitar_down.png')}" style="width: 100%; margin:0;padding:0;height:auto;"></a>
                        </div>
                        </p>
                        <p>Quizás comprarte algo, o simplemente visitarte 5 veces e identificarse. Recuerda, poner como requisito que te visiten es muy útil porque el usuario al sellar su tarjeta Nest5 está haciéndote publicidad ante cientos de amigos en sus redes sociales. (Multiplícalo por los 5 sellos que hace para ganarse tu beneficio, y las futuras venidas una vez lo enamores y tendrás tu Marca ante miles y miles de usuarios, Genial, no?</p>
                        <div class="clearfix"></div>
                        <hr/>

                        <div>
                            <label for="article">
                                Que deben comprar, o donde deben visitarte

                            </label>
                            <g:textField name="article" value=""/>
                        </div>

                        <div>
                            <label for="wins">
                               Ahora, cuando sellen su tarjeta 5 veces, que estas dispuesto a darles o hacer para enamorarlos?

                            </label>
                            <g:textField name="wins" value=""/>
                        </div>

                        <div>
                            <label for="description">
                                Hay alguna condicion especial que quieres tengan en cuenta?

                            </label>
                            <g:textField name="description" value=""/>
                        </div>

                        <div class="clearfix"></div>
                        <label for="description">
                            Y por ultimo, una vez logren conseguir sus 5 sellos, cuanto tiempo tienen para reclamar o hacer valido ese beneficio que les daras?

                        </label>
                        <div>
                            <label for="description">
                                <g:message code="promo.couponValidity.label" default="Plazo para redimir un cupón de la Promoción." />

                            </label>
                            <div id="eq">

                                <span id="year">0|year</span>
                                <span id="month">2|month</span>
                                <span id="day">0|day</span>
                                <span id="hour">0|hour</span>
                                <span id="minute">0|minute</span>
                                <span id="second">0|second</span>

                            </div>
                            <div id="timeDisplay">
                                <span id="year-value">0</span><span> Años </span>
                                <span id="month-value">2</span><span> Meses </span>
                                <span id="day-value">0</span><span> Días </span>
                                <span id="hour-value">0</span><span> Horas </span>
                                <span id="minute-value">0</span><span> Minutos </span>
                                <span id="second-value">0</span><span> Segundos </span>

                            </div>
                        </div>
                        <hr/>





                        <g:hiddenField name="activity" value="Compra" id="activityField"/>
                        <g:hiddenField name="cantArt" value="5" id="cantArtField"/>
                        <g:hiddenField name="yearqty" value="0" id="year-valor"/>
                        <g:hiddenField name="monthqty" value="2" id="month-valor"/>
                        <g:hiddenField name="dayqty" value="0" id="day-valor"/>
                        <g:hiddenField name="hourqty" value="0" id="hour-valor"/>
                        <g:hiddenField name="minuteqty" value="0" id="minute-valor"/>
                        <g:hiddenField name="secondqty" value="0" id="second-valor"/>
                        <div id="errorMessage2" class="validation"></div>

                        <input type="submit" value="Guardar Promoción" id="subBtn2"/>
                        <span id="loading2" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
                    </g:formRemote>
                    </p>

                    <hr/>

                </div>

            </div>

            <div class="colgroup leading">
                <div class="column width3 first">


                </div>
                <div class="column width3">

                </div>
            </div>
            <div class="clear">&nbsp;</div>

        </section>
        <!-- End of Left column/section -->

        <!-- Right column/section -->
        <aside class="column width2">
            <div id="rightmenu">
                <header>
                    <h3>Tu Cuenta</h3>
                </header>
                <dl class="first">
                    <dt><img width="16" height="16" alt="" src="${resource(dir: 'img',file:'key.png')}"></dt>
                    <dd><a href="#">${user.name} (Admin)</a></dd>
                    <dd class="last">Cuenta Full.</dd>

                    <dt><img width="16" height="16" alt="" src="${resource(dir: 'img',file:'help.png')}"></dt>
                    <dd><a href="#">Soporte</a></dd>
                    <dd class="last">Documentación y FAQ</dd>
                </dl>
            </div>
            <div class="content-box">
                <header>
                    <h3>Noticias Nest5</h3>
                </header>
                <section>
                    <dl>
                        <dt>Te damos la Bienvenida A Nest5</dt>
                        <dd><a href="#">Leer Más</a></dd>
                        <dt>¿Qué Es y Cómo funciona Nest5?.</dt>
                        <dd><a href="#">Leer Más</a></dd>
                    </dl>
                </section>
            </div>
        </aside>
        <!-- End of Right column/section -->

    </div>
    <!-- End of Wrapper -->
</div>
</div>
<script>

    /*var stage;
    var layer;
    var txt;

    var width;
    var height;
    var graphics;
    var stars = [];
    var pressing = false;*/

    var selectedAction = "comprar";

    /*function loadImages(sources, callback) {
        var images = {};
        var loadedImages = 0;
        var numImages = 0;
        // get num of sources
        for(var src in sources) {
            numImages++;
        }
        for(var src in sources) {
            images[src] = new Image();
            images[src].onload = function() {
                if(++loadedImages >= numImages) {
                    callback(images);
                }
            };
            images[src].src = sources[src];
        }
    }*/
    /*function draw(images,x,y,w,h,f) {


        *//*var bg = new Kinetic.Image({
         image: images.bg,
         x: 0,
         y: 0,
         width: w*10 + 130,
         height: (w * 10 + 130) * 1.055,
         draggable: false
         });*//*

        var pattern = new Kinetic.Image({
            image: images.star_gray,
            x: x,
            y: y,
            width: w,
            height: h,
            draggable: false
        });

        *//*
         * bind listeners
         *//*
        *//*layer.add(bg);*//*
        layer.add(pattern);
        layer.draw();
        if(typeof(f)=="function") f(pattern);


    } */
    /*function selectStars(number)
    {


        if(pressing)
        {
            var i = 0;
            while(i <= number)
            {
                stars[i].setImage(graphics.star_color);

                i++;
            }
            layer.draw();
            var n = number + 1;
            drawText("# de Sellos de la Promoción: "+n,30);
            $("#cantArtField").val(n);
        }

    }*/

    /*function whipe()
    {

        if(pressing)
        {
            var j = 0;
            while(j < 30)
            {
                stars[j].setImage(graphics.star_gray);
                j++;
            }
            //this.setImage(images.star_gray);
            layer.draw();
        }



    }*/

    /*function drawText(text,size)
    {
        layer.remove(txt);
        txt = new Kinetic.Text({"fontFamily":"BebasNeue","text":text,"fontSize":size,"align":"left","verticalAlign":"top","padding":0,"fontStyle":"normal","width":"auto","detectionType":"pixel","shadow":{"blur":1,"alpha":0.5,"offset":{"x":2,"y":2},"color":"black"},"visible":true,"listening":true,"alpha":1,"x":20,"y":20,"scale":{"x":1,"y":1},"rotation":0,"centerOffset":{"x":0,"y":0},"dragConstraint":"none","dragBounds":{},"draggable":false,"textStroke":"black","textFill":"orange","textStrokeWidth":0.1});

        *//*
         * bind listeners
         *//*

        layer.add(txt);
        layer.draw();
    }*/
</script>
<script>

$(function(){
    $( "#eq > span" ).each(function() {
        // read initial values from markup and remove that
        var value = parseInt( (($( this ).text()).split("|"))[0], 10 );
        var type = (($( this ).text()).split("|"))[1];
        var maximun;
        var minimun;
        switch(type)
        {
            case "year": maximun = 10;
                         minimun = 0;
                         break;
            case "month": maximun = 12;
                        minimun = 0;
                        break;
            case "day": maximun = 29;
                        minimun = 0;
                        break;
            case "hour": maximun = 23;
                minimun = 0;
                break;
            case "minute": maximun = 59;
                minimun = 0;
                break;
            case "second": maximun = 59;
                minimun = 0;
                break;
        }
        $( this ).empty().slider({
            value: value,
            range: "min",
            max: maximun,
            min: minimun,
            animate: true,
            orientation: "vertical",
            slide: function(event, ui) {

                $("#"+this.id+"-value").html(ui.value);
            } ,
            change: function(event, ui) {

                $("#"+this.id+"-valor").attr("value",ui.value);
            }
        });
    });
});

    function changeButton2(){
        $("#subBtn2").fadeOut(0,function(){

            $("#loading2").fadeIn(50);
        });
        ;
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
            //console.log(html);
            $("#errorMessage2").html(html)
                    .fadeIn(300);


        }
        else{
            /*$("#BenefitForm").fadeOut(200,function(){
                var htmlMain = "<h2>Crea un Local en el que vendas tu producto o prestes tu Servicio.</h2><p><span style=\"font-family: 'Entypo'; font-size: 5em;  margin: 0 10px;\">V</span><span>Indícanos donde queda al menos uno de los locales en los que los usuarios, usando la App Móvil de Nest5 desde sus teléfonos móviles, podrán encontrar tu Marca, comprarte, visitarte o cumplir con el requisito que has diseñado para darles beneficios.<br>Si deseas poner más de un local, podras hacerlo una vez termines este asistente de configuración inicial en tu Panel de Control.</span> </p><div id=\"map_canvas\" style=\"width: 100%; height: 300px;\" ></div>";
                $("#main > article").html(htmlMain);

                $("#newPromoId").val(data.promoId);
                $("#StoreForm").fadeIn(200);
                initialize(); //Google Maps



            });*/
            loadContent();
            $.when(getContent("promos"))
                      .then(setContent)
                      .fail(callError);


        }



    }

    $(document).ready(function(){

        $("body").on('mouseover','#buySelect',function(e){
            e.preventDefault();
            $(this).animate({
                opacity: 1
                }, 200, function() {
                // Animation complete.
              });
             });


        $("body").on('mouseover','#visitSelect',function(e){
            e.preventDefault();
            $(this).animate({
                opacity: 1,
                }, 200, function() {
                // Animation complete.                     #buySelect
              });
             });
        $("body").on('mouseout','#buySelect',function(e){
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
         $("body").on('mouseout','#visitSelect',function(e){
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

         $("body").on('click','#buySelect',function(e){
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
        $("body").on('click','#visitSelect',function(e){
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


        /*//Acciones stamp Card
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
        });*/
    });



</script>






