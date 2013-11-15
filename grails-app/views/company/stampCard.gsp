<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title></title>
   <link rel="stylesheet" href="${resource(dir: 'css',file: 'orangebox.css')}" type="text/css" />

   <r:require modules="orangebox,waypoints,gritter"/>
    <script src="http://www.html5canvastutorials.com/libraries/kinetic-v3.10.1.js"></script>
<script>

    var stage;
    var layer;
    var txt;
    function loadImages(sources, callback) {
        var images = {};
        var loadedImages = 0;
        var numImages = 0;
        // get num of sources
        for(var src in sources) {
            numImages++;
        }
        for(var src in sources) {
            images[src] = new Image();
            images[src].onload = function() {
                if(++loadedImages >= numImages) {
                    callback(images);
                }
            };
            images[src].src = sources[src];
        }
    }
    function draw(images,x,y,w,h,f) {




        var pattern = new Kinetic.Image({
            image: images.star_gray,
            x: x,
            y: y,
            width: w,
            height: h,
            draggable: false
        });

                /*
         * bind listeners
         */

        layer.add(pattern);
        layer.draw();
        if(typeof(f)=="function") f(pattern);




    }

    function drawText(text,size)
    {
        layer.remove(txt);
        txt = new Kinetic.Text({"fontFamily":"BebasNeue","text":text,"fontSize":size,"align":"left","verticalAlign":"top","padding":0,"fontStyle":"normal","width":"auto","detectionType":"pixel","shadow":{"blur":1,"alpha":0.5,"offset":{"x":2,"y":2},"color":"black"},"visible":true,"listening":true,"alpha":1,"x":20,"y":20,"scale":{"x":1,"y":1},"rotation":0,"centerOffset":{"x":0,"y":0},"dragConstraint":"none","dragBounds":{},"draggable":false,"textStroke":"black","textFill":"orange","textStrokeWidth":0.1});

        /*
         * bind listeners
         */

        layer.add(txt);
        layer.draw();
    }
</script>
</head>
<body>

<div id="container"></div>

<r:script>
     var width;
     var height;
     var graphics;
     var stars = [];
     var pressing = false;
    $(document).ready(function(){
     width = $("#container").parent().width();
//     alert(width)
     var w = (width - 130)/10;
//     alert(w)
     var h = ((w / 1.055))+40;
//     alert(h)
     height = (h * 3) + 40;
//     alert(height)
    stage = new Kinetic.Stage({
            container: "container",
            width: width - 20,
            height: height
        });
        layer = new Kinetic.Layer();
        stage.add(layer);
        drawText("Selecciona la cantidad de sellos de tu promoción",30);
        $("#container").mousedown(function(e){
        e.preventDefault();
        pressing = true;
        });
        $("#container").mouseup(function(e){
        e.preventDefault();
        pressing = false;
        });
    var sources = {
            star_gray: "${resource(dir: 'images', file: 'estrella_cupon_gray.png')}",
            star_color: "${resource(dir: 'images', file: 'estrella_cupon.png')}"};

       loadImages(sources, function(images) {
       graphics = images;
        var i = 0;
        var x = 10;
        var y = 60;
        var w = (width - 130)/10;
        var h = w / 1.055;
        while (i < 30)
        {
            if((i % 10 == 0) && (i != 0))
            {
                x = 10;
                y += h+10;
            }
          draw(images,x,y,w,h,function(image){

                    stars.push(image);
                    image.id = i;

                    image.on("mouseover touchstart", function() {
                    //this.setImage(images.star_color);
                    selectStars(this.id);
                    //layer.draw();
                });

                image.on("mouseout touchend", function() {
                    //console.log("out of:"+this.id);
                    whipe();
                });

            });
           x += 10 + w;
           i++;
        }



        });


    });

    function selectStars(number)
    {


      if(pressing)
      {
        var i = 0;
       while(i <= number)
       {
        stars[i].setImage(graphics.star_color);

        i++;
       }
       layer.draw();
       var n = number + 1;
       drawText("# de Sellos de la Promoción: "+n,30);
      }

    }

    function whipe()
    {

         if(pressing)
         {
          var j = 0;
                    while(j < 30)
                    {
                     stars[j].setImage(graphics.star_gray);
                     j++;
                    }
                    //this.setImage(images.star_gray);
                    layer.draw();
         }



    }
</r:script>
</body>
</html>