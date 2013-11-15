<!doctype html>
<html>
<head>
    <meta name="layout" content="new_main"/>
    <title>Enamora tus Clientes con Nest5 y nuestra App Móvil</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://nest5.com/company/join" />
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'orangebox.css')}" type="text/css" />
    <r:require modules="orangebox,waypoints,gritter,juvi"/>
<script src="http://www.html5canvastutorials.com/libraries/kinetic-v3.10.1.js"></script>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
    <style type="text/css">ol{margin:0;padding:0}.c3{list-style-type:decimal;margin:0;padding:0}.c0{padding-left:0pt;direction:ltr;margin-left:36pt}.c8{max-width:468pt;background-color:#ffffff;padding:72pt 72pt 72pt 72pt}.c11{list-style-type:lower-latin;margin:0;padding:0}.c2{color:inherit;text-decoration:inherit}.c7{padding-left:0pt;margin-left:72pt}.c9{color:#1155cc;text-decoration:underline}.c6{height:11pt}.c4{font-weight:bold}.c1{font-size:18pt}.c5{direction:ltr}.c10{font-size:14pt}.title{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:36pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}.subtitle{padding-top:18pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:24pt;font-family:"Georgia";padding-bottom:4pt}p{color:#000000;font-size:11pt;margin:0;font-family:"Arial"}h1{padding-top:24pt;line-height:1.15;text-align:left;color:#000000;font-size:18pt;font-family:"Arial";font-weight:bold;padding-bottom:6pt}h2{padding-top:18pt;line-height:1.15;text-align:left;color:#000000;font-size:14pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h3{padding-top:14pt;line-height:1.15;text-align:left;color:#666666;font-size:12pt;font-family:"Arial";font-weight:bold;padding-bottom:4pt}h4{padding-top:12pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:11pt;font-family:"Arial";padding-bottom:2pt}h5{padding-top:11pt;line-height:1.15;text-align:left;color:#666666;font-size:10pt;font-family:"Arial";font-weight:bold;padding-bottom:2pt}h6{padding-top:10pt;line-height:1.15;text-align:left;color:#666666;font-style:italic;font-size:10pt;font-family:"Arial";padding-bottom:2pt;}</style>
    <style type="text/css">
    .stick-vertical {
        width: 15px;
        height: 0px;
        background: #93325e;
        /*display: block;*/
        position: absolute;
        top: 10px;
        left: 50%;
        opacity: 0.6;

    }
    .stick-horizontal {
        width: 0px;
        height: 15px;
        background: #93325e;
        /*display: block;*/
        position: absolute;
        top: 0px;
        left: 0;
        opacity: 0.6;

    }

    .arrow-down {
        width: 0;
        height: 0;
        border-left: 20px solid transparent;
        border-right: 20px solid transparent;

        border-top: 20px solid #93325e;
        opacity: 0.6;
    }
    .arrow-right {
        width: 0;
        height: 0;
        border-top: 20px solid transparent;
        border-bottom: 20px solid transparent;

        border-left: 20px solid #93325e;
        opacity: 0.6;
    }
    </style>
    <r:script disposition="head">
        var geocoder;
        var map;
         var infowindow;
                var marker;
                var input;
                var latInp;
                var lngInp;
        function initialize() {
            geocoder = new google.maps.Geocoder();
            var latlng = new google.maps.LatLng(-34.397, 150.644);

            var myOptions = {
                zoom: 15,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            latInp = document.getElementById("lati");
            lngInp = document.getElementById("longi");
            // Try HTML5 geolocation
            if(navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {
                    var pos = new google.maps.LatLng(position.coords.latitude,
                            position.coords.longitude);

                    /*var infowindow = new google.maps.InfoWindow({
                        map: map,
                        position: pos,
                        content: 'Location found using HTML5.'
                    });*/

                    map.setCenter(pos);
                }, function() {
                    handleNoGeolocation(true);
                });
            } else {
                // Browser doesn't support Geolocation
                handleNoGeolocation(false);
            }

             input = document.getElementById('direccionLocal');

            var autocomplete = new google.maps.places.Autocomplete(input);
            autocomplete.bindTo('bounds', map);
            infowindow = new google.maps.InfoWindow();
            marker = new google.maps.Marker({
                map: map,
                animation: google.maps.Animation.DROP,
                draggable: true
            });
            google.maps.event.addListener(marker, 'click', toggleBounce);
            google.maps.event.addListener(marker, 'dragend', function(evt){
                //alert('Marker dropped: Current Lat: ' + evt.latLng.lat().toFixed(3) + ' Current Lng: ' + evt.latLng.lng().toFixed(3));
                $(latInp).val(evt.latLng.lat());
                $(lngInp).val(evt.latLng.lng());
                codeLatLng( evt.latLng.lat(),evt.latLng.lng());
            });

            google.maps.event.addListener(marker, 'dragstart', function(evt){
                infowindow.close();

                //document.getElementById('current').innerHTML = '<p>Currently dragging marker...</p>';
            });
            google.maps.event.addListener(autocomplete, 'place_changed', function() {
                infowindow.close();
                var place = autocomplete.getPlace();
                if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17);  // Why 17? Because it looks good.
                }

                var image = new google.maps.MarkerImage(
                        place.icon,
                        new google.maps.Size(71, 71),
                        new google.maps.Point(0, 0),
                        new google.maps.Point(17, 34),
                        new google.maps.Size(35, 35));
                marker.setIcon(image);
                marker.setPosition(place.geometry.location);

                $(latInp).val(place.geometry.location.lat());
                $(lngInp).val(place.geometry.location.lng());
                var address = '';
                if (place.address_components) {
                    address = [(place.address_components[0] &&
                            place.address_components[0].short_name || ''),
                        (place.address_components[1] &&
                                place.address_components[1].short_name || ''),
                        (place.address_components[2] &&
                                place.address_components[2].short_name || '')
                    ].join(' ');
                }

                infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
                infowindow.open(map, marker);
            });

        }

    function toggleBounce() {
        infowindow.close();

        if (marker.getAnimation() != null) {
            marker.setAnimation(null);
        } else {
            marker.setAnimation(google.maps.Animation.BOUNCE);
        }
    }

        function handleNoGeolocation(errorFlag) {
            if (errorFlag) {
                var content = 'Error: La ubicación automática falló';
            } else {
                var content = 'Error: Tu navegador no soporta el servicio de ubicación.';
            }

            var options = {
                map: map,
                position: new google.maps.LatLng(60, 105),
                content: content
            };

            infowindow = new google.maps.InfoWindow(options);
            map.setCenter(options.position);
        }

        function codeAddress() {

            var address = document.getElementById("direccionLocal").value;

            geocoder.geocode( { 'address': address}, function(results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    map.setCenter(results[0].geometry.location);
                    var marker = new google.maps.Marker({
                        map: map,
                        position: results[0].geometry.location
                    });
                } else {
                    alert("No se encuentra la dirección por la siguiente razón: " + status);
                }
            });
        }

    function codeLatLng(lat,lng) {



        var latlng = new google.maps.LatLng(lat, lng);
        geocoder.geocode({'latLng': latlng}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[1]) {
                    //map.setZoom(11);
                     //console.log(results);
                    infowindow.setContent(results[0].formatted_address);
                    infowindow.open(map, marker);
//                    $(input).val(results[0].formatted_address);
                    $.gritter.add({
                        title: 'Dirección actualizada',
                        text: 'Has actualizado el punto en el mapa por: '+results[0].formatted_address,
                        sticky: false,
                        time: '3000'
                    });
                } else {
                    $.gritter.add({
                            title: 'Error de Dirección',
                            text: 'La dirección del punto actual no fue encontrada.',
                            sticky: false,
                            time: ''
                });
                }
            } else {
                $.gritter.add({
                    title: 'Error de Dirección',
                    text: status,
                    sticky: false,
                    time: ''
                });
            }
        });
    }
    </r:script>
    <script>

    var stage;
    var layer;
    var txt;

    var width;
    var height;
    var graphics;
    var stars = [];
    var pressing = false;

    var selectedAction = "comprar";

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
        }
    }
    function draw(images,x,y,w,h,f) {


        /*var bg = new Kinetic.Image({
            image: images.bg,
            x: 0,
            y: 0,
            width: w*10 + 130,
            height: (w * 10 + 130) * 1.055,
            draggable: false
        });*/

        var pattern = new Kinetic.Image({
            image: images.star_gray,
            x: x,
            y: y,
            width: w,
            height: h,
            draggable: false
        });

        /*
         * bind listeners
         */
        /*layer.add(bg);*/
        layer.add(pattern);
        layer.draw();
        if(typeof(f)=="function") f(pattern);


    }
    function selectStars(number)
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

    }

    function whipe()
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



    }

    function drawText(text,size)
    {
        layer.remove(txt);
        txt = new Kinetic.Text({"fontFamily":"BebasNeue","text":text,"fontSize":size,"align":"left","verticalAlign":"top","padding":0,"fontStyle":"normal","width":"auto","detectionType":"pixel","shadow":{"blur":1,"alpha":0.5,"offset":{"x":2,"y":2},"color":"black"},"visible":true,"listening":true,"alpha":1,"x":20,"y":20,"scale":{"x":1,"y":1},"rotation":0,"centerOffset":{"x":0,"y":0},"dragConstraint":"none","dragBounds":{},"draggable":false,"textStroke":"black","textFill":"orange","textStrokeWidth":0.1});

        /*
         * bind listeners
         */

        layer.add(txt);
        layer.draw();
    }
