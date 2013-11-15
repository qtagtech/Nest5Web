<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs" >
<head>
    <meta name="layout" content="main_users_new"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Nest5 - Registro Manual de usuarios en ${company?.name} </title>

    <!-- Free google font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300,600' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css/form', file: 'form-style.css')}" rel="stylesheet" type="text/css" />

    <script src="${resource(dir: 'js/form', file: 'script.js')}"></script>
    <script src="${resource(dir: 'bootstrap/js', file: 'select-toggleizer.js')}"></script>

<!-- CSS code for IE Browser -->
    <!--[if lt IE 10]>
    <link href="${resource(dir: 'css/form',file: 'form-style-ie.css')}" rel="stylesheet" type="text/css" />
  <![endif]-->



</head>
<body>
<div class='form'>
    <h1>Registro Manual de usuarios en ${company?.name} </h1>
    <div class='line'></div>
    <form class='input-form' id='mregistration-form' action="${createLink(uri: '/user/saveDetails')}" method="post">
        <label for="name">Nombre Completo</label>
        <span class='ie-placeholders'>Nombre Completo:</span><input type='text' placeholder='Nombre' id='ipt-login' name="name" value=""/>
        <label for="email">Email</label>
        <span class='ie-placeholders'>Email:</span><input type='text' placeholder='Email' id='ipt-email' name="email" value=""  />

        <label><abbr id="address_label" data-toggle="popover" data-placement="right" data-content="No es obligación, pero si la pones te enviaremos un detalle con amor por inscribirte en Nest5. Prometemos que se mantendrá privada. Visita nest5.com/privacy para saber más."title="" data-original-title="¿Para qué poner tu dirección?">Dirección Física</abbr></label>

        <input class="span12" id="address" name="address" type="text" value="">
        <br />
        <div class="control-group">
            <label class="control-label" for="city">Ciudad</label><br /><br /><br />
            <select id="city" class="select-toggleizer" name="city">
                <option selected value="medellin">Medellín</option>
                <option  value="bogota">Bogotá</option>

            </select>
        </div>

        <div class="control-group">
            <label class="control-label" for="gender">Género</label><br /><br /><br />
            <select id="gender" class="select-toggleizer" name="gender">
                <option selected value="female">Femenino</option>
                <option value="male">Masculino</option>

            </select>
        </div>



        <div class="control-group">
            <label class="control-label" for="method">¿Cómo usará Nest5?</label><br /><br /><br />
            <select id="method" class="select-toggleizer" name="method">
                <option selected value="card">Tarjeta Nest5</option>
                <option value="smartphone">Smartphone</option>

            </select>
        </div>

         <br/>


       <input type="hidden" name="company_id" value="${company?.id}" />



        <input type='submit' class='btn-register btn-orange' value='Registrar' id="reg-btn" />
        <input type="reset" class="btn-register btn-red" value="Limpiar" />
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

     $(document).ready(function(){
         $('.select-toggleizer').toggleize();
         $('#address_label').popover()
         $("form").on('click','#reg-btn',function(e){
             e.preventDefault();
             $.when(register())
                     .then(function(response){
                         if(response.status == 1) $("#mregistration-form")[0].reset();
                         alert(response.errors);
                     })
                     .fail(callError);
         });


     });

     function register(){
         var url = "${createLink(controller: 'user', action: 'manualCreate')}";

         return  $.ajax({
             type: "POST",
             url: url,
             data: $("#mregistration-form").serialize(),
             dataType: 'json'
         }).promise();
     }
     function callError(response){
         console.log("error ajax");
         console.log(response);
     }
 </script>
</body>
</html>