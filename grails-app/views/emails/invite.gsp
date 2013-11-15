<%@ page contentType="text/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

<title>${user?.name} ¡Te ha Invitado a Nest5 y ambos ganaran un benefico!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style>
@charset "UTF-8";
    /* CSS Document */



@font-face {
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 400;
    src: local('Open Sans'), local('OpenSans'), url('http://themes.googleusercontent.com/static/fonts/opensans/v6/cJZKeOuBrn4kERxqtaUH3bO3LdcAZYWl9Si6vvxL-qU.woff') format('woff');
}

@font-face {
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 800;
    src: local('Open Sans Extrabold'), local('OpenSans-Extrabold'), url('http://themes.googleusercontent.com/static/fonts/opensans/v6/EInbV5DfGHOiMmvb1Xr-hqRDOzjiPcYnFooOUGCOsRk.woff') format('woff');
}

@media screen and (max-width: 480px) and (min-width: 321px) {
    .nomargin {
        margin: 0 !important;
    }

    .padding {
        width: 10px !important;
    }

    .content_row {
        width: 440px !important;
    }

    .wrapper {
        width: 440px !important;
    }

    .pre_header {
        text-align: center !important;
    }

    .logo img {
        margin: 0 auto !important;
        max-width: 280px !important;
        height: auto !important;
    }

    .logo {
        display: block;
        float: left;
        width: 440px !important;
        margin-bottom: 20px !important;
    }

    .header_right {
        display: block;
        float: left;
        text-align: center !important;
        margin: 0 auto !important;
        width: 440px !important;
    }

    .header_spacer {
        display: none;
    }

    .social_header {
        margin: 0 auto !important;
        display: block;
        width: 130px !important;
    }

    .featured_image img {
        max-width: 440px !important;
        height: auto !important;
    }

    .blog_image {
        display: block;
        float: left;
        width: 440px !important;
    }

    .blog_image img {
        margin: 20px auto !important;
    }

    .blog_description {
        display: block;
        float: left;
        width: 440px !important;
        text-align: center;
    }

    .blog_button {
        margin: 0 auto !important
    }

    .feature_list {
        width: 440px !important;
        display: block;
        float: left;
        text-align: center !important;
    }

    .feature_list p {
        text-align: center !important;
    }

    .feature_list .button {
        margin: 0 auto !important;
    }

    .feature_list_right {
        width: 440px !important;
        display: block;
        float: left;
    }

    .feature_list_right img {
        margin: 20px auto !important;
        max-width: 440px !important;
        height: auto !important;
    }

    .footer_spacer {
        display: none;
    }

    .footer_one_third {
        width: 440px !important;
        display: block;
        float: left;
        text-align: center;
        line-height: 20px !important;
    }

    .footer_one_third img{
        margin-left: 35% !important;
    }

    .one_third {
        display: block;
        float: left;
        width: 440px !important;
        margin: 0 auto !important;
    }

    .one_third_row {
        width: 440px !important;
    }

    .one_third_row img {
        margin: 20px 0 5px;
        max-width: 440px !important;
        height: auto !important;
    }

    .one_half {
        width: 440px !important;
        margin: 0 auto !important;
        float: left;
        display: block;
        margin: 20px 0 10px !important;
    }

    .one_half img{
        height: auto !important;
        max-width: 440px !important;
    }

    .one_half_row {
        width: 440px !important;
    }

    .featured_product img{
        max-width: 428px !important;
        height: auto !important;
    }

    .featured_product {
        width: 428px !important;
    }

    .navbar {
        text-align: center !important;
        margin: 0 auto !important;
    }

    .small_product_box {
        display: block;
        float: left;
        margin: 0 auto !important;
        width: 197px !important;
        margin: 10px 0 20px 121px !important;
    }

    .big_product_box {
        display: block;
        float: left;
        margin: 10px 0 20px 27px !important;
    }

    .small_prod_box_main img {
        height: auto !important;
        max-width: 175px !important;
    }

    .big_prod_image {
        heigth: auto !important;
        width: 175px !important;
    }

    .footer_two_thirds {
        width: 440px !important;
        float: left;
        display: block;
        margin: 10px 0 20px !important;
    }

    .one_half {
        display: block;
        float: left;
        margin: 10px 0 20px !important;
        width: 440px !important;
        text-align: center !important;
    }

    .one_half .cta_button {
        margin: 0 auto !important;
    }

    .price_table {
        display: block;
        float: left;
        width: 440px !important;
    }

    .price_table .price_mob{
        margin: 10px auto 30px !important;
    }

    .one_half .test_mob {
        margin: 0 auto !important;
    }

    .footer_menu {
        text-align: center !important;
        width: 440px !important;
    }
}

