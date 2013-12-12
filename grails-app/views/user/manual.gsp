<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs" >
<head>
    <meta name="layout" content="main_users_new"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Nest5 - Registro Manual de usuarios</title>

    <!-- Free google font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300,600' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css/form', file: 'form-style.css')}" rel="stylesheet" type="text/css" />

    <script src="${resource(dir: 'js/form', file: 'script.js')}"></script>


<!-- CSS code for IE Browser -->
    <!--[if lt IE 10]>
    <link href="${resource(dir: 'css/form',file: 'form-style-ie.css')}" rel="stylesheet" type="text/css" />
  <![endif]-->

        <script>
            $(document).ready(function(){



                $(".city_select").click(function(e){e.preventDefault();
                    var code = $(this).attr('id');
                    var html = "";
                    switch(code){
                        case "medellin": html = "Medellín";
                            break;
                        case "bogota": html = "Bogotá";
                            break;
                    }

                    $("#city_val").val(code);
                    $("#city_selected").val(html);

                });



            });
        </script>

</head>
<body>





<div class='form'>
    <h1>Selecciona la ubicación donde se realiza la inscripción: </h1>
    <div class='line'></div>
    <form class='input-form' id='selectplace-form' action="${createLink(uri: '/user/capture')}" method="post">
            <div class="control-group" id="select_nest5">
                <label class="control-label" for="gender">Empresa Nest5</label>
                <div class="controls">
                    <div class="input-prepend">
                        <div class="btn-group">
                            <button class="btn dropdown-toggle" data-toggle="dropdown">
                                Escoge
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <g:each in="${companies}" status="i" var="it" >
                                    <li><a href="#" id="company_${it?.id}">${it?.name} - ${prueba}${[i]}</a></li>
                                </g:each>
                            </ul>
                        </div>
                        <br>
                        <input  class="span5" id="c_selected" name="c_selected" type="text" readonly />
                        <input type="hidden" name="company" value=""/>
                    </div>
                </div>
            </div>

        <label class="control-label" for="other">Otro Lugar&nbsp;</label><input id="tac-checkbox" type="checkbox" value="" name="other" />
        <span id="select_other"><span class='ie-placeholders'>Nombre del Lugar:</span><input type='text' placeholder='Nombre del Lugar' id='ipt-name_company' name="name_company" value=""   />
        <span class='ie-placeholders'>Dirección del Lugar:</span><input type='text' placeholder='Dirección del Lugar' id='ipt-address_company' name="address_company" value=""   /></span>

         <br /><br /><br />

        <input type='submit' class='btn-register btn-orange' value='Continuar' />

    </form>

    <!-- ERROR STATE -->
    <div class='error-box red'>
        <span class='error-message'>Por favor llena todos los datos.</span>
    </div>

    <div class='sign-link'>
        %{--Already have an account? <a href='signin.html'>Sign in</a>--}%
    </div>
</div>
 <script type="text/javascript">
     $("[id^='company_']").click(function(e){e.preventDefault();
         var id = $(this).attr('id');
         var split = id.split('company_');
         var companyid =  split[1];
         var html = $(this).html();
         $("[name='company']").val(companyid);
         $("#c_selected").val(html);
     });

     $(document).ready(function(){
         $("#select_other").toggle(false);
         $('#tac-checkbox').click(function () {
             $("#select_nest5").toggle(!this.checked);
             $("#select_other").toggle(this.checked);
         });
     });
 </script>
</body>
</html>