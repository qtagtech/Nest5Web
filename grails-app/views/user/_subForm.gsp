<h3>Inscríbete en la Experiencia Nest5</h3>

<div class="clearfix"></div>
<div class="fb-login-button" data-scope="email,user_about_me,user_birthday,user_checkins,user_education_history,user_groups,user_hometown,user_interests,user_likes,user_location,user_questions,user_relationships,user_relationship_details,user_status,publish_checkins,publish_stream" >Login con facebook</div>
<div class="clearfix"></div>
<div class="clearfix"></div>
<div class="clearfix"></div>
<div class="clearfix"></div>
<div class="clearfix"></div>
<div class="clearfix"></div>
%{--<twitterAuth:button/>--}%
<g:formRemote id="LeadForm" name="LeadForm" before="changeButton()"   onSuccess="checkResponse(data)" method="POST" action="${createLink(controller: 'user', action: 'create')}" url="[controller: 'user', action: 'create']">

    <label>Nombre Completo:</label>
    <input type="text" id="full_name" name="name" placeholder="Juan Pérez" required pattern="^[A-Za-z _]*[A-Za-z][A-Za-z _]*$">

    <label>Dirección de Email: (<a href="${createLink([uri: '/privacy'])}" target="_blank" title="" class="privacy-link">Política de Privacidad</a>)</label>
    <input type="email" id="email_addr" name="email" placeholder="miemail@midominio.com" required>

    %{--<label>Fecha de Nacimiento:</label>
    <input type="date" id="datepicker" name="date" placeholder="MM/dd/AAAA" required>

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
    <input type="tel" id="phone" name="phone" value="" placeholder="3##-###-##-##" min="10" max="10" required pattern="[0-9]{10}">--}%


    <br><br>
    %{--<g:if test="${!referer}">
        <label>Código de Referido: (<a href="#" class="privacy-poilcy">¿Qué es esto?</a>)</label>
        <input type="text" id="referer" name="referer" pattern="[A-Za-z0-9]{6}"
               title="Está formado por 6 caractéres alfa-numéricos.">
    </g:if>
    <g:else>
        <g:hiddenField name="referer" value="${refCode}"/>
    </g:else>--}%
    <a id="termsCaller" href="#termsContent" rel="lightbox">Acepto los términos y Condiciones.</a>
    <g:checkBox name="terms" value="accepted" checked="false" />
    <div id="errorMessage" class="validation"></div>

    <input type="submit" value="Llévate El Galaxy Note 4G" id="subBtn"/>
    <span id="loading"><img src="${resource(dir: 'images', file: 'preloader.gif')}" alt="Nest5 - Loading" ></span>
