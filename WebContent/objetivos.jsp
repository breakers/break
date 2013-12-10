<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SEDAPAR - Agua para todos</title>
<link href="index/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<script type="text/javascript" src="index/js/jquery.js"></script>
<script type="text/javascript" src="index/js/jquery.carousel.js"></script>
<script type="text/javascript" src="index/js/jquery_carousellite.js"></script>
 <link rel="shortcut icon" href="img/icon.png" type="image/png" />
<link rel="icon" href="img/favicon.ico" type="image/x-icon" />

<script type="text/javascript" language="javascript">
$( document ).ready( function() {
	//LOGOS
	$('#logos ul').carouFredSel({
		items       : 1
	});	
	
	//NOTICIAS
	$(".newsticker").jCarouselLite({
		vertical: true,
		hoverPause:true,
		visible: 2,
		auto:2000,
		speed:500
	});
});
</script>
<!-- Inicio del seguimiento con Google Analytics ADC: 06/06/2012-->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-32472416-1']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
  
  function ingles(){
 // document.writeln("HostName: " + document.location.hostname + "<br/>");
//document.writeln("Protocol: " + document.location.protocol + "<br/>");
//document.writeln("Host: " + document.location.host + "<br/>");
//document.writeln("Port: " + document.location.port + "<br/>");
//document.writeln("PathName: " + document.location.pathname + "<br/>");
//document.writeln("Href: " + document.location.href + "<br/>");
//alert("PathName: " + document.location.pathname );
var url=document.location.pathname;
var part=url.indexOf('/',2);
//alert(url.substring(part+1,url.lenght));
location.href="/ingles/"+url.substring(part+1,url.lenght);
}
  function espanol(){

var url=document.location.pathname;
var part=url.indexOf('/',2);
location.href="/espanol/"+url.substring(part+1,url.lenght);
}

</script>
<!--  fin  del c贸digo Google Analytics -->

</head>

 <body>
<div class="nav_main">
  <div class="contain">
    <div class="logo_trans"><a href="index.jsp"><img src="index/img/sedapar_logo.png" width="200"></a></div>
    <!--NAV-->
    <div id="top-nav">
      <ul id="menu">
        <li class="menu_item"><a href="#"><span>Empresa</span></a>
          <ul class="uno">
            <li>
              <div class="subnav-wrap">
                <div class="subnav support">
                <a class="subnav_a" href="organigrama.jsp">Organigrama</a>
                <a class="subnav_a" href="accionistas.jsp">Accionistas</a>
                <a class="subnav_a" href="mision_vision.jsp">Misi髇, Visi髇 y Valores</a>
                <a class="subnav_a" href="objetivos.jsp">Objetivos</a>
                <a class="subnav_a" href="#">Reconocimientos</a>
                </div>
              </div>
            </li>
          </ul>
        </li>
        <li class="menu_item"><a href="#"><span>Soluciones</span></a>
          <ul class="dos">
            <li>
              <div class="subnav-wrap">
                <div class="subnav support">
                    <a class="subnav_a t1" href="#">Industria</a>
                  <a class="subnav_a" href="naviera.php">Naviera</a>
                  <a class="subnav_a" href="transporte.php">Transporte</a>
                    <a class="subnav_a" href="financiera.php">Financiera</a>
                    <a class="subnav_a" href="salud.php">Salud</a>
                 </div>
                <div class="subnav support">
                    <a class="subnav_a t1" href="#">Tecnolog铆a</a>
                    <a class="subnav_a" href="moviles.php">M贸viles</a>
                    <a class="subnav_a" href="intelligence.php">Business Intelligence</a>
                    <a class="subnav_a" href="integracion.php">Integraci贸n</a>
                    <a class="subnav_a" href="net.php">Net y Java</a>
                  <a class="subnav_a" href="b2b.php">B2B / EDI </a>
                 </div>
                <div class="subnav support">
                    <a class="subnav_a t1" href="#">Soluciones Empresariales</a>
                   <!-- <a class="subnav_a" href="selenne.php">Selenne ERP & BI</a> -->
                  <a class="subnav_a" href="rhpro.php">RH Pro X2</a>
                  <a class="subnav_a" href="logicx.php">Logistix</a>
                  <a class="subnav_a" href="Logistix.php">Logistix 3PL</a>
                  <a class="subnav_a" href="Agemap.php">Agemap</a>
                  </div>
              </div>
            </li>
          </ul>
        </li>
      <li class="menu_item"><a href="#"><span>Proyectos</span></a>
          <ul class="tres">
            <li>
              <div class="subnav-wrap" style="width:335px;">
                <div class="subnav support">
                    <a class="subnav_a t1" href="clientes.php">Clientes</a>
                </div>
                <div class="subnav support">
                    <a class="subnav_a t1" href="#">Casos de 茅xito</a>
                  <a class="subnav_a" href="intermodal.php">DOLE Intermodal</a>
                  <a class="subnav_a" href="delmonte.php">Del Monte</a>
                  <a class="subnav_a" href="tropical.php">Tropical Shipping</a>
                  <a class="subnav_a" href="logics.php">PACER Logistics System</a>
                  <a class="subnav_a" href="smooth.php">PACER SmoothCom Application</a>
                    <a class="subnav_a" href="gem.php">Gate Entry Management</a>
                    <a class="subnav_a" href="patologico.php">Sistema Integral de An谩lisis Patol贸gico</a>
                    <a class="subnav_a" href="profit.php">CLARK Steel  Manufacturing ERP</a>
                </div>
              </div>
            </li>
          </ul>
        </li>
        <li class="menu_item"><a href="alianzas.php"><span>Alianzas</span></a></li>
        <li class="menu_item"><a href="contacto.php"><span>Contactenos</span></a></li>
        <li class="menu_item" style="background-image:none"><a href="login.jsp"><span>Intranet   <i class="icon-lock"></i></span></a></li>
      </ul>
    </div>
    <!--NAV END--> 
    <div class="logo_tss"><a href="#"><img src="index/img/sedaparsito.png" width="50"></a></div>
  </div>
  
