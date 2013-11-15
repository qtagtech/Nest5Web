%{--
<%@ page import="com.nest5.Nest5Client.HelpItem" %>
<%@ page import="com.nest5.Nest5Client.HelpCategory" %>

<header class="profile-header">

    <h1>Información Nest5</h1>
    <h3>En esta sección puedes conocer más de Nest5, qué es, cómo funciona, y como participar en la campaña de lanzamiento, La Experiencia Nest5.</h3>
    <div class="clear"></div><div class="clear"></div><br><br>

</header>

<section>
    <g:each in="${HelpCategory.list(sort: "position", order: "asc")}" var = "categ" status="i">
        <h3 class="race-title">${categ.name}</h3>
        <h4 class="race-explanation">${categ.description}</h4>
        <ul class="race-steps">
            <g:each in="${categ.items}">
                <li class="item-enabled" >
                <span class="item-icon">${it.icon}</span><a href="${it.link}" class="race-item help-item ${it.classes}" rel="${it.rel}" id="challenge__${it.id}__${it.name}__${it.code}" title="${it.title}">${it.name}</a>
                <div class="clearfix"></div>
                </li>
            </g:each>
            <div class="clearfix"></div>
        </ul>

    </g:each>



    <div class="clearfix"></div>



    <a style="display:none" id="popCaller" href="#popContent" title=""></a>
    <div style="display: none; width: 20px;" id="popContent"></div>
    <a id="prueba"></a>






</section>

--}%
