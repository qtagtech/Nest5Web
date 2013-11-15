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
        <h1>Tus Promociones</h1>
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
                <div class="column width5 first">
                   <g:if test="${promos.size() > 0}">
                      <ul id="slider" style="width: 100%; height: 600px;">
                          <li>
                              <ul id="index_cards">
                              %{--<%def i = 0%>
                              <g:while test="${i < 5}">
                                  <li id="card-${i+1}">
                                      <h3>Card 1</h3>
                                      <img src="${resource(dir: 'images/card-icons/cute-critters',file: 't9tuqui_trans.png')}" height="auto" width="80%" alt="Toucan" />
                                      <p>Name: Toucan<br />
                                          Age: 5<br />
                                          Size: 50 cm<br />
                                          Weight: 600 g<br />
                                          Food: Fruit<br />
                                          Toucan lives in southern and central America and loves to fly around</p>
                                  </li>
                                  <%i++%>
                              </g:while>--}%


                                  <g:each in="${promos}" status="i" var="promo">
                                      <g:if test="${promos.size() < 5}">
                                          <li class="card-unique-row">
                                      </g:if >
                                      <g:else>
                                          <li id="card-${i+1}">
                                      </g:else>

                                      <h4>${promo}</h4>
                                      <img src="${resource(dir: 'images',file: 'logo.png')}" height="auto" width="80%" alt="Toucan" />
                                      <p>Locales: ${(promo.stores()).size()}<br />
                                          Tipo de Acción: ${promo.activity}<br />

                                      </p>
                                      <img src="${resource(dir: 'images/card-icons',file: 'qrcode.png')}" height="auto" width="80%" alt="Toucan" />
                                      </li>
                                  </g:each>
                              </ul>
                          </li>
                          %{--<li>
                              Otra
                          </li>--}%

                       </ul>
                   </g:if>





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
    // DOM Ready
    $(function(){
        $('#slider').anythingSlider({
            // Appearance
            width : null,      // Override the default CSS width
            height : null      // Override the default CSS height
            });
    });
</script>








