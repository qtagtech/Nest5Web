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
                    <h2>Tus usuarios Nest5: </h2>

                </div>

            </div>

            <div class="colgroup leading">
                <div class="column width6 first">
                    <h3>Estos son tus usuarios hasta el momento</h3>
                    <hr/>
                    %{--<p style="font-family: 'NoticeNotice';">
                        Hola
                    </p>--}%
                    <ul id="list" data-role="listmenu">
                        <g:each in="${clientDetails}" status="i" var="user">
                            <li>
                                <div>
                                    <g:if test="${user.client.toString() != 'NONE'}">
                                        ${user.client}
                                    </g:if>
                                    <g:else>
                                        ${(user.client.email.split("@"))[0]}
                                    </g:else>

                                </div>
                                <ul data-role="listmenu">
                                    <li>
                                        <div style="padding: 5px;" data-role="content">
                                            <img src="${resource(dir: 'images', file: 'logo.png')}" style="width: 50px; height: 50px;"/>
                                            <br>
                                            <h2>${user.client}</h2>
                                            <br>
                                            <h3>Datos Generales: </h3><br>
                                            <h4>Email:</h4> ${user.client.email}<br>
                                            <h4>Tipo de Usuario:</h4><g:if test="${user.client.androidID != '0'}"> Android. </g:if>
                                            <g:if test="${user.client.iphoneID != '0'}"> iPhone. </g:if>
                                            <g:if test="${user.client.rimID != '0'}"> Windows. </g:if><br>
                                            <h3>Estadísticas Generales:</h3>
                                            Cliente de ${user.client.brands.size()} Marca(s) incluída la tuya.  <br>

                                            <div class='expansion'>
                                                <div>
                                                    En tu empresa ha redimido ${user.coupons.size()} Beneficios
                                                   </div>
                                                <div>
                                                    <ul>
                                                      <g:each in="${user.coupons}">
                                                          <li>${it.date}</li>
                                                      </g:each>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class='expansion'>
                                                <div>
                                                    Tiene ${user.stamps.size()} Sellos sin usar actualmente.
                                                </div>
                                                <div>
                                                    <ul>
                                                        <g:each in="${user.stamps}">
                                                            <li>${it.date}</li>
                                                        </g:each>
                                                    </ul>
                                                </div>
                                            </div>






                                        </div>
                                    </li>
                                </ul>

                            </li>



                    </g:each>
                    </ul>



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
     $(document).ready(function(){
         var theme = getTheme();
         $('#list').jqxListMenu({ theme: theme, autoSeparators: true, enableScrolling: false, showHeader: true, width: '100%', placeholder: 'Encuentra un cliente' });
         $(".expansion").each(function(index) {
             $(this).jqxExpander({ width: '100%', theme: theme,expanded:false });
         });

     });

 </script>






