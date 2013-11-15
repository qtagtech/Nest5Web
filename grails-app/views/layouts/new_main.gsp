<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Nest5"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/stylesheets', file: 'base.css')}" />

        <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/stylesheets', file: 'media.queries.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/stylesheets', file: 'tipsy.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'minisite/javascripts/fancybox', file: 'jquery.fancybox-1.3.4.css')}" />
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style_new.css')}" type="text/css">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Nothing+You+Could+Do|Quicksand:400,700,300">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'MyFontsWebfontsKit.css')}">
        <link rel="stylesheet" href="${resource(dir: 'css',file: 'jquery.gritter.css')}" type="text/css" />
    <r:require module="jquerybrowserfix"/>

		<r:layoutResources />
        <g:layoutHead/>

    <!-- Javascripts -->

    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'html5shiv.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.tipsy.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts/fancybox', file: 'jquery.fancybox-1.3.4.pack.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts/fancybox', file: 'jquery.easing-1.3.pack.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.touchSwipe.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.mobilemenu.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.infieldlabel.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'jquery.echoslider.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'minisite/javascripts', file: 'fluidapp.js')}"></script>

    <!-- Favicons -->
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon-57x57-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114-precomposed.png')}">
	</head>
	<body>

    <!-- Start Wrapper -->
    <div id="page_wrapper">

    <!-- Start Header -->
    <header>
        <div class="container">
            <!-- Start Social Icons -->
            <aside>
                <ul class="social">
                    <li class="facebook"><a href="http://www.facebook.com/Nest5Oficial">Facebook</a></li>
                    <li class="twitter"><a href="http://www.twitter.com/Nest5_Oficial">Twitter</a></li>
                    <li class="email"><a href="mailto://soporte@nest5.com" title="">Email</a></li>
                    <li class="pinterest"><a href="" title="App Updates">RSS</a></li>
                    <!-- More Social Icons:
					<li class="dribbble"><a href="">Dribbble</a></li>
					<li class="google"><a href="">Google</a></li>
					<li class="flickr"><a href="">Flickr</a></li>
					-->
                </ul>
            </aside>
            <!-- End Social Icons -->

            <!-- Start Navigation -->
            <nav>
                <ul>
                    <li><a href="#home" class="inactive">1. Regístrate</a></li>
                    <li><a href="#step2" class="inactive">2. Define un Beneficio</a></li>
                    <li><a href="#step3" class="inactive">3. Define un Local</a></li>
                    <li><a href="#step4" class="inactive">4. Ir al Panel de Control</a></li>
                </ul>
                <span class="arrow"></span>
            </nav>
            <!-- End Navigation -->
        </div>
    </header>
    <!-- End Header -->

    <section class="container">











        <g:layoutBody/>







    <!-- End Pages -->

    <div class="clear"></div>
    </section>

    <!-- Start Footer -->
    <footer class="container">
        <p>Nest5 &copy; 2012. Todos los derechos reservados.</p>
    </footer>
    <!-- End Footer -->

    </div>

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
    </script>


		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