</script>


</head>
<body>



    <div id="main" class="wrapper clearfix">


        <article  class="background_article">

            <header>

                <h2>¡Bienvenido a <strong>Nest5</strong>!</h2>
                <h3>En menos de <srong>5 minutos</strong> estarás listo para publicar tu empresa en la <stronng>App Móvil Nest5</strong>, con el fin  de enamorar miles de usuarios que no conocían tu Marca, hacer regresar a quienes alguna vez fueron tus fans, y premiar a los fieles.</h3>
                <p><iframe src="http://player.vimeo.com/video/39363057?title=0&amp;byline=0&amp;portrait=0" height="400" width="100%" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></p>
            </header>
            <section>
                <h2>¿Qué debes hacer? - Inscribirte - ¡Es <strong>GRATIS Hasta Diciembre de 2012</strong>!</h2>
                <p><span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0 10px;">1</span><span>Inscríbe tu Marca o Empresa en el formulario.</span> </p>
                <p><span style="font-family: Fyra-NumericCircleClosed;; font-size: 5em;  margin: 0 10px;">2</span><span>Diseña un beneficio que se publicará en <strong>Nest5</strong>. Puede ser un Producto, un Descuento, un abrazo, en fin, <strong>¡Lo que quieras!</strong>, mientras más creativo, mejor respuesta obtendrás de tus clientes.</span></p>
                <p><span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0 10px;">3</span><span>Indica en el mapa la ubicación de uno de los locales en el que los Usuarios podrán hacer válido el beneficio usando su teléfono movil.</span></p>
                <p><span style="font-family: Fyra-NumericCircleClosed; font-size: 5em;  margin: 0 10px;">4</span><span>Ingresa a tu Panel de Control <strong>Nest5</strong> y mejora tu estrategia constantemente, aumenta tus ventas, enamora a tus clientes y dedícate a lo que realmente importa:.</span></p>
                <h4>Crecer tu Marca y tu Empresa</h4>




            </section>

            <footer>
                <h3>Estas son algunas de las marcas que ya han decidido usar Nest5</h3>
                <p><img class="partner" src="${resource(dir: 'images/partners', file: 'ostreria.jpg')}" alt="" ><img class="partner" src="${resource(dir: 'images/partners', file: 'sushitogo.png')}" alt="" ><img class="partner" src="${resource(dir: 'images/partners', file: 'logo_winners.png')}" alt="" ><img class="partner" src="${resource(dir: 'images/partners', file: 'la_cubanita.jpg')}" alt="" ></p>
            </footer>
        </article>


        <aside id="subscription">

            <g:render template="formJuly"/>
        </aside>

    </div> <!-- #main -->

