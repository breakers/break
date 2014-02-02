<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "cc_ruta"); %>

<div class="main-container" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed');
		} catch (e) {
		}
	</script>

	<div class="main-container-inner">
		<a class="menu-toggler" id="menu-toggler" href="#"> <span
			class="menu-text"></span>
		</a>

		<%@ include file="contenido_bar.jsp"%>

			<div class="main-content">
				<div class="breadcrumbs breadcrumbs-fixed" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed');
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="home.jsp">Home</a>
						</li>
						<!-- ########### Modificar Pagina -->
						<li class="active"><fmt:message key="label.Categoria" /></li>
					</ul>
					<!-- .breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off"> <i
								class="icon-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<!-- ########### Modificar Pagina -->
						<h1>
							<fmt:message key="label.Categoria" />
							<small> <i class="icon-double-angle-right"></i> <fmt:message
									key="label.Ruta" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">


						<!-- PAGE CONTENT BEGINS -->
						<div class="col-xs-12">
							<div class="row">
								<div class="col-sm-4">
									<div class="widget-box">
										<div class="widget-header">
											<h4>Direcciones</h4>
										</div>

										<div class="widget-main no-padding">
											<form>
												<fieldset>
													<label>Punto 1</label> 
													<input type="text" placeholder="Sedapar" /> 
													<label class="pull-right">
														<button class="btn btn-xs btn-danger" value="-16.411667,-71.532967" id="punto1"
															onclick="location.href='#EliminarPunto';"> Eliminar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>

												<fieldset>
													<label>Punto 2</label> 
													<input type="text" placeholder="Cibertec Miraflores" /> 
													<label class="pull-right">
														<button class="btn btn-xs btn-danger" value="-12.122165,-77.027813" id="punto2"
															onclick="location.href='#EliminarPunto';"> Eliminar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>

												<fieldset>
													<label>Punto 3</label> 
													<input type="text" placeholder="Parque Francisco Mostajo" /> 
													<label class="pull-right">
														<button class="btn btn-xs btn-danger" value="-16.412472,-71.532063" id="punto3"
															onclick="location.href='#EliminarPunto';"> Eliminar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>
												<div class="form-actions center">
													<button class="btn btn-xs btn-success"
															onclick="location.href='#AgregarDireccion';"> Agregar Direccion
															<i class="icon-plus-sign"></i>
													</button>
												</div>

												<div class="form-actions center">
													<button type="button" class="btn btn-primary" onclick="calcRuta()"> Generar Ruta
															<i class="icon-share"></i>
													</button>
												</div>



											</form>
										</div>
									</div>

									<div class="space-6"></div>

									<div class="widget-box">
										<div class="widget-header widget-header-small">
											<h5 class="lighter">Ruta sugerida</h5>
										</div>

										<div class="widget-body">
											<div class="widget-main" id="directions-panel"></div>
										</div>
									</div>
								</div>

								<div class="col-sm-8">
									<div class="widget-box">
										<div class="widget-header">
											<h4>Mapa Arequipa</h4>
											<span class="widget-toolbar">
														
														<a href="javascript:void(0);" onclick="mostrardirecciones();" data-action="reload">Mostrar Solicitudes Pendientes
															<i class="icon-refresh"></i>

														</a>
											</span>
										</div>

										<div id="map-canvas"></div>
									</div>


								</div>
							</div>



						</div>







						<!-- /row -->

						<!-- PAGE CONTENT ENDS -->

						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->

			<!-- /#ace-settings-container -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script src="js/jquery.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document.write("<script src='js/jquery-2.0.3.min.js'>"
						+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document.write("<script src='js/jquery.mobile.custom.min.js'>"
					+ "<"+"/script>");
	</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="js/excanvas.min.js"></script>
		<![endif]-->


	<!-- ace scripts -->

	<script src="js/ace-elements.min.js"></script>
	<script src="js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
<!-- Estilos y Script de Google Maps -->
<style>
html,body,#map-canvas {
	height: 100%;
	margin: 0px;
	padding: 0px
}

</style>
<style>
#directions-panel {
	height: 100%;
	float: right;
	width: 390px;
	overflow: auto;
}

#map-canvas {
	width: 100%;
	height: 500px;
}

