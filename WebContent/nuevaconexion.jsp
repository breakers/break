<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>

<%
	HttpSession sesion = request.getSession();
	String nombre = "Cliente";
	String foto = "nofoto";
	String nombrePerfil = "Cliente";

	int tipo = 3;
	String skin = "default";

	switch (tipo) {
		case 1 :
			skin = "skin-1";
			break;
		case 2 :
			skin = "skin-2";
			break;
		default :
			skin = "default";
	}
%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- ########### Modificar Label -->
<title><fmt:message key="label.Contenido" /> - <%=nombre%></title>

<meta name="description" content="overview &amp; stats">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- basic styles -->
<link rel="icon" href="img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<!--[if IE 7]>
		  <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
<![endif]-->

<!-- page specific plugin styles -->
<link rel="stylesheet" href="css/assets/select2.css" />

<!-- fonts -->

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">

<!-- ace styles -->

<link rel="stylesheet" href="css/ace.min.css">
<link rel="stylesheet" href="css/ace-rtl.min.css">
<link rel="stylesheet" href="css/ace-skins.min.css">

<!--[if lte IE 8]>
		  <link rel="stylesheet" href="css/ace-ie.min.css" />
<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->

<script src="js/ace-extra.min.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
<![endif]-->

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
	var map;

	function initialize() {
		directionsDisplay = new google.maps.DirectionsRenderer();
		var centro = new google.maps.LatLng(-16.411667, -71.532967);
		var mapOptions = {
			zoom : 20,
			center : centro,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('map-canvas'),
				mapOptions);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>

<body class="navbar-fixed breadcrumbs-fixed <%=skin%>" style="">
	<c:choose>
		<c:when test="${param.idioma != null}">
			<fmt:setLocale value="${param.idioma}" scope="session" />
			<c:set var="bandera" value="${param.idioma}" scope="session"></c:set>
		</c:when>
		<c:otherwise>
			<c:set var="bandera"
				value="${sessionScope['javax.servlet.jsp.jstl.fmt.locale.session']}"
				scope="session"></c:set>
		</c:otherwise>
	</c:choose>

	<div class="navbar navbar-default navbar-fixed-top" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed');
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="index.jsp" class="navbar-brand"><img
					src="img/logo_sedapar.png" height="75" width="120"
					title="Sedapar - Profesionales a su servicio"> <small
					class="light-blue"> Solicitud de Nueva Conexion de Agua </small><i
					class="icon-tint lightcyan"></i> </a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<!-- BARRA IDIOMA -->
					<li class="orange2"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <img
							src="img/${bandera}_flag.gif" class="msg-photo" alt="Idioma">
							<span class="badge badge-grey"><fmt:message
									key="label.actualidioma" /></span>
					</a>

						<ul
							class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-ok"></i> <fmt:message
									key="label.seleccionaidioma" /></li>


							<li><a href="?idioma=es"> <img src="img/es_flag.gif"
									class="msg-photo" alt="Castellano"> <span
									class="msg-body"> <span class="msg-title"> <span
											class="blue"><fmt:message key="label.español" /></span>
									</span>
								</span>
							</a></li>
							<li><a href="?idioma=en"> <img src="img/en_flag.gif"
									class="msg-photo" alt="Ingles"> <span class="msg-body">
										<span class="msg-title"> <span class="blue"><fmt:message
													key="label.ingles" /></span>
									</span>
								</span>
							</a></li>

							<li><a href="#">
									<div class="progress progress-mini ">
										<div style="width: 100%"
											class="progress-bar progress-bar-danger"></div>
									</div>
							</a></li>
						</ul></li>
					<!-- FIN IDIOMA -->


					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="img/users/<%=foto%>.jpg" alt="Users Photo"> <span
							class="user-info"> <small><fmt:message
										key="label.bienvenido" />,</small> <%=nombre%>
						</span>
					</a></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

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

			<div class="sidebar menu-min" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed');
					} catch (e) {
					}
				</script>


				<!-- #sidebar-shortcuts -->


				<!-- /.nav-list -->


			</div>

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
						<li class="active"><fmt:message key="label.Contenido" /></li>
					</ul>
					<!-- .breadcrumb -->


					<!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<!-- ########### Modificar Pagina -->
						<h1>
							<fmt:message key="label.Contenido" />
							<small> <i class="icon-double-angle-right"></i> Solicitelo YA
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row-fluid">
								<div class="span12">
									<div class="widget-box">
										<div
											class="widget-header widget-header-blue widget-header-flat">
											<h4 class="lighter">Solicitud de Nueva Conexion de Agua</h4>
											<!-- 	<div class="widget-toolbar">
													<label>
														<small class="green">
															<b>Validation</b>
														</small>

														<input id="skip-validation" type="checkbox" class="ace ace-switch ace-switch-4" />
														<span class="lbl"></span>
													</label>
											</div>  -->

										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div id="fuelux-wizard" class="row-fluid"
													data-target="#step-container">
													<ul class="wizard-steps">
														<li data-target="#step1" class="active"><span
															class="step">1</span> <span class="title">Información del Cliente</span></li>

														<li data-target="#step2"><span class="step">2</span>
															<span class="title">Informacion del Predio</span></li>

														<li data-target="#step3"><span class="step">3</span>
															<span class="title">Presupuesto</span></li>

														<li data-target="#step4"><span class="step">4</span>
															<span class="title">Cierre</span></li>
													</ul>
												</div>



												<hr/>
												<div class="step-content row-fluid position-relative"
													id="step-container">
													<div class="step-pane active" id="step1">
														<h3 class="lighter block green">Ingresa la siguiente
															informacion</h3>

														<div class="form-horizontal">

															<div class="form-group">
																<label
																	class="green control-label col-xs-12 col-sm-3 no-padding-right">Tipo
																	de Persona:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<label> <input id="chkTipoPersona"
																			type="checkbox"
																			class="ace ace-switch ace-switch-lysander"/> <span
																			class="lbl"></span> <!-- .l. Editar Valores en ace.min.css:5787 -->
																		</label>
																	</div>
																</div>
															</div>
														</div>

														<!--  Datos si es Natural -->
														<form class="form-horizontal" id="formInformacionClienteNatural" method="get" novalidate="novalidate">

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Nombre(s):</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtNombres_nat" name="txtNombres_nat"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Apellido Paterno:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtApePat_nat" name="txtApePat_nat"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Apellido Materno:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtApeMat_nat" name="txtApeMat_nat"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>


															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="platform">Tipo de Documento</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<select class="input-medium" id="cbTipoDoc_nat"
																			name="cbTipoDoc_nat">
																			<option value="">------------------</option>
																			<option value="DNI">DNI</option>
																			<option value="Carnet Extranjeria">Carnet
																				Extranjeria</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Numero Documento:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtNumDoc_nat" name="txtNumDoc_nat"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="plano">Adjutar Documento: (*)</label>
																<div class="col-sm-3">
																	<input type="file" id="fileDoc_nat" name="fileDoc_nat"/>

																</div>
															</div>


															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="email">Correo Electronico:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="email" name="txtCorreo_nat" id="txtCorreo_nat"
																			class="col-xs-12 col-sm-6" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="phone">Telefono:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="input-group">
																		<span class="input-group-addon"> <i
																			class="icon-phone"></i>
																		</span> <input type="tel" id="txtTelefono_nat" name="txtTelefono_nat" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="phone">Celular:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="input-group">
																		<span class="input-group-addon"> <i
																			class="icon-phone"></i>
																		</span> <input type="tel" id="txtCelular_nat" name="txtCelular_nat" />
																	</div>
																</div>
															</div>



															<div class="space-8"></div>

															<div class="form-group">
																<div class="col-xs-12 col-sm-4 col-sm-offset-3">
																	<label> <input name="chkTerminos_nat" id="chkTerminos_nat"
																		type="checkbox" class="ace" /> <span class="lbl">
																			Acepto los terminos y condiciones</span>
																	</label>
																</div>
															</div>
														</form>

														<!-- Datos si es Juridica -->
														<form class="form-horizontal hide" id="formInformacionClienteJuridica"
															method="get" novalidate="novalidate">

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Razon Social:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtRazSocial_jur" name="txtRazSocial_jur"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="ruc">RUC de la Empresa:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtRUC_jur" name="txtRUC_jur"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="url">URL de la Empresa:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtURL_jur" name="txtURL_jur"
																			class="col-xs-12 col-sm-8" />
																	</div>
																</div>
															</div>

															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Nombre(s):</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtNombres_jur" name="txtNombres_jur"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Apellido Paterno:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtApePat_jur" name="txtApePat_jur"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Apellido Materno:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtApeMat_jur" name="txtApeMat_jur"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>


															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="platform">Tipo de Documento</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<select class="input-medium" id="cbTipoDoc_jur"
																			name="cbTipoDoc_jur">
																			<option value="">------------------</option>
																			<option value="DNI">DNI</option>
																			<option value="Carnet Extranjeria">Carnet
																				Extranjeria</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Numero Documento:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="txtNumDoc_jur" name="txtNumDoc_jur"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="plano">Adjutar Documento: (*)</label>
																	<div class="col-sm-3">
																	<input type="file" id="fileDoc_jur" name="fileDoc_jur"/>
																	</div>
															</div>
															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="plano" style="padding-top: 0px;">Adjuntar Vigencia de poder o<br>Carta de Poder legalizada: (*)</label>
																<div class="col-sm-3" >
																	<input type="file" id="filePoder_jur" name="filePoder_jur"/>
																	</div>
															</div>


															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="email">Correo Electronico:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="email" name="txtCorreo_jur" id="txtCorreo_jur"
																			class="col-xs-12 col-sm-6" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="phone">Telefono:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="input-group">
																		<span class="input-group-addon"> <i
																			class="icon-phone"></i>
																		</span> <input type="tel" id="txtTelefono_jur" name="txtTelefono_jur" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="phone">Celular:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="input-group">
																		<span class="input-group-addon"> <i
																			class="icon-phone"></i>
																		</span> <input type="tel" id="txtCelular_jur" name="txtCelular_jur" />
																	</div>
																</div>
															</div>



															<div class="space-8"></div>

															<div class="form-group">
																<div class="col-xs-12 col-sm-4 col-sm-offset-3">
																	<label> <input name="chkTerminos_jur" id="chkTerminos_jur"
																		type="checkbox" class="ace" /> <span class="lbl">
																			Acepto los terminos y condiciones</span>
																	</label>
																</div>
															</div>

														</form>
													</div>

													<div class="step-pane" id="step2">
														<h3 class="lighter block green">Ingresa la
															informacion del predio</h3>

														<div class="row-fluid">
															<div class="alert alert-info">
																<button type="button" class="close" data-dismiss="alert">
																	<i class="icon-remove"></i>
																</button>
																<strong>Atencion!</strong> No olvides indicar el punto
																de tu predio en el mapa. <br />
															</div>
														</div>

														<div class="row">
															<div class="col-sm-4">
																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Datos del predio</h4>
																	</div>
																	<div class="widget-main no-padding">

																		<form id="formInformacionPredio" method="get" novalidate="novalidate">
																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4 no-padding-right" for="cbProvincia" style="padding-bottom: 16px;">Provincia</label>
																				<div class="controls" style="margin-top: 20px;">
																					<select id="cbProvincia" name="cbProvincia"
																						class="input-medium">
																						<option value="">--------</option>
																						<option>Arequipa</option>
																						<option>Canamá</option>
																						<option>Caravelí</option>
																						<option>Catilla</option>
																						<option>Caylloma</option>
																						<option>Condesuyos</option>
																						<option>Islay</option>
																						<option>La Unión</option>
																					</select>
																				</div>

																			</div>
																			
																			<div class=form-group>
																				<label class="control-label col-xs-4 col-sm-4 no-padding-right" for="cbDistrito" style="padding-bottom: 16px;">Distrito</label>
																				<div class="controls">
																					<select id="cbDistrito" name="cbDistrito"
																						class="input-medium">
																						<option value="">--------</option>
																						<option>distrito1</option>
																					</select>
																				</div>

																			</div>

																			<div class=form-group>
																				<label class="control-label col-xs-4 col-sm-4 no-padding-right" for="cbLocalidad" style="padding-bottom: 16px;">Localidad</label>
																				<div class="controls">
																					<select id="cbLocalidad" name="cbLocalidad"
																						class="input-medium">
																						<option value="">--------</option>
																						<option>localidad1</option>
																					</select>
																				</div>

																			</div>

																			<div class=form-group>
																				<label class="control-label col-xs-4 col-sm-4 no-padding-right" for="cbCalle" style="padding-bottom: 16px;">Calle</label>
																				<div class="controls">
																					<select id="cbCalle" name="cbCalle"
																						class="input-medium">
																						<option value="">-------</option>
																						<option>calle1</option>

																					</select>
																				</div>

																			</div>

																			<div class=form-group>
																				<label class="control-label col-xs-4 col-sm-4 no-padding-right" for="txtNumero" style="padding-bottom: 16px;">Numero</label>
																			<div >
																				<input type="text" placeholder="Numero" id="txtNumero" name="txtNumero"></input>
																			</div>
																			</div>

																			<div class=form-group>
																				<label class="control-label col-xs-4 col-sm-4 no-padding-right" for="txtReferencias" style="padding-bottom: 49px;">Referencias</label>
																				<div>
																				<textarea class="input-large" name="txtReferencias" id="txtReferencias" style="max-width: 230px;width: 230px; min-width: 230px; max-height: 145px; min-height: 70px;"></textarea>
																				</div>
																			</div>

																		</form>


																	</div>
																</div>

																<div class="space-6"></div>

																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Datos adicionales del predio</h4>
																	</div>
																	<div class="widget-main no-padding">
																	
																		<form id="formInformacionPredioAdicional" method="get" novalidate="novalidate">

																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4" for="cbEstadoPredio" style="padding-bottom: 14px;">Estado</label>
																				<div class="controls" style="margin-top: 20px;">
																					<select id="cbEstadoPredio" name="cbEstadoPredio" class="input-medium" style="width: 210px;">
																						<option value="">--Estado de predio--</option>
																						<option>En Construcción Habitado</option>
																						<option>En Construcción Deshabitado</option>
																						<option>Vivienda Habitada</option>
																						<option>Vivienda Deshabitada</option>
																						<option>Baldio</option>
																						<option>Cercado</option>
																						<option>Sin Especificar</option>
																					</select>
																				</div>
																			</div>


																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4" for="cbTipoPredio" style="padding-bottom: 14px;">Tipo</label>
																				<div class="controls">
																					<select id="cbTipoPredio" name="cbTipoPredio" class="input-medium" style="width: 165px;">
																						<option value="">--Tipo de Predio--</option>
																						<option>Domestico</option>
																						<option>Comercial</option>
																						<option>Industrial</option>
																						<option>Estatal</option>
																					</select>
																				</div>
																			</div>
																			
																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4" for="txtAreaPredio" style="padding-bottom: 14px;">Area
																					de Predio</label> 
																				<div class="controls">
																				<input type="text" placeholder="en m2" id="txtAreaPredio" name="txtAreaPredio"/>
																				</div>
																			</div>
																			
																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4" for="cbDiametroConexion" >Diametro
																					de Conexion</label>
																				<div class="controls">
																					<select id="cbDiametroConexion" name="cbDiametroConexion"
																						class="input-medium">
																						<option value="">--Diametro-</option>
																						<option>15</option>
																						<option>20</option>
																						<option>30</option>

																					</select>
																				</div>

																			</div><br>

																		</form>
																	</div>
																</div>


															</div>
															<div class="col-sm-8">
																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Mapa Arequipa</h4>

																	</div>
																	
																	<div class="widget-body">
																		<div id="map-canvas"></div>
																	</div>

																	


																</div>
																
																<div class="space-6"></div>

																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Adjuntar los documentos que sustenten la
																			informacion</h4>
																	</div>
																	<div class="widget-main">
																		<form id="formDocumentos" method="get" novalidate="novalidate">
																		<div class="row">
																			<div class="form-group">
																				<label class="control-label col-xs-8 col-sm-4" for="filePartidaConstancia">Partida
																					Registral de inscripción o Constancia de Posesión Emitida por
																					la Municipalidad:(*)</label>
																					<div class="col-sm-5" style="top: 20px;">
																						<input type="file" id="filePartidaConstancia" name="filePartidaConstancia" width="260px;"/>
																					</div>
																			</div>
																		</div><br>
																		<div class="row">
																			<div class="form-group">
																				<label class="control-label col-xs-8 col-sm-4" for="fileMemoria">Memoria
																					Descriptiva Firmada por un Ing. Sanitario:(*)</label> 
																				<div class="col-sm-5" style="top: 10px;">
																						<input type="file" id="fileMemoria" name="fileMemoria"/>
																				</div>
																			</div>
																		</div>	<br>
																		<div class="row">
																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4" for="fileReciboVecino">Recibo
																					Suministro Vecino:(*)</label>
																				<div class="col-sm-5">
																					<input type="file" id="fileReciboVecino" name="fileReciboVecino"/>
																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="form-group">
																				<label class="control-label col-xs-4 col-sm-4" for="filePlanoInstalaciones">Plano
																					de Instalaciones Sanitarias, Firmadas por un Ing.
																					Sanitario</label>
																				<div class="col-sm-5" style="top: 10px;">
																					<input type="file" id="filePlanoInstalaciones" name="filePlanoInstalaciones" />
																				</div>
																			</div>
																		</div>
																		</form>
																	</div>
																</div>
															</div>
														</div>






													</div>

													<div class="step-pane" id="step3">
														<div class="center">
															<h3 class="blue lighter">Verifique su solicitud y el
																Precio Estimado</h3>
														</div>
														
														<form class="form-horizontal" id="sample-form">

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Nombres:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="name" name="name"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Servicio:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="apepa" name="apepa"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Costo:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="apema" name="apema"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>


															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right">Forma de Pago</label>

																<div class="col-xs-12 col-sm-9">
																	<div>
																		<label class="blue"> <input name="formaPago" id="formaPago" checked="checked"
																			value="1" type="radio" class="ace" /> <span
																			class="lbl"> Contado</span>
																		</label>
																	</div>

																	<div>
																		<label class="blue"> <input name="formaPago" id="formaPago"
																			value="2" type="radio" class="ace"/> <span
																			class="lbl"> Cuotas</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="platform">Numero de Cuotas</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<select class="input-medium" id="numCuotas"
																			name="numCuotas">
																			<option value="">------------------</option>
																			<option value="6">6</option>
																			<option value="12">12</option>
																			<option value="24">24</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Monto por cuota:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="montoCuotas" name="montoCuotas"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															
															<div class="form-group">
																<label for="" class="control-label col-xs-12 col-sm-3 no-padding-right"></label>
																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<div class="table-responsive">
																			<table id="sample-table-1" class="table table-bordered">
																				<thead>
																					<tr>
																						<th width="100">Numero</th>
																						<th width="200">Monto</th>
								
																						<th width="100">
																							<i class="icon-time bigger-110 hidden-480"></i>
																							Fecha Emision
																						</th>
																						<th width="100">Fecha Vencimiento</th>
																						<th width="100">Motivo</th>
																					</tr>
																				</thead>
								
																				<tbody>
																					<tr>
																						<td>1</td>
																						<td>85.25</td>
																						<td>15-12-2013</td>
																						<td>15-01-2014</td>
																						<td>Nueva Conexion</td>
																					</tr>
																					<tr>
																						<td>2</td>
																						<td>85.25</td>
																						<td>15-12-2013</td>
																						<td>15-02-2014</td>
																						<td>Nueva Conexion</td>
																					</tr>
																					<tr>
																						<td>3</td>
																						<td>85.25</td>
																						<td>15-12-2013</td>
																						<td>15-03-2014</td>
																						<td>Nueva Conexion</td>
																					</tr>
																					<tr>
																						<td>4</td>
																						<td>85.25</td>
																						<td>15-12-2013</td>
																						<td>15-04-2014</td>
																						<td>Nueva Conexion</td>
																					</tr>
																				</tbody>
																			</table>
																		</div><!-- /.table-responsive -->
																	
																	</div>
																</div>
															</div>

															


															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="email">Correo Electronico:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="email" name="email" id="email"
																			class="col-xs-12 col-sm-6" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="phone">Telefono:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="input-group">
																		<span class="input-group-addon"> <i
																			class="icon-phone"></i>
																		</span> <input type="tel" id="phone" name="phone" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="phone">Celular:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="input-group">
																		<span class="input-group-addon"> <i
																			class="icon-phone"></i>
																		</span> <input type="tel" id="phone" name="phone" />
																	</div>
																</div>
															</div>


														</form>
													</div>

													<div class="step-pane" id="step4">
														<div class="center">
															<h3 class="green">Felicidades!</h3>
															Tu Solicitud esta completa! Click finalizar para
															terminar!
														</div>
													</div>
												</div>

												<hr />
												<div class="row-fluid wizard-actions">
													<button class="btn btn-prev">
														<i class="icon-arrow-left"></i> Regresar
													</button>

													<button class="btn btn-success btn-next"
														data-last="Terminar ">
														Continuar <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
								</div>
							</div>




							<!-- PAGE CONTENT ENDS -->
						</div>
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

		<!--  Elimino esta linea porque se queda flotando en medio
	
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
		
		 -->
		
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<!--  <script src="js/jquery.min.js"></script> -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

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

	<script src="js/assets/fuelux/fuelux.wizard.min.js"></script>
	<script src="js/assets/jquery.validate.min.js"></script>
	<script src="js/assets/additional-methods.min.js"></script>
	<script src="js/assets/bootbox.min.js"></script>
	<script src="js/assets/jquery.maskedinput.min.js"></script>
	<script src="js/assets/select2.min.js"></script>


	<!-- ace scripts -->

	<script src="js/ace-elements.min.js"></script>
	<script src="js/ace.min.js"></script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		jQuery(function($) {
			
			$("#formaPago").click(function(){
				if($("input[name='formaPago']:checked").val() == "1"){
				$("#numCuotas").prop('disabled','disabled');
				$("#montoCuotas").prop('disabled','disabled');
				}else{
					$("#numCuotas").prop('disabled',false);
					$("#montoCuotas").prop('disabled',false);
				}
			});
			
			

			$('[data-rel=tooltip]').tooltip();

			$(".select2").css('width', '200px').select2({
				allowClear : true
			}).on('change', function() {
				$(this).closest('form').validate().element($(this));
			});

			var $validation = false;
			$('#fuelux-wizard')
					.ace_wizard()
					.on('change', function(e, info) {
						if (info.step == 1) {
							if (!$('#formInformacionClienteNatural').valid())
								e.preventDefault();
							if(!$('#formInformacionClienteJuridica').valid())
								e.preventDefault();
						}else if(info.step == 2){
							if (!$('#formInformacionPredio').valid())
								e.preventDefault();
							if (!$('#formInformacionPredioAdicional').valid())
								e.preventDefault();
							if (!$('#formDocumentos').valid())
								e.preventDefault();
							
						}
					})
					.on('finished',function(e) {
								bootbox
										.dialog({
											message : "Gracias! Tu solicitud se ha enviado correctamente!",
											buttons : {
												"success" : {
													"label" : "OK",
													"className" : "btn-sm btn-primary"
												}
											}
										});
							})
					.on('stepclick', function(e) {
 								return false;
					});
			
//	-----------------------------	<BEGINS> PASO 1 : Información del Cliente	-----------------------------------------------

			$('#chkTipoPersona').removeAttr('checked').on('click', function() {
				$validation = this.checked;
				if (this.checked) {
					$('#formInformacionClienteNatural').hide();
					$('#formInformacionClienteJuridica').removeClass('hide');
				} else {
					$('#formInformacionClienteJuridica').addClass('hide');
					$('#formInformacionClienteNatural').show();
				}
			});

// 			documentation : http://docs.jquery.com/Plugins/Validation/validate

			$.mask.definitions['~'] = '[+-]';
			$('#txtTelefono_nat').mask('(99) 999-9999');
			$('#txtCelular_nat').mask('(99) 999999999');
			$('#txtTelefono_jur').mask('(99) 999-9999');
			$('#txtCelular_jur').mask('(99) 999999999');
			
			jQuery.validator.addMethod("valTel", function(value, element) {
				return this.optional(element)
						|| /^\(\d{2}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
			}, "Ingresa un número de teléfono válido.");
			
			jQuery.validator.addMethod("valCel", function(value, element) {
				return this.optional(element)
						|| /^\(\d{2}\) \d{9}( x\d{1,6})?$/.test(value);
			}, "Ingresa un número de celular válido.");
			
			

//--------------VALIDACION DEL FORM INFORMACION CLIENTE (NATURAL)---------------------		
			$('#formInformacionClienteNatural')
			.validate(
					{
						errorElement : 'div',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							txtNombres_nat : {
								required : true,
							},
							txtApePat_nat : {
								required : true
							},
							txtApeMat_nat: {
								required : true
							},
							cbTipoDoc_nat: {
								required : true
							},
							txtNumDoc_nat: {
								required : true
							},
							fileDoc_nat: {
								required : true
							},
							txtCorreo_nat: {
								required : true,
								email : true
							},
							txtTelefono_nat: {
								required : true,
								valTel : 'required'
							},
							txtCelular_nat: {
								required : true,
								valCel : 'required'
							},
							chkTerminos_nat: {
								required : true,
							}	
							
						},

						messages : {
							txtNombres_nat : {
								required : "Debe ingresar su nombre."
							},
							txtApePat_nat: {
								required : "Debe ingresar su apellido paterno."
							},
							txtApeMat_nat: {
								required : "Debe ingresar su apellido materno."
							},
							cbTipoDoc_nat: "Debe seleccionar tipo de documento.",
							txtNumDoc_nat: {
								required : "Debe ingresar número de documento."
							},
							fileDoc_nat: {
								required : "Debe adjuntar documento."
							},
							txtCorreo_nat: {
								required : "Debe ingresar su correo electrónico.",
								email : "Ingrese un correo electrónico válido"
							},
							txtTelefono_nat: {
								required : "Debe ingresar su teléfono."
							},
							txtCelular_nat: {
								required : "Debe ingresar su celular."
							},
							chkTerminos_nat: {
								required : "Debe aceptar los términos y condiciones."
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-info').addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-error').addClass('has-info');
							$(e).remove();
						},

						errorPlacement : function(error, element) {
							if (element.is(':checkbox')
									|| element.is(':radio')) {
								var controls = element
										.closest('div[class*="col-"]');
								if (controls.find(':checkbox,:radio').length > 1)
									controls.append(error);
								else
									error.insertAfter(element.nextAll(
											'.lbl:eq(0)').eq(0));
							} else if (element.is('.select2')) {
								error
										.insertAfter(element
												.siblings('[class*="select2-container"]:eq(0)'));
							} else if (element.is('.chosen-select')) {
								error
										.insertAfter(element
												.siblings('[class*="chosen-container"]:eq(0)'));
							} else
								error.insertAfter(element.parent());
						},

						submitHandler : function(form) {
						},
						invalidHandler : function(form) {
						}
					});
					
//--------------VALIDACION DEL FORM INFORMACION CLIENTE (JURIDICA)---------------------						
			$('#formInformacionClienteJuridica')
			.validate(
					{
						errorElement : 'div',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							txtRazSocial_jur : {
								required : true
							},
							txtRUC_jur : {
								required : true
							},
							txtURL_jur : {
								url : true
							},
							txtNombres_jur : {
								required : true
							},
							txtApePat_jur : {
								required : true
							},
							txtApeMat_jur: {
								required : true
							},
							cbTipoDoc_jur: {
								required : true
							},
							txtNumDoc_jur: {
								required : true
							},
							fileDoc_jur: {
								required : true
							},
							filePoder_jur: {
								required: true
							},
							txtCorreo_jur: {
								required : true,
								email : true
							},
							txtTelefono_jur: {
								required : true,
								valTel : 'required'
							},
							txtCelular_jur: {
								required : true,
								valCel : 'required'
							},
							chkTerminos_jur: {
								required : true,
							}	
						},

						messages : {
							txtRUC_jur : {
								required : "Debe ingresar R.U.C."
							},
							txtRazSocial_jur : {
								required : "Debe ingresar Razón Social."
							},
							txtURL_jur : {
								url : "Ingrese un URL válido"
							},
							txtNombres_jur : {
								required : "Debe ingresar su nombre."
							},
							txtApePat_jur: {
								required : "Debe ingresar su apellido paterno."
							},
							txtApeMat_jur: {
								required : "Debe ingresar su apellido materno."
							},
							cbTipoDoc_jur: "Debe seleccionar tipo de documento.",
							txtNumDoc_jur: {
								required : "Debe ingresar número de documento."
							},
							fileDoc_jur: {
								required : "Debe adjuntar documento."
							},
							filePoder_jur: {
								required :"Debe adjuntar documento."
							},
							txtCorreo_jur: {
								required : "Debe ingresar su correo electrónico.",
								email : "Ingrese un correo electrónico válido"
							},
							txtTelefono_jur: {
								required : "Debe ingresar su teléfono."
							},
							txtCelular_jur: {
								required : "Debe ingresar su celular."
							},
							chkTerminos_jur: {
								required : "Debe aceptar los términos y condiciones."
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-info').addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-error').addClass('has-info');
							$(e).remove();
						},

						errorPlacement : function(error, element) {
							if (element.is(':checkbox')
									|| element.is(':radio')) {
								var controls = element
										.closest('div[class*="col-"]');
								if (controls.find(':checkbox,:radio').length > 1)
									controls.append(error);
								else
									error.insertAfter(element.nextAll(
											'.lbl:eq(0)').eq(0));
							} else if (element.is('.select2')) {
								error
										.insertAfter(element
												.siblings('[class*="select2-container"]:eq(0)'));
							} else if (element.is('.chosen-select')) {
								error
										.insertAfter(element
												.siblings('[class*="chosen-container"]:eq(0)'));
							} else
								error.insertAfter(element.parent());
						},

						submitHandler : function(form) {
						},
						invalidHandler : function(form) {
						}
					});
			

			$('#modal-wizard .modal-header').ace_wizard();
			$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]')
					.removeAttr('disabled');
			
			$('#fileDoc_nat').ace_file_input({
				no_file : 'Adjunte Documento...',
				btn_choose : 'Examinar',
				btn_change : 'Cambiar',
				droppable : false,
				onchange : null,
				whitelist:'gif|png|jpg|jpeg',
				blacklist:'exe|php|xlsx|pdf',
// 				thumbnail : false,
			});
			
			$('#fileDoc_jur').ace_file_input({
				no_file : 'Adjunte Documento...',
				btn_choose : 'Examinar',
				btn_change : 'Cambiar',
				droppable : false,
				onchange : null,
// 				thumbnail : false,
			});
			
			$('#filePoder_jur').ace_file_input({
				no_file : 'Adjunte Documento...',
				btn_choose : 'Examinar',
				btn_change : 'Cambiar',
				droppable : false,
				onchange : '',
// 				thumbnail : false,
			});
			
			
			