@media screen and (max-width: 320px) {
    .nomargin {
        margin: 0 !important;
    }

    .padding {
        width: 10px !important;
    }

    .content_row {
        width: 280px !important;
    }

    .wrapper {
        width: 280px !important;
    }

    .pre_header {
        text-align: center !important;
    }

    .logo img {
        margin: 0 auto !important;
        max-width: 280px !important;
        height: auto !important;
    }

    .logo {
        display: block;
        float: left;
        width: 280px !important;
        margin-bottom: 20px !important;
    }

    .header_right {
        display: block;
        float: left;
        text-align: center !important;
        margin: 0 auto !important;
        width: 280px !important;
    }

    .header_spacer {
        display: none;
    }

    .social_header {
        margin: 0 auto !important;
        display: block;
        width: 130px !important;
    }

    .featured_image img {
        max-width: 280px !important;
        height: auto !important;
    }

    .blog_image {
        display: block;
        float: left;
        width: 280px !important;
    }

    .blog_image img {
        margin: 20px auto !important;
    }

    .blog_description {
        display: block;
        float: left;
        width: 280px !important;
        text-align: center;
    }

    .blog_button {
        margin: 0 auto !important
    }

    .feature_list {
        width: 280px !important;
        display: block;
        float: left;
        text-align: center !important;
    }

    .feature_list p {
        text-align: center !important;
    }

    .feature_list .button {
        margin: 0 auto !important;
    }

    .feature_list ul{
        font-size: 13px !important;
    }

    .feature_list_right {
        width: 280px !important;
        display: block;
        float: left;
    }

    .feature_list_right img {
        margin: 20px auto !important;
        max-width: 280px !important;
        height: auto !important;
    }

    .footer_spacer {
        display: none;
    }

    .footer_one_third {
        width: 280px !important;
        display: block;
        float: left;
        text-align: center;
        line-height: 20px !important;
    }

    .footer_one_third img{
        margin-left: 25% !important;
    }

    .one_third {
        display: block;
        float: left;
        width: 280px !important;
        margin: 0 auto !important;
    }

    .one_third_row {
        width: 280px !important;
    }

    .one_third_row img {
        margin: 20px 0 5px;
        max-width: 280px !important;
        height: auto !important;
    }

    .one_half {
        width: 280px !important;
        margin: 0 auto !important;
        float: left;
        display: block;
        margin: 20px 0 10px !important;
    }

    .one_half img{
        height: auto !important;
        max-width: 280px !important;
    }

    .one_half_row {
        width: 280px !important;
    }

    .featured_product img{
        max-width: 268px !important;
        height: auto !important;
    }

    .featured_product {
        width: 268px !important;
    }

    .navbar {
        margin: 0 auto !important;
    }

    .content_row {
        text-align: center !important;
    }

    .small_product_box {
        display: block;
        float: left;
        margin: 0 auto !important;
        width: 197px !important;
        margin: 10px 0 20px 45px!important;
    }

    .big_product_box {
        display: block;
        float: left;
        margin: 10px 0 20px 45px !important;
        width: 180px !important;
    }

    .big_prod_spacer {
        display: none !important;
    }

    .big_prod_image {
        display: block;
        float: left;
        width: 175px;
    }

    .big_box_info {
        display: block;
        float: left;
        text-align: center !important;
    }

    .big_product_main {
        width: 170px !important;
        padding: 0 10px !important;
    }

    .big_bottom_shadow {
        width: 198px !important;
    }

    .big_side_shadow {
        height: 410px !important;
    }

    .big_box_description {
        text-align: center !important;
    }

    .small_prod_box_main img {
        height: auto !important;
        max-width: 175px !important;
    }

    .big_prod_image {
        heigth: auto !important;
        width: 175px !important;
    }

    .footer_two_thirds {
        width: 280px !important;
        float: left;
        display: block;
        margin: 10px 0 20px !important;
    }

    .one_half {
        display: block;
        float: left;
        margin: 10px 0 20px !important;
        width: 280px !important;
        text-align: center !important;
    }

    .one_half .cta_button {
        margin: 0 auto !important;
    }

    .price_table {
        display: block;
        float: left;
        width: 280px !important;
    }

    .price_table .price_mob{
        margin: 10px auto 30px !important;
    }

    .one_half .test_mob {
        margin: 0 auto !important;
    }

    .footer_one_third table {
        margin: 0 auto !important;
    }

    .footer_menu {
        text-align: center !important;
        width: 280 !important;
    }

}

