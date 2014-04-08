<%@ page contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>Nest5 Empresas - Solicitud de Cambio de Clave</title>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600' rel='stylesheet' type='text/css'/>
<style type="text/css">

	/* Email Client BUG Fixes */
		.ReadMsgBody, .ExternalClass {width:100%; background-color: #f8f8f8;}
		.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height:100%;}
		width: 100%; background-color: #f8f8f8; margin:0; padding:0; -webkit-font-smoothing: antialiased;
		table {border-spacing:0; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;}
		table td {border-collapse:collapse;}
	    img { border: 0; }
		html {width: 100%; height: 100%;}
    /* End Email Client BUG Fixes */
	
	/* Embedded CSS link color */
		a         {color:#f06e5f; text-decoration:none;}
		a:link    {color:#f06e5f; text-decoration:none;}
		a:visited {color:#f06e5f; text-decoration:none;}
		a:focus   {color:#f06e5f !important;}
		a:hover   {color: #FB9A00 !important;
}

	/* End of Embedded CSS link color */
	
	/* Clickable phone numbers */
		a[href^="tel"], a[href^="sms"] {text-decoration:none; color:#ffffff; pointer-events:none; cursor:default;}
		.mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {text-decoration:default; color:#ffffff !important; pointer-events:auto; cursor:default;}
	/* End of Clickable phone numbers */

	/* iPad Text Smoother */
	div, p, a, li, td { -webkit-text-size-adjust:none; }	

	table[class=fullWidth]				{width: 100%!important;}	
	
	@media only screen and (min-width: 600px) 

		{			
			/* Settings - Resize Images */	
			img[class=ImageResize]        	{width: 100%!important;  height: auto!important;}
			img[class=ImageResize560]		{width: 560px!important; height: auto!important;}
			img[class=ImageResize270]		{width: 270px!important; height: auto!important;}
			img[class=ImageResize171]		{width: 171px!important; height: auto!important;}
			img[class=ImageResize175]		{width: 175px!important; height: auto!important;}
			
			body{width:auto!important;}
					
		}
			
	@media only screen and (max-width: 599px) 

		{
			/* General settings for Mobile */
			body{width:auto!important;}
			table[class=fullWidth]			{width: 100%!important;}
			table[class=MobileScale]		{width: 100%!important; padding-left: 20px!important; padding-right: 20px!important;}	
			table[class=MobileScale2]		{width: 100%!important; padding-left: 0px!important; padding-right: 0px!important;}			
			span[class=MobileErase]			{width: 0; display:none !important;}
			td[class=MobileErase]			{width: 0; display:none !important;}
			table[class=MobileErase]		{width: 0; display:none !important;}
		
			/* Settings - Resize Images */ 
			img[class=ImageResize]        	{width: 100%!important; height: auto!important;}
			img[class=ImageResize560]		{width: 100%!important; height: auto!important;}
			img[class=ImageResize270]		{width: 100%!important; height: auto!important;}
			img[class=ImageResize171]		{width: 100%!important; height: auto!important;}
			img[class=ImageResize175]		{width: 175px!important; height: auto!important; margin-left: 0px!important;}		
		
			/* Settings - Header Module */
			table[class=HeaderModule]		{width: 100%!important; text-align: center!important; }
			td[class=HeaderModule]			{width: 280px!important; text-align: center!important; }
			img[class=HeaderModule]			{display: block !important; margin-left: auto !important; margin-right: auto !important;}
			
			/* Settings - Footer Module */			
			table[class=FooterModule]		{width: 100%!important; margin-right: 0px!important; text-align:center !important;}	
			table[class=FooterModule2]		{width: 100%!important; text-align: center!important; }
			td[class=FooterModule2]			{width: 280px!important; text-align: center!important; }
			img[class=FooterModule2]		{display: block !important; margin-left: auto !important; margin-right: auto !important;}					
			
			/* Settings - Module Image + Text */		
			table[class=miResizeText]		{width: 60%!important; padding-left: 20px!important; padding-right: 20px!important;}
			td[class=miResizeText]			{width: 60%!important; padding-left: 20px!important; padding-right: 20px!important;}
			table[class=miResizeTable]		{width: 175px!important;}			
			table[class=miResizeText2]		{width: 60%!important; padding-right: 20px!important;}
			td[class=miResizeText2]			{width: 60%!important; padding-right: 20px!important;}		

			/* Settings - Two Columns */
			table[class=TwoColumns1]		{width: 43%!important; margin-right: 20px;}
			table[class=TwoColumns2]		{width: 43%!important; margin-left: 20px;}	

			/* Settings - Three Columns */
			table[class=ThreeColumns]		{width: 27%!important; margin-right: 20px;}
			table[class=ThreeColumns2]		{width: 27%!important; margin-right: 0px;}		

			/* Settings - Calendar Module */
			table[class=CalendarModule]		{width: 79%!important;}				
		}		
			
			
	@media only screen and (max-width: 480px) 

		{	
			/* General settings for Mobile */
			body{width:auto!important;}
			table[class=fullWidth]			{width: 100%!important;}
			table[class=MobileScale]		{width: 100%!important; padding-left: 20px!important; padding-right: 20px!important; }		
			span[class=MobileErase]			{width: 0; display:none !important;}
			td[class=MobileErase]			{width: 0; display:none !important;}
			table[class=MobileErase]		{width: 0; display:none !important;}
			
			/* Settings - Resize Images */ 
			img[class=ImageResize]			{width: 100%!important; height: auto!important;}	
			img[class=ImageResize560]		{width: 100%!important; height: auto!important;}
			img[class=ImageResize270]		{width: 100%!important; height: auto!important;}	
			img[class=ImageResize171]		{width: 100%!important; height: auto!important;}			
			img[class=ImageResize175]		{width: 100%!important; height: auto!important; margin-left: 0px!important; margin-right: 0px!important; margin-bottom: 0px!important; text-align: center!important;}

			/* Settings - Header Module */
			table[class=HeaderModule]		{width: 100%!important; text-align: center!important; }
			td[class=HeaderModule]			{width: 280px!important; text-align: center!important; }
			img[class=HeaderModule]			{display: block !important; margin-left: auto !important; margin-right: auto !important;}
			
			/* Settings - Footer Module */
			table[class=FooterModule]		{width: 100%!important; margin-right: 0px!important; text-align:center !important;}	
			table[class=FooterModule2]		{width: 100%!important; text-align: center!important; }
			td[class=FooterModule2]			{width: 280px!important; text-align: center!important; }
			img[class=FooterModule2]		{display: block !important; margin-left: auto !important; margin-right: auto !important;}

			/* Settings - Module Image + Text */
			table[class=miResizeText]		{width: 100%!important; text-align: center!important; padding: 0px!important; padding-top: 10px!important;}
			td[class=miResizeText]			{width: 100%!important; padding: 0px!important;}
			table[class=miResizeTable]		{width: 100%!important;}		
			table[class=miResizeText2]		{width: 100%!important; text-align: center!important; padding: 0px!important; padding-top: 20px!important;}
			td[class=miResizeText2]			{width: 100%!important; padding: 0px!important;}			
			
			/* Settings - Two Columns */
			table[class=TwoColumns1]		{width: 100%!important; margin-right: 0px!important;}
			table[class=TwoColumns2]		{width: 100%!important; margin-left: 0px!important;}	

			/* Settings - Three Columns */
			table[class=ThreeColumns]		{width: 100%!important; margin-right: 0px!important;}
			table[class=ThreeColumns2]		{width: 100%!important; margin-right: 0px!important;}			
						
			/* Settings - Calendar Module */
			table[class=CalendarModule]		{width: 100%!important; margin-top: 15px!important;}
		}

	</style>
</head>

<body style="width:100% !important; min-width: 239px !important; color:#525252; background:#f8f8f8; font-family: 'Open Sans', Helvetica,sans-serif; font-size:14px; line-height:140%; margin:0; padding:0;">


<!-- * ************************************************************************************************************************************ * -->
<!-- * Header Module * -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr>
  		<td width="100%" valign="top" bgcolor="#ffffff">&nbsp;</td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="1" bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="1" bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>
</table>	

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr>
  		<td width="100%" valign="top" bgcolor="#ffffff">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td width="598" bgcolor="#ffffff">
						
						<table width="560" border="0" cellpadding="0" cellspacing="0" align="center" class="MobileScale">
							<tr>
								<td width="100%">														

									<!-- Logo Image -->
									<table border="0" cellpadding="0" cellspacing="0" align="left" class="HeaderModule">
										<tr>
											<td>
												<a href="http://www.nest5.com" target="_blank"><img src="https://s3.amazonaws.com/com.nest5.emails/mail_cambio_contrase%C3%B1a/logo.jpg" width="241" alt="Logo" border="0" class="HeaderModule" style="display: block; border-radius: 0px;" /></a>
											</td>
										</tr>
									</table>
									<!-- End of Logo Image --> 	

									<!-- Links -->
									<table border="0" cellpadding="0" cellspacing="0" align="right" class="HeaderModule">									
										<tr>										
											<td height="93" bgcolor="#ffffff" style="font-size: 12px; color: #c3c2c2; font-weight: bold; text-align: left; font-family: 'Open Sans', Helvetica, Arial, sans-serif; vertical-align: middle;" class="HeaderModule">	
														
												<!-- Header links -->
												<a href="http://www.nest5.com" target="_blank" style="text-decoration: none; color: #c3c2c2;">INICIO</a> - <a href="http://www.nest5.com" target="_blank" style="text-decoration: none; color: #c3c2c2;"> SERVICIOS</a> -  <a href="mailto:soporte@nest5.com" target="_blank" style="text-decoration: none; color: #c3c2c2;">CONTACTO</a>
												<!-- End of Header links -->
															
											</td>													
										</tr>	
									</table>
									<!-- End of Links -->										
									
								</td>
							</tr>
						</table>
						
					</td>
				</tr>				
			</table>
		</td>
	</tr>
</table>	
	
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="1" bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				
			</table>	
		</td>
	</tr>
	<tr>
		<td width="100%" height="3" bgcolor="#f8f8f8" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
		  <table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				
			</table>	
		</td>
	</tr>
	<tr>
		<td width="100%" height="1" bgcolor="#f8f8f8" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600"  bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>	
</table>
<!-- * End of Header Module * -->
<!-- * ************************************************************************************************************************************ * -->



<!-- * ************************************************************************************************************************************ * -->
<!-- * Promo Module with Background * -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr>
  		<td width="100%" valign="top" bgcolor="#f8f8f8" style="background:#f8f8f8 url('MailBox - Responsive Email Template/MailBox - Project/MailBox - HTML Templates/Blue/images/background.png') repeat center top;">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<tr><td width="600" height="25" style="font-size: 25;line-height: 0;border-collapse: collapse;">&nbsp;</td></tr>
				<tr>
					<td width="600">
						
						<table width="560" border="0" cellpadding="0" cellspacing="0" align="center" class="MobileScale">
							<tr>
								<td width="100%">						

									<!-- Image -->
									<table width="270px" align="right" cellpadding="0" cellspacing="0" border="0" class="miResizeTable">
										<tr>
											<td width="100%" valign="top">
												<a href="#" target="_blank" style="text-decoration: none; color: #000000;">
													<img src="https://s3.amazonaws.com/com.nest5.emails/mail_cambio_contrase%C3%B1a/seg.png" width="480" alt="Promo Image" border="0" class="ImageResize270" style="display: block; border-radius: 0px;" />	
												</a>	
											</td>
										</tr>
									</table>
									<!-- End of Image -->
																	
									<!-- Padding 20px -->
									<table class="MobileErase" width="1" border="0" cellpadding="0" cellspacing="0" align="right" style="font-size: 0;line-height: 0;border-collapse: collapse;">
										<tr><td width="0" height="20" style="font-size: 0;line-height: 0;border-collapse: collapse;">
											<p style="padding-left: 20px;">&nbsp;</p>
										</td></tr>
									</table>
									<!-- End of Padding 20px -->

									<!-- Text Section -->
									<table width="265" border="0" cellpadding="0" cellspacing="0" align="left" class="miResizeText2">
										<tr>
											<td width="100%" style="font-size: 27px; color: #a6a6a6; text-align: left; font-weight: bold; font-family: 'Open Sans', Helvetica, Arial, sans-serif; line-height: 28px;">
												<a href="#" target="_blank" style="text-decoration: none; color: #a6a6a6;">Hemos recibido una solicitud de cambio de clave </a>
											</td>
										</tr>
										<tr><td width="100%" height="20" style="font-size: 20;line-height: 0;border-collapse: collapse;">&nbsp;</td></tr>
										<tr>
											<td width="100%" style="font-size: 18px; color: #a6a6a6; text-align: left; font-weight: normal; font-family: 'Open Sans', Helvetica, Arial, sans-serif; line-height: 22px;">Si fuiste tú (${email ?: "anonymous@nest5.com"}),  continúa el proceso aquí</td>
										</tr>
										<tr><td width="100%" height="30" style="font-size: 30;line-height: 0;border-collapse: collapse;">&nbsp;</td></tr>
										<tr>
											<td>
												<table border="0" cellspacing="0" cellpadding="0" align="left">													
												
													<!-- Button -->
													<tr>															
														<td>
															<a href="${link ?: '#'}" target="_blank" style="text-decoration: none;">
																<img src="https://s3.amazonaws.com/com.nest5.emails/mail_cambio_contrase%C3%B1a/siguiente.jpg" width="127" align="left" alt="${link ?: '#'}" border="0" style="display: block;" />
															</a>
														</td>	
													</tr>
													<!-- End of Button -->
													
												</table>
											</td>
										</tr>
                                        <tr>
                                            <td width="100%" style="font-size: 11px; color: #a6a6a6; text-align: left; font-weight: normal; font-family: 'Open Sans', Helvetica, Arial, sans-serif; line-height: 22px;">NOTA: Este v&iacute;nculo es v&aacute;lido por dos d&iacute;as a partir de: <g:formatDate date="${date ?: new Date()}" locale="es_CO" style="LONG" timeStyle="SHORT" type="datetime"/> </td>
                                        </tr>
									</table>
									<!-- End of Text Section -->

								</td>
							</tr>
						</table>
						
					</td>
				</tr>
				<tr><td width="600" height="25" style="font-size: 25;line-height: 0;border-collapse: collapse;">&nbsp;</td></tr>				
			</table>
		</td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="1" bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="1" bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>
	<tr>
		<td width="100%" height="1" bgcolor="#ffffff" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="1" bgcolor="#ffffff" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>
</table>
<!-- * End of Promo Module with Background * -->
<!-- * ************************************************************************************************************************************ * -->



<!-- * ************************************************************************************************************************************ * -->
<!-- * Only Text Module * -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="30" bgcolor="#f8f8f8" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="30" bgcolor="#f8f8f8" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr>
  		<td width="100%" valign="top" bgcolor="#f8f8f8">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td width="600" bgcolor="#f8f8f8">
						
						<table width="560" border="0" cellpadding="0" cellspacing="0" align="center" class="MobileScale">
							<tr>
								<td width="100%">						

									<!-- Text Section -->
									<table border="0" cellpadding="0" cellspacing="0" align="center">
										<tr>
											<td width="100%" style="font-size: 18px; color: #0081b8; text-align: left; font-weight: bold; font-family: 'Open Sans', Helvetica, Arial, sans-serif; line-height: 24px;">
												<a href="#" target="_blank" style="text-decoration: none; color: #FF6600;">
													Por seguridad</a>
											</td>
										</tr>	
										<tr>
											<td width="100%" style="font-size: 13px; color: #525252; text-align: left; font-weight: normal; font-family: 'Open Sans', Helvetica, Arial, sans-serif; line-height: 22px;">										
												Si no fuiste tú el que solicitó el cambio de contraseña, háznoslo saber, para que así podamos hacer de <strong>Nest5 Empresas</strong> un lugar cada vez más seguro para la información de tu marca.</td>
										</tr>
										<tr><td width="100%" height="15" style="font-size: 15;line-height: 0;border-collapse: collapse;">&nbsp;</td></tr>
										<tr>
											<td>
												<table border="0" cellspacing="0" cellpadding="0" align="right">													
													
													<!-- Button -->
													<tr>															
														<td>
															<a href="${abuse_link ?: '#'}" target="_blank" style="text-decoration: none;">
																<img src="https://s3.amazonaws.com/com.nest5.emails/mail_cambio_contrase%C3%B1a/denuncia.jpg" width="127" align="right" alt="Button" border="0" style="display: block;" />																											
															</a>
														</td>	
													</tr>													
													<!-- End of Button -->
													
												</table>
											</td>
										</tr>
									</table>
									<!-- End of Text Section -->
									
								</td>
							</tr>
						</table>
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!-- * End of Only Text Module * -->		
<!-- * ************************************************************************************************************************************ * -->



<!-- * ************************************************************************************************************************************ * -->
<!-- * Banner 560x80 Module * -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="30" bgcolor="#f8f8f8" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;</td>
	</tr>
</table>
<!-- * End of Banner 560x80 Module * -->		
<!-- * ************************************************************************************************************************************ * -->



<!-- * ************************************************************************************************************************************ * -->
<!-- * Portfolio Three Columns Images Module * --><!-- * End of Portfolio Three Columns Images Module * -->
<!-- * ************************************************************************************************************************************ * -->



<!-- * ************************************************************************************************************************************ * -->
<!-- * Right Image + Left Text Module * --><!-- * End of Right Image + Left Text Module * -->
<!-- * ************************************************************************************************************************************ * -->



<!-- * ************************************************************************************************************************************ * -->
<!-- * Footer Module * -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="2" bgcolor="#ededed" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="2" bgcolor="#ededed" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>	
	<tr>
		<td width="100%" height="1" bgcolor="#e0e0e0" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileErase">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="1" bgcolor="#e0e0e0" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr>
  		<td width="100%" valign="top" bgcolor="#484848">&nbsp;</td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="1" bgcolor="#484848" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
		</td>
	</tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr>
  		<td width="100%" valign="top" bgcolor="#484848">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td width="598" bgcolor="#484848">
						
						<table width="560" border="0" cellpadding="0" cellspacing="0" align="center" class="MobileScale">
							<tr>
							  <td width="100%"><br />
                              <a href="http://www.nest5.com" target="_blank"><img src="https://s3.amazonaws.com/com.nest5.emails/mail_cambio_contrase%C3%B1a/logo2.png" alt="" width="238" height="71" /></a></td>
								<td width="100%">						

									<!-- First Colomn Links  --><!-- End of Second Colomn Links -->															

									<!-- Padding 16px -->
									<!-- End of Padding 16px -->
											
									<!-- Third Colomn Links -->

									<table width="250" border="0" cellpadding="0" cellspacing="0" align="right" class="FooterModule">
										<tr>
											<td width="250" align="right" style="vertical-align: top; color: #ffffff; font-size: 12px; font-family: 'Open Sans', Helvetica, Arial, sans-serif; font-weight: normal; line-height:160%"> 
												
												<!-- Logo Image --><!-- End of Logo Image -->
											</td>
									  </tr>
										
										<tr>
											<td align="right" style="vertical-align: top; color: #ffffff; font-size: 12px; font-family: 'Open Sans', Helvetica, Arial, sans-serif; font-weight: normal; line-height:140%" class="FooterModule2"> 											
												<br />
												Nest5, by QTAG TECHNOLOGIES S.A.S<br />
												Medellín, Colombia
											  <br />
												<span class="mobile_link">
													Soporte en Línea: <a href="http://soporte.nest5.com" target="_blank">soporte.nest5.com</a>
												</span>
											</td>
										</tr>
								  </table>									
									<!-- End of Third Colomn Links -->
									
							  </td>
							</tr>
						</table>
						
					</td>
				</tr>
			</table>
		</td>
	</tr>	
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;">
	<tr>
		<td width="100%" height="20" bgcolor="#484848" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
		</td>
	</tr>	
	<tr>
		<td width="100%" height="1" bgcolor="#484848" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;
			<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">
				<tr><td width="600" height="1" bgcolor="#d3d3d3" style="font-size: 0;line-height: 0;border-collapse: collapse;" class="MobileScale2">&nbsp;</td></tr>
			</table>	
		</td>
	</tr>	
</table>
<!-- * End of Footer Module * -->

<!-- * Copyright Module * -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">		
  	<tr>
  		<td width="100%" valign="top" bgcolor="#484848">
			<table border="0" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td width="600" bgcolor="#484848">
						
						<table width="560" border="0" cellpadding="0" cellspacing="0" align="center" class="MobileScale">
							<tr>
								<td width="100%">	
								
									<!-- Text Section -->
									<table border="0" cellpadding="0" cellspacing="0" align="center">
										<tr>
											<td bgcolor="#484848" align="center" style="font-size: 11px; color: #eaeaea; font-weight: bold; text-align: center; font-family: 'Open Sans', Helvetica, Arial, sans-serif;">
												<br />
											  Copyright &copy; 2014 - Nest5  
												<a href="http://www.nest5.com" target="_blank" style="text-decoration: none; color: #e3e3e3;">
												www.nest5.com </a>
                                                <span class="mobile_link">
                                                    Este correo fue enviado exclusiva y autom&aacute;ticamente a ${email ?: "anonymous@nest5.com"}</a>
                                                </span>
											</td>
										</tr>
									</table>
									<!-- End of Text Section -->
									
								</td>
							</tr>
						</table>
						
					</td>
				</tr>
				<tr><td width="600" height="15" bgcolor="#484848" style="font-size: 0;line-height: 0;border-collapse: collapse;">&nbsp;</td></tr>
			</table>
		</td>
	</tr>	
</table>
<!-- * End of Copyright Module * -->
<!-- * ************************************************************************************************************************************ * -->


</body>
</html>