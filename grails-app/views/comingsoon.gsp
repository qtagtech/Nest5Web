<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    
    <!-- /// change your site title here /// -->
    <title>Nest5 - Administra tu Negocio en La Nube</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap, Flat UI and the custom stylesheets -->
    <link href="${resource(dir: 'comingsoon/bootstrap/css', file: 'bootstrap.css')}" rel="stylesheet">
    <link href="${resource(dir: 'comingsoon/css', file: 'flat-ui.css')}" rel="stylesheet">
    <link href="${resource(dir: 'comingsoon/css', file: 'main.css')}" rel="stylesheet">

    <!-- /// optional extra stylesheet - uncomment and use this one for your customisations! /// -->
    <!-- <link href="css/custom.css" rel="stylesheet"> -->

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="${resource(dir: 'comingsoon/js', file: 'html5shiv.js')}"></script>
      <script src="${resource(dir: 'comingsoon/js', file: 'respond.min.js')}"></script>
    <![endif]-->
  </head>

  <body>
  
    <!-- ////////// INTRO SECTION ////////// -->

    <section id="intro">
      <div class="container">

        <div class="intro">

          <div class="logo">
              <a href="${createLink(uri: '/')}"><img src="${resource(dir: 'comingsoon/images/icons', file: 'logo.svg')}" alt="Nest5 Logo" title="Logo" class="img-responsive"></a>
          </div>

          <h2>Estamos creando algo nuevo</h2>
          
          <p class="lead">Estaremos listos en...</p>

        </div><!-- end .intro -->

      </div>
    </section>



    <!-- ////////// COUNTDOWN SECTION ////////// -->

    <section id="countdown">
      <div class="container">

        <div class="row countdown text-center">

          <div class="countdown-wrap col-sm-3 col-xs-6">
            <span class="timer ce-days"></span> <br> <span class="ce-days-label"></span>
          </div>

          <div class="countdown-wrap col-sm-3 col-xs-6">
            <span class="timer ce-hours"></span> <br> <span class="ce-hours-label"></span>
          </div>

          <div class="countdown-wrap col-sm-3 col-xs-6">
            <span class="timer ce-minutes"></span> <br> <span class="ce-minutes-label"></span>
          </div>

          <div class="countdown-wrap col-sm-3 col-xs-6">
            <span class="timer ce-seconds"></span> <br> <span class="ce-seconds-label"></span>
          </div>

        </div><!-- end .countdown -->

      </div>
    </section>




    <!-- ////////// CAPTION SECTION ////////// -->

    <section id="caption">
      <div class="container">

        <div class="row">
              
          <div class="col-sm-4 col-sm-offset-2 col-xs-5 col-xs-offset-1">
          
            <!-- /// girl icon /// -->
            <div class="icon bounce-delay">
                <img src="${resource(dir: 'comingsoon/images/icons', file: 'julian.svg')}" alt="julian" title="girl" class="img-responsive" />
            </div>

          </div>

          <div class="col-sm-4 col-xs-5">

            <!-- /// dude icon /// -->            
            <div class="icon bounce">
                <img src="${resource(dir: 'comingsoon/images/icons', file: 'juanda.svg')}" alt="juanda" title="dude" class="img-responsive" />
            </div>

          </div>

        </div><!-- /row -->

        <div class="caption">
        
            <q>Estamos <strong> taaaaan felices</strong> por nuestro lanzamiento,<br> que no podemos parar de saltar.</q> 
            
            <p class="cite" style="color:#CCC">Julián &amp; Juan David, amigos y fundadores de Nest5.</p>

        </div> 

      </div>
    </section>



   <!-- ////////// NEWSLETTER SECTION ////////// -->

    <section id="newsletter">      
      <div class="container">
          
        <p class="lead">Si quieres conocer más de nosotros ¡inscríbete aquí!</p>

        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            
            <!-- Newsletter Form -->
            <form id="newsletter-signup">
                
              <div class="form-group">
              <input type="text" name="email" id="email" placeholder="Escribe tu e-mail en este espacio..." class="form-control input-hg">
              </div>

              <div id="error-info"></div><!-- div for error notification -->
               
              <button class="btn btn-danger btn-hg btn-embossed" id="enviar" type="submit" name="submit">¡Envíenme información!</button>
                
            </form><!-- end of Newsletter Form -->

          </div>
        </div>

      </div>
    </section>



    <!-- ////////// FOOTER SECTION ////////// -->

    <section id="footer">
        <div class="container">

            <p>Copyright &copy; 2014 <a href="#">Nest5</a> - Todos los derechos reservados.</p>
        
        </div>
    </section>



    <!-- ////////// JAVASCRIPT STUFF ////////// -->

    <script src="${resource(dir: 'comingsoon/js', file: 'jquery-1.8.3.min.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js/vendor', file: 'jquery.counteverest.min.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'jquery.ui.touch-punch.min.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'bootstrap-select.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'bootstrap-switch.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'flatui-checkbox.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'flatui-radio.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'jquery.tagsinput.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'jquery.placeholder.js')}"></script>
    <script src="${resource(dir: 'comingsoon/js', file: 'custom.js')}"></script>

  <script>
      $(document).ready(function(){
          $("#newsletter-signup").submit(function(e){
              e.preventDefault();
              var email = $("#email").val();
              $("#email").hide(1500);
              $("#enviar").hide(1500);
              $.when(contact(email))
                      .then(function(response){
                          if(response.errors == "0")
                          {
                              var html = '<div class="alert alert-success"><p class="lead">&iexcl;Gracias! Alguien de nuestro equipo te escribir&aacute; y te contar&aacute; todos los detalles de Nest5.</p></div> ';
                              $('#error-info').html(html);
                          }
                          else
                          {
                              $("#email").show(1300);
                              $("#enviar").show("1500");
                              $("#error-info").html("&iexcl;Oops! Parece que hubo alg&uacute;n error. &iquest;Podr&iacute;s intentarlo de nuevo por favor? &iexcl; Gracias!").show(1000);
                          }
                      })
                      .fail(callError)
          });
      });

      function contact(email){
          var url = "${createLink(controller: 'special', action: 'contact')}";

          return  $.ajax({
              type: "POST",
              url: url,
              data: {email : email},
              dataType: "json"
          }).promise();
      }

      function callError(data){
          console.log("Error");
          console.log(data);
      }
  </script>

  </body>
</html>