<r:script>
    $(document).ready(function(){
        oB = undefined;

        setOb();
        if (typeof orangebox_vars !== "undefined") { $('a[rel*=lightbox]').orangeBox(orangebox_vars); }
        else { $('a[rel*=lightbox]').orangeBox(); }

        //Attach form to validator within Try/Catch
        try {
            /*
             Attach the form to an input validator
             formSubmitTrigger: The id of the element which initiates a "Submit" trigger. This can be ANYTHING with an id
             cssErrorClass: The css class which will be used to style the field element upon which the error occurred

             You can override the default error messages by passing them as a paramater with a value.
             Alternatively, you can define a custom error message per field by using the _juvi_error_message property
             Default error messages include:
             requiredMessage
             errorMessageAlpha
             errorMessageMobile
             errorMessageEmail
             errorMessageNumber
             errorMessageIPV4
             errorMessageIPV6
             errorMessageURL
             errorMessageCreditCard
             errorMessageDate
             errorMessageBoolean
             errorMessageCustom
             */
            $("#CompanyForm").validateForm({formSubmitTrigger: "subBtn",requiredMessage: "Este campo es obligatorio"});
        } catch(e) {
            alert(e);
        }

        //Check if the button is clicked to send an enquiry
        $("#subBtn").click (function(event){
            //Check if the form validated
            //NOTE: Use the method of assigning a variable and then checking instead of placing $("#frm").validateForm("isValid") directly in the IF statement for IE7 support purposes
            var formIsValid = $("#CompanyForm").validateForm("isValid");
            if (!formIsValid){
                return false;
            }
        });




    });


//ssfdsdfsdf

</r:script>
</body>
</html>