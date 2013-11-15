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
        <!-- add styles -->
        <link href="${resource(dir:'feed/css', file: 'main.css')}" rel="stylesheet" type="text/css" />


    <r:require module="jquerybrowserfix"/>

		<r:layoutResources />
        <g:layoutHead/>

    <!-- Javascripts -->



    <!-- add scripts -->

    <script src="${resource(dir:'feed/js', file: 'jquery.masonry.min.js')}"></script>
    <script src="${resource(dir:'feed/js', file: 'script.js')}"></script>


    <!-- Favicons -->
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" />
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon-57x57-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72-precomposed.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114-precomposed.png')}">


	</head>
	<body>

    <!-- header panel -->
    <div class="header_panel">

        <!-- logo -->
        <a href="#" class="logo"></a>



    </div>





    <g:layoutBody/>


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
