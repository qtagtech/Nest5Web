<ul class="ca-menu">
    <li>
        <g:remoteLink before="loadContent()" class="menuLink" id="menu-profile"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'profile']}">
            <span class="ca-icon">+</span>
            <h4 class="ca-main">Perfil</h4>
        </g:remoteLink>

    </li>
    <ul class="ca-submenu" id="sub-profile">
        <li>
            <g:remoteLink before="loadContent()" class="menuLink" id="menu-profile"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'achievements']}">
                <span class="ca-icon sub">t</span>
                <h5 class="ca-main">Mis Estadísticas</h5>
            </g:remoteLink>
        </li>
        <li>
            <g:remoteLink before="loadContent()" class="menuLink" id="menu-profile"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'identification']}">
                <span class="ca-icon sub">.</span>
                <h5 class="ca-main">Imprimir Mi Código</h5>
            </g:remoteLink>
        </li>
        <li>
            <a class="menuLink" id="menu-profile" href="${createLink(uri: '/user/map')}">
                <span class="ca-icon sub">1</span>
                <h5 class="ca-main">Ubicación de Retos Físicos</h5>
            </a>
        </li>

    </ul>

    <li>
        <g:remoteLink before="loadContent()" class="menuLink" id="menu-settings"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'details']}">
            <span class="ca-icon">@</span>
            <h4 class="ca-main">Ajustes</h4>
        </g:remoteLink>

    </li>
    <ul class="ca-submenu" id="sub-settings">
        <li>
            <g:remoteLink before="loadContent()" class="menuLink" id="menu-settings"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'details']}">
                <span class="ca-icon sub">t</span>
                <h5 class="ca-main">Cuenta</h5>
            </g:remoteLink>
        </li>
        <li>
            <a href="#">
                <span class="ca-icon sub">.</span>
                <h5 class="ca-main">Perfil</h5>
            </a>
        </li>
        <li>
            <g:remoteLink before="loadContent()" class="menuLink" id="menu-settings"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'password']}">
                <span class="ca-icon sub">U</span>
                <h5 class="ca-main">Contrase&ntilde;a</h5>
            </g:remoteLink>
        </li>
        <li>
            <g:remoteLink before="loadContent()" class="menuLink" id="menu-settings"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'mobile']}">
                <span class="ca-icon sub">&quot;</span>
                <h5 class="ca-main">Móvil</h5>
            </g:remoteLink>
        </li>
    </ul>

    <li>
        <g:remoteLink before="loadContent()" class="menuLink" id="menu-help"  onSuccess="setContent(data)" controller="user"  action="account" params= "${[activity: 'help']}">
            <span class="ca-icon">a</span>
            <h4 class="ca-main">Ayuda</h4>
        </g:remoteLink>
    </li>
    <li>
        <g:link controller="logout">
            <span class="ca-icon">V</span>
            <h4 class="ca-main">Salir</h4>
        </g:link>
    </li>

</ul>



<r:script>
function loadContent(){
//console.log("por aca paso");
    var html = "<img src='${resource(dir: 'images',file: 'preloader.gif')}' alt='Loading Content' />";
    $("#page-content").html(html);
}

function setContent(data){
$("#page-content").html(data);
}

    $(".menuLink").click(function(e){
        $('ul[id^="sub"]').each(function(){
            $(this).hide(20);

        });
         var name = (($(this).attr('id')).split("-"))[1];

         $("#sub-"+name).show(100);

    });

    <g:if test="direct == '1'">
        $("#sub-${submenu}").show(100);
    </g:if>

</r:script>