@media screen and (max-width: 480px) and (min-width: 321px) {
    .nomob {
        display: none;
    }

    td[id="nomobile"]{
        display: none !important;
    }

    td[id="nomobile1"]{
        display: none !important;
    }

    td[id="nomobile2"]{
        display: none !important;
    }

    td[id="nomobile3"]{
        display: none !important;
    }

    td[id="nomobile4"]{
        display: none !important;
    }

    td[id="nomobile5"]{
        display: none !important;
    }

    td[id="nomobile6"]{
        display: none !important;
    }

    td[id="offermobileoffset"]{
        width: 95px !important;
    }
}

@media screen and (max-width: 320px) {
    .nomob {
        display: none;
    }

    td[id="nomobile"]{
        display: none !important;
    }

    td[id="nomobile1"]{
        display: none !important;
    }

    td[id="nomobile2"]{
        display: none !important;
    }

    td[id="nomobile3"]{
        display: none !important;
    }

    td[id="nomobile4"]{
        display: none !important;
    }

    td[id="nomobile5"]{
        display: none !important;
    }

    td[id="nomobile6"]{
        display: none !important;
    }
}
</style>


</head>

<body style="background-color: #ffffff; font-family: 'Open Sans'; font-size: 12px; color: #4c595c; margin: 0;">

