
 <div id="pageBody">
<!-- Page title -->
 <div id="pagetitle">
    <div class="wrapper">
        <h1>Agregar un Local</h1>
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
                    <h2>Escribe una dirección, selecciona alguna de las propuestas y mueve el pin sobre el mapa al lugar exacto de la ubicación del lugar: </h2>
                    <div id="container"></div>
                </div>

            </div>

            <div class="colgroup leading">
                <div class="column width6 first">
                    <h3>Llena la siguiente información:</h3>

                    <p>
                    <g:formRemote id="StoreForm" name="StoreForm" before="changeButton3()"   onSuccess="checkResponseStore(data)" method="POST" action="${createLink(controller: 'store', action: 'save')}" url="[controller: 'store', action: 'save']">


                        <div class="clearfix"></div>



                        <div class="fieldcontain">
                            <label for="name">
                                <g:message code="store.name.label" default="Name" />

                            </label>
                            <g:textField name="name" value=""/>
                        </div>





                        <div class="fieldcontain ">
                            <label for="address">
                                <g:message code="store.address.label" default="Direccion" />


                            </label>
                            <g:textField name="direccionLocal" value=""/>
                            %{--<input type="button" value="Geocode" onclick="codeAddress()">--}%
                        </div>




                        <div id="map_canvas" style="width: 100%; height: 390px;" ></div>
                        <g:hiddenField name="lati" value="${storeInstance?.latitude}"/>
                        <g:hiddenField name="longi" value="${storeInstance?.longitude}"/>

                        <div id="errorMessage3" class="validation"></div>
                        <input type="submit" value="Guardar Tienda" id="subBtn3"/>
                        <span id="loading3" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
                    </g:formRemote>
                    %{--<g:formRemote  id="BenefitForm" name="BenefitForm" before="changeButton2()"   onSuccess="checkResponseBenefit(data)" method="POST" action="${createLink(uri: "promo/save")}" url="[controller: 'promo', action: 'save']">



                        <div class="actionIcons">
                            <a href="#" id="buySelect" class="normal" style="width: 50%; margin:0;padding:0;display:block;float:left; opacity: 1;"><img src="${resource(dir: 'images', file: 'comprar_up.png')}" style="width: 100%; margin:0;padding:0;height:auto;"></a>
                            <a href="#" id="visitSelect" class="normal" style="width: 50%; margin:0;padding:0;display:block;float:left; opacity: 0.25;"><img src="${resource(dir: 'images', file: 'visitar_down.png')}" style="width: 100%; margin:0;padding:0;height:auto;"></a>
                        </div>
                        <div class="clearfix"></div>
                        <hr/>

                        <div>
                            <label for="article">
                                <g:message code="promo.article.label" default="Article" />

                            </label>
                            <g:textField name="article" value=""/>
                        </div>

                        <div >
                            <label for="wins">
                                <g:message code="promo.wins.label" default="Wins" />

                            </label>
                            <g:textField name="wins" value=""/>
                        </div>



                        <g:hiddenField name="activity" value="Compra" id="activityField"/>
                        <g:hiddenField name="cantArt" value="" id="cantArtField"/>
                        <div id="errorMessage2" class="validation"></div>

                        <input type="submit" value="Guardar Promoción" id="subBtn2"/>
                        <span id="loading2" class="loading-space"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
                    </g:formRemote>--}%
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

    function changeButton3(){
        $("#subBtn3").fadeOut(0,function(){

            $("#loading3").fadeIn(50);
        });
        ;
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
            //console.log(html);
            $("#errorMessage3").html(html)
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
            $.when(getContent("stores"))
                      .then(setContent)
                      .fail(callError);


        }



    }

    $(document).ready(function(){

        initializeMap();



    });



</script>






