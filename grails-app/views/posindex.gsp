<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Nest5 - Bienvenido</title>

<!--=================================
Meta tags
=================================-->

<meta name="description" content="">
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta name="viewport" content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" />

<!--=================================
Style Sheets
=================================-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="${resource(dir:'posfiles/css',file:'bootstrap.min.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir:'posfiles/css',file:'font-awesome.min.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir:'posfiles/css',file:'flexslider.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir:'posfiles/css',file:'animate.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir:'posfiles/css',file:'prettyPhoto.css')}">
<link rel="stylesheet" href="${resource(dir:'posfiles/css',file:'main.css')}">
<link rel="shortcut icon" href="${resource(dir: 'posfiles/img', file: 'favicon.ico')}" type="image/x-icon">



<script src="${resource(dir:'posfiles/js',file:'modernizr-2.6.2-respond-1.1.0.min.js')}"></script>
</head>
<body data-spy="scroll" data-target="#sticktop" data-offset="70">
<!--=================================
header
=================================-->

<header>
  <nav id="sticktop" class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="#">Nest<sup>5</sup></a> </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="dropdown active"><a href="#home">${message(code:'pos.menu.inicio', default:"Translating please change your browser language")}</a></li>
          <li><a href="#about">${message(code:'pos.menu.nosotros', default:"Translating please change your browser language")}</a></li>
          <li><a href="#services">${message(code:'pos.menu.servicios', default:"Translating please change your browser language")}</a></li>
          <li><a href="#portfolio">${message(code:'pos.menu.precio', default:"Translating please change your browser language")}</a></li>
          <li><a href="#team">${message(code:'pos.menu.equipo', default:"Translating please change your browser language")}</a></li>
          <li><a href="#contact">${message(code:'pos.menu.contacto', default:"Translating please change your browser language")}</a></li>
          <li><a class="btnpanel" style="color:#ffffff; background-color:#f59343" href="http://nest5.com/company/dashboard">${message(code:'pos.menu.panel', default:"Translating please change your browser language")}</a></li>
        </ul>
      </div>
      <!--/.nav-collapse --> 
    </div>
  </nav>
</header>

<!--=================================
home
=================================-->
<section id="home">
  <h1>${message(code:'pos.intro.title', default:"Translating please change your browser language")}</h1>
  <h2>${message(code:'pos.intro.text', default:"Translating please change your browser language")}</h2>
  <div class="slider-wrapper">
    <div id="home-slider" class="flexslider">
      <ul class="slides">
        <li> <img class="device-img" src="${resource(dir:'posfiles/img/slider',file:'1.png')}" alt=""/> </li>
        <li> <img class="device-img" src="${resource(dir:'posfiles/img/slider',file:'2.png')}" alt=""/> </li>
        <li> <img class="device-img" src="${resource(dir:'posfiles/img/slider',file:'3.png')}" alt=""/> </li>
      </ul>
    </div>
  </div>
</section>

<!--=================================
About-us
=================================-->

