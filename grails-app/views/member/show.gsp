
<%@ page import="com.nest5.Nest5Client.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="members">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title>Perfil Equipo Nest5: ${member?.name}</title>

	</head>
<body>
<!-- Container -->
<div id="container">

<!-- Top -->
<div class="top">
    <!-- Logo -->
    <div id="logo">
        <h2>${member?.name}</h2>
        <h4>${member?.position}</h4>
    </div>
    <!-- /Logo -->

    <!-- Social Icons -->
    <ul class="socialicons">
        <li><a href="#" class="social-text">${member?.name} en las redes</a></li>
        %{--<li><a href="#" class="social-facebook"></a></li>--}%
        <li><a href="http://www.twitter.com/${member?.twitter}" class="social-twitter"></a></li>
        <li><a href="${member?.linkedin}" class="social-in"></a></li>
        <li><a href="${member?.gplus}" class="social-googleplus"></a></li>
    </ul>
    <!-- /Social Icons -->
</div>
<!-- /Top -->

<!-- Content -->
<div id="content" >

<!-- Profile -->
<div id="profile">
    <!-- About section -->
    <div class="about">
        <div class="photo-inner"><img src="${resource(dir:'images/team', file: member.webaddress+'.png')}" height="186" width="153" /></div>
        <h1>${member?.name.toUpperCase()}</h1>
        <h3>${member?.position.toUpperCase()}</h3>
        <p>${member?.bio}</p>
    </div>
    <!-- /About section -->


    <!-- Personal info section -->
    <ul class="personal-info">
        <li><label>Nombre</label><span>${member?.name}</span></li>
        <li><label>Cumpleaños</label><span><g:formatDate format="dd-MM-yyyy" date="${member.date}"/></span></li>
        <li><label>Dirección</label><span>${member?.address}</span></li>
        <li><label>Email</label><span>${member?.email}</span></li>
        %{--<li><label>Tele</label><span>+123 456 789 111</span></li>--}%
        <li><label>Sitio Web</label><span${member?.website}</span></li>
    </ul>
    <!-- /Personal info section -->
</div>
<!-- /Profile -->

<!-- Menu -->
<div class="menu">
    <ul class="tabs">
        <li class="tmenu"><a href="#profile" class="tab-profile">Perfil</a></li>
        <li class="tmenu"><a href="#resume" class="tab-resume">Cualidades</a></li>
        %{--<li class="tmenu"><a href="#portfolio" class="tab-portfolio">Trabajos</a></li>--}%
        <li class="tmenu"><a href="#contact" class="tab-contact">Contacto</a></li>
    </ul>
</div>
<!-- /Menu -->

<!-- Resume -->
<div id="resume">
    <div class="timeline-section">
        <!-- Timeline for Employment  -->
        <h3 class="main-heading"><span>Empleo</span></h3>
        <ul class="timeline">
            <g:each in="${member.jobs.sort{it.name}.sort{it.begin}}" var="job" status="i">
                <li>

                    <div class="timelineUnit">
                        <h4>${job.name}<span class="timelineDate">${job.begin.format("yyyy")} - <g:if test="${job.finish > new Date()}"> Actualidad</g:if><g:else>${job.finish.format("yyyy")}</g:else></span></h4>
                        <h5>${job.company}</h5>
                        <p>${job.description}</p>
                    </div>
                </li>

            </g:each>

            <div class="clear"></div>
        </ul>
        <!-- /Timeline for Employment  -->

        <!-- Timeline for Education  -->
        <h3 class="main-heading"><span>Educación</span></h3>
        <ul class="timeline">
            <g:each in="${member.studies.sort{it.name}.sort{it.begin}}" var="study" status="i">
                <li>

                    <div class="timelineUnit">
                        <h4>${study.name}<span class="timelineDate">${study.begin.format("yyyy")} - <g:if test="${study.finish > new Date()}"> Actualidad</g:if><g:else>${study.finish.format("yyyy")}</g:else></span></h4>
                        <h5>${study.institution}</h5>
                        <p>${study.description}</p>
                    </div>
                </li>

            </g:each>

            <div class="clear"></div>
        </ul>
        <!-- /Timeline for Education  -->
    </div>
    <div class="skills-section">
        <!-- Skills -->

        <% def types = member?.skills.groupBy({ it -> it.type}).sort {it.key.name}

        %>
        <g:each in="${types}" var = "type" status="i">
            <h3 class="main-heading"><span>${type.key}</span></h3>
            <ul class="skills">
                <g:each in="${(type.value).sort{it.name}}" var="skill" status="j">
                    <li>
                        <h4>${skill.name}</h4>
                        <span class="rat${Math.ceil(skill.skillValue.toDouble() / (10 / 7)).toInteger()}"></span>
                    </li>

                </g:each>

            </ul>
        </g:each>





        <!-- /Skills -->
    </div>
    <div class="clear"></div>
    <a href="#" class="button">Descargar Vcard</a>
