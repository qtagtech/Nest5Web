<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="dashboardLayout"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nest5 Admin</title>
    <meta name="author" content="Nest5.com" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="application-name" content="Nest5" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Force IE9 to render in normal mode -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Plugin stylesheets -->
    <link href="${resource(dir:'dashboard/plugins/misc/qtip',file:'jquery.qtip.css')}" rel="stylesheet" type="text/css" />
    <link href="${resource(dir:'dashboard/plugins/forms/uniform',file:'uniform.default.css')}" type="text/css" rel="stylesheet" />
    <link href="${resource(dir:'dashboard/plugins/forms/select',file:'select2.css')}" type="text/css" rel="stylesheet" />
    <link href="${resource(dir:'dashboard/plugins/forms/validate',file:'validate.css')}" type="text/css" rel="stylesheet" />


    <r:require modules="uniform,select2,validate,bbq,form,formwizard,formvalidation"/>

</head>
      
    <body>



        <!--Body content-->
        <div id="content" class="clearfix">
            <div class="contentwrapper"><!--Content wrapper-->

                <div class="heading">

                    <h3>${youarehere}</h3>

                    <div class="resBtnSearch">
                        <a href="#"><span class="icon16 icomoon-icon-search-3"></span></a>
                    </div>

                    <div class="search">

                        <form id="searchform" action="search.html">
                            <input type="text" id="tipue_search_input" class="top-search" placeholder="Search here ..." />
                            <input type="submit" id="tipue_search_button" class="search-btn" value=""/>
                        </form>
                
                    </div><!-- End search -->
                    
                    <ul class="breadcrumb">
                        <li>Te encuentras en:</li>
                        <li>
                            <a href="#" class="tip" title="back to dashboard">
                                <span class="icon16 icomoon-icon-screen-2"></span>
                            </a> 
                            <span class="divider">
                                <span class="icon16 icomoon-icon-arrow-right-3"></span>
                            </span>
                        </li>
                        <li class="active">${youarehere}</li>
                    </ul>

                </div><!-- End .heading-->
    				
                <!-- Build page from here: Usual with <div class="row-fluid"></div> -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4><span>${youarehere}</span></h4>
                                </div>
                                <div class="panel-body">
                                   
                                    <form class="form-horizontal" id="form-ingredient-category" action="nada.html" role="form" >

                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="name">Nombre de Categor&iacute;a</label>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control" id="name" name="name">
                                            </div>
                                        </div>
                                        <input type="hidden" name="table" value="ingredient_category"/>
                                        <input type="hidden" name="row_id" value="0"/>
                                        <input type="hidden" name="sync_row_id" value="0"/>
                                        <!-- End .form-group  -->
                                        %{--<div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field min 4 characters</label>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control" id="required1" name="required1">
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required email</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="email" name="email" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Password fields</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="password" name="password" type="password" placeholder="Enter your password" />
                                                <input class="form-control" id="passwordConfirm" name="confirm_password" type="password" placeholder="Enter your password again" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with max lenght 10</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="maxLenght" name="maxLenght" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with range between 10-20 chars</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="rangelenght" name="rangelenght" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with min value of 13</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="minval" name="minval" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with max value of 13</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="maxval" name="maxval" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with range between 5-10</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="range" name="range" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with URL validation</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="url" name="url" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->        
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required field with date validation</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="date" name="date" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->   
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required and a decimal number only</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="number" name="number" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->                                             
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required and a digits only</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="digits" name="digits" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->                        
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required and accept credit card number</label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="ccard" name="ccard" type="text" />
                                            </div>
                                        </div><!-- End .form-group  -->
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required checkbox</label>
                                            <div class="col-lg-10">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" name="agree" value="option1" id="agree" />
                                                        Accept our policy
                                                    </label>
                                                </div>
                                            </div>
                                        </div><!-- End .form-group  -->--}%
                                       %{-- <div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Descripci&oacute;n</label>
                                            <div class="col-lg-10">
                                                <textarea id="description" name="description" class="form-control" rows="5"></textarea>
                                            </div>
                                        </div><!-- End .form-group  -->--}%
                                        %{--<div class="form-group">
                                            <label class="col-lg-2 control-label" for="required">Required Select with filter</label>
                                            <div class="col-lg-10">
                                                <select name="select1" id="select1" class="nostyle form-control">
                                                       <option></option>
                                                   <optgroup label="Alaskan/Hawaiian Time Zone">
                                                       <option value="AK">Alaska</option>
                                                       <option value="HI">Hawaii</option>
                                                   </optgroup>
                                                   <optgroup label="Pacific Time Zone">
                                                       <option value="CA">California</option>
                                                       <option value="NV">Nevada</option>
                                                       <option value="OR">Oregon</option>
                                                       <option value="WA">Washington</option>
                                                   </optgroup>
                                                   <optgroup label="Mountain Time Zone">
                                                       <option value="AZ">Arizona</option>
                                                       <option value="CO">Colorado</option>
                                                       <option value="ID">Idaho</option>
                                                       <option value="MT">Montana</option><option value="NE">Nebraska</option>
                                                       <option value="NM">New Mexico</option>
                                                       <option value="ND">North Dakota</option>
                                                       <option value="UT">Utah</option>
                                                       <option value="WY">Wyoming</option>
                                                   </optgroup>
                                                   <optgroup label="Central Time Zone">
                                                       <option value="AL">Alabama</option>
                                                       <option value="AR">Arkansas</option>
                                                       <option value="IL">Illinois</option>
                                                       <option value="IA">Iowa</option>
                                                       <option value="KS">Kansas</option>
                                                       <option value="KY">Kentucky</option>
                                                       <option value="LA">Louisiana</option>
                                                       <option value="MN">Minnesota</option>
                                                       <option value="MS">Mississippi</option>
                                                       <option value="MO">Missouri</option>
                                                       <option value="OK">Oklahoma</option>
                                                       <option value="SD">South Dakota</option>
                                                       <option value="TX">Texas</option>
                                                       <option value="TN">Tennessee</option>
                                                       <option value="WI">Wisconsin</option>
                                                   </optgroup>
                                                   <optgroup label="Eastern Time Zone">
                                                       <option value="CT">Connecticut</option>
                                                       <option value="DE">Delaware</option>
                                                       <option value="FL">Florida</option>
                                                       <option value="GA">Georgia</option>
                                                       <option value="IN">Indiana</option>
                                                       <option value="ME">Maine</option>
                                                       <option value="MD">Maryland</option>
                                                       <option value="MA">Massachusetts</option>
                                                       <option value="MI">Michigan</option>
                                                       <option value="NH">New Hampshire</option><option value="NJ">New Jersey</option>
                                                       <option value="NY">New York</option>
                                                       <option value="NC">North Carolina</option>
                                                       <option value="OH">Ohio</option>
                                                       <option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option>
                                                       <option value="VT">Vermont</option><option value="VA">Virginia</option>
                                                       <option value="WV">West Virginia</option>
                                                   </optgroup>
                                                  </select>
                                            </div>
                                        </div><!-- End .form-group  -->--}%
                                        <div class="form-group">
                                            <div class="col-lg-offset-2">
                                                <button type="submit" class="btn btn-default marginR10">Guardar Cambios</button>
                                                <button class="btn btn-danger">Cancel</button>
                                            </div>
                                        </div><!-- End .form-group  -->                                      
                                    </form>
                                </div>
                            </div><!-- End .panel -->
                        </div><!-- End .span12 -->
                    </div><!-- End .row -->  

                    %{--<div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default gradient">
                                <div class="panel-heading">
                                    <h4><span>Form Wizzard with validation</span></h4>

                                </div>
                                <div class="panel-body noPad clearfix">
                                   <form id="wizard" class="form-horizontal" role="form">
                                        <div class="msg"></div>
                                        <div class="wizard-steps clearfix"></div>

                                        <div class="step" id="account-details">
                                            <span class="step-info" data-num="1" data-text="Account details"></span>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="username">Your username:</label>
                                                <div class="col-lg-10">
                                                    <input id="username1" name="username1" type="text" class="form-control" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="username">Your password:</label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="password1" name="password1" type="password" placeholder="Enter your password" />
                                                    <input class="form-control" id="passwordConfirm1" name="confirm_password1" type="password" placeholder="Enter your password again" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                                                                        
                                        </div>
                                        <div class="step" id="profile-details">
                                            <span class="step-info" data-num="2" data-text="Profile details"></span>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="fname">First name:</label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="fname" name="fname" type="text" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="lname">Last name:</label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="lname" name="lname" type="text" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="gender">Your gender:</label>
                                                <div class="col-lg-10">
                                                    <select id="gender" name="gender">
                                                        <option value="" selected="">- select -</option>
                                                        <option value="men">Men</option>
                                                        <option value="women">Women</option>
                                                    </select>
                                                </div>
                                            </div><!-- End .form-group  -->
                                        </div>
                                        <div class="step" id="contact-details">
                                            <span class="step-info" data-num="3" data-text="Contact details"></span>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="email">Your email:</label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="email1" name="email1" type="text" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="phone">Your phone:</label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="phone1" name="phone1" type="text" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="address">Your address:</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="address" rows="3"></textarea>
                                                </div>
                                            </div><!-- End .form-group  -->
                                        </div>
                                        <div class="step submit_step" id="other-details">
                                            <span class="step-info" data-num="4" data-text="Other details"></span>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="hobies">Hobbies:</label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="hobies" name="hobies" type="text" />
                                                </div>
                                            </div><!-- End .form-group  -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label" for="hobies">About you:</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="aboutyou" rows="3"></textarea>
                                                </div>
                                            </div><!-- End .form-group  -->
                                            
                                        </div>
                                        <div class="wizard-actions">
                                            <button class="btn btn-default pull-left" type="reset"> Back </button>
                                            <button class="btn btn-default pull-right" type="submit"> Next </button>
                                        </div><!-- End .form-group  -->
                                    </form>
                                </div>
                            </div><!-- End .panel -->

                        </div><!-- End .span12 -->

                    </div><!-- End .row -->--}%
               
    			<!-- Page end here -->
                
            </div><!-- End contentwrapper -->
        </div><!-- End #content -->


    <r:script>

        $(document).ready(function(){
            /*$("form").on('click','#reg-btn',function(e){
                e.preventDefault();
                $.when(register())
                        .then(function(response){
                            if(response.status == 1) $("#mregistration-form")[0].reset();
                            alert(response.errors);
                        })
                        .fail(callError);
            });*/


        });

        function saveRow(){
            var url = "${createLink(controller: 'company',action: 'saveRow')}";
            var table = $("[name='table']").val();
            var rowid = $("[name='row_id']").val();
            var syncrowid = $("[name='sync_row_id']").val();
            var fields = "{\"name\":"+$("[name='name']").val()+"}";

            return  $.ajax({
                type: "POST",
                url: url,
                data:{table:table,row_id:rowid,sync_row_id:syncrowid,fields:fields},
                dataType: 'json'
            }).promise();
        }
        function callError(response){
            console.log("error ajax");
            console.log(response);
        }
    </r:script>
    </body>
</html>
