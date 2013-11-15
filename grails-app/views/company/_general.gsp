<div id="pageBody">
<!-- Page title -->
<div id="pagetitle">
<div class="wrapper">
<h1>Panel General</h1>
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
<h3>Bienvenido, <a href="#">${user.name}</a></h3>
                    <p>
                        Actualmente te encuentras registrado en <b>Plan de Prueba</b>.<br /><a href="#">¿Quieres Actualizar?</a>
                    </p>
                </div>
                <div class="column width3">
                    <form name="stamp-user-card" action="#" method="post" id="stamp-user-card" style="display: none;">
                        <input type="hidden" name="code" id="stamp_user_offer" value="0">
                        <input type="hidden" name="cantidad" id="stamp_user_cantidad" value="0">
                        <input type="hidden" name="uid" id="stamp_user_id" value="0">

                    </form>
                    <form name="coupon-user-redeem" action="#" method="post" id="coupon-user-redeem" style="display: none;">
                        <input type="hidden" name="code" id="coupon_user_offer" value="0">
                        <input type="hidden" name="cantidad" id="coupon_user_cantidad" value="0">
                        <input type="hidden" name="uid" id="coupon_user_id" value="0">

                    </form>
                    <p>
                        %{--Modal interfaz touch de seleccion de usuario--}%
                        <h4>Sella Tarjetas o Redime Cupones</h4>
                        <a href="#myModalTouch" data-toggle="modal" id="stamp_button" class="btn btn-blue" style=" margin: 50px; width: 70%;">Sellar Tarjetas</a>
                        <a href="#myModalCoupon" data-toggle="modal" id="stamp_button" class="btn btn-blue" style=" margin: 50px; width: 70%;">Redimir Cupones</a>

                        <!-- Modal -->
                    <div id="myModalTouch" class="modal container hide fade modal-touch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                        <div class="modal-header">
                            <span type="button" class="close" data-dismiss="modal" aria-hidden="true">×</span>
                            <h3 id="myModalLabel2">Busca y selecciona el usuario, escoge una promoci&oacute;n por la que participa y pon el n&uacute;mero de sellos.</h3>

                        </div>
                        <div class="modal-body">

                            <div id="user-selection" style="width: 35%; display: inline-block;  vertical-align: top; border-right: 1px solid #e2e2ff;">
                                <h4><span style="font-size: 1.8em; color: #f39c12; padding-top: 5px;">1. </span>Busca y Selecciona un Usuario.</h4>
                                <div id="placeHolder"></div>
                                <ul id="container" style="overflow-y: auto; max-height: 800px;">



                                </ul>
                            </div>



                            <div id="offer-selection" style="width: 23%; display: inline-block; margin-left: 2%; vertical-align: top; ">
                            <h4><span style="font-size: 1.8em; color: #f39c12; padding-top: 5px;">2. </span>Selecciona el beneficio. </h4>
                            <ul class='listy' id="stamp-promo-list" >
                               <g:each in="${promos}">
                                   <g:each in="${it.offers}" var="offer">
                                       <%
                                           def titulo = ""
                                           def prs = offer.promo.stores()
                                           prs.each{
                                               titulo += offer.promo.toString()+"/";
                                           }
                                           /*prs.each{i,promo->
                                             titulo += promo.toString();
                                           }*/
                                       %>
                                       <li id="${offer.id}">
                                           ${offer.promo}
                                       </li>
                                   </g:each>
                               </g:each>



                            </ul>
                            </div>

                            <div id="stamp-selection" style="width: 33%; display: inline-block; margin-left: 4%; vertical-align: top; border-left: 1px solid #e2e2ff; padding-left: 2%; height: 700em; max-height: 860px;">
                                <h4><span style="font-size: 1.8em; color: #f39c12; padding-top: 5px;">3. </span>&iquest;Cu&aacute;ntos Sellos recibir&aacute;?</h4>
                                <form id="stamp_select"  >

                                    <input type="radio" name="qty" id="one" value="1" checked="checked" />
                                    <label for="1">1</label>
                                    <input type="radio" name="qty" id="two" value="2" />
                                    <label for="two">2</label>
                                    <input type="radio" name="qty" id="three" value="3" />
                                    <label for="three">3</label>
                                    <input type="radio" name="qty" id="four" value="4" />
                                    <label for="four">4</label>
                                    <input type="radio" name="qty" id="five" value="5" />
                                    <label for="five">5</label>
                                </form>
                            </div>




                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-blue" id="stamp_user_button" style="width: 100%;">SELLAR</button>
                        </div>

                    </div>
                    <div id="myModalCoupon" class="modal container hide fade modal-touch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                        <div class="modal-header">
                            <span type="button" class="close" data-dismiss="modal" aria-hidden="true">×</span>
                            <h3 id="myModalLabel3">Busca y selecciona el usuario, escoge una promoci&oacute;n y selecciona el n&uacute;ero de cupones que redimir&aacute;</h3>

                        </div>
                        <div class="modal-body">

                            <div id="user-selection-coupon" style="width: 35%; display: inline-block;  vertical-align: top; border-right: 1px solid #e2e2ff;">
                                <h4><span style="font-size: 1.8em; color: #f39c12; padding-top: 5px;">1. </span>Busca y Selecciona un Usuario.</h4>
                                <div id="placeHolder2"></div>
                                <ul id="container2" style="overflow-y: auto; max-height: 800px;">



                                </ul>
                            </div>



                            <div id="offer-selection-coupon" style="width: 23%; display: inline-block; margin-left: 2%; vertical-align: top; ">
                                <h4><span style="font-size: 1.8em; color: #f39c12; padding-top: 5px;">2. </span>Selecciona el beneficio. </h4>
                                <ul class='listy' id="select-promo-coupons">
                                    <g:each in="${promos}">
                                        <g:each in="${it.offers}" var="offer">
                                            <%
                                                def titulo = ""
                                                def prs = offer.promo.stores()
                                                prs.each{
                                                    titulo += offer.promo.toString()+"/";
                                                }
                                                /*prs.each{i,promo->
                                                  titulo += promo.toString();
                                                }*/
                                            %>
                                            <li id="${offer.id}">
                                                ${offer.promo}
                                            </li>
                                        </g:each>
                                    </g:each>



                                </ul>
                            </div>

                            <div id="stamp-selection-coupon" style="width: 33%; display: inline-block; margin-left: 4%; vertical-align: top; border-left: 1px solid #e2e2ff; padding-left: 2%; height: 700em; max-height: 860px;">
                                <h4><span style="font-size: 1.8em; color: #f39c12; padding-top: 5px;">3. </span>&iquest;Cu&aacute;ntos Cupones redimir&aacute;?</h4>
                                <form id="coupon_select"  >


                                </form>
                            </div>




                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-blue" id="coupon_user_button" style="width: 100%;">REDIMIR</button>
                        </div>

                    </div>

                    </p>

                </div>
            </div>

            <div class="colgroup leading">
                <div class="column width3 first">
                    <h4  id="test">Promociones Creadas: <a href="#">${promos.size()}</a></h4>
                    <hr/>
                    <table class="no-style full" id="promos">
                        <tbody>
                        <g:each in="${promos}">
                            <%
                                def titulo = ""
                                def prs = it.stores()
                                prs.each{
                                    titulo += it.toString()+"/";
                                }
                                /*prs.each{i,promo->
                                  titulo += promo.toString();
                                }*/
                            %>
                            <tr>
                                <td><g:remoteLink class="promo-title" title="Haz clic para imprimir el código validador de punto de venta." controller="company" action="panel" params= "${[activity: 'displayPromo',promocode: it.id]}" onSuccess="setContent(data)" before="loadContent()">${it}</g:remoteLink></td>
                                <td class="ta-left">En:</td>
                                <td class="ta-left"><a href="#" title="${titulo}" id="promo-${it.id}">${(it.stores()).size()}</a> Local(es)</td>
                            </tr>
                        </g:each>



                        </tbody>
                    </table>
                </div>
                <div class="column width3">
                    <h4>Locales: <a href="#">${stores.size()}</a><g:remoteLink before="loadContent()" title="Agrega una nueva tienda" id="add-store"  onSuccess="setContent(data)" controller="company"  action="panel" params= "${[activity: 'addstore']}"><span  class="edit-icons"><img src="${resource(dir:'images/icons',file:'add_house_black.png')}" alt=""></span></g:remoteLink></h4>
                    <hr/>
                    <table class="no-style full">
                        <tbody>
                        <g:each in="${stores}">
                            <%
                                def titulo = ""
                                def prs = it.promos()
                                prs.each{
                                    titulo += it.toString()+"/";
                                }
                                /*prs.each{i,promo->
                                  titulo += promo.toString();
                                }*/
                            %>
                            <tr>
                                <td><span class="draggable-store" id="${it.id}">${it}<a href="#" class="draggable-item" title="Arrastra a alguna de las promociones para activarla en este local."> %</a></span> </td>
                                <td class="ta-left">Con:</td>
                                <td class="ta-left"><a href="#" id="store-${it.id}" class="offer-qty-link" title="${titulo}">${(it.promos()).size()}</a> Beneficio(s)</td>
                            </tr>
                        </g:each>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="colgroup leading">
                <div class="column width6 first">
                    <h1 class="ui-widget-header">Activación rápida de locales:</h1>
                    <g:each in="${promos}" status="i" var="promocion">
                        <div id="cart${i}" class="cart">
                           <h4>${promocion}</h4>
                            <div class="ui-widget-content">

                                <ol id="${promocion.id}">
                                    <g:if test="${(promocion.stores()).size() == 0}" >
                                        <li class="placeholder">Arrastra un local en el que esta promoción sea válida.</li>
                                    </g:if>
                                    <g:else>
                                        <g:each in="${promocion.stores()}">
                                            <li>${it}</li>
                                        </g:each>
                                    </g:else>

                                </ol>
                            </div>
                        </div>
                    </g:each>

                </div>
            </div>

            <div class="colgroup leading">
                <div class="column width3 first">
                    <h4 >Total de Clientes: <a class="info-link" href="#" title="Tus clientes son usuarios únicos que hayan hecho cualquier tipo de interacción con tu marca.">${clients.size()}</a></h4>
                    <hr/>
                    <h4 >Total de Interacciones: <a class="info-link" href="#" title="Una interacción es algo que un Cliente haya hecho con tu Marca, como sellar una tarjeta, redimir un cupón o enviarte un mensaje.">${interactions.size()}</a></h4>
                    <hr/>
                    <table class="no-style full">
                        <tbody>
                        <tr>
                            <td>Activos</td>
                            <td class="ta-right">${active.size()}/${clients.size()}</td>
                            <td><div id="progress1" class="progress full progress-green"><span><b></b></span></div></td>
                        </tr>
                        <tr>
                            <td>Pausados</td>
                            <td class="ta-right">${paused.size()}/${clients.size()}</td>
                            <td><div id="progress2" class="progress full progress-blue"><span><b></b></span></div></td>
                        </tr>
                        <tr>
                            <td>Inactivos:</td>
                            <td class="ta-right">${inactive.size()}/${clients.size()}</td>
                            <td><div id="progress3" class="progress full progress-red"><span><b></b></span></div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="column width3">
                    <h4>Reportes</h4>
                    <hr/>
                    <p><b>Interacciones Por Mes</b></p>
                    <div id="placeholder" style="height:100px"></div>
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
<!-- End of Page content -->
</div>