<section id="about">
  <div class="container">
    <div class="section-head">
      <h1>${message(code:'pos.about.title', default:"Translating please change your browser language")}</h1>
      <p>${message(code:'pos.about.text', default:"Translating please change your browser language")}</p>
    </div>
    <div class="carousel-nav"> <a id="phase-prev" href="#" class="prev"><span class=" icon-angle-left"></span></a> <a id="phase-next" href="#" class="next"><span class=" icon-angle-right"></span></a> </div>
    <div class="about-wrapper">
      <div class="work-phase"> <span class="waterIcon"></span>
        <h2>${message(code:'pos.about.controltitle', default:"Translating please change your browser language")}</h2>
        <p>${message(code:'pos.about.controltext', default:"Translating please change your browser language")}</p>
        <div class="hover">
          <h2>${message(code:'pos.about.controlback', default:"Translating please change your browser language")}</h2>
          <span class="waterIcon"></span> <a class="btn" href="#portfolio">${message(code:'pos.about.botonhazlo', default:"Translating please change your browser language")}</a> </div>
        <!--hover--> 
      </div>
      <!--phase1-->
      
      <div class="work-phase"> <span class="buildingIcon"></span>
        <h2>${message(code:'pos.about.recibostitle', default:"Translating please change your browser language")}</h2>
        <p>${message(code:'pos.about.recibostext', default:"Translating please change your browser language")}</p>
        <div class="hover">
          <h2>${message(code:'pos.about.recibosback', default:"Translating please change your browser language")}</h2>
          <span class="buildingIcon"></span> <a class="btn" href="#portfolio">${message(code:'pos.about.botonhazlo', default:"Translating please change your browser language")}</a> </div>
        <!--hover--> 
      </div>
      <!--phase1-->
      
      <div class="work-phase"> <span class="desktopIcon"></span>
        <h2>${message(code:'pos.about.reportestitle', default:"Translating please change your browser language")}</h2>
        <p>${message(code:'pos.about.reportestext', default:"Translating please change your browser language")}</p>
        <div class="hover">
          <h2>${message(code:'pos.about.reportesback', default:"Translating please change your browser language")}</h2>
          <span class="desktopIcon"></span> <a class="btn" href="#portfolio">${message(code:'pos.about.botonhazlo', default:"Translating please change your browser language")}</a> </div>
        <!--hover--> 
      </div>
      <!--phase1-->
      
      <div class="work-phase"> <span class="heartIcon"></span>
        <h2>${message(code:'pos.about.clientestitle', default:"Translating please change your browser language")}</h2>
        <p>${message(code:'pos.about.clientestext', default:"Translating please change your browser language")}</p>
        <div class="hover">
          <h2>${message(code:'pos.about.clientesback', default:"Translating please change your browser language")}</h2>
          <span class="heartIcon"></span> <a class="btn" href="#portfolio">${message(code:'pos.about.botonhazlo', default:"Translating please change your browser language")}</a> </div>
        <!--hover--> 
      </div>
      <!--phase1--> 
      
    </div>
    <div class="clearfix"></div>
    <!--about-us-wrapper--> 
  </div>
</section>

<!--=================================
Services
=================================-->

<section id="services">
  <div class="container">
    <div class="section-head">
      <h1>${message(code:'pos.facilidades.title', default:"Translating please change your browser language")}</h1>

    </div>
    <div class="service-wrapper">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="service"> <span class="mobileIcon"></span>
            <h2>${message(code:'pos.facilidades.disenotitle', default:"Translating please change your browser language")}</h2>
            <p>${message(code:'pos.facilidades.disenotext', default:"Translating please change your browser language")}</p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="service"> <span class="screwIcon"></span>
            <h2>${message(code:'pos.facilidades.nubetitle', default:"Translating please change your browser language")}</h2>
            <p>${message(code:'pos.facilidades.nubetext', default:"Translating please change your browser language")}</p>
          </div>
        </div>
      </div>
      <!--//row-->
      
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="service"> <span class="beakerIcon"></span>
            <h2>${message(code:'pos.facilidades.conectividadtitle', default:"Translating please change your browser language")}</h2>
            <p>${message(code:'pos.facilidades.conectividadtext', default:"Translating please change your browser language")}</p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="service"> <span class="headphoneIcon"></span>
            <h2>${message(code:'pos.facilidades.economicotitle', default:"Translating please change your browser language")}</h2>
            <p>${message(code:'pos.facilidades.economicotext', default:"Translating please change your browser language")}</p>
          </div>
        </div>
      </div>
      <!--//row--> 
    </div>
    <!--service-wrapper--> 
  </div>
</section>
<div class="clearfix"></div>

<!--=================================
	Records
=================================-->
<section id="records">
  <div class="container">
    <div class="row">
      <div class="section-head">
        <h1>${message(code:'pos.trabajo.title', default:"Translating please change your browser language")}</h1>
      </div>
      <div class="records-wrapper">
        <div class="record animate1"> <span class="coffeecupIcon"></span>
          <h5><span data-total="4526" class="stat"></span>${message(code:'pos.trabajo.tazas', default:"Translating please change your browser language")}</h5>
          <div class="clearfix"></div>
        </div>
        <!--\\record-->
        
        <div class="record animate2"> <span class="meterIcon"></span>
          <h5><span data-total="3840" class="stat"></span>${message(code:'pos.trabajo.horas', default:"Translating please change your browser language")}</h5>
          <div class="clearfix"></div>
        </div>
        <!--\\record-->
        
        <div class="record animate3"> <span class="laptopIcon"></span>
          <h5><span data-total="1842" class="stat"></span>${message(code:'pos.trabajo.almuerzos', default:"Translating please change your browser language")}</h5>
          <div class="clearfix"></div>
        </div>
        <!--\\record-->
        
        <div class="record animate4"> <span class=" happyIcon"></span>
          <h5><span data-total="8634" class="stat"></span>${message(code:'pos.trabajo.sonrisas', default:"Translating please change your browser language")}</h5>
          <div class="clearfix"></div>
        </div>
        <!--\\record--> 
      </div>
    </div>
  </div>
