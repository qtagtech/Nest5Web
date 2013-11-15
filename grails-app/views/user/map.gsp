<%--
  Created by IntelliJ IDEA.
  User: Jonatan
  Date: 13/04/12
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Ubica El Próximo Reto Que Quieras Cumplir</title>

        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <r:script>
            var map;
            function initialize(){
                var latlng = new google.maps.LatLng(6.20717, -75.565776);
                var settings = {
                    zoom: 15,
                    center: latlng,
                    mapTypeControl: true,
                    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
                    navigationControl: true,
                    navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL} ,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                map = new google.maps.Map(document.getElementById("map_canvas"), settings);
                var contentString1 = '<p>Puerto Camarón - Centro Comercial Mayorca</p>'+
                        '<p>Por cada $10.000 en consumo, ¡Gánate +200 puntos!</p>';
                var infowindow1 = new google.maps.InfoWindow({
                    content: contentString1,
                    maxWidth: 300
                });
                var address1 = new google.maps.LatLng(6.1700642, -75.6079752);
                var marker1 = new google.maps.Marker({
                    position: address1,
                    map: map,
                    title: 'Puerto Camarón - Centro Comercial Mayorca'
                });
                google.maps.event.addListener(marker1, 'click', function(){
                    infowindow1.open(map, marker1)
                });
                var contentString2 = '<p>Puerto Camarón - Mall La Visitación</p>'+
                        '<p>Por cada $10.000 en consumo, ¡Gánate +200 puntos!</p>';
                var infowindow2 = new google.maps.InfoWindow({
                    content: contentString2,
                    maxWidth: 300
                });
                var address2 = new google.maps.LatLng(6.20399,-75.56347);
                var marker2 = new google.maps.Marker({
                    position: address2,
                    map: map,
                    title: 'Puerto Camarón - Mall La Visitación'
                });
                google.maps.event.addListener(marker2, 'click', function(){
                    infowindow2.open(map, marker2)
                });


                var contentString6 = '<p>La Ostrería - Calle 10 El Poblado</p>'+
                        'Por cada $15.000 en consumo gánate +300 puntos.';

                var infowindow6 = new google.maps.InfoWindow({
                    content: contentString6,
                    maxWidth: 300
                });
                var address6 = new google.maps.LatLng(6.2085238,-75.5651907);
                var marker6 = new google.maps.Marker({
                    position: address6,
                    map: map,
                    title: 'La Ostrería - Calle 10'
                });
                google.maps.event.addListener(marker6, 'click', function(){
                    infowindow6.open(map, marker6)
                });


                var contentString9 = '<p>La Ostrería - Centro Comercial Oviedo</p>'+
                        '<p>Por cada $15.000 en compras gánate +300 puntos.</p>';

                var infowindow9 = new google.maps.InfoWindow({
                    content: contentString9,
                    maxWidth: 300
                });
                var address9 = new google.maps.LatLng(6.198976255589837,-75.57431817054749);
                var marker9 = new google.maps.Marker({
                    position: address9,
                    map: map,
                    title: 'La Ostrería - Centro Comercial Oviedo'
                });
                google.maps.event.addListener(marker9, 'click', function(){
                    infowindow9.open(map, marker9)
                });

            }
        </r:script>
    </head>
    <body>
        <div id="map_canvas" style="width: 100%; height: 400px"></div>
       <r:script>
           $(document).ready(function(){

               initialize();
           });
       </r:script>
    </body>
</html>