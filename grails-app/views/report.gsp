<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nest5 Empresas - Reporte de Seguridad</title>
    <meta name="author" content="SuggeElson" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="application-name" content="Nest5 Empresas" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Force IE9 to render in normla mode -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- Le styles -->
    <link href="${resource(dir: 'dashboard/css/bootstrap',file: 'bootstrap.min.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'dashboard/css',file: 'icons.css')}" rel="stylesheet" type="text/css" />

    <!-- Main stylesheets -->
    <link href="${resource(dir: 'dashboard/css',file: 'main.css')}" rel="stylesheet" type="text/css" />

    <!--[if IE 8]><link href="${resource(dir: 'dashboard/css',file: 'ie8.css')}" rel="stylesheet" type="text/css" /><![endif]-->
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script type="text/javascript" src="${resource(dir: 'js/dashboard/libs',file: 'excanvas.min.js')}"></script>
      <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <script type="text/javascript" src="${resource(dir: 'js/dashboard/libs',file: 'respond.min.js')}"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="${resource(dir: 'images',file: 'favicon.ico')}" />
    %{--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon-57-precomposed.png" />--}%

    <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
    <meta name="application-name" content="Supr"/> 
    <meta name="msapplication-TileColor" content="#3399cc"/> 

    </head>
      
    <body class="errorPage">

    <div class="container-fluid">

        <div class="errorContainer offline">
            <div class="page-header">
                <h1 class="center">&iexcl;NEST5 + SEGURIDAD!</h1>
            </div>

            <h2 class="center">La seguridad y privacidad de nuestros usuarios es una prioridad. Con este reporte ayudas a que podamos mejorarla.</h2>
            
            <div class="center">
                <h4 class="center">Para demostrarte que somos seguros, te contamos claramente que reportes hacen nuestros usuarios</h4>
                Reportes de seguridad este mes ${reports ?: 0}%:
                <div class="progress progress-striped active">
                  <div class="progress-bar" style="width: ${reports ?: 0}%;"></div>
                </div>
            </div>

            <div class="social">
                <ul class="list-unstyled">
                    <li><span class="icon16 icomoon-icon-facebook-2 blue"></span><a href="https://www.facebook.com/Nest5Oficial" target="_blank">Mantente al d&iacute;a en nuestra p&aacute;gina de Facebook.</a></li>
                </ul>
            </div>

            <div class="center">
                <a href="${createLink(uri: '/')}" class="btn btn-default" style="margin-right:10px;"><span class="icon16 icomoon-icon-arrow-left-10"></span>Inicio</a>
                <a href="${createLink(controller: 'company',action: 'dashboard')}" class="btn btn-default"><span class="icon16 icomoon-icon-screen"></span>Dashboard</a>
            </div>

        </div>

    </div><!-- End .container -->

    <!-- Le javascript
    ================================================== -->
     <script  type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${resource(dir: 'js/dashboard/bootstrap',file: 'bootstrap.min.js')}"></script>

     <script type="text/javascript">
        // document ready function
        $(document).ready(function() {
            //------------- Some fancy stuff in error pages -------------//
            $('.errorContainer').hide();
            $('.errorContainer').fadeIn(1000).animate({
                'top': "50%", 'margin-top': +($('.errorContainer').height()/-2-30)
                }, {duration: 750, queue: false}, function() {
                // Animation complete.
            });
        });
    </script>
 
    </body>
</html>
