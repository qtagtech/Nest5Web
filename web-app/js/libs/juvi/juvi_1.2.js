/**
 * JQuery User Validate Input (JUVI) - Plugin 
 * @author        C.A.Parkin http://www.capembryonic.com
 * 
 * Licence        : GPU (General Public Usage)
 * Last Updated   : 2012-08-13
 * Version        : 1.2
 * JQuery Version : 1.7.2
 */

//Create JUVI error style class
var errorCssClassString = 
       '<style> \
	        .juvi_error_div{ \
	            position: absolute; \
                \
	            background-color: #FFF0F5; \
	            \
	            width: auto; \
	            height: 20px; \
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
	//Determines if the form is valid
	var isValid = true;
	
    var methods = {
        init : function( options ) {
        	//Define plugin defaults
            /**
             * formSubmitTrigger = the id of the element which will trigger a form submit gesture from the user
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
        	var options = $.extend(defaults, options);
        	
        	//Capture form id to which the plugin is linked
        	var formId = $(this).attr("id");
        	
        	//Check if the form is being submitted
            $("#"+options.formSubmitTrigger).click(function(){
            	//Re-set isValid flag
            	isValid = true;
            	
            	//Run through each form field
            	$("#"+formId).find(":input").each(function(){
            		//Capture the validator type
            		var validatorType = $(this).attr("_juvi_type");
            		var validatorTypeRequired = $(this).attr("_juvi_required");
            		var validatorTypeErrorMessage = $(this).attr("_juvi_error_message");
            		//Capture the validator type minimum length
            		var validatorTypeMinLength = $(this).attr("_juvi_min_length");
            		//Capture the validator type minimum length
            		var validatorTypeMaxLength = $(this).attr("_juvi_max_length");
            		//Default required to false. If min length is greater than zero or
            		//validatorTypeRequired is explicitly set, it becomes true
            		var required = false;
            		if ((validatorTypeMinLength > "0") || (validatorTypeRequired == "true".toLowerCase())){
            			required = true;
            		}
            		//Capture field id
            		fieldId = $(this).attr("id");
            		//Capture value from field
            		value = $(this).val();
            		
            		//Proceed with some logical checks if the field is required
            		if (required){
            			//Exclude checkboxes and radio buttons from this check
            			if (!$(this).is(':checkbox') && !$(this).is(':radio')) {
	            			//Check if the value is empty or equal to the default message
		            		if (value == "" || value == options.requiredMessage){
		            			//Add error to element
	                        	addError($(this), options.requiredMessage, options.cssErrorClass);
		            			//Set validation status to false
		            			isValid = false;
		            			
		            			//Check if the field is being focused on
	                            $(this).focus(function(){
	                            	if (($(this).val() == options.requiredMessage)){
	                            		$(this).val("");
	                            	}
	                            });
		            			//[return true;] causes a [continue;] command in a loop. [return false;] would have equalled a [break;]
		            			return true;
		            		} else {
		            			//Remove error from element
	                        	removeError($(this));
		            		}
            		    }
            		}
            		
            		//Proceed if the field has been declared as validator worthy
            		if (validatorType){
            			//Define variables used
            			var regexPattern = "";
            			var errorMsg = validatorTypeErrorMessage;
            				
            			//Switch to field's validator type
            			switch(validatorType) {
            			    case "alpha":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageAlpha;
            			    	}
            			        //Replace tokens with values
            			    	if (validatorTypeMinLength && validatorTypeMinLength != ""){
            			    	    errorMsg = errorMsg.replace("[min]", " with a minimum of "+validatorTypeMinLength+" characters");
            			    	} else {
            			    		errorMsg = errorMsg.replace("[min]", "");
            			    	}
            			    	
            			    	if (validatorTypeMaxLength && validatorTypeMaxLength != ""){
            			    	    errorMsg = errorMsg.replace("[max]", " and a maximum of "+validatorTypeMaxLength+" characters");
            			    	} else {
            			    		errorMsg = errorMsg.replace("[max]", "");
            			    	}
            			    	
            			    	//Create a regex pattern based on conditions
            			    	regexPattern = "^(.)$";
            			    	if (validatorTypeMinLength && ! validatorTypeMaxLength){
            			    		regexPattern = "^(.){"+validatorTypeMinLength+",}$";
            			    	} else if (!validatorTypeMinLength && validatorTypeMaxLength){
            			    		regexPattern = "^(.){,"+validatorTypeMaxLength+"}$";
            			    	} else if (validatorTypeMinLength && validatorTypeMaxLength){
            			    		regexPattern = "^(.){"+validatorTypeMinLength+","+validatorTypeMaxLength+"}$";
            			    	}
            			      break;
            			    case "mobile":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageMobile;
            			    	}
            			    	
            			    	//Replace tokens with values
            			    	if (validatorTypeMinLength && validatorTypeMinLength != ""){
            			    	    errorMsg = errorMsg.replace("[min]", " with a minimum of "+validatorTypeMinLength+" characters");
            			    	} else {
            			    		errorMsg = errorMsg.replace("[min]", "");
            			    	}
            			    	
            			    	if (validatorTypeMaxLength && validatorTypeMaxLength != ""){
            			    	    errorMsg = errorMsg.replace("[max]", " and a maximum of "+validatorTypeMaxLength+" characters");
            			    	} else {
            			    		errorMsg = errorMsg.replace("[max]", "");
            			    	}
            			    	
            			    	//Create a regex pattern based on conditions
            			    	regexPattern = "^([0-9]){10}$";
            			    	if (validatorTypeMinLength && ! validatorTypeMaxLength){
            			    		regexPattern = "^([0-9]){"+validatorTypeMinLength+",}$";
            			    	} else if (!validatorTypeMinLength && validatorTypeMaxLength){
            			    		regexPattern = "^([0-9]){,"+validatorTypeMaxLength+"}$";
            			    	} else if (validatorTypeMinLength && validatorTypeMaxLength){
            			    		regexPattern = "^([0-9]){"+validatorTypeMinLength+","+validatorTypeMaxLength+"}$";
            			    	}
            			      break;
            			    case "email":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageEmail;
            			    	}
            			    	
            			    	//Define the regex pattetn
            			    	regexPattern = "^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$";
            			      break;
            			    case "number":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageNumber;
            			    	}
            			    	
            			        //Replace tokens with values
            			    	if (validatorTypeMinLength && validatorTypeMinLength != ""){
            			    	    errorMsg = errorMsg.replace("[min]", " with a minimum of "+validatorTypeMinLength+" characters");
            			    	} else {
            			    		errorMsg = errorMsg.replace("[min]", "");
            			    	}
            			    	
            			    	if (validatorTypeMaxLength && validatorTypeMaxLength != ""){
            			    	    errorMsg = errorMsg.replace("[max]", " and a maximum of "+validatorTypeMaxLength+" characters");
            			    	} else {
            			    		errorMsg = errorMsg.replace("[max]", "");
            			    	}
            			    	
            			    	//Create a regex pattern based on conditions
            			    	regexPattern = "^([0-9])$";
            			    	if (validatorTypeMinLength && ! validatorTypeMaxLength){
            			    		regexPattern = "^([0-9]){"+validatorTypeMinLength+",}$";
            			    	} else if (!validatorTypeMinLength && validatorTypeMaxLength){
            			    		regexPattern = "^([0-9]){,"+validatorTypeMaxLength+"}$";
            			    	} else if (validatorTypeMinLength && validatorTypeMaxLength){
            			    		regexPattern = "^([0-9]){"+validatorTypeMinLength+","+validatorTypeMaxLength+"}$";
            			    	}
            			      break;
            			    case "ipv4":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageIPV4;
            			    	}
            			    	
            			    	//Define the regex pattetn as per [http://net.tutsplus.com/tutorials/other/8-regular-expressions-you-should-know/]
            			    	regexPattern = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";
            			      break;
            			    case "ipv6":
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
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageIPV6;
            			    	}
            			    	
            			    	//Define the regex pattetn as per [http://stackoverflow.com/questions/53497/regular-expression-that-matches-valid-ipv6-addresses]
            			    	regexPattern = "^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])(.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}))|:)))(%.+)?\s*$";
            			      break;
            			    case "url":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageURL;
            			    	}
            			    	
            			    	//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
            			    	regexPattern = "^(http|https|ftp)\://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?\,\'/\\\+&amp;%\$#\=~])*[^\.\,\)\(\s]$";
            			      break;
            			    case "creditcard":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageCreditCard;
            			    	}
            			    	
            			    	//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
            			    	regexPattern = "^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$";
            			      break;
            			    case "date":
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
                        		var validatorTypeDateFormat = $(this).attr("_juvi_date_format");
                        		if (!validatorTypeDateFormat || validatorTypeDateFormat == ""){
                        			validatorTypeDateFormat = 'yyyy-mm-dd';//Set default if not specified
                        		}
                        		
                        		//Check if the date format specified is supported
                        		if (!supportedFormats[validatorTypeDateFormat]){
                        			$.error( 'Date format ' +  validatorTypeDateFormat + ' is not currently supported' );
                        			return true; //Continue loop...
                        		}
                        		
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageDate;
            			    	}
            			    	
            			    	//Replace tokens with values
            			    	errorMsg = errorMsg.replace("[format]", validatorTypeDateFormat);
            			    	
            			    	//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
            			    	regexPattern = supportedFormats[validatorTypeDateFormat];
            			    	break;
            			    case "boolean":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageBoolean;
            			    	}
            			    	
            			    	//Flag to determine if boolean is valid
            			    	var booleanValid = false;
            			    	
            			    	//Define the regex pattetn as per [http://regexlib.com/UserPatterns.aspx?authorId=bc9a9257-9f79-43f4-8fa4-dcde9642023d]
            			    	regexPattern = "";
            			    	
            			    	//Check if the is required 
            			    	if (validatorTypeRequired == "true".toLowerCase()){
            			    		//Capture the field type
            			    		var fieldType = $(this).attr("type");
            			    		//Check if check box or radio button is set
                			    	var checked = $(this).prop("checked");
                			    	//Add error if check box or radio button is not set 
                			    	if (!checked){
                			    		//Check if the field is of type radio button
                			    		if (fieldType == "radio"){
                			    			//Capture the name of the radio button
                			    			var radioName = $(this).attr('name');
                			    			//Check if a name is set
                			    			if (radioName != "undefined") {
	                			    			//Run through radio buttons with the same name (which means that they are grouped and the user can only select one)
	                			            	$("input[name="+radioName+"]").each(function(){
	                			            		//Check if any of the radio buttons in the group are checked
	                			            		if ($(this).prop("checked")){
	                			            			//Set boolean to valid
	                			            			booleanValid = true;
	                			            		}
	                			            	});
                			    			}
                			    		}
                			    	} else {
                			    		//Set boolean to valid
                			    		booleanValid = true;
                			    	}
            			    	}
            			      break;
            			    case "custom":
            			    	//Set default error message per field type if no custom error message was specified for the field
            			    	if (!validatorTypeErrorMessage || validatorTypeErrorMessage == ""){
            			    		//Override the default error message if set by the user
            			    		errorMsg = options.errorMessageCustom;
            			    	}
            			    	
            			    	//Capture the custom regex pattern
                        		regexPattern = $(this).attr("_juvi_pattern");
            			    	
                        		//Throw an exception if no regular expression is defined for the custom field
            			    	if (regexPattern == ""){
            			    		$.error( 'You need to define a regular expression pattern for custom validator fields' );
            			    	}
            			      break;
            			    default:
            			    	$(this).removeClass(options.cssErrorClass);
            			}
            			
            			//Exclude checkboxes and radio buttons from this check
            			if ($(this).is(':checkbox') || $(this).is(':radio')) {
            				//Check if boolean was valid
            				if (!booleanValid){
            					//Add error to element
	                        	addError($(this), errorMsg, options.cssErrorClass);
		            			//Set valid as false
		            			isValid = false;
            				} else {
            					//Remove error from element
	                        	removeError($(this));
            				}
            			} else {
	            			//Create a regex object with the pattern to test
	    			    	var regx = new RegExp(regexPattern);
	    			    	//alert("value="+value+" -- regexpass="+alphaRegx.test(value)+" -- pattern="+regexPattern);
	                        if (((value != "") && !regx.test(value)) || value == errorMsg) {
	                        	//Add error to element
	                        	addError($(this), errorMsg, options.cssErrorClass);
		            			//Set valid as false
		            			isValid = false;
	                        } else {
	                        	//Remove error from element
	                        	removeError($(this));
	                        }
            			}
            		}
            	});
            });
        },
        isValid : function( ) {
            return isValid;
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
})( jQuery );

//Add an error to an element
function addError(object, errorMsg, cssErrorClass){
	//Remove any errors from element
	removeError(object);
	//Add div with error message
	object.after("<div class=\""+cssErrorClass+"\">"+errorMsg+"</div>");
}

//Remove error froman element
function removeError(object){
	object.nextAll("div").remove();
}