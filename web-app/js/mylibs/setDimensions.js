$(document).ready(function(){

var width = $(document).width();
var height = 0.5*$(document).height();
var docHeight = $(document).height();
if(width >= 768){
$("#main_container").fadeOut(0);
$("footer").fadeOut(0);
$("#bowlG").css({
	"width":0.426*height+"px",
	"height":0.426*height+"px",
	"top" : height/2 - (0.426*height)/2+"px",
	"left" : width/2 - (0.426*height)/2+"px"
	});
	
	$("#bowl_ringG").css({
	"width":0.426*height+"px",
	"height":0.426*height+"px",
	"border":0.038*height+"px solid #D94438",
	"-moz-border-radius":0.426*height+"px",
	"-webkit-border-radius":0.426*height+"px",
	"border-raidus":0.426*height+"px"
	});
	$(".ball_holderG").css({
		"width":0.114*height+"px",
		"height":0.426*height+"px",
		"left":0.157*height+"px",
		"top":0+"px"
		});
		
	$(".ballG").css({
		"left":0+"px",
		"top":-0.099*height+"px",
		"width":0.171*height+"px",
		"height":0.171*height+"px",
		"-moz-border-radius":0.1417*height+"px",
		"-webkit-border-radius":0.1417*height+"px",
		"border-raidus":0.1417*height+"px"			
		});	
	

var menuWidth = 0.76*width;
var circleWidth = 0.18*menuWidth;
var borderWidth = 0.007*menuWidth;
var marginWidth = 0.004*menuWidth;
var radius = (circleWidth+borderWidth+marginWidth)/2;
var menuHeight = circleWidth + borderWidth + marginWidth;



var ratioM1 = 555/1510;
var heightM1 = 1.61*height;
var hiddenM1 = 0.7*height;
var ratioM2 = 408/1044;
var hiddenM2 = 0.25*height;
var heightM2 = 1.21*height;


 
 var ratioCirculo = 1000/1133;
 var circuloHeight = 2*height;

 var circuloWidth = circuloHeight * ratioCirculo;
 var iconFont = 0.25*height;
 var iconLine = 0.1*height;
 var mainFontSize = 0.18*iconFont;
 var mainLineHeight = 1.4*mainFontSize;
 var mainTop = 0.1173*height;
 var mainHeight = 0.1853*height;
 var mainWidth = 2.125*mainHeight;
 var mainMargin = mainWidth/2;
 
 var innerRectHeight = (Math.sin(Math.PI / 4) * circuloWidth);
 var innerRectWidth = innerRectHeight*1.1 * ratioCirculo;
 var realInnerHeight = innerRectHeight - mainHeight*1.1 - iconLine -iconFont;
	
 


$(".ca-menu").css({
	"width": menuWidth+"px",
	"height": circleWidth+borderWidth+marginWidth+"px",
	"marginLeft":(width/2) - (menuWidth/1.95) + "px",
	/*"marginTop" : (height/2) - (menuHeight/2)+"px"*/
	});
$(".ca-menu li").css({
	"width": circleWidth+"px",
	"height":circleWidth+"px",
	"border" : borderWidth+"px solid",
	"borderRadius": radius+"px",
	"margin":0+"px"	
	});
$("#middle").css({
	"width": circleWidth*1.5+"px",
	"height":circleWidth*1.5+"px",
	"border" : borderWidth+"px solid #F58634",
	"borderRadius": radius*1.5+"px",
	"marginLeft":-0.045*menuWidth+"px",
	"marginTop":-(circleWidth)/4+"px",
	"zIndex" : "100"	
	});

$("#left").css({

	"border" : borderWidth+"px solid #93325e"
	});
$("#left2").css({
	
	
	"border" : borderWidth+"px solid #056995"
	});
$("#rightMiddle").css({
	
	"marginLeft":-0.045*menuWidth+"px",
	"border" : borderWidth+"px solid #6e8c47"
	});
$("#right").css({
	
	"border" : borderWidth+"px solid #e58837"
	});
	
$("#marrano1").css({
	"width": ratioM1*heightM1+"px",
	"height": heightM1+"px",
	"position": "absolute",
	"top": -hiddenM1+"px",
	"left": "15%"
	
	});
	$("#marrano2").css({
	"width": ratioM2*heightM2+"px",
	"height": heightM2+"px",
	"position": "absolute",
	"top": -hiddenM2+"px",
	"left": "50%"
	
	});
	$("#marrano1").hover(function(){
		$(this).animate({
     	'-moz-transform':'rotate(88deg)',
     	'-webkit-transform':'rotate(88deg)',
     	'-o-transform':'rotate(88deg)',
     	'-ms-transform':'rotate(88deg)'
		});		
	});
	
	$("#circulo1").css({
		"position":"absolute",
		"width" : circuloWidth+"px",
		"height": circuloHeight+"px",
		"left": (width/2)	- (circuloWidth/2) +"px",
		"top": (docHeight/2)	- (circuloHeight/2) +"px",
		});
	$("#circulo2").css({
		"position":"absolute",
		"width" : circuloWidth+"px",
		"height": circuloHeight+"px",
		"left": (width/2)	- (circuloWidth/2) +"px",
		"top": (docHeight/2)	- (circuloHeight/2) +"px",
		});
		$("#circulo3").css({
		"position":"absolute",
		"width" : circuloWidth+"px",
		"height": circuloHeight+"px",
		"left": (width/2)	- (circuloWidth/2) +"px",
		"top": (docHeight/2)	- (circuloHeight/2) +"px",
		});
		$("#circulo4").css({
		"position":"absolute",
		"width" : circuloWidth+"px",
		"height": circuloHeight+"px",
		"left": (width/2)	- (circuloWidth/2) +"px",
		"top": (docHeight/2)	- (circuloHeight/2) +"px",
		});
		$("#circulo5").css({
		"position":"absolute",
		"width" : circuloWidth+"px",
		"height": circuloHeight+"px",
		"left": (width/2)	- (circuloWidth/2) +"px",
		"top": (docHeight/2)	- (circuloHeight/2) +"px",
		});

		
		$("#middle").click(function(e){
			e.preventDefault();
			$("#circulo1").css({
				"top" : docHeight + circuloHeight+"px"
				});
			$("#marrano1").fadeOut(200);
			$("#marrano2").fadeOut(200);
			$("#screen").fadeIn(300,function(){
				$("#circulo1").fadeIn(100);
					$("#circulo1").animate({
						"top": (docHeight/2) - (circuloHeight)/2 +"px"
						},1000,function(){
                        var distHeight = docHeight/2 - circuloHeight/2;
                        var html = '<a class="close-button" href="#"><img src="images/red_close.png"  style="position: absolute; z-index: 99999; top: '+distHeight+'px; left" width="'+iconFont/2+'px"  height="'+iconFont/2+'px" alt="Cerrar"></a>';
                        $("body").append(html);
                    });

				});				
				
			});
			
		$("#left").click(function(e){
			e.preventDefault();
			$("#circulo2").css({
				"top" : docHeight + circuloHeight+"px"
				});
			$("#marrano1").fadeOut(200);
			$("#marrano2").fadeOut(200);
			$("#screen").fadeIn(300,function(){
				$("#circulo2").fadeIn(100);
					$("#circulo2").animate({
						"top": (docHeight/2) - (circuloHeight)/2 +"px"
						},1000,function(){
                        var distHeight = docHeight/2 - circuloHeight/2;
                        var html = '<a class="close-button" href="#"><img src="images/red_close.png"  style="position: absolute; z-index: 99999; top: '+distHeight+'px; left" width="'+iconFont/2+'px"  height="'+iconFont/2+'px" alt="Cerrar"></a>';
                        $("body").append(html);
                    });
				});				
				
			});
			$("#left2").click(function(e){
			e.preventDefault();
			$("#circulo3").css({
				"top" : docHeight + circuloHeight+"px"
				});
			$("#marrano1").fadeOut(200);
			$("#marrano2").fadeOut(200);
			$("#screen").fadeIn(300,function(){
				$("#circulo3").fadeIn(100);
					$("#circulo3").animate({
						"top": (docHeight/2) - (circuloHeight)/2 +"px"
						},1000,function(){
                        var distHeight = docHeight/2 - circuloHeight/2;
                        var html = '<a class="close-button" href="#"><img src="images/red_close.png"  style="position: absolute; z-index: 99999; top: '+distHeight+'px; left" width="'+iconFont/2+'px"  height="'+iconFont/2+'px" alt="Cerrar"></a>';
                        $("body").append(html);
                    });
				});				
				
			});
			$("#rightMiddle").click(function(e){
			e.preventDefault();
			$("#circulo4").css({
				"top" : docHeight + circuloHeight+"px"
				});
			$("#marrano1").fadeOut(200);
			$("#marrano2").fadeOut(200);
			$("#screen").fadeIn(300,function(){
				$("#circulo4").fadeIn(100);
					$("#circulo4").animate({
						"top": (docHeight/2) - (circuloHeight)/2 +"px"
						},1000,function(){
                        var distHeight = docHeight/2 - circuloHeight/2;
                        var html = '<a class="close-button" href="#"><img src="images/red_close.png"  style="position: absolute; z-index: 99999; top: '+distHeight+'px; left" width="'+iconFont/2+'px"  height="'+iconFont/2+'px" alt="Cerrar"></a>';
                        $("body").append(html);
                    });
				});				
				
			});
			$("#right").click(function(e){
			e.preventDefault();
			$("#circulo5").css({
				"top" : docHeight + circuloHeight+"px"
				});
			$("#marrano1").fadeOut(200);
			$("#marrano2").fadeOut(200);
			$("#screen").fadeIn(300,function(){
				$("#circulo5").fadeIn(100);
					$("#circulo5").animate({
						"top": (docHeight/2) - (circuloHeight)/2 +"px"
						},1000,function(){
                        var distHeight = docHeight/2 - circuloHeight/2;
                        var html = '<a class="close-button" href="#"><img src="images/red_close.png"  style="position: absolute; z-index: 99999; top: '+distHeight+'px; left" width="'+iconFont/2+'px"  height="'+iconFont/2+'px" alt="Cerrar"></a>';
                        $("body").append(html);
                    });
				});				
				
			});
			
		$("#screen").click(function(e){
			$('[id^="circulo"]').fadeOut(100,function(){
					$("#screen").fadeOut(200);
					$("#marrano1").fadeIn(200);
					$("#marrano2").fadeIn(200);
                    $(".close-button").remove();
				});
							
			});

    $(".close-button").live('click',function(e){
        e.preventDefault();
        $('[id^="circulo"]').fadeOut(100,function(){
            $("#screen").fadeOut(200);
            $("#marrano1").fadeIn(200);
            $("#marrano2").fadeIn(200);
        });

        $(this).remove();
    });
			
			$(".ca-icon").css({
				"fontSize" : iconFont+"px",
				"lineHeight": iconLine+"px",
				"height": iconLine+"px",
				"top": iconLine/2+"px"
				
				});
				
				$(".ca-main").css({
				"fontSize" : mainFontSize+"px",
				"width": mainWidth+"px",
				"height": mainHeight+"px",
				"top": circleWidth/2 +"px",
				"marginLeft": -mainMargin+"px",
				"lineHeight" : iconLine*0.4+"px"					
					});
					$(".ca-sub").css({
				"fontSize" : mainFontSize+"px",
				"width": mainWidth+"px",
				"height": mainHeight+"px",
				"top": circleWidth/2 +"px",
				"marginLeft": -mainMargin+"px",
				"lineHeight" : iconLine*0.4+"px"						
					});
					
			$(".big-title").css({
					"width": 0.9*circuloWidth+"px",
					"height" : "auto",
					"fontSize": mainFontSize * 3,
					"lineHeight" : mainFontSize*3+"px",
					"top": 0.1*circuloHeight +"px",
					"color" : "#ffffff",
					"marginLeft" : -(0.9*circuloWidth)/2+"px",
					"fontWeight" : "normal",
					"padding" : "0px"				
				});
				/*
				$(".long-title").css({
					"top": mainHeight/2 +"px",
								
				});*/
					
		$(".main-text").css({
				"fontSize" : mainFontSize+"px",
				"width": innerRectWidth+"px",
				"height": realInnerHeight+"px",
				"top": 0.3*circuloHeight+"px",
				"marginLeft": -innerRectWidth/2 +"px",
				"lineHeight" : mainLineHeight+"px",
			});
			
		$(".long").css({
			"top": 0.3*circuloHeight+"px",
			"fontSize" : mainFontSize*0.9+"px",
			
			"height": realInnerHeight*1.5+"px"
			});
		$(".social-link").css({
			"width": 0.0745*height+"px",
			"height": 0.0745*height+"px",
			"margin-right": 0.011*height+"px"			
			});
		$("#social-links").css({
			"width": (0.0745*height)*4 + (0.011*height * 4)*1.1+"px",
			"height": (0.0745*height)+"px",
			"top": 0.053*height+"px", 
			"right": 0.213*height+"px"			
			});
}
else {
    var icons = [];
    var titles = [];
    var subtitles = [];
    var texts = [];
    var a = 2;

    $(".ca-menu .ca-icon").each(function(i,e){
        icons.push($(this).html());
        var id = $(this).attr('id');
        titles.push($("#title"+id).html());
        subtitles.push ($("#subtitle"+id).html());

        texts.push($("#circulo"+a+" p").html());
        if(i != 2){
            a++;
        }

    });
    texts.push($("#circulo1 p").html());


    $(".content").html("");

    var i = 0;
    var html = "";
    while(i < icons.length)
    {
        if(titles[i])
        {

            html += '<div class="mobile-div" id="mobile_div_'+i+'">'
                +'<div class="mobile-icon">'+icons[i]+'</div>'
                +'<div class="mobile-titles">'
                +'<div class="mobile-header"><a class="mobile-trigger" href="#" rel="mobile_div_'+i+'"><h1>'+titles[i]+'</h1></a></div>'

                +'</div>'
                +'</div>';


        }

        i++;
    }
    var first = '<div class="mobile-div" id="mobile_div_5">'
        +'<div class="mobile-icon">N</div>'
        +'<div class="mobile-titles">'
        +'<div class="mobile-header"><a class="mobile-trigger" href="#" rel="mobile_div_5"><h1>¿Qué Es Nest5?</h1></a></div>'
        +'</div>'
        +'</div>';
    $(".content").append(first);
    $(".content").append(html);


    $(".mobile-trigger").live('click',function(e){
        e.preventDefault();
        $(".mobile-explanation").each(function(i, e){
            $(this).remove();
        });
        var rel = $(this).attr('rel');
        var sep = rel.split('_');
        var num = sep[2];
        var html = '<div class="mobile-explanation">'+texts[num]+'</div>';
        $(this).parent().append(html);
    });
}

	});