</g:formRemote>
<h4><a href="${createLink(uri: "/user/account")}">Si ya te habías registrado, haz clic aquí para iniciar Sesión</a></h4>
<div style="display: none;" id="termsContent">
    <h2 class="c5"><a name="h.jws6pnymy0fe"></a><span class="c10">T</span><span class="c10">&eacute;rminos y Condiciones Concurso La Experiencia Nest5</span></h2><p class="c3"><span class="c2"></span></p><p class="c3"><span class="c2"></span></p><ol class="c4" start="1"><li class="c0"><span>Este concurso fue creado por: Qtag Technologies S.A.S (&quot;Qtag&quot;)</span></li><li class="c0"><span>Calle 129 # 8 - 08 Interior 1606,</span></li><li class="c0"><span>Bogot&aacute;, Colombia</span></li><li class="c0"><span>Carrera 35 #7-86 Oficina 202,</span></li><li class="c0"><span>Medell&iacute;n, Colombia</span></li><li class="c0"><span>Para efectos de promover su aplicaci&oacute;n m&oacute;vil y plataforma online Nest5, Qtag regalar&aacute; (1&deg;) un total de un (1) Nuevo Samsung Galaxy Note i717 y (2&deg;) un total de un (1) nuevo Blackberry 9300.</span></li><li class="c0"><span>La Experiencia Nest5 es patrocinada por un conjunto de marcas y empresas establecidas que no pertenecen a Qtag y se encuentran simplemente dando apoyo al lanzamiento de la plataforma y la aplicaci&oacute;n m&oacute;vil, la cual no implica ning&uacute;n v&iacute;nculo comercial adem&aacute;s del establecido entre cada una de ellas y Qtag de manera personal y entre los respectivos departamentos. Las marcas patrocinadoras se puede consultar en cualquier momento en </span><span class="c1"><a class="c9" href="http://www.nest5.com/marcas,">http://www.nest5.com/marcas,</a></span><span>&nbsp;y no se restringe el acceso solo a estas y en cualquier momento Qtag puede agregar o remover a libre elecci&oacute;n sin consultarlo antes con los participantes y con un acuerdo entra Qtag y la Marca involucrada. </span></li><li class="c0"><span>Los premios que las marcas puedan voluntariamente y de manera individual ofrecer a los participantes del concurso, son responsabilidad de cada marca y administrados por Qtag de acuerdo a la tabla general de posiciones que se genera con la consecuci&oacute;n de puntos por cada uno de los concursantes.</span></li><li class="c0"><span>Si bien se realizar&aacute;n todos los esfuerzos posibles para proporcionar los premios especificados, si alguno de los entregados directamente por Qtag (1&deg; y 2&deg;) no est&aacute;n disponibles, se sustuir&aacute; por un producto de igual valor. En el caso de los premios ofrecidos por las Marcas patrocinadoras de La Experiencia Nest5, Qtag no tiene ni tendr&aacute; ninguna responsabilidad por su entrega o cumplimiento ya que es iniciativa propia y voluntaria de cada una de ellas de manera individual.</span></li><li class="c0"><span>Las entradas al concurso deber&aacute;n ser ingresadas y recibidas por Qtag del 4 de mayo de 2012 (08h00) al 19 de junio de 2012 (23h59).</span></li><li class="c0"><span>El concurso est&aacute; abierto &uacute;nicamente para residentes permanentes en Territorio Colombiano.</span></li><li class="c0"><span>No se requiere ninguna compra. S&oacute;lo se aceptar&aacute; una participaci&oacute;n por direcci&oacute;n de correo electr&oacute;nico recibido. Se entregar&aacute; un m&aacute;ximo de un premio por persona. Los participantes deber&aacute;n tener 16 a&ntilde;os cumplidos o mayores.</span></li><li class="c0"><span>Para participar en el concurso te deber&aacute;s registrar en la p&aacute;gina web </span><span class="c1"><a class="c9" href="http://www.nest5.com/user/landing.">www.nest5.com/user/landing.</a></span><span>&nbsp;Deber&aacute;s aceptar los t&eacute;rminos y condiciones y todos los campos deber&aacute;n llenarse correctamente. Es necesario ingresar una direcci&oacute;n de correo electr&oacute;nico v&aacute;lido o utilizar alg&uacute;n m&eacute;todo de suscripci&oacute;n alternativo como los provistos de forma tercerizada por facebook y twitter.</span></li><li class="c0"><span>Para poder participar deber&aacute;s ingresar a tu cuenta por medio del correo electr&oacute;nico con la clave que se te haya asignado autom&aacute;ticamente y que recibir&aacute;s una vez completes el primer registro, siempre y cuando &eacute;ste lo hayas hecho directamente con tu correo electr&oacute;nico. Si te has registrado usando alguna de las opciones de inicio de sesi&oacute;n externas disponibles, como facebook o twitter, los t&eacute;rminos y condiciones de &eacute;stas p&aacute;ginas ser&aacute;n los que apliquen para el manejo y compartici&oacute;n de la informaci&oacute;n. </span></li><li class="c0"><span>Una vez ingreses a tu perfil en La Experiencia Nest5, deber&aacute;s completar tu informaci&oacute;n personal de fecha de nacimiento, tel&eacute;fono m&oacute;vil y responder si posees o no un celular inteligente o smartphone para seguir con el concurso y recolectar puntos. </span></li><li class="c0"><span>Desde el primer minuto de inicio del concurso (08h00 de Mayo 4, 2012), podr&aacute;s comenzar a cumplir con los retos que se presentan en tu perfil de La Experiencia Nest5, y tu puntaje ser&aacute; almacenado y sumado de manera autom&aacute;tica a medida que completes retos y ganes m&aacute;s puntos.</span></li><li class="c0"><span>El funcionamiento del concurso es similar a una carrera de observaciones en la que podr&aacute;s conseguir puntos por retos que se publiquen y cumplas. Existen retos que se encuentran bloqueados si no tienes el puntaje suficiente para poder intentarlos, as&iacute; como retos que se pueden repetir para aumentar tu puntaje y retos que solo se pueden completar una vez y no podr&aacute;s obtener m&aacute;s puntos por estos una vez los hayas cumplido.</span></li><li class="c0"><span>Qtag se reserva el derecho a eliminar datos y participantes de La Experiencia Nest5 que, seg&uacute;n su criterio, considere que puedan constituir delito, sean inapropiados o hagan un uso indebido de la plataforma. Por ejemplo, y sin limitaci&oacute;n alguna, compartan contenido violento, criminal, religioso, pol&iacute;tico, racial, sexual o explotador o utilicen los sistemas que soportan la plataforma para generar spam o correspondencia no deseada explotando o generando malfuncionamientos.</span></li><li class="c0"><span>El 19 de junio de 2012 a las 23h59, quien en las bases de datos de La Experiencia Nest5, acumule mayor cantidad de puntos ser&aacute; el ganador del premio n&uacute;mero 1: El Samsung Galaxy Note i717 completamente nuevo. El segundo con mayor puntaje ser&aacute; acreedor del Blackberry 9300 completamente nuevo.</span></li><li class="c0"><span>Los datos son guardados de manera autom&aacute;tica en una base de datos que no se modifica bajo ninguna circunstancia de forma manual, asegurando que los puntos contabilizados para cada participante corresponde nada m&aacute;s y nada menos a los conseguidos en los diferentes tipos de retos disponibles, tanto de Nest5 y Qtag como de las Marcas patrocinadoras.</span></li><li class="c0"><span>Los retos provistos por Las Marcas Patrocinadoras son responsabilidad de cada una de ellas como empresa y se reservan el derecho sin justificaci&oacute;n alguna a negar la participaci&oacute;n de un usuario que consideren seg&uacute;n su criterio, sin tener esto ninguna repercusi&oacute;n hacia ellos o Qtag.</span></li><li class="c0"><span>Nest5 provee a cada usuario un panel de estad&iacute;sticas en la secci&oacute;n &ldquo;Mis Estad&iacute;sticas&rdquo; en el men&uacute; de su perfil, en el cual se presenta historial de retos cumplidos, compraciones con otros participantes y datos de c&oacute;mo ha sido el desempe&ntilde;o individual en La Experiencia Nest5. Estos datos son actualizados cada hora y es hecho de forma autom&aacute;tica.</span></li><li class="c0"><span>La informaci&oacute;n de estad&iacute;sticas es real y debe coincidir con los resultados obtenidos al final del concurso, ya que provienen de la misma base de datos. Sin embargo en caso tal que en el momento de calcular los ganadores, tomando las bases de datos desde la fuente y no desde una aplicaci&oacute;n como es la plataforma de La Experiencia Nest5, existan diferencias entre las dos, las posiciones de los concursante v&aacute;lidas, ser&aacute;n las que el equipo Nest5 tome de la base de datos de manera directa.</span></li><li class="c0"><span>Cualquier manipulaci&oacute;n de los datos, bases de datos o t&eacute;cnicas que Qtag considere fraudelentas como c&oacute;digo malicioso en la plataforma, automatizaci&oacute;n de tareas del navegador (Uso de macros), explotaci&oacute;n de vulnerabilidades, entre otras, da el poder de decisi&oacute;n a Qtag para decidir que hace con el usuario, su puntaje y su participaci&oacute;n sin derecho alguno de este a realizar reclamaciones.</span></li><li class="c0"><span>En caso de empates en cualquiera de las posiciones de la tabla general de concursantes la resoluci&oacute;n del ganador entre los involucrados en dicho empate ser&aacute; dada en el siguiente orden de prioridades hasta obtener un ganador:</span></li></ol><ol class="c11" start="1"><li class="c8 c5"><span>Prevalecer&aacute; qui&eacute;n mayor puntaje haya conseguido en los retos denominados &ldquo;El M&aacute;s Geek&rdquo; por el esfuerzo f&iacute;sico que estos requieren.</span></li><li class="c8 c5"><span>Si contin&uacute;a el empate, se dar&aacute; como ganador qui&eacute;n de los involucrados obtenga mayor puntaje en los retos de &ldquo;El M&aacute;s Social&rdquo;.</span></li><li class="c5 c8"><span>De continuar el empate, ganar&aacute; la posici&oacute;n qui&eacute;n obtenga mayor puntaje en los retos de &ldquo;El M&aacute;s Rom&aacute;ntico&rdquo;.</span></li><li class="c8 c5"><span>En el caso que se mantenga el empate una vez se llegue a esta instancia, se llegar&aacute; a un acuerdo con los involucrados para realizar un evento en el que todos participen y compitan de forma f&iacute;sica en el desempate, el cual es planeado por Qtag en consenso con los participantes involucrados en el empate y debidamente comunicado en las p&aacute;ginas del concurso.</span></li></ol><ol class="c4" start="26"><li class="c0"><span>Los ganadores ser&aacute;n contactados v&iacute;a correo electr&oacute;nico antes del 30 de junio de 2012, con las instrucciones sobre c&oacute;mo podr&aacute;n reclamar su premio, a m&aacute;s tardar 45 d&iacute;as calendario despu&eacute;s de concluido el concurso. Todos los ganadores ser&aacute;n publicados en la p&aacute;gina web de Nest5 (www.nest5.com) dentro de los 45 d&iacute;as siguientes a la conclusi&oacute;n del concurso. Los ganadores tienen 45 d&iacute;as calendario para reclamar su premio. Los ganadores deber&aacute;n proporcionar una direcci&oacute;n de entrega ubicada en Territorio Colombiano para que Qtag pueda procesar y enviar su premio.</span></li><li class="c0"><span>QTAG SER&Aacute; RESPONSABLE POR EL PAGO DE TODOS LOS IMPUESTOS Y GASTOS DE ENV&Iacute;O hasta colocar el premio en el domicilio indicado por el ganador por correo electr&oacute;nico al recibir la notificaci&oacute;n de Qtag.</span></li><li class="c0"><span>Los empleados y las familias de los empleados de Qtag Technologies S.A.S, o cualquier afiliado de Qtag, revendedores, agencias de publicidad y promoci&oacute;n, relacionados o vinculados con ellos en cualquier forma, inclu&iacute;dos empleados, gerentes o relacionados con las empresas patrocinadoras de La Experiencia Nest5, indicadas en la p&aacute;gina del concurso, no tendr&aacute;n derecho a participar en el concurso, ni a ser ganadores de alg&uacute;n premio.</span></li><li class="c0"><span>Los premios no son transferibles o intercambiables y no pueden ser otorgados como dinero en efectivo. Si un ganador no puede ser contactado por correo electr&oacute;nico para el 26 de junio de 2012, o no puede aceptar su premio bajo los presentes t&eacute;rminos y condiciones, entonces ese ganador renuncia autom&aacute;ticamente al premio. Un nuevo ganador ser&aacute; asignado tomando la siguiente posici&oacute;n en la tabla de puntuaci&oacute;n ordenada en orden descendente.</span></li><li class="c0"><span>Los ganadores de los premios autorizan a Qtag para usar su nombre e im&aacute;genes de la entrega del premios, tomadas y procesadas el d&iacute;a que &eacute;ste lo reciba, con fines de publicidad y comprobaci&oacute;n de la entrega del mismo. Las condiciones y forma de las fotograf&iacute;as ser&aacute;n concertadas con los usuarios ganadores en el momento de la entrega del premio.</span></li><li class="c0"><span>Qtag no se hace responsable por errores de impresi&oacute;n. Qtag no se hace responsable por problemas o fallas en la conexi&oacute;n, o fuera de l&iacute;nea de la p&aacute;gina web, fallas de sistemas, o aspectos t&eacute;cnicos que inhiban el registro de los participantes en el concurso o un conteo err&oacute;neo en su puntaje. La decisi&oacute;n de Qtag es definitiva y no se aceptar&aacute; ninguna correspondencia en este sentido.</span></li><li class="c0"><span>Toda la informaci&oacute;n personal recopilada ser&aacute; retenida por Qtag de conformidad con las Pol&iacute;ticas de Privacidad de Qtag Y LA LEGISLACI&Oacute;N APLICABLE. Todas las participaciones ser&aacute;n propiedad de Qtag. La participaci&oacute;n en el concurso constituye el consentimiento para que Qtag utilice los datos para prop&oacute;sitos de publicidad, promocionales y transformaci&oacute;n de la informaci&oacute;n en estad&iacute;sticas y datos de utilidad para Qtag y sus afiliados, a menos que el participante indique lo contrario.</span></li><li class="c0"><span>Los ganadores aceptan liberar a Qtag, sus directores, gerentes, empleados, subsidiarias y agentes de y contra todas las demandas y p&eacute;rdidas de cualquier tipo, incluyendo los honorarios de legales en conexi&oacute;n con cualquier riesgo que pudiera resultar de cualquier premio que sea otorgado.</span></li><li class="c0"><span>Para mayores informes, por favor llamar al tel&eacute;fono de atenci&oacute;n de Qtag: 4-3117392 de 09h00 a 18h00.</span></li><li class="c0"><span>Los T&eacute;rminos y Condiciones s&oacute;lo podr&aacute;n ser modificados en parte o en su totalidad por Qtag. &nbsp;Dichos cambios e implementaci&oacute;n tendr&aacute;n vigencia a partir del momento mismo en que sean publicados, insertados en el sitio o desde que sean notificados al Usuario por cualquier medio, lo que ocurra primero. Por lo expuesto, se sugiere que sean visitados peri&oacute;dicamente. Las violaciones a los T&eacute;rminos y Condiciones generan el derecho para Qtag de suspender o terminar la participaci&oacute;n del Usuario en La Experiencia Nest5, bien sea que la violaci&oacute;n se haya realizado por acci&oacute;n u omisi&oacute;n.</span></li><li class="c0"><span>Al participar en este concurso te obligas bajo todos estos t&eacute;rminos y condiciones.</span></li></ol><p class="c3"><span></span></p><p class="c5"><span>&iexcl;Gracias y Buena Suerte!</span></p><p class="c5"><span>2012 Qtag Technologies S.A.S</span></p><p class="c3"><span class="c6"></span></p>
</div>
<r:script>

    $(function() {
        $( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '1940:2012',
            defaultDate: '01/13/1986',
            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
            monthNames:['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthNamesShort:['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic']
        });
    });


    $(document).ready(function(){
        $('#check').bind('change',function(){
            $('#smartList').toggle($(this).is(':checked'));
        });
    });

    function changeButton(){
        $("#subBtn").fadeOut(0,function(){
            $("#loading").fadeIn(50);
        });
        ;
    }

    function checkResponse(data){
         var html ="";
        $("#loading").fadeOut(500,function(){
            $("#subBtn").fadeIn(500);
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
             console.log(html);
            $("#errorMessage").html(html)
                              .fadeIn(300);


        }
        else{
            $("#LeadForm").parent().html(data.messages[0].value);
           }



    }


</r:script>