<table align="center" border="0" cellpadding="0" cellspacing="0" class="wrapper_table" style="width: 100%;">
<tr>
    <td bgcolor="#ffffff" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td height="15">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row pre_header" width="600" style="font-family: 'Open Sans'; font-size: 12px; color: #9fb7bd; text-align: center;">
                                ¿Problemas para ver este correo? <a href="#" style="color: #9fb7bd; text-decoration: none;">Ábrelo en el navegador</a>
                            </td>
                        </tr>
                        <tr>
                            <td height="15">
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td bgcolor="#f9c412" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td class="content_row" width="600" height="20">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                        <td class="logo" valign="top" width="280">
                                            <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/letras_nest5_90x90.png" width="90" height="90" style="display: block;" border="0" alt="Nest5 - Enamoráte de las Marcas con una tarjeta de sellos virtual" />
                                        </td>
                                        <td class="header_spacer" width="40">
                                        </td>
                                        <td class="header_right" valign="top" width="280" align="right">
                                            <table class="social_header" cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td class="social_header" width="130" align="right">
                                                        <table cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td class="social_button"style="width: 25px;">
                                                                    <a href="http://www.facebook.com/Nest5Oficial" style="text-decoration: none;">
                                                                        <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/fb_black.png" width="25" height="24" style="display: block;" border="0" alt="FB"  />
                                                                    </a>
                                                                </td>
                                                                <td width="10">
                                                                </td>
                                                                <td class="social_button"style="width: 25px;">
                                                                    <a href="http://www.twitter.com/Nest5_Oficial" style="text-decoration: none;">
                                                                        <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/tw_black.png" width="25" height="24" style="display: block;" border="0" alt="TW"  />
                                                                    </a>
                                                                </td>
                                                                <td width="10">
                                                                </td>
                                                                %{--<td class="social_button"style="width: 25px;">
                                                                    <a href="#" style="text-decoration: none;">
                                                                        <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/g%2B_Black.png" width="25" height="24" style="display: block;" border="0" alt="G+"  />
                                                                    </a>
                                                                </td>
                                                                <td width="10">
                                                                </td>
                                                                <td class="social_button"style="width: 25px;">
                                                                    <a href="#" style="text-decoration: none;">
                                                                        <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/in_black.png" width="25" height="24" style="display: block;" border="0" alt="IN"  />
                                                                    </a>
                                                                </td>--}%
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" height="20">
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td bgcolor="#f9c412" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td class="content_row" width="600" height="40">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" align="center">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                        <td class="feature_list" width="340" valign="top">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td class="feature_list" width="340" valign="top">
                                                        <p style="font-family: 'Open Sans'; font-size: 30px; font-weight: 700; color: #faecbc; text-align: left; line-height: 36px; margin: 0; padding: 0;">¡Ey!, Eres uno de los <strong>10 Invitados Especiales</strong> de <br/><span style="color: #946900; font-size: 30px;">${user?.name}</span>. Si te inscribes, ambos recibirán un obsequio. </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="feature_list" height="40" width="320" valign="top">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="feature_list" width="340" valign="top">
                                                        <table class="button" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td width="210" height="50" bgcolor="#1b6da3" align="center" style="border-radius:4px;">
                                                                    <a href="${grailsApplication.config.grails.serverURL}/user/invite/${invitation?.id}" style="font-family: 'Open Sans'; font-weight: 800;font-size: 14px; color: #ffffff; text-align: center; line-height: 40px; text-transform: uppercase; text-decoration: none;">
                                                                        ¡Inscríbete Gratis Ya! &raquo;
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="20" id="nomobile2">
                                        </td>
                                        <td class="feature_list_right" width="240" valign="top" align="center">
                                            <img src="${picture}" width="200" height="300" style="display: block;" border="0" alt="${user?.name} te ha invitado a inscribirte en Nest5 y ambos recibirán un beneficio totalmente GRATIS. Nest5 es una plataforma en donde obtienes una tarjeta de sellos virtual, que sellándola en tus Marcas preferidas, estas te dan beneficios."  />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td bgcolor="#ffffff" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td class="content_row" width="600" height="40">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                        <td class="one_third" width="180">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <a href="#" style="text-decoration: none;">
                                                            <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/Boton1.png" width="100" height="100" style="display: block;" border="0" alt="Blogimg"  />
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180" height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <a href="#" class="blog_title" style="font-family: 'Open Sans'; text-align: center; font-size: 15px; font-weight: 800; color: #4c595c; text-transform: uppercase; text-decoration: none;">
                                                            ¿Qué es<br/> Nest5?
                                                        </a>
                                                        <br/>
                                                        <p style="font-family: 'Open Sans'; font-size: 13px; color: #4c595c; font-weight: normal; padding: 0 10px; text-align: center;">
                                                            Nest5 es una plataforma en la que tienes una tarjeta de sellos virtual (En tu celular, en la web y en todas partes) que al usarla en tus Marcas favoritas, éstas te dan beneficios y te ¡Enamoran!
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" width="180" height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <table class="blog_button" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td width="120" height="40" bgcolor="#1b6da3" align="center" style="border-radius:4px;">
                                                                    <a href="${grailsApplication.config.grails.serverURL}/user/invite/${invitation?.id}" style="font-family: 'Open Sans'; font-weight: 800;font-size: 13px; color: #ffffff; text-align: center; line-height: 40px; text-transform: uppercase; text-decoration: none;">
                                                                        ¡Leer Más!
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td class="nomob" width="30">
                                        </td>
                                        <td class="one_third" width="180">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <a href="#" style="text-decoration: none;">
                                                            <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/Boton2.png" width="100" height="100" style="display: block;" border="0" alt="Blogimg"  />
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180" height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <a href="#" class="blog_title" style="font-family: 'Open Sans'; text-align: center; font-size: 15px; font-weight: 800; color: #4c595c; text-transform: uppercase; text-decoration: none;">
                                                            ¿Cómo<br/> funciona?
                                                        </a>
                                                        <br/>
                                                        <p style="font-family: 'Open Sans'; font-size: 13px; color: #4c595c; font-weight: normal; padding: 0 10px; text-align: center;">
                                                            ¡Es Muy Sencillo! Busca en Nest5 Marcas que quieran enamorarte; vas, sellas tu tarjeta virtual en cada una de ellas y una vez consigas 5 sellos en una Marca, ésta te dará algún beneficio. Puede ser un regalo, un descuento o cosas que estamos seguros te gustarán.
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" width="180" height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <table class="blog_button" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td width="120" height="40" bgcolor="#1b6da3" align="center" style="border-radius:4px;">
                                                                    <a href="${grailsApplication.config.grails.serverURL}/user/invite/${invitation?.id}" style="font-family: 'Open Sans'; font-weight: 800;font-size: 13px; color: #ffffff; text-align: center; line-height: 40px; text-transform: uppercase; text-decoration: none;">
                                                                        ¡Leer Más!
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td class="nomob" width="30">
                                        </td>
                                        <td class="one_third" width="180">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <a href="#" style="text-decoration: none;">
                                                            <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/Boton3.png" width="100" height="100" style="display: block;" border="0" alt="Blogimg"  />
                                                        </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180" height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <a href="#" class="blog_title" style="font-family: 'Open Sans'; text-align: center; font-size: 15px; font-weight: 800; color: #4c595c; text-transform: uppercase; text-decoration: none;">
                                                            ¿Cuánto<br/> cuesta?
                                                        </a>
                                                        <br/>
                                                        <p style="font-family: 'Open Sans'; font-size: 13px; color: #4c595c; font-weight: normal; padding: 0 10px; text-align: center;">
                                                            Nest5 es COMPLETAMENTE GRATIS. Además si te inscribes haciendo clic en cualquiera de los botones de este correo, a tu amigo ${user?.name} y a tí te enviaremos un obsequio.
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" width="180" height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="one_third_row" align="center" width="180">
                                                        <table class="blog_button" cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td width="120" height="40" bgcolor="#1b6da3" align="center" style="border-radius:4px;">
                                                                    <a href="${grailsApplication.config.grails.serverURL}/user/invite/${invitation?.id}" style="font-family: 'Open Sans'; font-weight: 800;font-size: 13px; color: #ffffff; text-align: center; line-height: 40px; text-transform: uppercase; text-decoration: none;">
                                                                        ¡Leer Más!
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" height="40">
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td bgcolor="#f9c412" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td class="content_row" width="600" height="40">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600">
                                <a href="#" class="blog_title" style="font-family: 'Open Sans'; text-align: left; font-size: 15px; font-weight: 800; color: #4c595c; text-transform: uppercase; text-decoration: none;">
                                    ¡Qué esperas?
                                </a>
                                <br/>
                                <p style="font-family: 'Open Sans'; font-size: 13px; color: #4c595c; font-weight: normal;">

                                    ¡Inscríbete Ya! Obtén tu tarjeta virtual, conoce lo que compran tus amigos y sus gustos, enamórate de las Marcas y además, recibe un obsequio especial por haber sido uno de los 10 invitados de ${user?.name}.
                                    Una vez estés inscrito, tu podrás enviar 10 invitaciones y recibir otros 10 regalos ;)
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" height="20">
                            </td>
                        </tr>
                        <tr>
                            <td width="600" class="content_row" height="50" bgcolor="#717c82" align="center" style="border-radius:4px;">
                                <a href="${grailsApplication.config.grails.serverURL}/user/invite/${invitation?.id}" style="font-family: 'Open Sans'; font-weight: 800;font-size: 15px; color: #f6f7f8; text-align: center; line-height: 40px; text-transform: uppercase; text-decoration: none;">
                                    ¡Inscríbete Completamente Gratis en Nest5!
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" height="40">
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>