</section>

<!--=================================
	Our Work
=================================-->

<section id="portfolio">
    <div class="promo-box container">

        <h2>&nbsp;</h2>
            <h3>${message(code:'pos.banner.text', default:"Translating please change your browser language")}</h3>

        <a class="btn" href="mailto:comercial@nest5.com">${message(code:'pos.banner.button', default:"Translating please change your browser language")}</a> </div>
        </div>

</section>
<!--=================================
	Team
=================================-->

<section id="team">
  <div class="container">
    <div class="section-head">
      <h1>${message(code:'pos.equipo.title', default:"Translating please change your browser language")}</h1>
    </div>
    <div class="carousel-nav"> <a id="member-prev" href="#" class="prev"><span class=" icon-angle-left"></span></a> <a id="member-next" href="#" class="next"><span class=" icon-angle-right"></span></a> </div>
    <div class="team-wrapper">
      <div class="member"> <img src="${resource(dir:'posfiles/img/team',file:'1.png')}" alt="">
        <div class="hover">
          <h2>Julián Echeverri</h2>
          <h5>CMO / HEAD DESIGNER</h5>
          <p style="font-size: 12pt; line-height: 120%;">${message(code:'pos.equipo.julian', default:"Translating please change your browser language")}</p>

        </div>
      </div>
      <!--member-->
      
      <div class="member"> <img src="${resource(dir:'posfiles/img/team',file:'2.png')}" alt="">
        <div class="hover">
          <h2>Juan David Arroyave</h2>
          <h5>CEO / HEAD PROGRAMMER</h5>
          <p style="font-size: 12pt; line-height: 120%;">${message(code:'pos.equipo.juan', default:"Translating please change your browser language")}
          </p>

        </div>
      </div>
      <!--member-->
      
      <div class="member"> <img src="${resource(dir:'posfiles/img/team',file:'3.png')}" alt="">
        <div class="hover">
          <h2>Sebastián Muñoz</h2>
          <h5>UI / UX DESIGNER</h5>
          <p style="font-size: 12pt; line-height: 120%;">${message(code:'pos.equipo.sebastian', default:"Translating please change your browser language")}</p>

        </div>
      </div>
      <!--member-->
      
      <div class="member"> <img src="${resource(dir:'posfiles/img/team',file:'4.png')}" alt="">
        <div class="hover">
          <h2>Sara Monsalve</h2>
          <h5>B2B MANAGER</h5>
          <p style="font-size: 12pt; line-height: 120%;">${message(code:'pos.equipo.sara', default:"Translating please change your browser language")}</p>

        </div>
      </div>
      <!--member--> 
      
    </div>
  </div>
</section>

<!--=================================
	Our Clients
=================================-->

