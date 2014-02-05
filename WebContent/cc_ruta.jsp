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
													<input type="text" id="txtDir1" name="txtDir1"  placeholder="Direccion 1" readonly="true" /> 
													<input type="text" id="txtCor1" name="txtCor1" hidden="true" />
													<input type="text" id="txtIdSol1" name="txtIdSol1" hidden="true" /> 
													<label class="pull-right">
														<button class="btn btn-xs btn-danger" type="reset"> Quitar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>
											</form>
											<form>
												<fieldset>
													<label>Punto 2</label> 
													<input type="text" id="txtDir2" name="txtDir2"  placeholder="Direccion 2" readonly="true" /> 
													<input type="text" id="txtCor2" name="txtCor2" hidden="true" /> 
													<input type="text" id="txtIdSol2" name="txtIdSol2" hidden="true" />
													<label class="pull-right">
														<button class="btn btn-xs btn-danger"  type="reset"> Quitar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>
											</form>
											<form>
												<fieldset>
													<label>Punto 3</label> 
													<input type="text" id="txtDir3" name="txtDir3" placeholder="Direccion 3" readonly="true"/> 
													<input type="text" id="txtCor3" name="txtCor3" hidden="true" /> 
													<input type="text" id="txtIdSol3" name="txtIdSol3" hidden="true" />
													<label class="pull-right">
														<button class="btn btn-xs btn-danger"  type="reset"> Quitar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>
										</form>
											<form>
												<fieldset>
													<label>Punto 4</label> 
													<input type="text" id="txtDir4" name="txtDir4" placeholder="Direccion 4" readonly="true" /> 
													<input type="text" id="txtCor4" name="txtCor4" hidden="true" /> 
													<input type="text" id="txtIdSol4" name="txtIdSol4" hidden="true" />
													<label class="pull-right">
														<button class="btn btn-xs btn-danger"  type="reset"> Quitar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>
											</form>
											<form>
												<fieldset>
													<label>Punto 5</label> 
													<input type="text" id="txtDir5" name="txtDir5" placeholder="Direccion 5" readonly="true" /> 
													<input type="text" id="txtCor5" name="txtCor5" hidden="true" />
													<input type="text" id="txtIdSol5" name="txtIdSol5" hidden="true" /> 
													<label class="pull-right">
														<button class="btn btn-xs btn-danger"  type="reset"> Quitar
															<i class="icon-trash"></i>
														</button>
													</label>
												</fieldset>
											</form>
											
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
		var centro = new google.maps.LatLng(-16.398763888889, -71.536883333333);
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
		
		
		lista.push((((document.getElementById('txtCor1').value).replace(")","")).replace("(","")).split(","));
		lista.push((((document.getElementById('txtCor2').value).replace(")","")).replace("(","")).split(","));
		lista.push((((document.getElementById('txtCor3').value).replace(")","")).replace("(","")).split(","));
		lista.push((((document.getElementById('txtCor4').value).replace(")","")).replace("(","")).split(","));
		lista.push((((document.getElementById('txtCor5').value).replace(")","")).replace("(","")).split(","));

		var punto1 = [ lista[0][0], lista[0][1] ];
		var punto2 = [];
		var punto3 = [];
		var punto4 = [];
		var punto5 = [];
		
		var a = Math.pow((lista[1][0] - lista[0][0]), 2);//
		var b = Math.pow((lista[1][1] - lista[0][1]), 2);//
		var distancia0a1 = Math.pow(a + b, (1 / 2));

		a = Math.pow((lista[2][0] - lista[0][0]), 2);//
		b = Math.pow((lista[2][1] - lista[0][1]), 2);
		var distancia0a2 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[3][0] - lista[0][0]), 2);//
		b = Math.pow((lista[3][1] - lista[0][1]), 2);
		var distancia0a3 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[4][0] - lista[0][0]), 2);//
		b = Math.pow((lista[4][1] - lista[0][1]), 2);
		var distancia0a4 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[2][0] - lista[1][0]), 2);///
		b = Math.pow((lista[2][1] - lista[1][1]), 2);
		var distancia0a5 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[3][0] - lista[1][0]), 2);
		b = Math.pow((lista[3][1] - lista[1][1]), 2);
		var distancia0a6 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[4][0] - lista[1][0]), 2);
		b = Math.pow((lista[4][1] - lista[1][1]), 2);
		var distancia0a7 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[3][0] - lista[2][0]), 2);///
		b = Math.pow((lista[3][1] - lista[2][1]), 2);
		var distancia0a8 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[4][0] - lista[2][0]), 2);
		b = Math.pow((lista[4][1] - lista[2][1]), 2);
		var distancia0a9 = Math.pow(a + b, (1 / 2));
		
		a = Math.pow((lista[4][0] - lista[3][0]), 2);
		b = Math.pow((lista[4][1] - lista[3][1]), 2);
		var distancia0a10 = Math.pow(a + b, (1 / 2));
		

		if (distancia0a1 < distancia0a2) {
			if (distancia0a1 < distancia0a3) {
				if (distancia0a1 < distancia0a4) {
					punto2 = [ lista[1][0], lista[1][1] ];
// 					punto3 = [ lista[4][0], lista[4][1] ];
					if (distancia0a5<distancia0a6) {
						if (distancia0a5<distancia0a7) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// ** 8 ,9
							if(distancia0a8<distancia0a9){
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}
							
							
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							// **
							if(distancia0a9<distancia0a10){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
						}
					}else{
						if (distancia0a6<distancia0a7) {
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 8,10
							if(distancia0a8<distancia0a10){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							// **
							if(distancia0a9<distancia0a10){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
						}
					}
					
				}else{
					punto2 = [ lista[4][0], lista[4][1] ];
// 					punto3 = [ lista[1][0], lista[1][1] ];7,9,10
					if (distancia0a7<distancia0a9) {
						if (distancia0a7<distancia0a10) {
							punto3 = [ lista[1][0], lista[1][1] ];
							// **
							if(distancia0a9<distancia0a10){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 6,8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}else{
						if (distancia0a9<distancia0a10) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// ** 5, 8
							if(distancia0a5<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
							
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 6, 8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}
				}
			}else{
				if (distancia0a3 < distancia0a4) {
					punto2 = [ lista[3][0], lista[3][1] ];
// 					punto3 = [ lista[4][0], lista[4][1] ]; 6,8,10
					if (distancia0a6<distancia0a8) {
						if (distancia0a6<distancia0a10) {
							punto3 = [ lista[1][0], lista[1][1] ];
							// ** 5, 7
							if(distancia0a5<distancia0a7){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
							
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							// ** 7 y 9
							if(distancia0a7<distancia0a9){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}else{
						if (distancia0a8<distancia0a10) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// ** 5,9
							if(distancia0a5<distancia0a9){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							// ** 7,9
							if(distancia0a7<distancia0a9){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}
					
				}else{
					punto2 = [ lista[4][0], lista[4][1] ];
// 					punto3 = [ lista[3][0], lista[3][1] ];
					if (distancia0a7<distancia0a9) {
						if (distancia0a7<distancia0a10) {
							punto3 = [ lista[1][0], lista[1][1] ];
							// ** 5,6
							if(distancia0a5<distancia0a6){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
							
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// **6,8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}else{
						if (distancia0a9<distancia0a10) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// **5,8
							if(distancia0a5<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// **
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}
				}
			}
			
		} else {
			if (distancia0a2 < distancia0a3) {
				if (distancia0a2 < distancia0a4) {
					punto2 = [ lista[2][0], lista[2][1] ];
// 					punto3 = [ lista[4][0], lista[4][1] ];5,8,9
					if (distancia0a5<distancia0a8) {
						if (distancia0a5<distancia0a9) {
							punto3 = [ lista[1][0], lista[1][1] ];
							//6,7
							if(distancia0a6<distancia0a7){
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}
							
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							//6,10
							if(distancia0a6<distancia0a10){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}else{
						if (distancia0a8<distancia0a9) {
							punto3 = [ lista[3][0], lista[3][1] ];
							//
							if(distancia0a6<distancia0a10){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							//7,10
							if(distancia0a7<distancia0a10){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}
					
				}else{
					punto2 = [ lista[4][0], lista[4][1] ];
// 					punto3 = [ lista[1][0], lista[1][1] ];7,9,10
					if (distancia0a7<distancia0a9) {
						if (distancia0a7<distancia0a10) {
							punto3 = [ lista[1][0], lista[1][1] ];
							// **
							if(distancia0a9<distancia0a10){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 6,8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}else{
						if (distancia0a9<distancia0a10) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// ** 5, 8
							if(distancia0a5<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
							
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 6, 8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}
				}
			}else{
				if (distancia0a3 < distancia0a4) {
					punto2 = [ lista[3][0], lista[3][1] ];
// 					punto3 = [ lista[4][0], lista[4][1] ]; 6,8,10
					if (distancia0a6<distancia0a8) {
						if (distancia0a6<distancia0a10) {
							punto3 = [ lista[1][0], lista[1][1] ];
							// ** 5, 7
							if(distancia0a5<distancia0a7){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
							
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							// ** 7 y 9
							if(distancia0a7<distancia0a9){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}else{
						if (distancia0a8<distancia0a10) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// ** 5,9
							if(distancia0a5<distancia0a9){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[4][0], lista[4][1] ];
							}else{
								punto4 = [ lista[4][0], lista[4][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}else{
							punto3 = [ lista[4][0], lista[4][1] ];
							// ** 7,9
							if(distancia0a7<distancia0a9){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}
				}else{
					punto2 = [ lista[4][0], lista[4][1] ];
// 					punto3 = [ lista[1][0], lista[1][1] ];7,9,10
					if (distancia0a7<distancia0a9) {
						if (distancia0a7<distancia0a10) {
							punto3 = [ lista[1][0], lista[1][1] ];
							// **
							if(distancia0a9<distancia0a10){
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 6,8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
						}
					}else{
						if (distancia0a9<distancia0a10) {
							punto3 = [ lista[2][0], lista[2][1] ];
							// ** 5, 8
							if(distancia0a5<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[3][0], lista[3][1] ];
							}else{
								punto4 = [ lista[3][0], lista[3][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
							
							
						}else{
							punto3 = [ lista[3][0], lista[3][1] ];
							// ** 6, 8
							if(distancia0a6<distancia0a8){
								punto4 = [ lista[1][0], lista[1][1] ];
								punto5 = [ lista[2][0], lista[2][1] ];
							}else{
								punto4 = [ lista[2][0], lista[2][1] ];
								punto5 = [ lista[1][0], lista[1][1] ];
							}
						}
					}
				}
			}
		}
		
		var puntosMedios = [];
		puntosMedios.push({
			location : new google.maps.LatLng(parseFloat(punto2[0]),
					parseFloat(punto2[1])),
			stopover : true
		});
		puntosMedios.push({
			location : new google.maps.LatLng(parseFloat(punto3[0]),
					parseFloat(punto3[1])),
			stopover : true
		});
		puntosMedios.push({
			location : new google.maps.LatLng(parseFloat(punto4[0]),
					parseFloat(punto4[1])),
			stopover : true
		});

		var request = {
			origin : new google.maps.LatLng(parseFloat(punto1[0]),
					parseFloat(punto1[1])),
			destination : new google.maps.LatLng(parseFloat(punto5[0]),
					parseFloat(punto5[1])),
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
	
	
    
	var markersArray = [];
	
	function mostrardirecciones(){
		
		$.get("SvInspecciones", { operacion:"listarDirecciones" },
		        function(response){
				deleteOverlays();
		    	var lista = [];  //lista inicial con valores en string
		    	var direcciones= []; // lista final de direcciones en float
		    	var cadena = response.split("/"); //cadena que se convertira ejemplo: 1232,12323/12323,1232/12321,12323
		    	var image = 'img/icon.png';
		    	for (var i = 0; i < cadena.length; i++) {
					lista.push(cadena[i].split(","));

				}
		    	
		    	for (var r = 0; r < lista.length; r++) {
		    		
		    		var coord = [ lista[r][0],lista[r][1] ];//un tercer valor para la ubicacion del sitio string
		    		var latitudc = parseFloat(coord[0]);
		    		var longitudc= parseFloat(coord[1]);
		    		
		    		var dires= [ lista[r][2],lista[r][3] ]; // nombre y direccion
		    		var nombre=dires[0];
		    		var dir=dires[1];
		    		direcciones.push(nombre,dir);//se almacenaria en otro array
		    		
		    		var contenido= "<div id=\"content\">"+
		            "<b><h4>"+nombre+"</h4></b>"+
	                "<div id=\"bodyContent\">" +
	                    "<p>" + dir+
	                    ".</p>"+
	                "</div>"+
	        		"</div>";
		    		var coordenadas = new google.maps.LatLng(latitudc, longitudc); /* Debo crear un punto geografico utilizando google.maps.LatLng */
		            var marker = new google.maps.Marker({
		            	position: coordenadas,
		            	map: map,
		            	animation: google.maps.Animation.DROP, 
		            	title:dir
		            	});
		    		
		            (function(marker, contenido){                       
		                google.maps.event.addListener(marker, 'click', function() {
		                    infowindow.setContent(contenido);
		                    infowindow.open(map, marker);
		                });
		            })(marker,contenido);
		            
					markersArray.push(marker);
					google.maps.event.addListener(marker, 'click', function () {
// 							alert(this.position);

							
							
							if(txtDir1.value==""){
								$("#txtDir1").val(this.title);
								$("#txtCor1").val(this.position);
							}else if(txtDir2.value==""){
								$("#txtDir2").val(this.title);
								$("#txtCor2").val(this.position);
							}else if(txtDir3.value==""){
								$("#txtDir3").val(this.title);
								$("#txtCor3").val(this.position);
							}else if(txtDir4.value==""){
								$("#txtDir4").val(this.title);
								$("#txtCor4").val(this.position);
							}else if(txtDir5.value==""){
								$("#txtDir5").val(this.title);
								$("#txtCor5").val(this.position);
							}else{
								alert("Debe borrar alguna direccion para poder ingresar otra");
							}
							
						  
// 							  marker.setAnimation(google.maps.Animation.BOUNCE);
						  
						});
					
					infowindow.open(map, marker);
				}
		   });
		}
	var infowindow = new google.maps.InfoWindow({
	    content: ''
	});
	
	function deleteOverlays() {
		  if (markersArray) {
		    for (i in markersArray) {
		      markersArray[i].setMap(null);
		    }
		    markersArray.length = 0;
		  }
		}
	
	function toggleBounce() {

		  if (marcador.getAnimation() != null) {
			  marcador.setAnimation(null);
		  } else {
			  marcador.setAnimation(google.maps.Animation.BOUNCE);
		  }
		}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Fin Estilos y Script de Google Maps -->

	<div class="tooltip top in"
		style="top: 447px; left: 980px; display: none;">
		<div class="tooltip-inner">social networks : 38.7%</div>
	</div>
<%@ include file="contenido_foot.jsp"%>