<%@ page import="com.nest5.Nest5Client.Company" %>
%{--<%@ page import="com.nest5.Nest5Client.Challenge" %>
<%@ page import="com.nest5.Nest5Client.ChallengeCategory" %>--}%

<header class="profile-header">

    %{--<span><img src="https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=http://www.nest5.com/user/qrcode?id=${URLEncoder.encode(user.id.toString().bytes.encodeBase64().toString())}" alt="${(user?.name.split(" "))[0]}¡Haz que la gente lea tu código y gana puntos!"></span> <h1>${user?.name} </h1>
<br><div class="info" id="ranking">Conociendo Nest5</div>
   <div class="clear"></div><div class="clear"></div><br><br>
    <button id="sharePoints">Compartir Mi Puntaje</button>
    <div class="clear"></div><div class="clear"></div><br><br>--}%
   %{--<g:if test="${!userComplete}">
       <div class="warning">${(user?.name.split(" "))[0]}, podrás conseguir puntos una vez completes tus datos.</div>

       <g:formRemote id="FillNewInfoForm" name="FillNewInfoForm" before="changeButton()"   onSuccess="checkResponseNewInfo(data)" method="POST" action="${createLink(controller: 'user', action: 'update')}" url="[controller: 'user', action: 'update']">
           <g:if test="${user.name == "NONE"}">
               <label>Nombre Completo:</label>
               <input type="text" value="${user?.name}" id="full_name" name="name" placeholder="Juan Pérez" required pattern="^[A-Za-z _]*[A-Za-z][A-Za-z _]*$">
           </g:if>
           <g:if test="${user.email == "NONE"}">
               <label>Dirección de Email: (<a href="#" title="" class="privacy-link">Política de Privacidad</a>)</label>
               <input  type="email" id="email_addr" name="email" placeholder="miemail@midominio.com" required>
           </g:if>
           <g:if test="${user.date == "NONE"}">
               <label>Fecha de Nacimiento:</label>
               <input type="date" id="datepicker" name="date" placeholder="MM/dd/AAAA" required>
           </g:if>
           <label>¿Tienes SmartPhone o Tablet?</label>
           <div class="checkbox">
               <input id="check" name="smartphone" type="checkbox" value="1" />
               <label for="check">Check-me</label>
           </div>
           <div id="smartList">
               <select name="smartphoneBrand">

                   <optgroup label="Android">
                       <option value="An-SAMSUNG">Samsung</option>
                       <option value="An-HTC">HTC</option>
                       <option value="An-MOTOROLA">Motorola</option>
                       <option value="An-LG">LG</option>
                       <option value="An-HUAWEI">Huawei</option>
                       <option value="An-SONY">Sony Ericsson</option>
                       <option value="An-ZTE">ZTE</option>
                       <option value="An-ALCATEL">Alcatel</option>
                       <option value="An-OTHER">Otro</option>
                   </optgroup>
                   <optgroup label="iOS">
                       <option value="iOS-IPHONE">Apple</option>
                   </optgroup>
                   <optgroup label="Blackberry OS">
                       <option value="BbOS-BLACKBERRY">Blackberry</option>
                   </optgroup>
                   <optgroup label="Windows Phone">
                       <option value="Win-NOKIA-">Nokia</option>
                       <option value="Win-HTC">HTC</option>
                       <option value="Win-OTHER">Otro</option>
                   </optgroup>




               </select>
           </div>

           <label>Teléfono: (<a href="#" class="privacy-policy">¿Para qué lo usamos?</a>)</label>
           <input type="tel" id="phone" name="phone" value="" placeholder="3#########" min="10" max="10" required>


           <br><br>


           <div id="errorMessage" class="validation"></div>
           <g:hiddenField name="user.id" value="${user?.id}" />
           <input type="submit" value="Completa tus Datos y Gana Puntos" id="subBtn"/>
           <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
       </g:formRemote>
   </g:if>--}%
</header>

