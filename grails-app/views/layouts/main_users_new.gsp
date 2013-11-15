
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Nest5</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->

    <link href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'feed/css', file: 'main.css')}" rel="stylesheet">
    <link href="${resource(dir: 'bootstrap/css', file: 'bootstrap_custom.css')}" rel="stylesheet">
    <link href="${resource(dir: 'hover-effects', file: 'style_common.css')}" rel="stylesheet">
    <link href="${resource(dir: 'hover-effects', file: 'style10.css')}" rel="stylesheet">
    <link href="${resource(dir: 'bootstro', file: 'bootstro.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'textntag', file: 'jquery-textntags.css')}" rel="stylesheet">


    <script src="${resource(dir: 'textntag', file: 'underscore.min.js')}"></script>






    <r:require module="jquerybrowserfix"/>

    <r:layoutResources />
    <g:layoutHead/>

    <!-- Javascripts -->



    <!-- add scripts -->

    <script src="${resource(dir:'feed/js', file: 'jquery.masonry.min.js')}"></script>
    <script src="${resource(dir:'feed/js', file: 'script.js')}"></script>
    <script src="${resource(dir:'feed/js', file: 'spin.min.js')}"></script>



    <!-- Favicons -->
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon-57x57-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114-precomposed.png')}">


    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }
    .sidebar-nav {
        padding: 9px 0;
    }

    @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
            float: none;
            padding-left: 5px;
            padding-right: 5px;
        }
    }
    </style>



    <link href="${resource(dir: 'bootstrap/css', file: 'typeahead-bootstrap.css')}" rel="stylesheet">
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="${createLink(uri: '/user/feed')}"><img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/30.png"></a>

            <div class="nav-collapse collapse">
                <p class="navbar-text pull-right">
                    <g:if test="${vUser != null}"><a href="${createLink(controller: 'user', action: 'profile')}" class="navbar-link">${vUser?.name}</a><a style="color: #ffffff;"href="${createLink(controller: 'logout', action: 'index')}"> (Salir)</a></g:if>
                    %{--<g:elseif test="${userInstance!= null}"><a href="${createLink(controller: 'user', action: 'profile')}" class="navbar-link">${userInstance?.name}</a></g:elseif>--}%
                    <g:else><a href="#" class="navbar-link">Regístrate o Inicia sesión</a></g:else>
                </p>
                <ul class="nav">
                    <li><input type="text" id="searchquery" placeholder="Busca Amigos, Marcas o Gustos..." autocomplete="off" ></li>
                    %{--<li class="active"><a href="#">Mi Cuenta</a></li>--}%
                    %{--<li><a href="#about">Ayuda</a></li>--}%
                    %{--<li><a href="#contact">Contact</a></li>--}%
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container-fluid">

<g:layoutBody/>
    <hr>

    <footer>
        <p>&copy; Nest5 2013 - Marca Registrada de <a href="http://www.qtagtech.com" target="_blank">Qtag Technologies S.A.S</a></p>
    </footer>

</div><!--/.fluid-container-->
<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'bootstrap/js', file:'typeahead.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'bootstrap/js', file:'hogan-2.0.0.js')}"></script>
<script src="${resource(dir: 'bootstro', file: 'bootstro.min.js')}"></script>
<script src="${resource(dir: 'textntag', file: 'jquery-textntags.js')}"></script>


<script>

    $(document).ready(function(){

        $('#searchquery').typeahead([
            {
                name: 'users-lists',
                remote: '${createLink(uri: '/user/findUser')}?q=%QUERY',
                prefetch: '${createLink(uri: '/user/prefetchListUsers')}',
                ttl: 1800000,
                header: '<h3 style="padding: 3px;">Usuarios</h3>',
                template: '<p class="user_suggestion"><img class="user_suggestion_img" src="{{picture}}"><a class="user_suggestion_link" href="${createLink(uri: '/user/profile')}/{{id}}">{{name}}</a></p>',
                engine: Hogan

            }
        ]);

    });
</script>
<!-- UserVoice JavaScript SDK (only needed once on a page) -->
<script>(function(){var uv=document.createElement('script');uv.type='text/javascript';uv.async=true;uv.src='//widget.uservoice.com/gICy2MZiAo4zjZQwfQ.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(uv,s)})()</script>

<!-- A tab to launch the Classic Widget -->
<script>
    UserVoice = window.UserVoice || [];
    UserVoice.push(['showTab', 'classic_widget', {
        mode: 'full',
        primary_color: '#f68b34',
        link_color: '#007dbf',
        default_mode: 'support',
        forum_id: 200770,
        support_tab_name: 'Soporte',
        feedback_tab_name: '¡Danos Sugerencias!',
        tab_label: 'Soporte y Comentarios',
        tab_color: '#f68b34',
        tab_position: 'middle-right',
        tab_inverted: false
    }]);

    function callMyBrands(){
        $.when(getMyBrands())
                .then(function(response){
                    console.log(response);
                    var totalLength = response.length;



                    if(totalLength > 0){
                        var i = 0;
                        var html = "";
                        while(i < totalLength){
                            if(i == 0 || i % 3 == 0){
                                html+= '<div class="row-fluid" style="margin-left: 15px;"><div class="span12">';
                            }

                            html += '<li  class="span3" id="mybrand_'+response[i].id+'">'
                                    +'<div class="thumbnail">'
                                    +'<a href="#" data-toggle="popover" title="'+response[i].name+'" data-placement="top" data-content="Tus Marcas favoritas es donde has sellado tu tarjeta o Marcas que has indicado que te gustan." class="tool2">'
                                    +'<img src="'+response[i].picture+'" alt="">'
                                    +'</a>'
                                /*+'<div class="caption">'
                                 +'<h3 style="word-wrap:break-word; line-height: 0.9em;">'+response[i].name+'</h3>'
                                 +'<p style="word-wrap:break-word; ">'+response[i].description+'</p>'
                                 +'<p><a style="word-wrap:break-word; line-height: 0.9em;" href="#" style="display: block; max-width: 10%; margin-left: auto; margin-right: auto;" data-toggle="popover" title="Indica que te gusta '+response[i].name+'" data-content="Conoce gente con los mismos gustos y personaliza tu experiencia en Nest5." class="btn btn-follow like_button tool" id="like_'+response[i].id+'_'+response[i].type+'">&hearts;</a></p>'
                                 +'</div>'*/
                                    +'</div>'
                                    +'</li>';
                            if(((i+1)%3==0) || (response[i+1] == null)){
                                html+='</div></div>';
                            }

                            i++;
                        }

                        $("#user_brand_list").append(html);

//
                        $(".tool2").popover({trigger: 'hover'});
//                    $("#load_taste").removeAttr('disabled');

                    }
                })
                .fail(callError);
    }

    function getMyBrands()
    {
        var url = "${createLink(controller: 'user', action: 'myBrands')}";

        return  $.ajax({
            type: "POST",
            url: url,
            data: {},
            dataType: "json"
        }).promise();
    }
</script>


<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>