<script type="text/javascript">
    var editedPromo;
    var editedStore;
    $(function() {
        $(".draggable-store" ).draggable({
            appendTo: "body",
            helper: "clone"
        });
        $( ".cart ol" ).droppable({
            activeClass: "ui-state-default",
            hoverClass: "ui-state-hover",
            accept: ":not(.ui-sortable-helper)",
            drop: function( event, ui ) {
                $( this ).find( ".placeholder" ).remove();
                editedPromo = this;
                editedStore = ui;
                 $("#store-"+ui.draggable[0].id).html("<img src=${resource(dir: 'images',file: 'preloader.gif')} style='width:10px' />");
                $("#promo-"+this.id).html("<img src=${resource(dir: 'images',file: 'preloader.gif')} style='width:10px' />");
                $.when(saveOffer(ui.draggable[0].id,this.id))
                        .then(function(response){
                            if(response.errors != "1")
                            {
                                $("<li></li>").text(((editedStore.draggable.text()).split(" %"))[0]).appendTo( editedPromo );
                            }
                            else
                            {
                                $.gritter.add({
                                    title: '¡Atención!',
                                    text: ((editedStore.draggable.text()).split(" %"))[0]+' ya se encuentra con esta promoción activa.',
                                    sticky: false,
                                    time: 5000
                                });
                            }

                            $.when(getPromos(ui.draggable[0].id))
                                    .then(function(response){
//                                        console.log(response) ;
                                        $("#store-"+editedStore.draggable[0].id).html(response.offers.length);
//                                        $("#promo-"+editedPromo.id).html("999");
                                    })
                                    .fail(callError);
                            $.when(getStores(editedPromo.id))
                                    .then(function(response){
//                                        console.log(response) ;
                                        $("#promo-"+editedPromo.id).html(response.offers.length);
//
                                    })
                                    .fail(callError);


                        })
                        .fail(callError);


            }
        });
    });

    function saveOffer(store, promo){
//        console.log("local: "+ui.draggable[0].id);
//        console.log("promocion: "+basket.id);
        var url = "${createLink(controller: 'promo', action: 'createOffer')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {storeid : store,promoid: promo },
            dataType: "json"
        }).promise();

    }

    function getPromos(store)
    {
        var url = "${createLink(controller: 'store', action: 'countOffers')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {storeid : store },
            dataType: "json"
        }).promise();
    }

    function getStores(promo)
    {
        var url = "${createLink(controller: 'promo', action: 'countStores')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {promoid : promo },
            dataType: "json"
        }).promise();
    }



    $(document).ready(function(){


        $("#add-store").tipTip({defaultPosition: 'top'});
        $(".promo-title").tipTip({defaultPosition: 'top'});
        $(".info-link").tipTip({defaultPosition: 'top'});

        $('body').on('click','li',function(e){
            return true;
        });
        /*$("#nest5_username").keydown(function(e){
            console.log(e.keyCode);
            if(e.keyCode == 13)
            {
                return false;
            }
            if($(this).val().length >= 3)
            {
                //traer resultados de controller user action findUsernames y llenar un autofill
            }
            else
            {
                console.log("no hace nada nombre de usuario muy corto")
            }
        });*/
        $("#nest5_username").autocomplete({
            source: "${createLink(controller: 'user',action: 'findUsernames')}",
            minLength: 2,
            select: function( event, ui ) {
                log( ui.item ?
                        "Selected: " + ui.item.value + " aka " + ui.item.id :
                        "Nothing selected, input was " + this.value );
                $("#stamp_user_uid").val(ui.item.id);
                $("#stamp_user_name_title").html(ui.item.name);
                $("#myModal").modal();
            }
        });

        putAllClients();

        /* setup navigation, content boxes, etc... */
        Administry.setup();

        /* progress bar animations - setting initial values */
        Administry.progress("#progress1",${active.size()},${clients.size() > 0 ? clients.size() : 1});
        Administry.progress("#progress2", ${paused.size()},${clients.size() > 0 ? clients.size() : 1});
        Administry.progress("#progress3",${inactive.size()},${clients.size() > 0 ? clients.size() : 1});

        /* flot graphs */
        var sales = [{
            label: 'Total Interacciones',
            data: [[1, 0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,900],[8,0],[9,0],[10,0],[11,0],[12,0]]
        }
        ];

        var plot = $.plot($("#placeholder"), sales, {
            bars: { show: true, lineWidth: 1 },
            legend: { position: "nw" },
            xaxis: { ticks: [[1, "Ene"], [2, "Feb"], [3, "Mar"], [4, "Abr"], [5, "May"], [6, "Jun"], [7, "Jul"], [8, "Ago"], [9, "Sep"], [10, "Oct"], [11, "Nov"], [12, "Dic"]] },
            yaxis: { min: 0, max: 1000 },
            grid: { color: "#666" },
            colors: ["#0a0", "#f00"]
        });

       $('body').on('click','.promo-select',function(e){
           e.preventDefault();
           $('.promo-select').each(function(index){
               $(this).css('backgroundColor','#ffffff');
           });
           $(this).css('backgroundColor','#f39c12');
           var id = $(this).attr('id');
           $("#stamp_user_offer").val(id);
       });
        $('body').on('click','#stamp_user_button',function(e){
            e.preventDefault();

            var selectedUsers = 0;
            var selectedOffers = 0;
            var selectedStamps = 0;
            $('#container > .user-display.selected').each(function(i,e){
                var uid = $(this).attr('id');
                $("#stamp_user_id").val(uid);
                selectedUsers++;
            });
            $('#stamp-promo-list.listy > li.selected').each(function(i,e){
                var oid = $(this).attr('id');
                $("#stamp_user_offer").val(oid);
                selectedOffers++;
            });
            var ct = $('[name="qty"]:checked').val();
            $("#stamp_user_cantidad").val(ct);
            var good = true;
            if(isNaN(ct)){
                $("#stamp-selection").addClass('errorizar');
                good = false;
            }
            else{
                if($("#stamp-selection").hasClass('errorizar')){
                    $("#stamp-selection").removeClass('errorizar');
                }
            }
            if(selectedOffers == 0){
                $("#offer-selection").addClass('errorizar');
                good = false;
            }
            else{
                if($("#offer-selection").hasClass('errorizar')){
                    $("#offer-selection").removeClass('errorizar');
                }
            }
            if(selectedUsers == 0){
                $("#user-selection").addClass('errorizar');
                good = false;
            }
            else{
                if($("#user-selection").hasClass('errorizar')){
                    $("#user-selection").removeClass('errorizar');
                }
            }
            if(good){
                $(this).attr('disbaled','disabled');
                $(this).after("<span id='waiting-text' class='waiting'>Un Momento...</span>");
                $(this).hide(200);

                $.when(stampUserCard())
                        .then(function(response){
                            $("#waiting-text").remove();
                            $("#stamp_user_button").show(200);
                            $("#stamp_user_button").removeAttr('disabled');
                            if(response.status == 1){

                                $.gritter.add({
                                    title: '&iexcl;&Eacute;xito!',
                                    text: 'Has Sellado la tarjeta de '+response.user+'.<br>Cupones por Redimir: '+response.coupons+'.<br>Sellos Acumulados: '+response.stamps+'.',
                                    sticky: true
                                });
                            }
                            else{
                                $.gritter.add({
                                    title: '&iexcl;Atenci&oacute;n!',
                                    text: 'Hubo errores en el servidor, int&eacute;ntalo de nuevo por favor.',
                                    sticky: false,
                                    time: 5000
                                });
                            }
                        })
                        .fail(callError);

            }

            /*var id = $("#stamp_user_offer").val();

            var cantidad = $("#cantidad_"+id).val();
            if(cantidad > 0){
                $('.promo-select').each(function(index){
                    $(this).css('backgroundColor','#ffffff');
                });
                $("#stamp_user_cantidad").val(cantidad);



            }*/




        });

        $('body').on('click','#coupon_user_button',function(e){
            e.preventDefault();

            var selectedUsers = 0;
            var selectedOffers = 0;
            var selectedStamps = 0;
            $('#container2 > .user-display.selected').each(function(i,e){
                var uid = $(this).attr('id');
                $("#coupon_user_id").val(uid);
                selectedUsers++;
            });
            $('#select-promo-coupons > li.selected').each(function(i,e){
                var oid = $(this).attr('id');
                $("#coupon_user_offer").val(oid);
                selectedOffers++;
            });
            var ct = $('[name="cqty"]:checked').val();
            $("#coupon_user_cantidad").val(ct);
            var good = true;
            if(isNaN(ct)){
                $("#stamp-selection-coupon").addClass('errorizar');
                good = false;
            }
            else{
                if($("#stamp-selection-coupon").hasClass('errorizar')){
                    $("#stamp-selection-coupon").removeClass('errorizar');
                }
            }
            if(selectedOffers == 0){
                $("#offer-selection-coupon").addClass('errorizar');
                good = false;
            }
            else{
                if($("#offer-selection-coupon").hasClass('errorizar')){
                    $("#offer-selection-coupon").removeClass('errorizar');
                }
            }
            if(selectedUsers == 0){
                $("#user-selection-coupon").addClass('errorizar');
                good = false;
            }
            else{
                if($("#user-selection-coupon").hasClass('errorizar')){
                    $("#user-selection-coupon").removeClass('errorizar');
                }
            }
            if(good){


                $(this).attr('disbaled','disabled');
                $(this).after("<span id='waiting-text' class='waiting'>Un Momento...</span>");
                $(this).hide(200);

                $.when(redeemUserCoupon())
                        .then(function(response){
                            $("#waiting-text").remove();
                            $("#coupon_user_button").show(200);
                            $("#coupon_user_button").removeAttr('disabled');
                            if(response.status == 1){

                                $.gritter.add({
                                    title: '&iexcl;&Eacute;xito!',
                                    text: 'Has redimido '+response.redeemed+' cupones de  '+response.user+'. el usuario obtiene por cada uno: <br> '+response.perk+'',
                                    sticky: true
                                });
                            }
                            else{
                                $.gritter.add({
                                    title: '&iexcl;Atenci&oacute;n!',
                                    text: 'Hubo errores en el servidor, int&eacute;ntalo de nuevo por favor.',
                                    sticky: false,
                                    time: 5000
                                });
                            }
                        })
                        .fail(callError);

            }

            /*var id = $("#stamp_user_offer").val();

             var cantidad = $("#cantidad_"+id).val();
             if(cantidad > 0){
             $('.promo-select').each(function(index){
             $(this).css('backgroundColor','#ffffff');
             });
             $("#stamp_user_cantidad").val(cantidad);



             }*/




        });

        $('.listy').listy({
            actions: {
                select: {
                    keys: [13, 32],
                    events: 'click'

                }
            }
        });

        $("body").on('click','.listy > li',function(e){
            var elem = $(this);
            if(elem.hasClass('selected')){
                elem.removeClass('selected');
            }
            else{
                $(".listy > li").each(function(i,e){
                    $(this).removeClass('selected');
                });

                elem.addClass('selected');
            }

//
        });
        $("body").on('click','.user-display',function(e){
            var elem = $(this);
            if(elem.hasClass('selected')){
                elem.removeClass('selected');
            }
            else{
                $(".user-display").each(function(i,e){
                    $(this).removeClass('selected');
                });

                elem.addClass('selected');
            }

//
        });

        $("body").on('click','#select-promo-coupons > li',function(e){
            var oid = $(this).attr('id');
            var selectedUsers = 0;
            var uid = 0;
            $("#container2 > .user-display.selected").each(function(i,e){
                selectedUsers++;
                uid = $(this).attr('id');
            });
            /*$("#selected-promo-coupons > li").each(function(i,e){
             selectedOffers++;
             oid = $(this).attr('id');
             });
             if(selectedOffers == 0){
             $("#offer-selection-coupon").addClass('errorizar');

             }*/
            if(selectedUsers == 0){
                $("#user-selection-coupon").addClass('errorizar');
                $("#coupon_select").html("<span id='alert-text' class='alertizar'>Selecciona alg&uacute;n usuario para ver sus cupones.</span>");
                $("#select-promo-coupons > li").each(function(i,e){
                    if($(this).hasClass('selected')){$(this).removeClass('selected')}
                });



            }
            else{
                $("#user-selection-coupon").removeClass('errorizar');
                var html = '<input type="radio" name="qty" id="one" value="1" checked="checked" />'
                        +'<label for="1">1</label>';
                console.log(uid);
                console.log(oid);
                $("#coupon_select").html("<span id='waiting-text' class='waiting'>Cargando Cupones...</span>");
            }

            $.when(getUserCoupons(uid,oid))
                    .then(function(response){
                        if(response.status == 1){
                            var i = 0;
                            var length = response.coupons;
                            var html = '';
                            while(i < length){
                                if(i == 0){
                                    html += '<input checked="checked" type="radio" name="cqty" id="coupon_'+(i+1)+'" value="'+(i+1)+'"/>'
                                            +'<label for="coupon_'+(i+1)+'">'+(i+1)+'</label>'
                                }
                                else{
                                    html += '<input type="radio" name="cqty" id="coupon_'+(i+1)+'" value="'+(i+1)+'"/>'
                                            +'<label for="coupon_'+(i+1)+'">'+(i+1)+'</label>'
                                }

                                i++;
                            }
                            $("#coupon_select").html(html);
                            if(length == 0){
                                $("#coupon_select").html("<span id='alert-text' class='alertizar'>No hay cupones v&aacute;lidos para este usuario redimir.</span>");
                            }
                        }

                    })
                    .fail(callError);

//            getUserCoupons(uid,oid);

            //traer cupones del usuario seleccionado en la promo seleccionada.




        });

    });
    function stampUserCard(){
        var url = "${createLink(controller: 'promo', action: 'beLuckyFromCompany')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: $("#stamp-user-card").serialize(),
            dataType: "json"
        }).promise();
    }

    function putAllClients(){

        $.when(getUsers())
                .then(function(response){
//                    console.log(response);
                    var html = "";
                    var i = 0;
                    var length = response.length;

                    while(i < length){
                        html += '<li class="user-display" id="'+response[i].id+'" data-nombre="'+response[i].name+'" data-usuario="'+response[i].username+'">'
                                +'<span style="width:100%; display: block;">'+response[i].name+'<span style="display:block; width: 100%;"><img style="position: relative; max-width: 50px; height: auto; margin-left: -25px; left: 50%;" src="'+response[i].picture+'" data-original="'+response[i].picture+'" />'
                                +'</li>';


                        i++;
                    }

                    $("#container").append(html);
                    $("#container2").append(html);
                    /*
                     Extend jQuery with an "inview" selector to
                     select elements that are in the visible
                     part of the page (at least partiacialy)
                     */
                    $.extend($.expr[':'], {
                        inview: function(el) {
                            var e = $(el),
                                    w = $(window),
                                    wt = w.scrollTop(),
                                    wb = wt + w.height(),
                                    et = e.offset().top,
                                    eb = et + e.height();

                            return ( (eb >= wt) && (et <= wb) );
                        }
                    });

                    $("ul#container img").lazyload({
                        event : "scroll filter",
                        effect : "fadeIn"
                    });
                    $("ul#container2 img").lazyload({
                        event : "scroll filter",
                        effect : "fadeIn"
                    });

                    $.filtrify("container", "placeHolder", {
                        block : "data-original",
                        callback : function( query, match, mismatch ) {
                            $(match).find("img:inview").trigger("filter");
                        }
                    });
                    $.filtrify("container2", "placeHolder2", {
                        block : "data-original",
                        callback : function( query, match, mismatch ) {
                            $(match).find("img:inview").trigger("filter");
                        }
                    });

                })
                .fail(callError);
    }


    function getUsers(){
        var url = "${createLink(controller: 'company', action: 'showAllClients')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {},
            dataType: 'json'
        }).promise();
    }

    function getUserCoupons(user,promo){

        var url = "${createLink(controller: 'promo', action: 'couponsFromCompany')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {uid: user, code: promo},
            dataType: "json"
        }).promise();
    }

function redeemUserCoupon(){
    var url = "${createLink(controller: 'promo', action: 'redeemCouponFromCompany')}";

    return  $.ajax({
        type: "POST",
        url: url,
        data: $("#coupon-user-redeem").serialize(),
        dataType: "json"
    }).promise();
}

</script>