//	-----------------------------	<ENDS> PASO 1 : Información del Cliente	-----------------------------------------------


//	-----------------------------	<BEGINS> PASO 2 : Información del Predio	-----------------------------------------------
		// FORM  INFORMACION DEL PREDIO
		$('#formInformacionPredio')
			.validate(
					{
						errorElement : 'div',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							cbProvincia : {
								required : true
							},
							cbDistrito : {
								required : true
							},
							cbLocalidad : {
								required :true
							},
							cbCalle : {
								required : true
							},
							txtNumero: {
								required : true
							},
							txtReferencias : {
								required : true
							}
							
						},

						messages : {
							cbProvincia : {
								required : "Debe seleccionar una provincia."
							},
							cbDistrito : {
								required : "Debe seleccionar un distrito."
							},
							cbLocalidad : {
								required : "Debe seleccionar una localidad"
							},
							cbCalle : {
								required : "Debe seleccionar una calle"
							},
							txtNumero : {
								required : "Debe ingresar número"
							},
							txtReferencias : {
								required : "Debe ingresar referencias"
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-info').addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-error').addClass('has-info');
							$(e).remove();
						},

						errorPlacement : function(error, element) {
							if (element.is(':checkbox')
									|| element.is(':radio')) {
								var controls = element
										.closest('div[class*="col-"]');
								if (controls.find(':checkbox,:radio').length > 1)
									controls.append(error);
								else
									error.insertAfter(element.nextAll(
											'.lbl:eq(0)').eq(0));
							} else if (element.is('.select2')) {
								error
										.insertAfter(element
												.siblings('[class*="select2-container"]:eq(0)'));
							} else if (element.is('.chosen-select')) {
								error
										.insertAfter(element
												.siblings('[class*="chosen-container"]:eq(0)'));
							} else
								error.insertAfter(element.parent());
						},

						submitHandler : function(form) {
						},
						invalidHandler : function(form) {
						}
					});
					
		
		
		
		// VALIDACION FORM INFORMACION ADICIONAL DEL PREDIO
		$('#formInformacionPredioAdicional')
			.validate(
					{
						errorElement : 'div',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							cbEstadoPredio : {
								required : true
							},
							cbTipoPredio : {
								required : true
							},
							txtAreaPredio : {
								required : true
							},
							cbDiametroConexion : {
								required : true
							}
						},

						messages : {
							cbEstadoPredio : {
								required : "Debe seleccionar un estado de predio"
							},
							cbTipoPredio : {
								required : "Debe seleccionar un tipo de predio"
							},
							txtAreaPredio : {
								required : "Debe ingresar el área del predio"
							},
							cbDiametroConexion : {
								required : "Debe seleccionar el diámetro de conexión"
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-info').addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-error').addClass('has-info');
							$(e).remove();
						},

						errorPlacement : function(error, element) {
							if (element.is(':checkbox')
									|| element.is(':radio')) {
								var controls = element
										.closest('div[class*="col-"]');
								if (controls.find(':checkbox,:radio').length > 1)
									controls.append(error);
								else
									error.insertAfter(element.nextAll(
											'.lbl:eq(0)').eq(0));
							} else if (element.is('.select2')) {
								error
										.insertAfter(element
												.siblings('[class*="select2-container"]:eq(0)'));
							} else if (element.is('.chosen-select')) {
								error
										.insertAfter(element
												.siblings('[class*="chosen-container"]:eq(0)'));
							} else
								error.insertAfter(element.parent());
						},

						submitHandler : function(form) {
						},
						invalidHandler : function(form) {
						}
					});
		
		// VALIDACION DEL FORM DOCUMENTOS
		$('#formDocumentos')
			.validate(
					{
						errorElement : 'div',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							filePartidaConstancia : {
								required : true
							},
							fileMemoria : {
								required : true
							},
							fileReciboVecino : {
								required : true
							},
							filePlanoInstalaciones : {
								required : true
							}
						},

						messages : {
							filePartidaConstancia : {
								required : "Debe adjuntar documento."
							},
							fileMemoria : {
								required : "Debe adjuntar documento."
							},
							fileReciboVecino : {
								required : "Debe adjuntar documento."
							},
							filePlanoInstalaciones : {
								required : "Debe adjuntar documento."
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-info').addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group').removeClass(
									'has-error').addClass('has-info');
							$(e).remove();
						},

						errorPlacement : function(error, element) {
							if (element.is(':checkbox')
									|| element.is(':radio')) {
								var controls = element
										.closest('div[class*="col-"]');
								if (controls.find(':checkbox,:radio').length > 1)
									controls.append(error);
								else
									error.insertAfter(element.nextAll(
											'.lbl:eq(0)').eq(0));
							} else if (element.is('.select2')) {
								error
										.insertAfter(element
												.siblings('[class*="select2-container"]:eq(0)'));
							} else if (element.is('.chosen-select')) {
								error
										.insertAfter(element
												.siblings('[class*="chosen-container"]:eq(0)'));
							} else
								error.insertAfter(element.parent());
						},

						submitHandler : function(form) {
						},
						invalidHandler : function(form) {
						}
					});
		
		
		$('#filePartidaConstancia').ace_file_input({
			no_file : 'Adjunte Documento...',
			btn_choose : 'Examinar',
			btn_change : 'Cambiar',
			droppable : false,
			onchange : '',
//				thumbnail : false,
		});
		
		$('#fileMemoria').ace_file_input({
			no_file : 'Adjunte Documento...',
			btn_choose : 'Examinar',
			btn_change : 'Cambiar',
			droppable : false,
			onchange : '',
//				thumbnail : false,
		});
		
		$('#fileReciboVecino').ace_file_input({
			no_file : 'Adjunte Documento...',
			btn_choose : 'Examinar',
			btn_change : 'Cambiar',
			droppable : false,
			onchange : '',
//				thumbnail : false,
		});
		
		$('#filePlanoInstalaciones').ace_file_input({
			no_file : 'Adjunte Documento...',
			btn_choose : 'Examinar',
			btn_change : 'Cambiar',
			droppable : false,
			onchange : '',
//				thumbnail : false,
		});
							
//	-----------------------------	<ENDS> PASO 2 : Información del Predio	-----------------------------------------------	


//	-----------------------------	<BEGINS> PASO 3 : Presupuesto	-----------------------------------------------	

//	-----------------------------	<ENDS> PASO 3 : Presupuesto	-----------------------------------------------		
	
		});
	</script>




</body>
</html>