<section id="our-clients">
  <div class="section-head">
    <h1>${message(code:'pos.clientes.title', default:"Translating please change your browser language")}</h1>
  </div>
  <div class="client-wrapper">
    <div class="flip-container">
      <div class="client">
        <div class="client-front"> <img src="${resource(dir:'posfiles/img/Our_Clients',file:'1.png')}" alt=""> </div>
        <!--front-->
        
        <div class="client-back">
          <p><em>${message(code:'pos.clientes.perumix', default:"Translating please change your browser language")}</em></p>
          <h5>Juan Luis Vera</h5>
          <a href="#">Perumix</a> </div>
        <!--back--> 
      </div>
    </div>
    <!--flip container-->
    
    <div class="flip-container">
      <div class="client">
        <div class="client-front"> <img src="${resource(dir:'posfiles/img/Our_Clients',file:'2.png')}" alt=""> </div>
        <!--front-->
        
        <div class="client-back">
          <p><em>${message(code:'pos.clientes.mrpastor', default:"Translating please change your browser language")}</em></p>
          <h5>Daniel Bedoya</h5>
          <a href="#">Mr Pastor</a> </div>
        <!--back--> 
      </div>
    </div>
    <!--flip container-->
    
    <div class="flip-container">
      <div class="client">
        <div class="client-front"> <img src="${resource(dir:'posfiles/img/Our_Clients',file:'3.png')}" alt=""> </div>
        <!--front-->
        
        <div class="client-back">
          <p><em>${message(code:'pos.clientes.dueamici', default:"Translating please change your browser language")}</em></p>
          <h5>Germán Sánchez</h5>
          <a href="#">Due Amici Pizzas</a> </div>
        <!--back--> 
      </div>
    </div>
    <!--flip container-->
    
    <div class="flip-container">
      <div class="client">
        <div class="client-front"> <img src="${resource(dir:'posfiles/img/Our_Clients',file:'4.png')}" alt=""> </div>
        <!--front-->
        
        <div class="client-back">
          <p><em>${message(code:'pos.clientes.espacio', default:"Translating please change your browser language")}</em></p>
          <h5>Edinson Arrieta</h5>
          <a href="#">Espacio</a> </div>
        <!--back--> 
      </div>
    </div>

    
    <div class="clearfix"></div>
    <!--client wrapper--> 
  </div>
</section>


<!--=================================
 contact
 =================================-->

<div id="contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <h2>${message(code:'pos.contacto.nosotrostitle', default:"Translating please change your browser language")}</h2>
        <p>${message(code:'pos.contacto.nosotrostext', default:"Translating please change your browser language")}</p>
        <h2>${message(code:'pos.contacto.social', default:"Translating please change your browser language")}</h2>
        <ul class="social-fonts">
          <li><a href="http://www.facebook.com/Nest5Oficial"><span class="icon-facebook"></span></a></li>
          <li ><a href="http://twitter.com/Nest5_Oficial"><span class="icon-twitter"></span></a></li>
        </ul>
      </div>
      <div class="col-lg-4 col-md-5 col-sm-5">
        <h2>${message(code:'pos.contacto.map', default:"Translating please change your browser language")}</h2>
        <div id="contact-map" data-address="6.207688,-75.56768" data-zoomlvl="13" data-maptype="HYBRID"></div>
      </div>
      <div class="col-lg-5 col-md-4 col-sm-4">
        <h2>${message(code:'pos.contacto.hello', default:"Translating please change your browser language")}</h2>
        <a href="#">comercial@nest5.com</a>
        <div class="contactus">
            <form id="contactform" action="#" method="post">
              <input type="text" name="name" id="name" placeholder="${message(code:'pos.contacto.nombre', default:"Translating please change your browser language")}">
              <input type="text" name="email" id="email" placeholder="${message(code:'pos.contacto.correo', default:"Translating please change your browser language")}">
              <input type="text" name="subject" id="subject" placeholder="${message(code:'pos.contacto.asunto', default:"Translating please change your browser language")}">
              <textarea name="message" id="message" placeholder="${message(code:'pos.contacto.mensaje', default:"Translating please change your browser language")}"></textarea>
              <input class="btn" id="submit" type="submit" value="${message(code:'pos.contacto.button', default:"Translating please change your browser language")}">
            </form>
            <div id="valid-issue" style="display:none;">${message(code:'pos.contacto.invalid', default:"Translating please change your browser language")}</div>
        </div>
      </div>
    </div>
  </div>
  <!--container--> 
</div>
<!--contact-->

<!--=================================
 Footer
 =================================-->
<footer> &copy;2014 Nest5 . ${message(code:'pos.footer.copy', default:"Translating please change your browser language")} </footer>

<!--=================================
Script Source
=================================--> 
<script src="${resource(dir:'posfiles/js',file:'jquery-1.9.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'bootstrap.min.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'jquery.easing-1.3.pack.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'jquery.sticky.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'jquery.inview.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'jquery.flexslider-min.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'masonry.pkgd.min.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'jquery.mixitup.min.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'jquery.carouFredSel-6.2.1-packed.js')}"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script> 
<script src="${resource(dir:'posfiles/js',file:'jquery.prettyPhoto.js')}"></script>
<script src="${resource(dir:'posfiles/js',file:'main.js')}"></script>

</body>
</html>
