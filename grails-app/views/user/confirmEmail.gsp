<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Nest5, Tu cupón de descuentos en las mejores Marcas.</title>
    <meta name="description" content="Nest5 by Qtag Technologies, es una App Móvil para ahorrar, tener poder de compra y hacer que las tus marcas, tiendas y empresas favoritas se preocupen por enamorarte. Constantemente te estarán buscando con un cupón de descuentos, promociones de sellos o beneficios por ser fiel, comunicarles lo que esperas de ellas e interactuar en los puntos de venta con tu dispositivo móvil." />
    <meta name="keywords" content="cupón de descuentos, descuentos cupónes, cupónes de descuentos, cupon de descuentos, descuentos cupones, app móvil, programa de crm,solomo,aplicación móvil, aplicacion movil,marketing innovador,aplicaciones de crm,aplicación de crm, aplicacion de crm" />
    <meta name="author" content="Nest5 by Qtag Technologies" />
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://www.nest5.com/confirmEmail" />


</head>
<body>
<div id="main-container">
    <div id="main" class="wrapper clearfix">

        <article>

            <header>
                <g:if test="${flash.message}">
                    <div class="error">${flash.message}</div>
                </g:if>
            </header>
            <g:if test="${!flash.message || errorCode == 1}">
                <section>
                    <h2>¿No te has registrado?</h2>
                    <h3>Es muy sencillo, llena el formulario que hay en esta misma página, y listo. ¡Es totalmente gratis!</h3>

                </section>

                <footer>
                    <h3>Estas son algunas de las marcas que ya han decidido vivir La Experiencia Nest5</h3>
                    <p><img class="partner" src="${resource(dir: 'images/partners', file: 'ostreria.jpg')}" alt="" ><img class="partner" src="${resource(dir: 'images/partners', file: 'tatacrispeta.jpg')}" alt="" ><img class="partner" src="${resource(dir: 'images/partners', file: 'losverdes.png')}" alt="" ><img class="partner" src="${resource(dir: 'images/partners', file: 'psycho.png')}" alt="" ></p>
                </footer>
            </article>

            <aside id="subscription">
                <g:render template="subForm"/>
            </aside>
         </g:if>
        <g:else>



            </article>

            <aside id="retry-code">
                <h3>Ingresa el Código de Activación</h3>

                <g:form name="codeForm" method="GET" url="[controller: 'user', action: 'confirmEmail']">





                    <label>Código: </label>
                    <input type="text" id="code" name="id" value="${code}"">


                    <br>



                    <input type="submit" value="Inténtalo de Nuevo" />
                </g:form>



            </aside>
        </g:else>

    </div> <!-- #main -->
</div> <!-- #main-container -->
<r:script>

    $(function() {
        $( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1940:2012'
        });
    });


    $(document).ready(function(){
        $('#check').bind('change',function(){
            $('#smartList').toggle($(this).is(':checked'));
        });
    });


</r:script>
</body>
</html>