<tr>
    <td bgcolor="#444444" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td class="content_row" width="600">
                                <table cellspacing="0" cellpadding="0" border="0">
                                    <tr>
                                        <td class="footer_one_third" valign="top" width="200">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="footer_one_third" width="200" style="text-align: left; font-family: 'Open Sans'; font-size: 13px; font-weight: 800; color: #8e8e8e; line-height: 20px;">
                                                        <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/flattie2-d_25.png" width="17" height="17" style="display: block;float: left;" border="0" alt=""  />&nbsp;&nbsp;&nbsp;<a href="#" style="font-size: 14px; color: #f0f0f0; text-decoration: none; font-weight: 700;">+57 3014597229</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="20">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td class="footer_one_third" valign="top" width="200">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="footer_one_third" width="200" style="text-align: left; font-family: 'Open Sans'; font-size: 13px; font-weight: 800; color: #8e8e8e; line-height: 20px; ">
                                                        <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/flattie2-d_28.png" width="19" height="13" style="display: block;float: left; margin-top:3px;" border="0" alt=""  />&nbsp;&nbsp;&nbsp;<a href="#" style="font-size: 14px; color: #f0f0f0; text-decoration: none; font-weight: 700;">soporte@nest5.com</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="20">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td class="footer_one_third" valign="top" width="200">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tr>
                                                    <td height="20">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="footer_one_third" width="200">
                                                        <table cellspacing="0" cellpadding="0" border="0">
                                                            <tr>
                                                                <td class="footer_one_third" width="198" style="text-align: center; font-family: 'Open Sans'; font-size: 13px; font-weight: 800; color: #8e8e8e; line-height: 32px; text-transform: uppercase;">
                                                                    <table cellspacing="0" cellpadding="0" border="0" align="center">
                                                                        <tr>
                                                                            <td class="social_button"style="width: 25px;">
                                                                                <a href="http://www.facebook.com/Nest5Oficial" style="text-decoration: none;">
                                                                                    <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/fb.png" width="25" height="24" style="display: block;" border="0" alt="FB"  />
                                                                                </a>
                                                                            </td>
                                                                            <td width="10">
                                                                            </td>
                                                                            <td class="social_button"style="width: 25px;">
                                                                                <a href="http://www.twitter.com/Nest5_Oficial" style="text-decoration: none;">
                                                                                    <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/tw.png" width="25" height="24" style="display: block;" border="0" alt="TW"  />
                                                                                </a>
                                                                            </td>
                                                                            <td width="10">
                                                                            </td>
                                                                            %{--<td class="social_button"style="width: 25px;">
                                                                                <a href="#" style="text-decoration: none;">
                                                                                    <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/g%2B.png" width="25" height="24" style="display: block;" border="0" alt="G+"  />
                                                                                </a>
                                                                            </td>
                                                                            <td width="10">
                                                                            </td>
                                                                            <td class="social_button"style="width: 25px;">
                                                                                <a href="#" style="text-decoration: none;">
                                                                                    <img src="https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/invitationmail/in.png" width="25" height="24" style="display: block;" border="0" alt="IN"  />
                                                                                </a>
                                                                            </td>--}%
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="20">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td bgcolor="#313131" align="center">
        <table cellspacing="0" cellpadding="0" border="0">
            <tr>
                <td width="50" class="padding">
                </td>
                <td width="600" class="wrapper">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td class="content_row" width="600" height="20">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600">
                                <p style="font-family: 'Open Sans'; font-size: 12px; color: #ffffff; text-align: center; margin: 0;">Nest5 By Qtag Technologies S.A.S., Carrera 37#8-43 Of. 202, Edificio Rose Street <a href="http://www.espacio.co">ESPACIO</a> , Medellín, Colombia</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" height="10">
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" style="text-align: center;">
                                <span style="font-family: 'Open Sans'; font-size: 12px; color: #838383; text-align: center;">
                                    <a href="http://nest5.com/privacy" style="text-decoration: none; color: #838383;">
                                        Políticas de Privacidad
                                    </a>
                                    &nbsp;|&nbsp;
                                    <a href="http://nest5.com" style="text-decoration: none; color: #838383;">
                                        Sitio Web Principal
                                    </a>
                                    &nbsp;|&nbsp;
                                    <a href="mailto:soporte@nest5.com" style="text-decoration: none; color: #838383;">
                                        No quiero recibir más correos de Nest5
                                    </a>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_row" width="600" height="20">
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="50" class="padding">
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
</body>
</html>