</div>
<div class="clear"></div>
<script>
//
	$(document).ready(function(){
	
		$('#soluciones1 ul').slideUp();
		$('#soluciones2 ul').slideUp();
		$('#soluciones3 ul').slideUp();
	
		$('#soluciones1 h1').hover(function () {
			  $('#soluciones1 ul').slideDown();
			  $('#soluciones2 ul').slideUp();
			  $('#soluciones3 ul').slideUp();
		});
		$('#soluciones2 h1').hover(function () {
			  $('#soluciones1 ul').slideUp();
			  $('#soluciones2 ul').slideDown();
			  $('#soluciones3 ul').slideUp();
		});
		$('#soluciones3 h1').hover(function () {
			  $('#soluciones1 ul').slideUp();
			  $('#soluciones2 ul').slideUp();
			  $('#soluciones3 ul').slideDown();
		});
		
	});
</script> 
<script type="text/javascript">
	function notaPrensa()
	{		
		mywindow=window.open ("http://www.tss.com.pe/ES/notaprensa_CMMI3.html","mywindow","resizable=1,width=800,height=700,scrollbars=1,");
		mywindow.moveTo(100, 0); 
	}
</script> 
		<script type="text/javascript">
			$(function() {

				var scrollDuration = 1500;
				var scrollEasing = 'quadratic';

				//	small images carousel
				$('#carousel-small').carouFredSel({
					direction: 'up',
					width: 315,
					height: 220,
					items: {
						visible: 1,
						width: 315,
						height: 220
					},
					align: false,
					pagination: '#navi',
					scroll: {
						fx: 'directscroll',
						duration: scrollDuration,
						timeoutDuration: 6000,
						easing: scrollEasing,
						onBefore: function( data ) {
							data.items.old.animate({
								'margin-right': -100
							}, scrollDuration, scrollEasing);

							data.items.visible.css({
								'margin-right': 120
							}).animate({
								'margin-right': 10
							}, scrollDuration, scrollEasing);


							var index = $(this).triggerHandler( 'currentPosition' );
							if ( index == 0 ) {
								index = $(this).children().length;
							}

							//	trigger the titles carousel
							$('#carousel-title').trigger('slideTo', [ index, 'next' ]);

							//	trigger the large images carousel
							$('#carousel-large').trigger('slideTo', [ index, 'prev' ]);
						}
					}
				});

				//	large images carousel, controlled by the small images carousel
				$('#carousel-large').carouFredSel({
					direction: 'down',
					width: 796,
					height: 271,
					items: {
						visible: 1,
						width: 796,
						height: 271
					},
					align: false,
					auto: false,
					scroll: {
						fx: 'directscroll',
						duration: scrollDuration,
						easing: scrollEasing,
						onBefore: function( data ) {
							data.items.old.animate({
								'margin-left': -140
							}, scrollDuration, scrollEasing);

							data.items.visible.css({
								'margin-left': 160
							}).animate({
								'margin-left': 10
							}, scrollDuration, scrollEasing);
						}
					}
				});

				//	titles carousel, controlled by the small images carousel
				$('#carousel-title').carouFredSel({
					width: 350,
					height: 250,
					items: {
						visible: 1,
						width: 350,
						height: 250
					},
					align: false,
					auto: false,
					scroll: {
						fx: 'directscroll',
						duration: scrollDuration,
						easing: scrollEasing
					}
				});

				//	tweek the pagination to always scroll forward
				$('#navi a')
					.unbind( 'click' )
					.bind( 'click', function( event ) {
						event.preventDefault();
						$('#carousel-small').trigger( 'slideTo', [$(this).index(), true, 'next'] );
					}
				);
			});
		</script>
