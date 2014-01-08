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
															class="step">1</span> <span class="title">Información
																Cliente</span></li>

														<li data-target="#step2"><span class="step">2</span>
															<span class="title">Informacion de Predio</span></li>

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
																		<label> <input id="skip-validation"
																			type="checkbox"
																			class="ace ace-switch ace-switch-lysander"/> <span
																			class="lbl"></span> <!-- .l. Editar Valores en ace.min.css:5787 -->
																		</label>
																	</div>
																</div>
															</div>
														</div>

														<!--  Datos si es Natural -->
														<form class="form-horizontal" id="formInformacionCliente">

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
																	for="name">Apellido Paterno:</label>

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
																	for="name">Apellido Materno:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="apema" name="apema"
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
																		<select class="input-medium" id="tipodoc"
																			name="tipodoc">
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
																		<input type="text" id="numdoc" name="numdoc"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="plano">Adjutar DNI: (*)</label>
																<div class="col-sm-3">
																	<input type="file" id="id-input-file-2" />

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



															<div class="space-8"></div>

															<div class="form-group">
																<div class="col-xs-12 col-sm-4 col-sm-offset-3">
																	<label> <input name="agree" id="agree"
																		type="checkbox" class="ace" /> <span class="lbl">
																			Acepto los terminos y condiciones</span>
																	</label>
																</div>
															</div>
														</form>

														<!-- Datos si es Juridica -->
														<form class="form-horizontal hide" id="validation-form"
															method="get" novalidate="novalidate">

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Razon Social:</label>

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
																	for="ruc">RUC de la Empresa:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="ruc" name="ruc"
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
																		<input type="url" id="url" name="url"
																			class="col-xs-12 col-sm-8" />
																	</div>
																</div>
															</div>

															<div class="hr hr-dotted"></div>



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
																	for="name">Apellido Paterno:</label>

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
																	for="name">Apellido Materno:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="text" id="apema" name="apema"
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
																		<select class="input-medium" id="tipodoc"
																			name="tipodoc">
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
																		<input type="text" id="numdoc" name="numdoc"
																			class="col-xs-12 col-sm-5" />
																	</div>
																</div>
															</div>
															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="plano">Adjutar DNI: (*)</label>
																<div class="controls">
																	<input id="plano" name="plano"
																		class="input-file col-xs-12 col-sm-5" type="file"
																		title="Selecciona Imagen .jpg">
																</div>
															</div>
															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="plano">Adjutar Vigencia de poder o Carta
																	Poder legalizada: (*)</label>
																<div class="controls">
																	<input id="plano" name="plano"
																		class="input-file col-xs-12 col-sm-5" type="file"
																		title="Selecciona Imagen .jpg">
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



															<div class="space-8"></div>

															<div class="form-group">
																<div class="col-xs-12 col-sm-4 col-sm-offset-3">
																	<label> <input name="agree" id="agree"
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

																		<form>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Provincia</label>
																				<div class="controls">
																					<select id="Provincia" name="provincia"
																						class="input-medium">
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

																			</fieldset>
																			
																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Distrito</label>
																				<div class="controls">
																					<select id="Distrito" name="distrito"
																						class="input-medium">
																						<option>--------</option>

																					</select>
																				</div>

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Localidad</label>
																				<div class="controls">
																					<select id="Localidad" name="localidad"
																						class="input-medium">
																						<option>--------</option>

																					</select>
																				</div>

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Calle</label>
																				<div class="controls">
																					<select id="Calle" name="calle"
																						class="input-medium">
																						<option>-------</option>

																					</select>
																				</div>

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Numero</label>
																				<input type="text" placeholder="Numero"></input>

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Referencias</label>
																				<textarea class="input-large" name="comment"
																					id="comment"></textarea>

																			</fieldset>





																		</form>


																	</div>
																</div>

																<div class="space-6"></div>

																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Datos adicionales del predio</h4>
																	</div>
																	<div class="widget-main no-padding">

																		<form>



																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Estado</label>
																				<div class="controls">
																					<select id="Estado" name="Estado" class="input-medium">
																						<option>--Estado de predio--</option>
																					</select>
																				</div>
																			</fieldset>


																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Tipo</label>
																				<div class="controls">
																					<select id="Tipo" name="Tipo" class="input-medium">
																						<option>--Tipo de Predio--</option>
																					</select>
																				</div>
																			</fieldset>
																			
																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Area
																					de Predio</label> 
																				<input type="text" placeholder="en m2" />

																			</fieldset>
																			
																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Diametro
																					de Conexion</label>
																				<div class="controls">
																					<select id="Estado" name="Estado"
																						class="input-medium">
																						<option>--Diametro-</option>
																						<option>15</option>
																						<option>20</option>
																						<option>30</option>

																					</select>
																				</div>

																			</fieldset>



																		</form>
																	</div>
																</div>


															</div>
															<div class="col-sm-8">
																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Mapa Arequipa</h4>

																	</div>
																	
																	<div class="widget-main no-padding">
																		<div id="map-canvas"></div>
																	</div>

																	


																</div>
																
																<div class="space-6"></div>

																<div class="widget-box">
																	<div class="widget-header">
																		<h4>Adjuntar los documentos que sustenten la
																			informacion</h4>
																	</div>
																	<div class="widget-main no-padding">
																		<form>

																			<fieldset>
																				<label class="control-label col-xs-8 col-sm-4">Partido
																					Registral de inscripción o Constancia de Posesión Emitida por
																					la Municipalidad:(*)</label> <input id="plano" name="plano"
																					class="input-file col-xs-12 col-sm-6" type="file"
																					title="Selecciona Imagen .jpg" />

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-8 col-sm-4">Memoria
																					Descriptiva Firmada por un Ing. Sanitario:(*)</label> <input
																					id="plano" name="plano"
																					class="input-file col-xs-12 col-sm-6" type="file"
																					title="Selecciona Imagen .jpg" />

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Recibo
																					Suministro Vecino:(*)</label> <input id="plano"
																					name="plano" class="input-file col-xs-12 col-sm-6"
																					type="file" title="Selecciona Imagen .jpg" />

																			</fieldset>

																			<fieldset>
																				<label class="control-label col-xs-4 col-sm-4">Plano
																					de Instalaciones Sanitarias, Firmadas por un Ing.
																					Sanitario</label> <input id="plano" name="plano"
																					class="input-file col-xs-12 col-sm-6" type="file"
																					title="Selecciona Imagen .jpg" />

																			</fieldset>



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
																		<label class="blue"> <input name="gender"
																			value="1" type="radio" class="ace" /> <span
																			class="lbl"> Contado</span>
																		</label>
																	</div>

																	<div>
																		<label class="blue"> <input name="gender"
																			value="2" type="radio" class="ace" /> <span
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
																		<select class="input-medium" id="cuotas"
																			name="cuotas">
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
																		<input type="text" id="montocuota" name="montocuota"
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
														data-last="Finish ">
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
						if (info.step == 1 && $validation) {
							if (!$('#validation-form').valid())
								return false;
						}
					})
					.on(
							'finished',
							function(e) {
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
							}).on('stepclick', function(e) {
						//return false;//prevent clicking on steps
					});

			$('#skip-validation').removeAttr('checked').on('click', function() {
				$validation = this.checked;
				if (this.checked) {
					$('#sample-form').hide();
					$('#validation-form').removeClass('hide');
				} else {
					$('#validation-form').addClass('hide');
					$('#sample-form').show();
				}
			});

			//documentation : http://docs.jquery.com/Plugins/Validation/validate

			$.mask.definitions['~'] = '[+-]';
			$('#phone').mask('(999) 999-9999');

			jQuery.validator.addMethod("phone", function(value, element) {
				return this.optional(element)
						|| /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
			}, "Enter a valid phone number.");

			$('#validation-form')
					.validate(
							{
								errorElement : 'div',
								errorClass : 'help-block',
								focusInvalid : false,
								rules : {
									email : {
										required : true,
										email : true
									},
									password : {
										required : true,
										minlength : 5
									},
									password2 : {
										required : true,
										minlength : 5,
										equalTo : "#password"
									},
									name : {
										required : true
									},
									phone : {
										required : true,
										phone : 'required'
									},
									url : {
										required : true,
										url : true
									},
									comment : {
										required : true
									},
									state : {
										required : true
									},
									platform : {
										required : true
									},
									subscription : {
										required : true
									},
									gender : 'required',
									agree : 'required'
								},

								messages : {
									email : {
										required : "Please provide a valid email.",
										email : "Please provide a valid email."
									},
									password : {
										required : "Please specify a password.",
										minlength : "Please specify a secure password."
									},
									subscription : "Please choose at least one option",
									gender : "Please choose gender",
									agree : "Please accept our policy"
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
			
			$('#id-input-file-2').ace_file_input({
				no_file : 'Adjunte DNI...',
				btn_choose : 'Examinar',
				btn_change : 'Cambiar',
				droppable : false,
				onchange : null,
				thumbnail : false,
			});
		});
	</script>




</body>
</html>