#control {
	background: #fff;
	padding: 5px;
	font-size: 14px;
	font-family: Arial;
	border: 1px solid #ccc;
	box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
	display: none;
}

@media print {
	#map-canvas {
		height: 500px;
		margin: 0;
	}
	#directions-panel {
		float: none;
		width: auto;
	}
}
</style>
<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script type="text/javascript">
	var directionsDisplay;
	var directionsService = new google.maps.DirectionsService();
	var map;

	function initialize() {
		directionsDisplay = new google.maps.DirectionsRenderer();
		var centro = new google.maps.LatLng(-16.411667, -71.532967);
		var mapOptions = {
			zoom : 18,
			center : centro,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('map-canvas'),
				mapOptions);
		directionsDisplay.setMap(map);
		directionsDisplay.setPanel(document.getElementById('directions-panel'));
	}

	function calcRuta() {
		var lista = [];
		lista.push(document.getElementById('punto1').value.split(","));
		lista.push(document.getElementById('punto2').value.split(","));
		lista.push(document.getElementById('punto3').value.split(","));

		var punto1 = [ lista[0][0], lista[0][1] ];
		var punto2 = [];
		var punto3 = [];

		var a = Math.pow((lista[1][0] - lista[0][0]), 2);
		var b = Math.pow((lista[1][1] - lista[0][1]), 2);
		var distancia0a1 = Math.pow(a + b, (1 / 2));

		a = Math.pow((lista[2][0] - lista[0][0]), 2);
		b = Math.pow((lista[2][1] - lista[0][1]), 2);
		var distancia0a2 = Math.pow(a + b, (1 / 2));

		if (distancia0a1 < distancia0a2) {
			punto2 = [ lista[1][0], lista[1][1] ];
			punto3 = [ lista[2][0], lista[2][1] ];
		} else {
			punto2 = [ lista[2][0], lista[2][1] ];
			punto3 = [ lista[1][0], lista[1][1] ];
		}
		var puntosMedios = [];
		puntosMedios.push({
			location : new google.maps.LatLng(parseFloat(punto2[0]),
					parseFloat(punto2[1])),
			stopover : true
		});

		var request = {
			origin : new google.maps.LatLng(parseFloat(punto1[0]),
					parseFloat(punto1[1])),
			destination : new google.maps.LatLng(parseFloat(punto3[0]),
					parseFloat(punto3[1])),
			travelMode : google.maps.TravelMode.DRIVING,
			waypoints : puntosMedios,
			optimizeWaypoints : true
		};

		directionsService.route(request, function(response, status) {
			if (status == google.maps.DirectionsStatus.OK) {
				directionsDisplay.setDirections(response);
			}
		});

	}

	function mostrardirecciones(){

	var lista = [];
	lista.push(document.getElementById('punto1').value.split(","));
	lista.push(document.getElementById('punto2').value.split(","));
	lista.push(document.getElementById('punto3').value.split(","));

	var punto1 = [ lista[0][0], lista[0][1] ];
	var punto2 = [ lista[2][0], lista[2][1] ];

	var latitud1 = parseFloat(punto1[0]);
	var longitud1 = parseFloat(punto1[1]);


	var coordenadas1 = new google.maps.LatLng(latitud1, longitud1); /* Debo crear un punto geografico utilizando google.maps.LatLng */
    var marcador1 = new google.maps.Marker({position: coordenadas1,map: map, animation: google.maps.Animation.DROP, title:"Sedapar"});

    //alert(coordenadas1);

    var latitud2 = parseFloat(punto2[0]);
	var longitud2 = parseFloat(punto2[1]);

	
	
	var coordenadas2 = new google.maps.LatLng(latitud2, longitud2); /* Debo crear un punto geografico utilizando google.maps.LatLng */
    var marcador2 = new google.maps.Marker({position: coordenadas2,map: map, animation: google.maps.Animation.DROP, title:"Parque"});

    //alert(coordenadas2);
}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Fin Estilos y Script de Google Maps -->

	<div class="tooltip top in"
		style="top: 447px; left: 980px; display: none;">
		<div class="tooltip-inner">social networks : 38.7%</div>
	</div>
<%@ include file="contenido_foot.jsp"%>