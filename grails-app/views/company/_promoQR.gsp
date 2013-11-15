<%--
  Created by IntelliJ IDEA.
  User: Jonatan
  Date: 10/05/12
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
 <div id="pageBody">
<!-- Page title -->
 <div id="pagetitle">
    <div class="wrapper">
        <h1>Imprime el Validador de Sellos</h1>
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
                <div class="column width3 first">
                    <h2>Promoción: </h2>
                    <p>
                        <strong>${promo}</strong>
                    </p>
                </div>

                <div class="column width3">
                   <h2>Selecciona uno de los locales en los que esta promoción está diponible</h2>
                    <ol id="selectable">
                        <g:each in="${offers}" status="i" var="oferta">
                            <li class="ui-widget-content" id="${oferta.store.id}">${oferta.store}</li>
                        </g:each>
                    </ol>
                   <h3>Ahora haz clic en el botón imprimir.</h3>
                </div>

            </div>

            <div class="colgroup leading">
                <div class="column width6 first">
                    <h3>Imprime este volante.</h3>
                    <p>
                        Cada que alguien <strong>${((promo.toString()).split(" y obtén"))[0]}</strong>, dile que lea este código con la aplicación <strong>Nest5</strong> de
                        su telefono móvil para que así obtengas las estadísticas de cada usuario.
                    </p>
                    <hr/>
                    <canvas id="myCanvas" width="" height="" style="display: none;"></canvas>
                    <p>Selecciona algún local de la lista de arriba a la derecha para generar el tiquete validador personalizado.</p>
                    <img id="canvasImg" src="" alt="Clic derecho para guardar">


                    <div class="clearfix"></div>
                    <div id="saveButtons"><button id="printButton">Clic Para Imprimir</button></div>
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
    var offerid;
   $(document).ready(function(){
       $( "#selectable" ).selectable({
           stop: function(event,ui) {
                $("#canvasImg").attr("src","${resource(dir: 'images',file: 'preloader.gif')}");
               $( ".ui-selected", this ).each(function() {

                   var index = $( "#selectable li" ).index( this );
//                   alert(index + 1)
                   //pedir el id del offer que tenga la tienda a la que se hizo clic y la promocion que esta acá en groove con promo.id,
                   //console.log(ui);
                   $.when(getOffer(this.id,${promo.id}))
                           .then(function(response){
                               //alert(response.offer)
                               if(response.offer != null)
                               {
                                   offerid = response.offer.id
                                   console.log(response);
                                   startQR(response)
                               }
//                                        guardarlo en offerid y ahi, startQR con ese id para generar la imagen
                           })
                           .fail(callError);
               });
           }
       });
   });

 function getOffer(storeid,promoid){

     var url = "${createLink(controller: 'promo', action: 'searchOffer')}";

     return  $.ajax({
         type: "POST",
         url: url,
         data: {promoid : promoid,storeid:storeid },
         dataType: "json"
     }).promise();

 }


    function loadImages(sources, callback) {
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
            images[src].crossOrigin = '';
        }
    }

    function startQR(response)  {

        var canvas = document.getElementById("myCanvas");
        var rectWidth = 650;
        var rectHeight = 650;
        var ticketWidth = 200;
        var ticketHeight = 600;
        var margin = 20;
        var rectX = margin - 10;
        var rectY = 10;
        var cornerRadius = 50;
        var divW = $(canvas).parent().width();
        $(canvas).attr('width',rectWidth+'px');
        $(canvas).attr('height',rectHeight+'px');
        var context = canvas.getContext("2d");

        var sources = {
            logo: "${resource(dir: 'images', file: 'logo.png')}",
            qrcode: "${createLink(uri: "/promo/createQR?promocode=")}"+offerid,
            background: "${resource(dir: 'images', file: 'fondo_qr.png')}",
            texture: "${resource(dir: 'images/card-textures', file: 'orange.jpg')}",
            tijeras:  "${resource(dir: 'images/card-icons', file: 'scissors.png')}"
        };

        loadImages(sources, function(images) {

//            var logoW = 0.8958 * divW;
            var logoW = 110;
            var logoH = 110;
            var qrW = 180;

            context.drawImage(images.texture, 0, 0,rectWidth,ticketHeight+cornerRadius);

            context.fillStyle    = '#fff';
            context.font         = 'Bold 20px BebasNeue';

            context.textBaseline = 'top';
//
            var title = getLines(context,response.promo.display,180,'Bold 20px BebasNeue');
            var i = 0;
            var y = 40;
            while(i<title.length)
            {
               var w = context.measureText(title[i]);
                context.fillText  (title[i], ticketWidth/2 - w.width/2 + 15, y);
                i++;
                y+=20;
            }
            //images.qrcode.src = 'http://nest5.com/yourQRcode.jpg';
            y += 10;
            context.drawImage(images.logo, ticketWidth/2 - logoW / 2 + 15, y,logoW,logoH);

            y += logoH + 10;
            context.fillText("Local: ",margin,y);
            context.font = '20px BebasNeue';
            y += 25;
            var local = getLines(context,response.store.name,180,'20px BebasNeue');
            var i = 0;

            while(i<local.length)
            {
                var w = context.measureText(local[i]);
                context.fillText  (local[i], ticketWidth/2 - w.width/2 + 15, y);
                i++;
                y+=20;
            }
            y+= 5;
            context.font = 'Bold 20px BebasNeue';
            context.fillText("Acción: ",margin,y);
            y += 20;
            context.font = '20px BebasNeue';
            y += 20;
            var accion = getLines(context,response.promo.promo.activity,180,'20px BebasNeue');
            var i = 0;

            while(i<accion.length)
            {
                var w = context.measureText(accion[i]);
                context.fillText  (accion[i], ticketWidth/2 - w.width/2 + 15, y);
                i++;
                y+=20;
            }
            y += 30;
            context.drawImage(images.qrcode, ticketWidth/2 - qrW/2 + 15, y, qrW, qrW);
            //Lineas de Corte e imagen de explicacion
            var dashGapArray = [5];

            context.beginPath();
            //context.moveTo(rectX+cornerRadius, rectY);

            context.dashedLine( rectX+cornerRadius, rectY, rectX+ticketWidth+10-cornerRadius,rectY, dashGapArray );
            context.moveTo(rectX+ticketWidth+10-cornerRadius,rectY);
//            context.lineTo(rectX + ticketWidth+10 - cornerRadius, rectY);
            context.arcTo(rectX + ticketWidth + 10, rectY, rectX + ticketWidth + 10, rectY + cornerRadius, cornerRadius);
            context.dashedLine( rectX + ticketWidth + 10, rectY + cornerRadius, rectX + ticketWidth + 10, rectY + ticketHeight - cornerRadius, dashGapArray );
            context.moveTo(rectX + ticketWidth + 10, rectY + ticketHeight - cornerRadius);
//            context.lineTo(rectX + ticketWidth + 10, rectY + ticketHeight - cornerRadius);
            context.arcTo(rectX + ticketWidth + 10,rectY + ticketHeight + 10, rectX + ticketWidth +10 - cornerRadius,rectY + ticketHeight + 10, cornerRadius);
            context.dashedLine(rectX + cornerRadius, rectY + ticketHeight + 10,rectX + ticketWidth + 10 - cornerRadius,rectY + ticketHeight + 10,dashGapArray);
            context.moveTo(rectX + cornerRadius, rectY + ticketHeight + 10);
//            context.lineTo(rectX + cornerRadius, rectY + ticketHeight + 10);
            context.arcTo(rectX,rectY + ticketHeight + 10,rectX,rectY + ticketHeight - cornerRadius, cornerRadius);
            context.dashedLine(rectX,rectY + ticketHeight - cornerRadius,rectX,rectY+cornerRadius,dashGapArray);
            context.moveTo(rectX,rectY+cornerRadius);
//            context.lineTo(rectX,rectY+cornerRadius);
            context.arcTo(rectX,rectY,rectX+cornerRadius,rectY,cornerRadius);
            context.lineWidth = 0.5;
            context.stroke();
           context.closePath();
            context.save();
            context.translate(rectWidth / 2 , rectHeight / 2);
            context.rotate(Math.PI);
            context.drawImage(images.tijeras,rectWidth/2 - margin - ticketWidth -26, 0,32,32);
            context.restore();


            context.beginPath();
            context.moveTo(ticketWidth+cornerRadius,0);
            context.lineTo(ticketWidth+cornerRadius, rectHeight);
            context.lineWidth = 3;
            context.stroke();
            context.closePath();
            var splitted = response.promo.display.split(" y obt");
            var initial = splitted[0];

            var newX = ticketWidth + cornerRadius + 20;
            maxWidth = rectWidth - newX - 20;
            context.font = 'Bold 35px BebasNeue';
            context.fillText("Instrucciones: ",newX,rectY);
            context.font = '20px  Varela';
            var texto = "1. Imprime este volante con el botón de abajo.";
            var texto2 = "2. Recorta el tiquete de la izquierda por la línea marcada.";
            var texto3 = "3. Lleva el tiquete recortado al local: <<"+response.store.name+">>";
            var texto4 = "4. Cada que alguien "+initial+", muéstrale el tiquete para que lea el código blanco y negro con la aplicación Nest5 presionando en el botón que dice: \"Sella tu Tarjeta\" ";
            var texto5 =  "5. Si un cliente llega con un cupón, que se reconoce por ser una estrella y tener el título de la promoción, para redimirlo deberás mostrarle nuevamente el código y que él presione el botón \"Redimir Cupón\" en la aplicación de Nest5 en su teléfono.";
            y = rectY + 50;
            var texto = getLines(context,texto,maxWidth,'20px Varela');
            var i = 0;

            while(i<texto.length)
            {
                var w = context.measureText(texto[i]);
                context.fillText  (texto[i], newX, y);
                i++;
                y+=25;
            }
            y += 20;

            var texto2 = getLines(context,texto2,maxWidth,'20px Varela');
            var i = 0;

            while(i<texto2.length)
            {
                var w = context.measureText(texto2[i]);
                context.fillText  (texto2[i], newX, y);
                i++;
                y+=25;
            }
            y += 20;
            var texto3 = getLines(context,texto3,maxWidth,'20px Varela');
            var i = 0;

            while(i<texto3.length)
            {
                var w = context.measureText(texto3[i]);
                context.fillText  (texto3[i], newX, y);
                i++;
                y+=25;
            }
            y += 20;
            var texto4 = getLines(context,texto4,maxWidth,'20px Varela');
            var i = 0;

            while(i<texto4.length)
            {
                var w = context.measureText(texto4[i]);
                context.fillText  (texto4[i], newX, y);
                i++;
                y+=25;
            }
            y += 20;
            var texto5 = getLines(context,texto5,maxWidth,'20px Varela');
            var i = 0;

            while(i<texto5.length)
            {
                var w = context.measureText(texto5[i]);
                context.fillText  (texto5[i], newX, y);
                i++;
                y+=25;
            }
            y += 20;

            var dataURL = canvas.toDataURL();
            document.getElementById("canvasImg").src = dataURL;


        });
    };

    function getLines(ctx,phrase,maxPxLength,textStyle) {
        var wa=phrase.split(" "),
                phraseArray=[],
                lastPhrase=wa[0],
                l=maxPxLength,
                measure=0;
        ctx.font = textStyle;
        for (var i=1;i<wa.length;i++) {
            var w=wa[i];
            measure=ctx.measureText(lastPhrase+w).width;
            if (measure<l) {
                lastPhrase+=(" "+w);
            }else {
                phraseArray.push(lastPhrase);
                lastPhrase=w;
            }
            if (i===wa.length-1) {
                phraseArray.push(lastPhrase);
                break;
            }
        }
        return phraseArray;
    }

    function CanvasSaver(url) {

        this.url = url;

        this.savePNG = function(cnvs, fname) {
            if(!cnvs || !url) return;
            fname = fname || 'picture';

            var data = cnvs.toDataURL("image/png");
            data = data.substr(data.indexOf(',') + 1).toString();


            var dataInput = document.createElement("input");
//            dataInput.setAttribute("type","file");
            dataInput.setAttribute("name", 'imgdata');
            dataInput.setAttribute("value", data);

            var nameInput = document.createElement("input");
            nameInput.setAttribute("name", 'name');
            nameInput.setAttribute("value", fname + '.png');

            var myForm = document.createElement("form");
            myForm.method = 'post';
            myForm.action = url;
            myForm.enctype = "multipart/form-data"
            myForm.appendChild(dataInput);
            myForm.appendChild(nameInput);

            document.body.appendChild(myForm);
            myForm.submit();
            document.body.removeChild(myForm);
        };

        this.generateButton = function (label, cnvs, fname) {
            var btn = document.createElement('button'), scope = this;
            btn.innerHTML = label;
//            btn.style['class'] = 'canvassaver';
            btn.addEventListener('click', function(){scope.savePNG(cnvs, fname);}, false);

//            document.body.appendChild(btn);
            $("#saveButtons").append(btn);

            return btn;
        };
    }
    //startQR();
    /*var canvas = document.getElementById("myCanvas");
    var cs = new CanvasSaver('http://nest5.com/user/downloadQR');
    cs.generateButton('¡Clic para Guardar la Imagen!', canvas, 'myimage');*/


    $(document).ready(function(){

        $("body").on('click','#printButton',function(e){
            e.preventDefault();
            $("#canvasImg").jqprint();

        });
    });

</script>