<style type="text/css">
			
			#wrapper_2 {
				width: 960px;
				height: 271px;
				margin: 0 0 0 -485px;
				position: absolute;
				left: 50%;
				overflow: hidden;
			}
			
			#carousel-title {
				width: 350px;
				height: 100px;
				position: absolute;
				top: 0;
				left: 0;
			}
			#carousel-title p {
				font-family: arial, helvetica, sans-serif;
				line-height:20px;
				font-size: 13px;
				font-weight: bold;
				color: #FFF;
				width: 300px;
				height: 150px;
				margin: 0;
				padding: 100px 40px 0 10px;
				float: left;
			}
			#carousel-title p strong {
				font-size: 20px;
				color: #00D2FF;
				display:block;
			}
			
			#carousel-small,
			#carousel-large {
				position: absolute;
			}
			#carousel-small {
				width: 300px;
				height: 220px;
				bottom: 0;
				left: 0;
				visibility:hidden;
			}
			#carousel-large {
				width: 800px;
				height: 300px;
				top: 0;
				right: 0;
			}
			#carousel-large img {
				display: block;
				margin-left: 10px;
				float: left;
			}
			#carousel-small img {
				display: block;
				margin-right: 10px;
				float: right;
			}
			#navi {
				position: absolute;
				bottom: 0;
				right: 0;
			}
			#navi a {
				border: 1px solid #999;
				background-color: #fff;
				display: block;
				width: 8px;
				height: 8px;
				margin: 0 0 0 4px;
				float: left;
			}
			#navi a:hover {
				background-color: #ccc;
			}
			#navi a.selected {
				background-color: #999;
			}
			#navi a span {
				display: none;
			}
			.slicer {
				position: absolute;
				top: 0;
				left: 155px;
			}
			

		</style>

<div class="banner">
  <div class="contain">
  
  <div id="wrapper_2">
	  <div id="carousel-large">
				<img src="index/img/home/1.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/2.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/3.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/4.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/5.jpg" width="796" height="271" border="0" />
				</div>
			<img class="slicer" src="index/img/home/slicer-title.png" width="198" height="271" border="0" />
			<div id="carousel-small">
				<img src="index/img/home/1.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/2.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/3.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/4.jpg" width="796" height="271" border="0" />
				<img src="index/img/home/5.jpg" width="796" height="271" border="0" />
				</div>
			<div id="carousel-title">
				<p><strong>El agua es indispensable para todos</strong></p>
				<p><strong>No deje que el agua se vaya por el fregadero.</strong> &#161;Nuestra vida esta a punto de hacerlo!</p>
				<p><strong>Megaproyecto de agua y alcantarillado</strong> para Lima y Callao</p>
				<p><strong>La mejor Atenci&oacuten al Cliente</strong> siempre en contacto</p>
				<p><strong>Soluciones integrales</strong> para el mercado global</p>
			</div>
			<!--<div id="navi"></div>-->
	</div>
  </div>
</div>
<div class="wrapper">
  <div class="contain home">
    <div class="CENTER">     


<!-- CONTENIDO -->
<h1>Objetivos</h1>
<strong>OBJETIVOS ESTRAT蒅ICOS 2008-2012</strong><br><br>
<ul>
<li>OE1. MEJORAR Y AMPLIAR SERVICIOS DE AGUA POTABLE Y ALCANTARILLADO</li>
<li>OE2. ASEGURAR LA SOSTENIBILIDAD ECON覯ICA DE LA EMPRESA.</li>
<li>OE3. MEJORAR LA GESTI覰 EMPRESARIAL.</li>
<li>OE4. CREAR LA IMAGEN INSTITUCIONAL.</li>
</ul>   
      <!-- end CENTER --></div>
      	<div class="RIGHT"><img src="index/img/menu_empresa/objetivo.jpg" align="right"  />
			</div>
    <!-- end contain home --></div>
  <!-- end wrapper --></div>
  
<div class="clear"></div>

