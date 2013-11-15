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
        <h1>Tus Locales</h1>
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
                    <h2>Listado de Locales: </h2>

                </div>

            </div>

            <div class="colgroup leading">
                <div class="column width6 first">
                    <h3>Haz clic en el nombre para ver los detalles</h3>
                    <hr/>
                    %{--<p style="font-family: 'NoticeNotice';">
                        Hola
                    </p>--}%

                    <div id='jqxWidget'>
                        <div id="mainSplitter">
                            <div class="splitter-panel">
                                <div class="header" style="white-space: nowrap; padding: 3px; height: 20px; border: none;">
                                    Locales</div>
                                <div style="border: none; height: 100%;" id='jqxTree'>
                                <ul>
                                <g:each in="${stores}" status="i" var="local">
                                    <li class="item-enabled" id="${local.id}||${local.latitude}||${local.longitude}">${local}<span id="local_${local.id}" class="edit-icons"><img src="${resource(dir: 'images/icons',file:'delete_red.png')}" alt="Eliminar"></span></li>

                                </g:each>
                                </ul>
                                </div>


                            </div>
                            <div class="splitter-panel">
                                <div id="map_canvas" style="width: 100%; height: 500px;" ></div>
                            </div>
                        </div>
                    </div>




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
    var currentStore;
    $(document).ready(function () {
        var theme = getTheme();
        $('#mainSplitter').jqxSplitter({ width: '100%', height: 500,theme: theme, panels: [{ size: '20%' }, { size: '80%'}] });
        $('#jqxTree').jqxTree({ height: 400, theme: theme });
        initializeMap();

        $('#jqxTree').bind('select', function (event) {
            var split = (event.args.element.id).split("||");
            var id = split[0];
            var lat = split[1];
            var lng = split[2];
            latlng = new google.maps.LatLng(lat, lng);

            marker.setPosition(latlng);

            map.setCenter(latlng);
            /*var image = new google.maps.MarkerImage(
                    place.icon,
                    new google.maps.Size(71, 71),
                    new google.maps.Point(0, 0),
                    new google.maps.Point(17, 34),
                    new google.maps.Size(35, 35));
            marker.setIcon(image);*/

        //alert(lat);
            //console.log(event);
        });


        $(".edit-icons").click(function(e){
            var ids = $(this).attr("id");
            var ids = ids.split("_");
            var id = ids[1];
            currentStore = $(this).parent();
            $(this).children("img").attr("src","${resource(dir: 'images',file:'small-loader.gif')}");
            $.when(deleteStore(id))
                    .then(checkResult)
                    .fail(callError);
            return false;
        });

    });

    function deleteStore(id){
        var url = "${createLink(uri: '/store/delete')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {id : id }

        }).promise();

    }

    function checkResult(response){
        if(response.status == 1)
        {
            //Borró bien, quitar el elemento de la lista
            currentStore.remove();
            currentStore = null;
        }
        else
        {
            currentStore.children("img").attr("src","${resource(dir: 'images/icons',file:'delete_red.png')}");
            //no borró, no quitar elemento de la lista y cambiar el loading por la x otra vez
        }
       // console.log(response);
    }

</script>