<section>
    %{--<g:each in="${ChallengeCategory.list(sort: "position", order: "asc")}" var = "categ" status="i">
        <h3 class="race-title">${categ.name}</h3>
        <h4 class="race-explanation">${categ.description}</h4>
        <ul class="race-steps">
        <g:each in="${categ.challenge}">

            <g:if test="${((it.minPoints <= userPoints) && !(userChallenges.contains(it.id) )&&(userComplete)) || ((it.minPoints <= userPoints) && !(it.onetimeonly) && (userComplete))}">

                    <li class="item-enabled" >

            </g:if>
            <g:else>
                  <g:if test="${it.minPoints > userPoints}">
                      <li class="item-disabled">
                  </g:if>
                  <g:else>
                      <g:if test="${(userChallenges.contains(it.id) )&& (it.onetimeonly) && (userComplete)}">
                          <li class="item-enabled item-done ">
                      </g:if>
                  </g:else>


            </g:else>

                <span class="item-icon">${it.icon}</span><a href="${it.link}" class="race-item ${it.classes}" rel="${it.rel}" id="challenge__${it.id}__${it.name}__${it.code}" title="${it.title}">${it.name}</a><span class="item-lock">V</span>
                <span class="race-points">+${it.points.intValue()}</span>
                <div class="clearfix"></div>
            </li>
        </g:each>
        <div class="clearfix"></div>
        </ul>

    </g:each>--}%



    <div class="clearfix"></div>

    <div id="videoQr" style="display:block; float:left;">%{--<img src="https://chart.googleapis.com/chart?chs=400x400&cht=qr&chl=http://www.nest5.com/user/qrvideo?id=${user.id}" alt="${(user?.name.split(" "))[0]}¡Haz que la gente lea tu código y gana puntos!">--}%
    %{--<img src="${resource(dir: 'images',file: 'logo.png')}" alt="Nest5 App Movil">--}%
        %{--<img src="${resource(dir: 'images',file: 'feauture_graphic_nest5.png')}" alt="Nest5 App Movil" style="opacity: 0.4;">--}%
        <!-- AddThis Button END -->
        <h1>¡BIENVENIDO <strong>${(user.name.split(" "))[0]}</strong>!</h1>
        <div class="background_article">
        <h4>Este es tu panel de control Nest5, para empezar ve a la sección "Ayuda" en el menú de la derecha y aprende que puedes hacer para mejorar tu experiencia con Las Marcas.</h4>


        <h2 class="race-title">Tus Marcas Nest5</h2>
        <ul class="race-steps">
            <g:each in="${user.brands}">


                <li class="item-enabled" >
                    <span class="item-icon">h</span><a href="" class="race-item" rel="" id="company__${it.company.id}__${it.company.name}" title="${it.company.name}">${it.company.name}</a><span class="item-lock">V</span>
                    <span class="race-points"></span>
                    <div class="clearfix"></div>
                </li>
            </g:each>
        </ul>

        <p>Hasta hoy, has sellado tu tarjeta <strong>${user.stamps.size()}</strong> veces</p>
        <p>en un total de <strong>${user.brands.size()}</strong> Marcas de <strong>${Company.list().size()}</strong> posibles.</p>
        <p>De estos sellos tienes <strong>${user.coupons.size()}</strong> cupones en las siguientes compañías:</p>
        <ul class="race-steps">
            <g:each in="${user.coupons}">


                <li class="item-enabled" >
                    <span class="item-icon">h</span><a href="" class="race-item" rel="" id="company__${it.company.id}__${it.company.name}" title="${it.company.name}">${it.company.name}</a><span class="item-lock">V</span>
                    <span class="race-points">${it.redeemed}</span>
                    <div class="clearfix"></div>
                </li>
            </g:each>
        </ul>
        </div>

    %{--<a href="http://vimeo.com/39363057" rel="lightbox" id="pruebaL">link</a>--}%
    <a style="display:none" id="popCaller" href="#popContent" title=""></a>
    <div style="display:none; width: 20px;" id="popContent"></div>

    <a style="display:none" id="twitterPost" href="#twitterPopContent" title=""></a>
    <div style="display: none; width: 20px;" id="twitterPopContent"><div></div></div>
    <div id="twitterBox" style="display: none;"></div>
    %{--<fb:like-box href="http://www.facebook.com/pages/Nest5/311527055577900" width="250"  show_faces="true" border_color="#D94438" stream="true" header="false"></fb:like-box>--}%







</section>

  <r:script>


     /* $(document).ready(function(){
          $( "#datepicker" ).datepicker({
              changeMonth: true,
              changeYear: true,
              yearRange: '1940:2012',
              defaultDate: '01/13/1986',
              dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
              monthNames:['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
              monthNamesShort:['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic']
          });
          $('#check').bind('change',function(){
              $('#smartList').toggle($(this).is(':checked'));
          });
          *//*$("#ranking").live("click",function(){
             postToWall();
          });*//*


      });*/

      /*function changeButton(){
          $("#subBtn").fadeOut(0,function(){
              $("#loading").fadeIn(50);
          });



      }*/








  </r:script>