<div class="container foot"></div>
<div class="container" id="FOOTER">
  <h1>MAPA DEL SITE</h1>
  <table>
    <tr>
      <td><h1><a href="index.jsp">Inicio</a></h1>
        <h1>Nuestra empresa</h1>
        <p><a href="organigrama.jsp">Organigrama </a></p>
        <p><a href="accionistas.jsp">Accionistas</a></p>
        <p><a href="mision_vision.jsp">Misi髇, Visi髇 y Valores</a></p>
        <p><a href="objetivos.jsp">Objetivos</a></p>
        <p><a href="#">Reconocimientos </a><br>
        </p></td>
      <td class="line_vert"><h1>Soluciones</h1>
        <h1> Industria </h1>
        <p><a href="naviera.php">Naviera </a></p>
        <p><a href="transporte.php">Transporte</a></p>
        <p><a href="financiera.php">Financiera </a></p>
        <p><a href="salud.php">Salud </a></p>
        <br />
        <h1>&nbsp;</h1>
        <h1>&nbsp;</h1></td>
      <td><h1>&nbsp;</h1>
        <h1>Tecnolog铆a </h1>
        <p><a href="moviles.php">M贸viles </a></p>
        <p><a href="intelligence.php">Business Intelligence</a></p>
        <p><a href="integracion.php">Integraci贸n</a></p>
        <p><a href="net.php">Net y Java </a></p>
        <p><a href="b2b.php">B2B / EDI </a></p></td>
      <td><h1>&nbsp;</h1>
        <h1>Soluciones Empresariales </h1>
        <!-- <p><a href="selenne.php">Selenne ERP</a></p> -->
        <p><a href="rhpro.php">RH Pro X2</a></p>
        <p><a href="logicx.php">Logistix </a></p>
        <p><a href="Logistix.php ">Logistix 3PL </a></p>
        <p><a href="Agemap.php">Agemap  </a></p>
        </td>
      <td class="line_vert"><h1>Proyectos </h1>
        <p><a href="clientes.php">Clientes </a></p>
        <p><a href="intermodal.php">Casos de 茅xito</a></p>
        <h1><a href="alianzas.php"><br />
          </a></h1></td>
      <td class="line_vert"><h1><a href="alianzas.php">Alianzas estrat茅gicas </a></h1>
        <h1><a href="prensa.php">Prensa</a></h1>
        <h1><a href="contacto.php">Cont谩ctenos </a></h1></td>
      <td><h1><a href="trabajo.php">Trabaje con nosotros</a></h1>
        <li class="social">
          <ul>
            <li class="job"><a href="trabajo.php"></a></li>
            <li class="lin"><a href="http://www.linkedin.com/company/trans-solutions-system" target="_blank"></a></li>
            <li class="fb"><a href="https://www.facebook.com/home.php#!/TransSolutionsSystems" target="_blank"></a></li>
            <li class="twi"><a href="https://twitter.com/_TranSolutions" target="_blank"></a></li>
          </ul>
        </li>
    </tr>
  </table>
<!-- Inserta bot贸n +1 de Google. ADC: 06/06/2012 --> 
<!-- Place this tag where you want the +1 button to render. -->
<div class="g-plusone" data-size="medium" data-annotation="inline" data-width="120" data-callback="plusone_vote" data-href="the_permalink()"></div>

</div>
<div class="copy">
  <table>
    <tr>
      <td colspan="2"><h1>SEDAPAR S.A.</h1></td>
      <td><img src="index/img/bullet_1.png" /></td>
      <td><img src="index/img/bullet_1.png" alt="" /></td>
      <td><img src="index/img/bullet_1.png" alt="" /></td>
    </tr>
    <tr>
      <td><em>T</em> (51.1) 417 7100<br />
        <em>F</em> (51.1) 446 7685<br /></td>
      <td><em>D</em> Jorge Ch谩vez 263 Of. 401 - 501<br />
        &nbsp;&nbsp;&nbsp;L 18, Per煤</td>
      <td><a href="mailto:postmaster@tss.com.pe">postmaster@tss.com.pe</a><br />
        <a href="http://www.trans-i.com">www.trans-i.com</a></td>
      <td><a href="../ES/"><strong>Espa帽ol</strong></a><br />
        <a href="../EN/"><strong>English</strong></a></td>
      <td>Copyright 漏 2013 Breakers.</td>
    </tr>
  </table>
</div>
<!-- Place this tag after the last +1 button tag. --> 
<script type="text/javascript">
  window.___gcfg = {lang: 'es-419'};
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script> 
<!-- Inserta bot贸n de LinkedIn. ADC: 23/07/2012 --> 
<script src="//platform.linkedin.com/in.js" type="text/javascript"></script> 
<script type="IN/FollowCompany" data-id="LinkedIn" data-counter="right"></script> 

<!--Start VisitorTrack Code 4.0--> 
<script type="text/javascript">
imgsrc = location.protocol + '//www.visitortracklog.com/loghit.asp?id=107187&vr=4.0&rp=' + escape(document.referrer) + '&pa=' + escape(document.URL);
document.write('<img border="0" alt="" src="' + imgsrc + '">');
</script> 
<!--End VisitorTrack Code-->
</body>
</html>