</div>
<!-- /Resume -->

<!-- Portfolio -->
%{--<div id="portfolio">

    <ul id="portfolio-filter">
        <li><a href="" class="current" data-filter="*">All</a></li>
        <li><a href="" data-filter=".webdesign">WebDesign</a></li>
        <li><a href="" data-filter=".photoghraphy">Photoghraphy</a></li>
        <li><a href="" data-filter=".illustration">Illustration</a></li>
        <li><a href="" data-filter=".print">Print</a></li>
        <li><a href="" data-filter=".animation">Animation</a></li>
    </ul>
    <div class="extra-text">Some of the projects i'm proud with</div>
    <ul id="portfolio-list">
        <li class="illustration print">
            <a href="portfolio/1.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mi eu elit tempor facilisis id et neque" rel="portfolio" class="folio">
                <img src="portfolio/1-thumb.jpg" alt="">
                <h2 class="title">Hello Goodbye</h2>
                <span class="categorie">Print / Illustration</span>
            </a>
        </li>
        <li class="webdesign">
            <a href="http://www.youtube.com/embed/c9MnSeYYtYY?autoplay=1" rel="portfolio" class="folio iframe">
                <img src="portfolio/3-thumb.jpg" alt="" >
                <h2 class="title">Snow time</h2>
                <span class="categorie">Webdesign</span>
            </a>
        </li>
        <li class="photoghraphy">
            <a href="http://www.google.com" rel="portfolio" target="_new">
                <img src="portfolio/2-thumb.jpg" alt="" >
                <h2 class="title">Help us</h2>
                <span class="categorie">Photography</span>
            </a>
        </li>
        <li class="animation print">
            <a href="portfolio/4.jpg" rel="portfolio" class="folio">
                <img src="portfolio/4-thumb.jpg" alt="" >
                <h2 class="title">Sunshine</h2>
                <span class="categorie">Print / Animation</span>
            </a>
        </li>
        <li class="animation">
            <a href="portfolio/5.jpg" rel="portfolio" class="folio">
                <img src="portfolio/5-thumb.jpg" alt="" >
                <h2 class="title">Come together</h2>
                <span class="categorie">Animation</span>
            </a>
        </li>
        <li class="webdesign print">
            <a href="portfolio/6.jpg" rel="portfolio" class="folio">
                <img src="portfolio/6-thumb.jpg" alt="" >
                <h2 class="title">The yellow</h2>
                <span class="categorie">Webdesign / Print</span>
            </a>
        </li>
        <li class="photoghraphy">
            <a href="portfolio/7.jpg" rel="portfolio" class="folio">
                <img src="portfolio/7-thumb.jpg" alt="" >
                <h2 class="title">Black bird</h2>
                <span class="categorie">Photoghraphy</span>
            </a>
        </li>
        <li class="illustration">
            <a href="portfolio/8.jpg" rel="portfolio" class="folio">
                <img src="portfolio/8-thumb.jpg" alt="" >
                <h2 class="title">Revolution</h2>
                <span class="categorie">Illustration</span>
            </a>
        </li>
    </ul>
</div>--}%
<!-- /Portfolio -->

<!-- Contact -->
<div id="contact">
    <div id="map"></div>
    <!-- Contact Info -->
    <div class="contact-info">
        <h3 class="main-heading"><span>Info de contacto</span></h3>
        <ul>
            <li>Carrera 37 #8-43. Oficina 802 <a href="http://www.espacio.co" target="_blank">ESPACIO</a>, <a href="http://www.rose-street.com.co" target="_blank"> Edificio Rose Street</a> <br /><br /></li>
            <li>Email: ${member?.email}</li>
            <li>Sitio Web: <a href="${member.website}" target="_blank">${member.website}</a> </li>
        </ul>
    </div>
    <!-- /Contact Info -->

    <!-- Contact Form -->
    <div class="contact-form">
        <h3 class="main-heading"><span>¿Te puedo ayudar en algo?</span></h3>
        <div id="contact-status"></div>
        <form action="" id="contactform">
            <p>
                <label for="name">Tu Nombre</label>
                <input type="text" name="name" class="input" >
            </p>
            <p>
                <label for="email">Tu Email</label>
                <input type="text" name="email" class="input">
            </p>
            <p>
                <label for="message">Tu Mensaje</label>
                <textarea name="message" cols="88" rows="6" class="textarea" ></textarea>
            </p>
            <input type="submit" name="submit" value="Contáctame" class="button">
        </form>
    </div>
    <!-- /Contact Form -->
</div>
<!-- /contact -->

</div>
<!-- /Content -->

<!-- Footer -->
<div class="footer">
    <div class="copyright">Copyright © 2013 Nest5</div>
</div>
<!-- /Footer -->

</div>
<!-- /Container -->

</body>
	</body>
</html>
