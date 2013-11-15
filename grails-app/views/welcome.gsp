<%@ page contentType="text/html"%>
<html lang="es">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>
        Nest5
    </title>
    <style type="text/css">
    a:hover { text-decoration: none !important; }
    .header h1 {color: #000 !important; font: bold 54px Helvetica, Arial,sans-serif; margin: 0; padding: 0; line-height: 55px;letter-spacing: -3px; }
    .header p {color: #000; font: normal 17px Helvetica, Arial,sans-serif; margin: 0; padding: 0; line-height: 18px; font-style: italic;}
    .header h3 {color: #000 !important; font: normal 18px Verdana, 'Monaco', monospace;  margin: 0; padding: 0; line-height: 18px; }
    .header .subscribe p {font-size: 10px; line-height: 18px; color:#000; margin: 0; padding: 0;font-family: 'Monaco', monospace; text-transform:uppercase; font-style: normal; word-spacing: -1px;}
    .header .subscribe p a{ color: #000;}


    .content h2 {color:#000 !important; font-weight: bold; line-height: 31px; font-size: 31px; font-family: Helvetica, Arial,sans-serif; letter-spacing: -1px;  margin: 0; padding: 0; }
    .content p {color:#000; font-weight: normal; margin: 0; padding: 0; line-height: 20px; font-size: 14px;font-family: Verdana, 'Monaco', monospace;}
    .content a {color: #000;}
    .content a.more {color: #fff; background: #000; text-decoration: none; line-height: 16px; padding: 2px 0;}
    .footer p {font-size: 11px;  line-height: 18px; color:#000; margin: 0; padding: 0;font-family: Verdana, 'Monaco', monospace; letter-spacing: -1px;}
    .footer p a{ color:#000;}
    .footer a.send {color: #fff; background: #000; text-decoration: none; line-height: 16px; padding: 2px 0}
    a {color: #000;}
    .case {background: #ffde00 url('http://nest5admin.herokuapp.com/images/bg_email.png'); }
    </style>
    <!--[if gte mso 9]>
	<style type="text/css">
     .body{background: #ffde00 url('http://nest5admin.herokuapp.com/images/bg_email.png');
	 .case { background:none;}
     </style>
	   <![endif]-->
</head>
<body style="margin: 0; padding: 0;" class="body">
<table cellpadding="0" cellspacing="0" border="0" align="center" width="100%">
    <tr>
        <td align="center" style="padding: 5px 0 50px; background: #ffde00 url('http://nest5admin.herokuapp.com/images/bg_email.png');color:#000" class="case">
            <!--[if gte mso 9]>
	            <td align="center" style="padding: 5px 0 50px; background: none;color:#000">
	         <![endif]-->
            <table cellpadding="0" cellspacing="0" border="0" align="center" width="600" style="font-family: Verdana, 'Monaco', monospace;" class="header">


                <tr>
                    <td align="left" style="padding: 0 0 26px;" valign="bottom" width="383">
                        <h2 style="color: #000; font: bold 54px Helvetica, Arial,sans-serif; margin: 0; padding: 0; line-height: 55px;letter-spacing: -3px;">${(user.name.split(" "))[0]}, Bienvenido a <strong>La Experiencia Nest5</strong></h2>
                        <p style="color: #000; font: normal 17px Helvetica, Arial,sans-serif; margin: 0; padding: 0; line-height: 18px; font-style: italic;">Nest5,Una Historia de Amor entre Las Marcas y sus Clientes.</p>
                    </td>
                    <td align="right" style="padding: 5px 0 30px;" width="200" valign="top">
                        <img src="http://nest5admin.herokuapp.com/images/logo_big.png" alt="What's new" width="200" height="200">
                    </td>
                </tr>
            </table><!-- header-->
            <table cellpadding="0" cellspacing="0" border="0" align="center" width="600" style="font-family: Verdana, 'Monaco', monospace; ">

                <tr>
                    <td width="135" style="font-size: 1px; font-family: Verdana, 'Monaco', monospace;padding: 25px 5px 0 0;" align="left" valign="top"><img src="http://nest5admin.herokuapp.com/images/aumento_ventas.png" alt="decoration" width="130" height="146"></td>
                    <td width="465" valign="top" align="left" style="font-family: Verdana, 'Monaco', monospace;" class="content">
                        <table cellpadding="0" cellspacing="0" border="0"  style="color: #000; font: normal 11px Verdana, 'Monaco', monospace; margin: 0; padding: 0;" width="465">
                            <tr>
                                <td style="padding: 20px 0 25px;" align="left" width="400">
                                    <h2 style="color:#000; font-weight: bold; line-height: 31px; font-size: 31px; font-family: Helvetica, Arial,sans-serif; letter-spacing: -1px;  margin: 0; padding: 0;">Estás a punto de ganarte un Samsung Galaxy Note 4G</h2>
                                </td>
                                <td><img src="http://nest5admin.herokuapp.com/images/notepad.png" alt="decoration" width="65" height="65"></td>
                            </tr>
                            <tr>
                                <td style="padding: 0px 0 25px;"  valign="top">
                                    <p style="color:#000; font-weight: normal; margin: 0; padding: 0; line-height: 20px; font-size: 14px;font-family: Verdana, 'Monaco', monospace; ">
                                        Ya te has registrado.<br>
                                        Ahora ingresa a esta página: <a href="${link}" style="color: #0fa2e6; text-decoration: none;">${link}</a><br>
                                        Y Pon tu Email: ${user.email} como nombre de usuario y la siguiente contraseña:

                                    </p>
                                    <p style="text-align:center;background: #ec268F;color:#ffffff; font-weight: bolder; margin: 0; padding: 20px; line-height: 40px; font-size: 18px;">${password}</p>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="height:20px; font-size: 1px; line-height: 1px; background:#000" height="20" valign="top">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="padding: 20px 0 25px;" align="left" width="400">
                                    <h2 style="color:#000; font-weight: bold; line-height: 31px; font-size: 31px; font-family: Helvetica, Arial,sans-serif; letter-spacing: -1px;  margin: 0; padding: 0;">¿Qué es Nest5?</h2>
                                </td>
                                <td><img src="http://nest5admin.herokuapp.com/images/ipod.png" alt="decoration" width="65" height="65"></td>
                            </tr>
                            <tr>
                                <td style="padding: 0px 0 25px;"  valign="top">
                                    <p style="color:#000; font-weight: normal; margin: 0; padding: 0; line-height: 20px; font-size: 14px;font-family: Verdana, 'Monaco', monospace; ">
                                        Nest5 es una App Móvil que una vez la descargues en tu móvil te permite acceder a descuentos, promociones y cupones en las mejores Marcas, contarles que te gusta y que no te gusta de ellos y  muchas cosas más, para así, ¡Tener la mejor relación posible!.
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="height:20px; font-size: 1px; line-height: 1px; background:#000" height="20" valign="top">&nbsp;</td>
                            </tr>



                            <tr>
                                <td style="padding: 20px 0 25px;" align="left" width="400">
                                    <h2 style="color:#000; font-weight: bold; line-height: 31px; font-size: 31px; font-family: Helvetica, Arial,sans-serif; letter-spacing: -1px;  margin: 0; padding: 0;">¿Qué es <strong>La Experiencia Nest5</strong>?</h2>
                                </td>
                                <td><img src="http://nest5admin.herokuapp.com/images/handshake.png" alt="decoration" width="65" height="65"></td>
                            </tr>
                            <tr>
                                <td style="padding: 0px 0 25px;"  valign="top">

                                    <p style="color:#000; font-weight: normal; margin: 0; padding: 0; line-height: 20px; font-size: 14px;font-family: Verdana, 'Monaco', monospace; ">
                                        Es una carrera de observaciones que se lleva a cabo entre internet y el mundo real en la ciudad de Medellín, que tiene como fin mostrar como, por medio de una plataforma móvil,
                                        los Consumidores y las Marcas se pueden beneficiar mutuamente y enamorarse. Tu podrás cumplir con retos que Las Marcas y Nest5 pondrán, ganarás puntos, y al final podrás obtener un Samsung
                                        Galaxy Note 4G u otros premios que tenemos preparados.


                                    </p>


                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="height:20px; font-size: 1px; line-height: 1px; background:#000" height="20" valign="top">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="padding: 20px 0 25px;" align="left" width="400">
                                    <h2 style="color:#000; font-weight: bold; line-height: 31px; font-size: 31px; font-family: Helvetica, Arial,sans-serif; letter-spacing: -1px;  margin: 0; padding: 0;">Esperamos sinceramente que seas el mejor y logres enamorarte de Nest5, Las Marcas y lo que traemos para ti.<br>

                                        </h2>
                                </td>
                                <td></td>
                            </tr>




                            <tr>
                                <td align="left" style="height:20px; font-size: 1px; line-height: 1px; background:#000" height="20" valign="top">&nbsp;</td>
                            </tr>
                        </table>
                    </td>

                </tr>

            </table><!-- body -->
            <table cellpadding="0" cellspacing="0" border="0" align="center" width="600" style="font-family: Verdana, 'Monaco', monospace; line-height: 10px;" class="footer">


                <tr>
                    <td style="padding: 0; line-height: 1;" width="135" valign="top">
                        <img src="http://nest5admin.herokuapp.com/images/globo_Nest5.png" alt="decoration" width="150" height="141">
                    </td>
                    <td style="padding: 0 0 10px 0px; font-size: 11px; color:#000; margin: 0; font-family: Verdana, 'Monaco', monospace; " valign="top" align="left" width="465" colspan="2">
                        <table cellpadding="0" cellspacing="0" border="0" align="left" width="406" style="font-family: Verdana, 'Monaco', monospace; line-height: 10px;">
                            <tr>
                                <td style="padding: 17px 0 0 0"><p style="font-size: 11px;  line-height: 18px; color:#000; margin: 0; padding: 0;font-family: Verdana, 'Monaco', monospace; letter-spacing: -1px">Nest5 - http://nest5.com <br> soporte@nest5.com<br>Colombia<br>2012</p>
                                    <p style="font-size: 11px; color:#000; margin: 0; padding: 0;font-family: Verdana, 'Monaco', monospace; letter-spacing: -1px">Hemos enviado este correo exclusivamente a ${user.email}</p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table><!-- footer-->
        </td>
    </tr>
</table>
</body>
</html>