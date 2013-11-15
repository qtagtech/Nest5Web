/**
 * JQuery User Validate Input (JUVI) - Plugin 
 * @author        C.A.Parkin http://www.capembryonic.com
 * WEBSITE        : http://www.jqueryuservalidateinput.com
 * 
 * Minify Tool    : http://closure-compiler.appspot.com/home
 * 
 * Licence        : GPU (General Public Usage)
 * Last Updated   : 2012-08-29
 * Version        : 2.0
 * JQuery Version : 1.7.2
 */

//Create JUVI error style class
var errorCssClassString = 
       '<style> \
	        .juvi_error_div{ \
	            position: absolute; \
                \
	            background-color: #FFF0F5; \
	            color: #000000; \
	            \
	            width: auto; \
	            height: auto; \
	            min-height: 20px; \
	            padding: 2px; \
	            \
	            font-size: 12px; \
	            font-weight: bold; \
	            \
	            border: 2px solid #FF1493; \
	            \
	            /*Curve corners*/ \
	        	border-radius: 5px; \
	        	-moz-border-radius: 5px; \
	        	-webkit-border-radius: 5px; \
             } \
         </style>';

//Include juvi style sheet
document.write(errorCssClassString);

(function( $ ){
	//Define the object
	var scopeObject = null;
	//Define the error message for the obect
	var scopeErrorMessage = null;
	//Define class options
	var scopeOptions = null;
	//Define class options
	var scopeErrorFlag = null;
	
	//Variable to determine if the form is valid based on predefined criteria
	var isValid = null;
	
    var methods = {
        init : function( options ) {
        	//Define plugin defaults
            /**
             * formSubmitTrigger = the id of the element which will trigger a form submit gesture from the user
             * enableRealtimeChecking = flag which switches realtime checking on/off (on by default)
             * cssErrorClass = the css class name which is used to style the input item when an error occurs
             * requiredMessage = the message displayed to the user for required fields
             * errorMessageAlpha = the message displayed if the alpha regex fails
             * errorMessageMobile = the message displayed if the mobile regex fails
             * errorMessageEmail = the message displayed if the email regex fails
             * errorMessageNumber = the message displayed if the number regex fails
             * errorMessageIPV4 = the message displayed if the ip address regex fails
             * errorMessageIPV6 = the message displayed if the ip address regex fails
             * errorMessageURL = the message displayed if the URL regex fails
             * errorMessageCreditCard = the message displayed if the Credit Card regex fails
             * errorMessageDate = the message displayed if the Date regex fails
             * errorMessageBoolean = the message displayed if a boolean value like a checkbox fails
             * errorMessageCustom = the message displayed if the Custom regex fails
             */
        	var defaults = {
                formSubmitTrigger: "submit",
                enableRealtimeChecking: true,
                cssErrorClass: "juvi_error_div",
                requiredMessage: "This field is required",
                errorMessageAlpha: "Please enter a valid string [min] [max]",
                errorMessageMobile: "Please enter a valid mobile number i.e. 0821234567 [min] [max]",
                errorMessageEmail: "Please enter a valid email address i.e. joe@somewhere.com",
                errorMessageNumber: "Please enter a valid numeric value i.e. 12345 [min] [max]",
                errorMessageIPV4: "Please enter a valid IPV4 address i.e. 192.168.1.23",
                errorMessageIPV6: "Please enter a valid IPV6 address i.e. 1050:0:0:0:5:600:300c:326b",
                errorMessageURL: "Please enter a valid URL i.e. http://www.somewhere.com",
                errorMessageCreditCard: "Please enter a valid Credit Card number i.e. 4111111111111111",
                errorMessageDate: "Please enter a valid date i.e. [format]",
                errorMessageBoolean: "This field is required",
                errorMessageCustom: "This field is invalid"
            };
        	
        	// Extend our default options with those provided
        	scopeOptions = $.extend(defaults, options);
        	
        	//Capture form id to which the plugin is linked
        	var formId = $(this).attr("id");
        	
        	//Run through each form fields
        	$("#"+formId).find(":input").each(function(){
        		//Only add events if realtime checking is enabled
        		if (scopeOptions.enableRealtimeChecking){
	        		//Monotor key press for text fields and clicks for boolean fields
	        		if ($(this).is(':checkbox') || $(this).is(':radio')) {
	        			//Append click event listening to the object
	        		    $.fn.validateForm.monitorClick($(this));
	        		} else {
	        			//Append keypress event listening to the object
	        		    $.fn.validateForm.monitorKeyPress($(this));
	        		}
        		}
        	});
        	
        	//Check if the form is being submitted
            $("#"+scopeOptions.formSubmitTrigger).click(function(){
            	//Re-set isValid flag
            	$.fn.validateForm.setValid(true);
            	
            	//Run through each form fields
            	$("#"+formId).find(":input").each(function(){
            		//Perform validation checks and logic
            		$.fn.performValidationRitual($(this));
            	});
            });
        },
        isValid : function( ) {
            return $.fn.validateForm.isValid();
        }
    };

    //Declare function - The method name to call is passed as a parameter
    $.fn.validateForm = function( method, options ) {
        // Method calling logic
        if ( methods[method] ) {
            return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
            return methods.init.apply( this, arguments );
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.validateForm' );
        }    
    };
    
    //This function performs all checks and setups required to validate a field
    $.fn.performValidationRitual = function(object) {
		//Set a global variable accessible throughout the entire plugin equal to the current field
		scopeObject = object;
		
		//Retrieve JUVI properties for the current field and populates the globsl variables accordingly
		//NB IT IS IMPORTANT TO FIRST ACQUIRE THE FIELD PROPERETIES BEFORE ATTEMPTING ANY VALIDATION
		$.fn.validateForm.retrieveFieldProperties();
		
		//Proceed if the field has been declared as validator worthy
		if (scopeObject.validatorType){
			//Exclude checkboxes and radio buttons from this check
			if (!scopeObject.is(':checkbox') && !scopeObject.is(':radio')) {
				//Check if field is required
    			if ($.fn.validateForm.fieldIsRequired()){
					//Check if field is empty or if it is populated with the required error message
		    		if (scopeObject.fieldValue == null || scopeObject.fieldValue == "" || scopeObject.fieldValue == scopeOptions.requiredMessage){
		    			$.fn.validateForm.markFieldRequired();
		    			//[return true;] causes a [continue;] command in a loop. [return false;] would have equalled a [break;]
		    			return true;
		    		} else {
		    			//Remove error from element
		    			$.fn.validateForm.removeError();
		    		}
			    }
			}
			
			//Set error message based on validatorType
			$.fn.validateForm.setErrorMessage();
			//Set the regular expression for the validator type
			$.fn.validateForm.setRegexPattern();
				
			//Switch to field's validator type
			switch(scopeObject.validatorType) {
			    case "alpha":
			    	//Do nothing
			      break;
			    case "mobile":
			    	//Do nothing
			      break;
			    case "email":
			    	//Do nothing
			      break;
			    case "number":
			    	//Do nothing
			      break;
			    case "ipv4":
			    	//Do nothing
			      break;
			    case "ipv6":
			    	//Do nothing
			      break;
			    case "url":
			    	//Do nothing
			      break;
			    case "creditcard":
			    	//Do nothing
			      break;
			    case "date":
			    	//Check if a date error was flagged with the regex patterns, and handle error accordingly
			    	if (scopeErrorFlag == "date"){
    			    	$.error( 'Date format ' +  scopeObject.validatorTypeDateFormat + ' is not currently supported' );
    	    			return true; //Continue loop...
			    	}
			    	break;
			    case "boolean":
			    	$.fn.validateBooleanField();
			    	return true; //Continue loop...
			      break;
			    case "custom":
			    	//Check if a custom error was flagged with the regex patterns, and handle error accordingly
			    	if (scopeErrorFlag == "custom"){
			    	    $.error( 'You need to define a regular expression pattern for custom validator fields' );
			    	    return true; //Continue loop...
			    	}
			      break;
			    default:
			    	scopeObject.removeClass(scopeOptions.cssErrorClass);
			}
			
			//Exclude checkboxes and radio buttons from this check
			if (!scopeObject.is(':checkbox') && !scopeObject.is(':radio')) {
				//Perform validation on field
				$.fn.validateRegexField();
			}
		}
    }
    
    //This function validates a field which relies on regular expressions for its validation test
    $.fn.validateRegexField = function() {
    	//Create a regex object with the pattern to test
    	var regx = new RegExp(scopeObject.regexPattern);
        if (((scopeObject.fieldValue != "" && scopeObject.fieldValue != null) && !regx.test(scopeObject.fieldValue)) || scopeObject.fieldValue == scopeErrorMessage) {
        	//Add error to element
        	$.fn.validateForm.setError(scopeErrorMessage);
        } else {
        	//Remove error from element
        	$.fn.validateForm.removeError();
        }
    }
    
    //This function determines if a boolean field has been checked
    $.fn.isBooleanFieldChecked = function(object) {
    	//Assign default object if object is not defined
    	if (!object || object=="undefined"){
    		object = scopeObject;
    	}
    	return object.prop("checked");
    }
    //This function determines if a boolean field is a radio button
    $.fn.isBooleanFieldRadio = function(object) {
    	//Assign default object if object is not defined
    	if (!object || object=="undefined"){
    		object = scopeObject;
    	}
    	if (object.attr("type") == "radio"){
    		return true;
    	}
    	return false;
    }
    //This function determines if a boolean field is part of a group (only applicable to radio buttons)
    $.fn.getRadioGroupName = function(object) {
    	//Assign default object if object is not defined
    	if (!object || object=="undefined"){
    		object = scopeObject;
    	}
    	if ($.fn.isBooleanFieldRadio(object)){
    		//Extract group name
    		var groupName = object.attr('name');
			//Check if a name is set
			if (groupName != "undefined") {
				return groupName;
			}
    	}
    	return false;
    }
    
    //This function validates a boolean field i.e. check boxes, radio buttons etc
    $.fn.validateBooleanField = function() {
    	//Check if the is required 
    	if (scopeObject.validatorTypeRequired == "true".toLowerCase()){
    		//Capture the group name of the current field if it exists
    		var groupName = $.fn.getRadioGroupName();
	    	
	    	//Add error if check box or radio button is not set 
	    	if (!$.fn.isBooleanFieldChecked()){
	    		//Define the leading object which will contain error divs
	    		var groupLeader = false;
	    		//If group name exists, it means that the field is a radio button and part of a groups
	    		if (groupName){
	    			//Set flag for logic handling
	    			var booleanIsSet = false;
	    			//Run through radio buttons with the same name (which means that they are grouped and the user can only select one)
	            	$("input[name="+groupName+"]").each(function(){
	            		//Assign group leader if it not set
	            		if (!groupLeader){
	            			groupLeader = $(this);
	            		}
	            		//Check if any radio button in group is set
	            		if($.fn.isBooleanFieldChecked($(this))){
	            			booleanIsSet = true;
	            			//Break loop
	            			return false;
	            		}
	            	});
	            	//Flag error if radio button is not checked
            		if (!booleanIsSet){
            			//Proceed if a group leader could be identified
            			if (groupLeader){
		            		//alert("set error "+groupLeader.attr("id") + " - scope="+scopeObject.attr("id"));
		            		//Add error to element
		    				$.fn.validateForm.setError(scopeErrorMessage, groupLeader);
            			}
            		}
	    		} else {
	    			//Add error to element
					$.fn.validateForm.setError(scopeErrorMessage);
	    		}
	    	} else {
	    		//If group name exists, it means that the field is a radio button and part of a groups
	    		if (groupName){
	    			//Run through radio buttons with the same name (which means that they are grouped and the user can only select one)
	            	$("input[name="+groupName+"]").each(function(){
	            		//alert("remove error "+$(this).attr("id")+ " - scope="+scopeObject.attr("id"));
	            		//Remove error from current element
					    $.fn.validateForm.removeError($(this));
					    //Break loop
            			return false;
	            	});
	    		} else {
	    			//Remove error from current element
				    $.fn.validateForm.removeError();
	    		}
	    	}
    	}
    }
    
    //Retrieve the JUVI properties for an object (field) and assign the extracted values to the global variables
    $.fn.validateForm.retrieveFieldProperties = function () {
    	//////////////HTML/////////////
    	//Capture field id
    	scopeObject.fieldId = scopeObject.attr("id");
		//Capture value from field
    	scopeObject.fieldValue = scopeObject.val();
		
		//////////////JUVI/////////////
    	//Capture the validator type
    	scopeObject.validatorType = scopeObject.attr("_juvi_type");
		//Capture property determining if the field is required
    	scopeObject.validatorTypeRequired = scopeObject.attr("_juvi_required");
		//Capture custom error message for field
    	scopeObject.validatorTypeErrorMessage = scopeObject.attr("_juvi_error_message");
		//Capture the validator type minimum length
    	scopeObject.validatorTypeMinLength = scopeObject.attr("_juvi_min_length");
		//Capture the validator type minimum length
    	scopeObject.validatorTypeMaxLength = scopeObject.attr("_juvi_max_length");
    	//Capture the date format if specified
    	scopeObject.validatorTypeDateFormat = scopeObject.attr("_juvi_date_format");
    	//Capture the date format if specified
    	scopeObject.regexPattern = scopeObject.attr("_juvi_pattern");
    };
    
    //Function to set if the JUVI field validation passed all criteria
    $.fn.validateForm.setValid = function (value) {
    	isValid = value;
    }
    //Function to isValid field value
    $.fn.validateForm.isValid = function () {
    	return isValid;
    }
    
    //Function to determine if the field is required
    $.fn.validateForm.fieldIsRequired = function () {
    	//If the validatortypelength is greater than zero, or the required property is explicitly set, required is true
		if ((scopeObject.validatorTypeMinLength > "0") || (scopeObject.validatorTypeRequired == "true".toLowerCase())){
			return true;
		}
		
		return false;
    }
    
    //Remove an error from the field
    $.fn.validateForm.setErrorMessage = function () {
    	//Set default error message per field type if no custom error message was specified for the field
    	if (!scopeObject.validatorTypeErrorMessage || scopeObject.validatorTypeErrorMessage == ""){
    		if (scopeObject.validatorType == "alpha"){
	    		//Override the default error message if set by the user
	    		scopeErrorMessage = scopeOptions.errorMessageAlpha;
    	    } else if (scopeObject.validatorType == "mobile"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageMobile;
    		} else if (scopeObject.validatorType == "email"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageEmail;
    		} else if (scopeObject.validatorType == "number"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageNumber;
    		} else if (scopeObject.validatorType == "ipv4"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageIPV4;
    		} else if (scopeObject.validatorType == "ipv6"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageIPV6;
    		} else if (scopeObject.validatorType == "url"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageURL;
    		} else if (scopeObject.validatorType == "creditcard"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageCreditCard;
    		} else if (scopeObject.validatorType == "date"){
		    	//Override the default error message if set by the user
		    	scopeErrorMessage = scopeOptions.errorMessageDate;
		    	//Replace tokens with values
		    	scopeErrorMessage = scopeErrorMessage.replace("[format]", scopeObject.validatorTypeDateFormat);
    		} else if (scopeObject.validatorType == "boolean"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageBoolean;
    		} else if (scopeObject.validatorType == "custom"){
    			//Override the default error message if set by the user
    			scopeErrorMessage = scopeOptions.errorMessageCustom;
    		}
    	} else {
    		scopeErrorMessage = scopeObject.validatorTypeErrorMessage;
    	}
    	
        //Replace tokens with values
    	if (scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMinLength != ""){
    		scopeErrorMessage = scopeErrorMessage.replace("[min]", " with a minimum of "+scopeObject.validatorTypeMinLength+" characters");
    	} else {
    		scopeErrorMessage = scopeErrorMessage.replace("[min]", "");
    	}
    	
    	if (scopeObject.validatorTypeMaxLength && scopeObject.validatorTypeMaxLength != ""){
    		scopeErrorMessage = scopeErrorMessage.replace("[max]", " and a maximum of "+scopeObject.validatorTypeMaxLength+" characters");
    	} else {
    		scopeErrorMessage = scopeErrorMessage.replace("[max]", "");
    	}
    }
    
  //Remove an error from the field
    $.fn.validateForm.setRegexPattern = function () {
    	//Assign regex pattern depending on validatorType
		if (scopeObject.validatorType == "alpha"){
			//Create a regex pattern based on conditions
			scopeObject.regexPattern = "^(.)$";
	    	if (scopeObject.validatorTypeMinLength && ! scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^(.){"+scopeObject.validatorTypeMinLength+",}$";
	    	} else if (!scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^(.){,"+scopeObject.validatorTypeMaxLength+"}$";
	    	} else if (scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^(.){"+scopeObject.validatorTypeMinLength+","+scopeObject.validatorTypeMaxLength+"}$";
	    	}
	    } else if (scopeObject.validatorType == "mobile"){
	    	//Create a regex pattern based on conditions
	    	scopeObject.regexPattern = "^([0-9]){10}$";
	    	if (scopeObject.validatorTypeMinLength && ! scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^([0-9]){"+scopeObject.validatorTypeMinLength+",}$";
	    	} else if (!scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^([0-9]){,"+scopeObject.validatorTypeMaxLength+"}$";
	    	} else if (scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^([0-9]){"+scopeObject.validatorTypeMinLength+","+scopeObject.validatorTypeMaxLength+"}$";
	    	}
		} else if (scopeObject.validatorType == "email"){
			/*
			 * Most common email patterns supported
			 * SOURCE: http://en.wikipedia.org/wiki/Email_address
			 * 
			 * niceandsimple@example.com
             * very.common@example.com
             * a.little.lengthy.but.fine@dept.example.com
			 */
			//Define the regex pattetn
			scopeObject.regexPattern = "^([a-zA-Z0-9_\.\-])+\@([a-zA-Z0-9\-])+([.][a-zA-Z0-9]{2,})+$";
		} else if (scopeObject.validatorType == "number"){
			//Create a regex pattern based on conditions
			scopeObject.regexPattern = "^([0-9])$";
	    	if (scopeObject.validatorTypeMinLength && ! scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^([0-9]){"+scopeObject.validatorTypeMinLength+",}$";
	    	} else if (!scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^([0-9]){,"+scopeObject.validatorTypeMaxLength+"}$";
	    	} else if (scopeObject.validatorTypeMinLength && scopeObject.validatorTypeMaxLength){
	    		scopeObject.regexPattern = "^([0-9]){"+scopeObject.validatorTypeMinLength+","+scopeObject.validatorTypeMaxLength+"}$";
	    	}
		} else if (scopeObject.validatorType == "ipv4"){
			//Define the regex pattetn as per [http://net.tutsplus.com/tutorials/other/8-regular-expressions-you-should-know/]
			scopeObject.regexPattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";
		} else if (scopeObject.validatorType == "ipv6"){
			/*
	    	 * Most IPV6 formats supported (see below)
	    	 * SOURCE: http://publib.boulder.ibm.com/infocenter/iseries/v5r3/index.jsp?topic=%2Frzai2%2Frzai2ipv6addrformat.htm
	    	 * Supported Ips:
	    	 *  IPv6 address                         - 1050:0000:0000:0000:0005:0600:300c:326b
	    	 *  IPv6 address (short hand)            - 1050:0:0:0:5:600:300c:326b
	    	 *  IPv6 address (colon)                 - ff06:0:0:0:0:0:0:c3
	    	 *  IPv6 address (colon short)           - ff06::c3
	    	 *  IPV4 mapped IPV6                     - 0:0:0:0:0:ffff:192.1.56.10
	    	 *  IPV4 compatible IPV6                 - 0:0:0:0:0:0:192.1.56.10
	    	 *  // NOT SUPPORTED
	    	 *  IPV4 mapped IPV6 (short hand)        - ::ffff:192.1.56.10/96
	    	 *  IPV4 compatible IPV6 (short hand)    - ::192.1.56.10/96
	    	 */
	    	//Define the regex pattetn as per [http://stackoverflow.com/questions/53497/regular-expression-that-matches-valid-ipv6-addresses]
			scopeObject.regexPattern = "^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:)))(%.+)?\s*$";
		} else if (scopeObject.validatorType == "url"){
			//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
			scopeObject.regexPattern = "^(http|https|ftp)\://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?\,\'/\\\+&amp;%\$#\=~])*[^\.\,\)\(\s]$";
		} else if (scopeObject.validatorType == "creditcard"){
			//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
			scopeObject.regexPattern = "^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$";
		} else if (scopeObject.validatorType == "date"){
			//Create an array with date formats linked to regex
	    	var supportedFormats = new Array();
	    	//4-digit year i.e. 1999
	    	supportedFormats["yyyy-dd-mm"] = "^\[0-9]{4}[\-](0[1-9]|[12][0-9]|3[01])[\-](0[1-9]|1[012])$";
	    	supportedFormats["yyyy/dd/mm"] = "^[0-9]{4}[\/](0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])$";
	    	supportedFormats["dd-mm-yyyy"] = "^(0[1-9]|[12][0-9]|3[01])[\-](0[1-9]|1[012])[\-][0-9]{4}$";
	    	supportedFormats["dd/mm/yyyy"] = "^(0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])[\/][0-9]{4}$";
	    	supportedFormats["yyyy-mm-dd"] = "^[0-9]{4}[\-](0[1-9]|1[012])[\-](0[1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["yyyy/mm/dd"] = "^[0-9]{4}[\/](0[1-9]|1[012])[\/](0[1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["mm-dd-yyyy"] = "^(0[1-9]|1[012])[\-](0[1-9]|[12][0-9]|3[01])[\-][0-9]{4}$";
	    	supportedFormats["mm/dd/yyyy"] = "^(0[1-9]|1[012])[\/](0[1-9]|[12][0-9]|3[01])[\/][0-9]{4}$";
	    	//2-digit year i.e. 99
	    	supportedFormats["yy-dd-mm"] = "^\[0-9]{2}[\-](0[1-9]|[12][0-9]|3[01])[\-](0[1-9]|1[012])$";
	    	supportedFormats["yy/dd/mm"] = "^[0-9]{2}[\/](0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])$";
	    	supportedFormats["dd-mm-yy"] = "^(0[1-9]|[12][0-9]|3[01])[\-](0[1-9]|1[012])[\-][0-9]{2}$";
	    	supportedFormats["dd/mm/yy"] = "^(0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])[\/][0-9]{2}$";
	    	supportedFormats["yy-mm-dd"] = "^[0-9]{2}[\-](0[1-9]|1[012])[\-](0[1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["yy/mm/dd"] = "^[0-9]{2}[\/](0[1-9]|1[012])[\/](0[1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["mm-dd-yy"] = "^(0[1-9]|1[012])[\-](0[1-9]|[12][0-9]|3[01])[\-][0-9]{2}$";
	    	supportedFormats["mm/dd/yy"] = "^(0[1-9]|1[012])[\/](0[1-9]|[12][0-9]|3[01])[\/][0-9]{2}$";
	    	//4-digit year i.e. 1999. 1 digit month and day
	    	supportedFormats["yyyy-d-m"] = "^\[0-9]{4}[\-]([1-9]|[12][0-9]|3[01])[\-]([1-9]|1[012])$";
	    	supportedFormats["yyyy/d/m"] = "^[0-9]{4}[\/]([1-9]|[12][0-9]|3[01])[\/]([1-9]|1[012])$";
	    	supportedFormats["d-m-yyyy"] = "^([1-9]|[12][0-9]|3[01])[\-]([1-9]|1[012])[\-][0-9]{4}$";
	    	supportedFormats["d/m/yyyy"] = "^([1-9]|[12][0-9]|3[01])[\/]([1-9]|1[012])[\/][0-9]{4}$";
	    	supportedFormats["yyyy-m-d"] = "^[0-9]{4}[\-]([1-9]|1[012])[\-]([1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["yyyy/m/d"] = "^[0-9]{4}[\/]([1-9]|1[012])[\/]([1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["m-d-yyyy"] = "^([1-9]|1[012])[\-]([1-9]|[12][0-9]|3[01])[\-][0-9]{4}$";
	    	supportedFormats["m/d/yyyy"] = "^([1-9]|1[012])[\/]([1-9]|[12][0-9]|3[01])[\/][0-9]{4}$";
	    	//2-digit year i.e. 99. 1 digit month and day
	    	supportedFormats["yy-d-m"] = "^\[0-9]{2}[\-]([1-9]|[12][0-9]|3[01])[\-]([1-9]|1[012])$";
	    	supportedFormats["yy/d/m"] = "^[0-9]{2}[\/]([1-9]|[12][0-9]|3[01])[\/]([1-9]|1[012])$";
	    	supportedFormats["d-m-yy"] = "^([1-9]|[12][0-9]|3[01])[\-]([1-9]|1[012])[\-][0-9]{2}$";
	    	supportedFormats["d/m/yy"] = "^([1-9]|[12][0-9]|3[01])[\/]([1-9]|1[012])[\/][0-9]{2}$";
	    	supportedFormats["yy-m-d"] = "^[0-9]{2}[\-]([1-9]|1[012])[\-]([1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["yy/m/d"] = "^[0-9]{2}[\/]([1-9]|1[012])[\/]([1-9]|[12][0-9]|3[01])$";
	    	supportedFormats["m-d-yy"] = "^([1-9]|1[012])[\-]([1-9]|[12][0-9]|3[01])[\-][0-9]{2}$";
	    	supportedFormats["m/d/yy"] = "^([1-9]|1[012])[\/]([1-9]|[12][0-9]|3[01])[\/][0-9]{2}$";
	    	
	    	//Capture the date format if specified
    		if (!scopeObject.validatorTypeDateFormat || scopeObject.validatorTypeDateFormat == ""){
    			scopeObject.validatorTypeDateFormat = 'yyyy-mm-dd';//Set default if not specified
    		}
    		
    		//Check if the date format specified is supported
    		if (!supportedFormats[scopeObject.validatorTypeDateFormat]){
    			//Set error flag
    			scopeErrorFlag = scopeObject.validatorType;
    		}
	    	
	    	//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
    		scopeObject.regexPattern = supportedFormats[scopeObject.validatorTypeDateFormat];
		} else if (scopeObject.validatorType == "boolean"){
			scopeObject.regexPattern = "";
		} else if (scopeObject.validatorType == "custom"){
			//Throw an exception if no regular expression is defined for the custom field
	    	if (!scopeObject.regexPattern || scopeObject.regexPattern == ""){
	    		//Set error flag
    			scopeErrorFlag = scopeObject.validatorType;
	    	}
		}
    }
    
    //Function to mark the field as required
    $.fn.validateForm.markFieldRequired = function () {
		//Add error to element
    	$.fn.validateForm.setError(scopeOptions.requiredMessage);
    }
    
    //Set an error on the field
    $.fn.validateForm.setError = function (errorMsg, object) {
    	//Assign default object if object is not defined
    	if (!object || object=="undefined"){
    		object = scopeObject;
    	}
    	//Set validation status to false
    	$.fn.validateForm.setValid(false);
    	//Remove any errors from element
    	 $.fn.validateForm.removeError(object);
    	//Add div with error message
    	 object.after("<div class=\""+scopeOptions.cssErrorClass+"\">"+errorMsg+"</div>");
    }
    
    //Remove an error from the field
    $.fn.validateForm.removeError = function (object) {
    	//Assign default object if object is not defined
    	if (!object || object=="undefined"){
    		object = scopeObject;
    	}
    	object.nextAll("div").remove();
    }
    
    //Remove an error from the field
    $.fn.validateForm.monitorKeyPress = function (object) {
    	//Attach a keypress event to the current object
    	object.keyup(function(){
    		//Perform validation checks and logic
    		$.fn.performValidationRitual($(this));
    	});
    }
    
    //Remove an error from the field
    $.fn.validateForm.monitorClick = function (object) {
    	//Attach a keypress event to the current object
    	object.click(function(){
    		//Perform validation checks and logic
    		$.fn.performValidationRitual($(this));
    	});
    }
})( jQuery );