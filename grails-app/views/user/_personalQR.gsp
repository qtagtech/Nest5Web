<%--
  Created by IntelliJ IDEA.
  User: Jonatan
  Date: 10/05/12
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>






<header class="profile-header">

    <h1>Tu identificación en La Experiencia Nest5</h1>


    <div class="clear"></div><div class="clear"></div><br><br>

</header>

<section>

    <canvas id="myCanvas" width="" height="" style="display: none;"></canvas>
    <img id="canvasImg" alt="Clic derecho para guardar">

    <div class="clearfix"></div>
    <div id="saveButtons"></div>
   %{-- <input type="submit" id="saveProfile" value="Pon tu código como imagen de perfil en Facebook y Twitter">
    <input type="submit" value="Imprime una imagen Grande Para Ganar Puntos">--}%


    <a style="display:none" id="popCaller" href="#popContent" title=""></a>
    <div style="display: none; width: 20px;" id="popContent"></div>
    <a id="prueba"></a>






</section>

<script>
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
            images[src].crossOrigin = '';
        }
    }

    function startQR(images)  {

        var canvas = document.getElementById("myCanvas");
        var divW = $(canvas).parent().width();
        $(canvas).attr('width',divW+'px');
        $(canvas).attr('height',divW+'px');
        var context = canvas.getContext("2d");

        var sources = {
            logo: "${resource(dir: 'images', file: 'logo_qr.png')}",
            qrcode: "${createLink(uri: "/user/createQR")}",
            background: "${resource(dir: 'images', file: 'fondo_qr.png')}",
            footer: "${resource(dir: 'images', file: 'dir_qr.png')}"
        };

        loadImages(sources, function(images) {

            var logoW = 0.8958 * divW;
            var logoH = logoW / 2.34908;
            var qrW = 0.38 * divW;
            var footerW = 0.976976977 * divW;
            var footerH = footerW / 4.560747664;
            context.drawImage(images.background, 0, 0,divW,divW);
            context.drawImage(images.logo, divW/2 - logoW / 2, 0,logoW,logoH);
            context.drawImage(images.footer, divW/2 - footerW/2, divW - footerH, footerW, footerH);
            //images.qrcode.src = 'http://www.nest5.com/yourQRcode.jpg';

            context.drawImage(images.qrcode, divW/2 - qrW/2, logoH + 20, qrW, qrW);
            var dataURL = canvas.toDataURL();
            document.getElementById("canvasImg").src = dataURL;

        });
    };

    function CanvasSaver(url) {

        this.url = url;

        this.savePNG = function(cnvs, fname) {
            if(!cnvs || !url) return;
            fname = fname || 'picture';

            var data = cnvs.toDataURL("image/png");
            data = data.substr(data.indexOf(',') + 1).toString();


            var dataInput = document.createElement("input");
//            dataInput.setAttribute("type","file");
            dataInput.setAttribute("name", 'imgdata');
            dataInput.setAttribute("value", data);

            var nameInput = document.createElement("input");
            nameInput.setAttribute("name", 'name');
            nameInput.setAttribute("value", fname + '.png');

            var myForm = document.createElement("form");
            myForm.method = 'post';
            myForm.action = url;
            myForm.enctype = "multipart/form-data"
            myForm.appendChild(dataInput);
            myForm.appendChild(nameInput);

            document.body.appendChild(myForm);
            myForm.submit();
            document.body.removeChild(myForm);
        };

        this.generateButton = function (label, cnvs, fname) {
            var btn = document.createElement('button'), scope = this;
            btn.innerHTML = label;
//            btn.style['class'] = 'canvassaver';
            btn.addEventListener('click', function(){scope.savePNG(cnvs, fname);}, false);

//            document.body.appendChild(btn);
            $("#saveButtons").append(btn);

            return btn;
        };
    }
    startQR();
    var canvas = document.getElementById("myCanvas");
    var cs = new CanvasSaver('http://www.nest5.com/user/downloadQR');
    cs.generateButton('¡Clic para Guardar la Imagen!', canvas, 'myimage');


</script>

