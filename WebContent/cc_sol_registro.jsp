<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>

<%
	HttpSession sesion = request.getSession();
	String nombre = (String) sesion.getAttribute("nombreCompleto");
	String foto = (Integer) sesion.getAttribute("foto") + "";
	String nombrePerfil = (String) sesion.getAttribute("desPerfil");

	int tipo = 1;
	String skin = "default";

	if (nombre == null) {
		response.sendRedirect("login.jsp");
	} else {
		if (foto == "") {
			foto = "nofoto";
		}

		tipo = (Integer) sesion.getAttribute("tipo");
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
	}
	String bandera = "";
	/* Aqui va el algoritmo para capturar el idioma de la pagina
	 */

	if (bandera.equals("us")) {
		bandera = "img/usa_flag.gif";
	} else {
		bandera = "img/pe_flag.gif";
	}
%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- ########### Modificar Label -->
<title><fmt:message key="label.Categoria" /> - <%=nombre%></title>

<meta name="description" content="overview &amp; stats">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- basic styles -->
<link rel="icon" href="img/favicon.ico" type="image/x-icon" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">

<!--[if IE 7]>
		  <link rel="stylesheet" href="css/font-awesome-ie7.min.css" />
<![endif]-->

<!-- page specific plugin styles -->

<link rel="stylesheet" href="css/assets/jquery-ui-1.10.3.custom.min.css" />
<link rel="stylesheet" href="css/assets/chosen.css" />
<link rel="stylesheet" href="css/assets/datepicker.css" />
<link rel="stylesheet" href="css/assets/bootstrap-timepicker.css" />
<link rel="stylesheet" href="css/assets/daterangepicker.css" />
<link rel="stylesheet" href="css/assets/colorpicker.css" />

<!-- fonts -->

<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

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
<style type="text/css"></style>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- Script que llamar al servlet y redibuja la tabla para buscar cliente -->
<script>
// 	$(document).ready(function(){
// 		$("#btnBuscar").click(
// 				function(){
// 					var usuario= $("#NombreCli").val();
// 					$.get('SvCC_Solicitud',{nusuario:usuario},function(responselist){
// 						$('#table-cli').html(responselist);
// 					});
// 				}
// 			);
		
// 		}
// 	);


</script>

<script type="text/javascript">
// DocumentoCli,NombreCli,NombreRepresentanteCli,ApellidoRepresentanteCli
				

</script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
<![endif]-->
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
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="home.jsp" class="navbar-brand"> <i
					class="icon-tint lightcyan"></i> Sedapar <small class="light-blue"><%=nombrePerfil%>
				</small>
				</a>
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
					<li class="grey"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i class="icon-tasks"></i> <span
							class="badge badge-grey">2</span>
					</a>

						<ul
							class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-ok"></i> 4 <fmt:message
									key="label.tareapendientes" /></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"><fmt:message
												key="label.tareacontratos" /></span> <span class="pull-right">65%</span>
									</div>

									<div class="progress progress-mini ">
										<div style="width: 65%" class="progress-bar "></div>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"><fmt:message
												key="label.tareacambios" /></span> <span class="pull-right">35%</span>
									</div>

									<div class="progress progress-mini ">
										<div style="width: 35%"
											class="progress-bar progress-bar-danger"></div>
									</div>
							</a></li>

							<li><a href="procesos.jsp"> <fmt:message
										key="label.tareadetalles" /> <i class="icon-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="purple"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="icon-bell-alt icon-animated-bell"></i> <span
							class="badge badge-important">8</span>
					</a>

						<ul
							class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-warning-sign"></i>
								8 <fmt:message key="label.notificaciones" /></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-pink icon-comment"></i> New
											Comments
										</span> <span class="pull-right badge badge-info">+12</span>
									</div>
							</a></li>

							<li><a href="#"> <i
									class="btn btn-xs btn-primary icon-user"></i> Bob just signed
									up as an editor ...
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
											New Orders
										</span> <span class="pull-right badge badge-success">+8</span>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-info icon-twitter"></i>
											Followers
										</span> <span class="pull-right badge badge-info">+11</span>
									</div>
							</a></li>

							<li><a href="notificaciones.jsp"> <fmt:message
										key="label.notificacionesdetalles" /> <i
									class="icon-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="green"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="icon-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-envelope-alt"></i>
								5 <fmt:message key="label.mensajes" /></li>

							<li><a href="#"> <img src="img/users/avatar.png"
									class="msg-photo" alt="Alex&#39;s Avatar"> <span
									class="msg-body"> <span class="msg-title"> <span
											class="blue">Alex:</span> Ciao sociis natoque penatibus et
											auctor ...
									</span> <span class="msg-time"> <i class="icon-time"></i> <span>a
												moment ago</span>
									</span>
								</span>
							</a></li>

							<li><a href="#"> <img src="img/users/avatar3.png"
									class="msg-photo" alt="Susan&#39;s Avatar"> <span
									class="msg-body"> <span class="msg-title"> <span
											class="blue">Susan:</span> Vestibulum id ligula porta felis
											euismod ...
									</span> <span class="msg-time"> <i class="icon-time"></i> <span>20
												minutes ago</span>
									</span>
								</span>
							</a></li>

							<li><a href="#"> <img src="img/users/avatar4.png"
									class="msg-photo" alt="Bob&#39;s Avatar"> <span
									class="msg-body"> <span class="msg-title"> <span
											class="blue">Bob:</span> Nullam quis risus eget urna mollis
											ornare ...
									</span> <span class="msg-time"> <i class="icon-time"></i> <span>3:15
												pm</span>
									</span>
								</span>
							</a></li>

							<li><a href="buzon.jsp"> <fmt:message
										key="label.mensajestodos" /> <i class="icon-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="img/users/<%=foto%>.jpg" alt="Users Photo"> <span
							class="user-info"> <small><fmt:message
										key="label.bienvenido" />,</small> <%=nombre%>
						</span> <i class="icon-caret-down"></i>
					</a>

						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="configuracion.jsp"> <i class="icon-cog"></i>
									<fmt:message key="label.configuracion" />
							</a></li>

							<li><a href="perfil.jsp"> <i class="icon-user"></i> <fmt:message
										key="label.perfil" />
							</a></li>

							<li class="divider"></li>

							<li><a href="cerrarsesion"> <i class="icon-off"></i> <fmt:message
										key="label.cerrar" />
							</a></li>
						</ul></li>
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
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>

			<div class="sidebar sidebar-fixed" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success"
							onclick="location.href='SvCon_Solicitud';">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-info"
							onclick="location.href='cc_sol_registro.jsp';">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-warning"
							onclick="location.href='man_clientes.jsp';">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-danger"
							onclick="location.href='rep_servicios.jsp';">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>

						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- #sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li><a href="home.jsp"> <i class="icon-dashboard"></i> <span
							class="menu-text"> <fmt:message key="label.resumen" />
						</span>
					</a></li>


					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-edit"></i> <span class="menu-text"><fmt:message
									key="label.Contratos" /> </span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="#" class="dropdown-toggle"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Solicitud" /> <b class="arrow icon-angle-down"></b>
							</a>

								<ul class="submenu">

									<li><a href="SvCon_Solicitud"> <i class="icon-ok"></i>
											<fmt:message key="label.Evaluar" />
									</a></li>

									<li><a href="con_sol_consulta.jsp"> <i
											class="icon-eye-open"></i> <fmt:message key="label.Buscar" />
									</a></li>
								</ul></li>

							<li><a href="con_contrato.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Generar" />
							</a></li>

							<li><a href="con_consulta.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Cc" />
							</a></li>


						</ul></li>


					<li class="active open"><a href="#" class="dropdown-toggle">
							<i class="icon-share"></i> <span class="menu-text"><fmt:message
									key="label.Categoria" /> </span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li class="active open"><a href="#" class="dropdown-toggle">
									<i class="icon-double-angle-right"></i> <fmt:message
										key="label.Solicitud" /><b class="arrow icon-angle-down"></b>
							</a>

								<ul class="submenu">
									<li class="active"><a href="cc_sol_registro.jsp"> <i
											class="icon-pencil"></i> <fmt:message key="label.Registrar" />
									</a></li>

									<li><a href="cc_sol_revision.jsp"> <i class="icon-ok"></i>
											<fmt:message key="label.Revisar" />
									</a></li>
								</ul></li>

							<li><a href="cc_ruta.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Ruta" />
							</a></li>

							<li><a href="cc_inspeccion.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Ii" />
							</a></li>

							<li><a href="cc_evaluar.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Ee" />
							</a></li>

							<li><a href="cc_validar.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Ve" />
							</a></li>


						</ul></li>

					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-dollar"></i> <span class="menu-text"> <fmt:message
									key="label.Liquidacion" />
						</span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="liq_consulta.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Cd" />
							</a></li>

							<li><a href="liq_pago.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Rp" />
							</a></li>

						</ul></li>

					<li><a href="#reportes" class="dropdown-toggle"> <i
							class="icon-list-alt"></i> <span class="menu-text"> <fmt:message
									key="label.Reportes" />
						</span> <b class="arrow icon-angle-down"></b>
					</a>
						<ul class="submenu">
							<li><a href="rep_servicios.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Sc" />
							</a></li>

							<li><a href="rep_estadistica.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Edc" />
							</a></li>

						</ul></li>


					<li><a href="#mantenimiento" class="dropdown-toggle"> <i
							class="icon-cogs"></i> <span class="menu-text"> <fmt:message
									key="label.Mantenimiento" />
						</span> <b class="arrow icon-angle-down"></b>
					</a>
						<ul class="submenu">
							<li><a href="SvPerfiles"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Perfiles" />
							</a></li>

							<li><a href="man_usuarios.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Usuario" />
							</a></li>
						</ul></li>
					<li><a href="buzon.jsp"> <i class="icon-envelope-alt"></i>
							<span class="menu-text"> <fmt:message key="label.Buzon" />
								<span class="badge badge-primary ">5</span>
						</span>
					</a></li>
					<li><a href="calendario.jsp"> <i class="icon-calendar"></i>
							<span class="menu-text"><fmt:message
									key="label.Calendario" /> <span
								class="badge badge-transparent tooltip-error" title=""
								data-original-title="2 Important Events"> <i
									class="icon-warning-sign red bigger-130"></i>
							</span> </span>
					</a></li>

					<li><a href="timeline.jsp"> <i class="icon-code-fork"></i>
							<span class="menu-text"><fmt:message
									key="label.LineaTiempo" /> </span>
					</a></li>

					<li><a href="contenido.jsp"> <i class="icon-github"></i> <span
							class="menu-text"><fmt:message key="label.Contenido" /> </span>
					</a></li>
				</ul>
				<!-- /.nav-list -->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<div class="breadcrumbs breadcrumbs-fixed" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
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
									key="label.Registrar" /> <fmt:message key="label.Solicitud" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->




							<div class="row">
								<div class="col-sm-6">
									<div class="widget-box">
										<div class="widget-header">
											<h4>Datos del Solicitante</h4>
										</div>
										<div class="widget-main no-padding">
											<form>



												<fieldset>
													<label class="col-sm-2 control-label no-padding-right">Cliente</label>
													<input id="nomCliente" class="col-xs-10 col-sm-5" type="text"
														placeholder="Nombre Completo" readonly="true" /> <label
														class="col-xs-10 col-sm-3"> <a href="#modal-form" id="btnBuscar"
														role="button" class="btn btn-info" data-toggle="modal">
															<i class="icon-group"></i> Buscar Cliente
													</a>
													</label>
												</fieldset>
<!-- 												<fieldset> -->
<!-- 												<input type="button" id="btnlistar" value="Procesador"/> -->
												
<!-- 												</fieldset> -->
												<fieldset>
													<label class="col-sm-2 control-label no-padding-right">Codigo</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Codigo de Cliente" readonly="true" />

												</fieldset>

												<fieldset>
													<label class="col-sm-2 control-label no-padding-right">Suministro</label>
													<label class="col-xs-10 col-sm-5"> <select
														class="chosen-select col-xs-10 col-sm-11"
														data-placeholder="Choose a Suministro...">
															<option value="">&nbsp;</option>
															<option value="1026458487">1026458487</option>
															<option value="3026458475">3026458475</option>
															<option value="6026454632">6026454632</option>
															<option value="6526458654">6526458654</option>

													</select>
													</label>

												</fieldset>




											</form>
										</div>
									</div>

									<div class="space-6"></div>

									<div class="widget-box">
										<div class="widget-header">
											<h4>Informacion del cambio</h4>

										</div>

										<div class="widget-body">
											<div class="widget-main">
												<span class="input-icon"> Copia DNI </span> <input
													type="file" id="id-input-file-1" />
												<div class="space-6"></div>
												<span class="input-icon"> Archivo para evaluacion de
													cambio </span> <input type="file" id="id-input-file-1" />



											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="widget-box">
										<div class="widget-header">
											<h4>Datos del Suministro</h4>
										</div>

										<div class="widget-main no-padding">
											<form>
												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Direccion</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Direccion" readonly="true" />

												</fieldset>
												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Localidad</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Localidad" readonly="true" />

												</fieldset>
												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Distrito</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Distrito" readonly="true" />

												</fieldset>

												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Pisos</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Cantidad de Pisos" readonly="true" />

												</fieldset>

												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Tipo</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Tipo de Vivienda" readonly="true" />

												</fieldset>
												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Diametro</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Diametro de Tuberia" readonly="true" />

												</fieldset>
												<fieldset>
													<label class="col-sm-3 control-label no-padding-right">Categoria</label>
													<input class="col-xs-10 col-sm-5" type="text"
														placeholder="Categoria actual" readonly="true" />

												</fieldset>
											</form>
										</div>
									</div>


								</div>

							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="widget-box">
										<div class="widget-header">
											<h4>Razones para el cambio</h4>
										</div>
										<div class="widget-body">
											<div class="widget-main">
												<div>
													<label for="form-comentario"></label>
													<textarea id="form-comentario" class="form-control limited"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-12">
									<div class="widget-box">
<!-- 										<div class="widget-header"> -->
<!-- 											<h4>Acciones del formulario</h4> -->
<!-- 										</div> -->

										<div class="form-actions center">
											<button type="button" class="btn btn-primary"
												onclick="Enviar()">
												Enviar <i class="icon-share"></i>
											</button>
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											<button type="button" class="btn btn-warning"
												onclick="Limpiar()">
												Limpiar <i class="icon-share"></i>
											</button>
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											<button type="button" class="btn btn-danger"
												onclick="Cancelar()">
												Cancelar <i class="icon-share"></i>
											</button>
										</div>

									</div>
								</div>

							</div>

							<div id="modal-form" class="modal" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="blue bigger">Buscar Cliente <small> <i class="icon-double-angle-right"></i> Ingrese algun criterio de busqueda</small></h4>
											
										</div>
										<div class="modal-body overflow-visible">

											<div class="row">
												<div class="col-xs-12 col-sm-12	">
												
													<form>
													<fieldset>
														<label class="col-sm-4 control-label no-padding-right">Numero Documento</label> 
														<input id="DocumentoCli" onkeyUp="listarclientes();" class="col-xs-10 col-sm-5" type="text" placeholder="Nombre Client" /> 
													</fieldset>
													<div class="space-4"></div>
													<fieldset>
														<label class="col-sm-4 control-label no-padding-right">Nombre Cliente</label> 
														<input id="NombreCli" onkeyUp="listarclientes();" class="col-xs-10 col-sm-5" type="text" placeholder="Apellido Paterno" /> 
													</fieldset>
													<div class="space-4"></div>
													<fieldset>
														<label class="col-sm-4 control-label no-padding-right">Nombre Representante</label> 
														<input id="NombreRepresentanteCli" onkeyUp="listarclientes();" class="col-xs-10 col-sm-5" type="text" placeholder="Apellido Materno" /> 
													</fieldset>
													<div class="space-4"></div>
													<fieldset>
														<label class="col-sm-4 control-label no-padding-right">Apellido Representante</label> 
														<input id="ApellidoRepresentanteCli" onkeyUp="listarclientes();" class="col-xs-10 col-sm-5" type="text" placeholder="Codigo" /> 
													</fieldset>
													
													
													
													
													
													
													</form>
													
													<div class="space-4"></div>
													
													<div class="row">
														<div class="widget-header header-color-blue">
															<h5 class="bigger lighter">
																<i class="icon-table"></i> Lista de Clientes
															</h5>
														</div>
														<div id="table-cli" class="table-responsive" style="overflow:scroll;max-height: 570px;">
															<table id="defefef" class="table table-bordered"  style="margin-bottom: 0px;">
																<thead>
																	<tr>
																		<th width="100">Numero</th>
																		<th width="200">Cliente</th>
	
																		<th width="100"><i
																			class="icon-time bigger-110 hidden-480"></i> Fecha</th>
																		<th width="100">Estado</th>
																		<th width="100">DNI</th>
																	</tr>
																</thead>
	
																<tbody>
																	<tr>
																		<td>1009</td>
																		<td>John Paul</td>
																		<td>15-12-2013</td>
																		<td>Inspeccionada</td>
																		<td>43860566</td>
																	</tr>
																	<tr>
																		<td>1010</td>
																		<td>Chin Juan</td>
																		<td>15-12-2013</td>
																		<td>Inspeccionada</td>
																		<td>43860562</td>
																	</tr>
																	<tr>
																		<td>1011</td>
																		<td>Klin Edwards</td>
																		<td>15-12-2013</td>
																		<td>Inspeccionada</td>
																		<td>43860563</td>
																	</tr>
																	<tr>
																		<td>1012</td>
																		<td>Sandra Wilcox</td>
																		<td>15-12-2013</td>
																		<td>Inspeccionada</td>
																		<td>43860564</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<!-- /.table-responsive -->
														
													
													
													</div>
													


												</div>
											</div>



										</div>

										<div class="modal-footer">
											<button class="btn btn-sm" data-dismiss="modal">
												<i class="icon-remove"></i> Cancelar
											</button>

											<button class="btn btn-sm btn-primary">
												<i class="icon-ok"></i> Aceptar
											</button>
										</div>
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
			<div class="ace-settings-container fixed" id="ace-settings-container">
				<div class="btn btn-app btn-xs btn-info ace-settings-btn"
					id="ace-settings-btn">
					<i class="icon-comments bigger-150"></i>
				</div>

				<div class="ace-settings-box" id="ace-settings-box">
					<div>Este sera el chat</div>
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />








				</div>
			</div>
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

	<!--[if !IE]> 

	<script src="js/jquery.min.js"></script>

	 <![endif]-->

	<!--[if IE]> <![endif]-->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>


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

	<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="js/jquery.ui.touch-punch.min.js"></script>
	<!-- Script suficiente para la base los dos de arriba -->
	<script src="js/assets/chosen.jquery.min.js"></script>
	<!-- Seleccionar de una lista desplegable -->
	<script src="js/assets/fuelux/fuelux.spinner.min.js"></script>
	<!-- 		ace scripts -->
	<script src="js/assets/date-time/bootstrap-datepicker.min.js"></script>
	<!-- 	ace scripts -->
	<script src="js/assets/date-time/bootstrap-timepicker.min.js"></script>
	<!--	ace scripts -->
	<script src="js/assets/date-time/moment.min.js"></script>
	<!-- 			ace scripts -->
	<script src="js/assets/date-time/daterangepicker.min.js"></script>
	<!--FFF	 		ace scripts -->
	<script src="js/assets/bootstrap-colorpicker.min.js"></script>
	<!--				ace scripts -->
	<script src="js/assets/jquery.knob.min.js"></script>
	<!-- 				ace scripts -->
	<script src="js/assets/jquery.autosize.min.js"></script>
	<!-- 				ace scripts -->
	<script src="js/assets/jquery.inputlimiter.1.3.1.min.js"></script>
	<!-- 			ace scripts -->
	<script src="js/assets/jquery.maskedinput.min.js"></script>
	<!-- 			ace scripts -->
	<script src="js/assets/bootstrap-tag.min.js"></script>
	<!-- 			ace scripts -->

	<!-- ace scripts -->

	<script src="js/ace-elements.min.js"></script>
	<script src="js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$('#id-disable-check').on('click', function() {
				var inp = $('#form-input-readonly').get(0);
				if (inp.hasAttribute('disabled')) {
					inp.setAttribute('readonly', 'true');
					inp.removeAttribute('disabled');
					inp.value = "This text field is readonly!";
				} else {
					inp.setAttribute('disabled', 'disabled');
					inp.removeAttribute('readonly');
					inp.value = "This text field is disabled!";
				}
			});
			
			  $("tr").click(function () {
			        $(this).closest("tr").siblings().removeClass("highlighted");
			        $(this).toggleClass("highlighted");
			       /* 
			        var num = $(this).find('td').eq(0).html();
			        var nom = $(this).find('td').eq(1).html();
			        var fec = $(this).find('td').eq(2).html();
			        var est = $(this).find('td').eq(3).find('span').html();
			        $("#txtNumero").val(num);
				    $("#txtNombrePrueba").val(nom);
				    $("#txtFecha").val(fec);
				    $("#txtEstado").val(est);	*/
			   });

			$(".chosen-select").chosen();
			$('#chosen-multiple-style').on('click', function(e) {
				var target = $(e.target).find('input[type=radio]');
				var which = parseInt(target.val());
				if (which == 2)
					$('#form-field-select-4').addClass('tag-input-style');
				else
					$('#form-field-select-4').removeClass('tag-input-style');
			});

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			$('textarea[class*=autosize]').autosize({
				append : "\n"
			});
			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			$.mask.definitions['~'] = '[+-]';
			$('.input-mask-date').mask('99/99/9999');
			$('.input-mask-phone').mask('(999) 999-9999');
			$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
			$(".input-mask-product").mask("a*-999-a999", {
				placeholder : " ",
				completed : function() {
					alert("You typed the following: " + this.val());
				}
			});

			$("#input-size-slider").css('width', '200px').slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 8,
						step : 1,
						slide : function(event, ui) {
							var sizing = [ '', 'input-sm', 'input-lg',
									'input-mini', 'input-small',
									'input-medium', 'input-large',
									'input-xlarge', 'input-xxlarge' ];
							var val = parseInt(ui.value);
							$('#form-field-4').attr('class', sizing[val]).val(
									'.' + sizing[val]);
						}
					});

			$("#input-span-slider").slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 12,
						step : 1,
						slide : function(event, ui) {
							var val = parseInt(ui.value);
							$('#form-field-5').attr('class', 'col-xs-' + val)
									.val('.col-xs-' + val);
						}
					});

			$("#slider-range")
					.css('height', '200px')
					.slider(
							{
								orientation : "vertical",
								range : true,
								min : 0,
								max : 100,
								values : [ 17, 67 ],
								slide : function(event, ui) {
									var val = ui.values[$(ui.handle).index() - 1]
											+ "";

									if (!ui.handle.firstChild) {
										$(ui.handle)
												.append(
														"<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
									}
									$(ui.handle.firstChild).show().children()
											.eq(1).text(val);
								}
							}).find('a').on('blur', function() {
						$(this.firstChild).hide();
					});

			$("#slider-range-max").slider({
				range : "max",
				min : 1,
				max : 10,
				value : 2
			});

			$("#eq > span").css({
				width : '90%',
				'float' : 'left',
				margin : '15px'
			}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt($(this).text(), 10);
				$(this).empty().slider({
					value : value,
					range : "min",
					animate : true

				});
			});

			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file : 'No File ...',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});

			$('#id-input-file-3').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'icon-cloud-upload',
				droppable : true,
				thumbnail : 'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
					//Check an example below
					//or examples/file-upload.html
					return true;
				}*/
				/**,before_remove : function() {
					return true;
				}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}

			}).on('change', function() {
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});

			//dynamically change allowed formats by changing before_change callback function
			$('#id-file-format')
					.removeAttr('checked')
					.on(
							'change',
							function() {
								var before_change
								var btn_choose
								var no_icon
								if (this.checked) {
									btn_choose = "Drop images here or click to choose";
									no_icon = "icon-picture";
									before_change = function(files, dropped) {
										var allowed_files = [];
										for (var i = 0; i < files.length; i++) {
											var file = files[i];
											if (typeof file === "string") {
												//IE8 and browsers that don't support File Object
												if (!(/\.(jpe?g|png|gif|bmp)$/i)
														.test(file))
													return false;
											} else {
												var type = $.trim(file.type);
												if ((type.length > 0 && !(/^image\/(jpe?g|png|gif|bmp)$/i)
														.test(type))
														|| (type.length == 0 && !(/\.(jpe?g|png|gif|bmp)$/i)
																.test(file.name))//for android's default browser which gives an empty string for file.type
												)
													continue;//not an image so don't keep this file
											}

											allowed_files.push(file);
										}
										if (allowed_files.length == 0)
											return false;

										return allowed_files;
									}
								} else {
									btn_choose = "Drop files here or click to choose";
									no_icon = "icon-cloud-upload";
									before_change = function(files, dropped) {
										return files;
									}
								}
								var file_input = $('#id-input-file-3');
								file_input.ace_file_input('update_settings', {
									'before_change' : before_change,
									'btn_choose' : btn_choose,
									'no_icon' : no_icon
								})
								file_input.ace_file_input('reset_input');
							});

			$('#spinner1').ace_spinner({
				value : 0,
				min : 0,
				max : 200,
				step : 10,
				btn_up_class : 'btn-info',
				btn_down_class : 'btn-info'
			}).on('change', function() {
				//alert(this.value)
			});
			$('#spinner2').ace_spinner({
				value : 0,
				min : 0,
				max : 10000,
				step : 100,
				touch_spinner : true,
				icon_up : 'icon-caret-up',
				icon_down : 'icon-caret-down'
			});
			$('#spinner3').ace_spinner({
				value : 0,
				min : -100,
				max : 100,
				step : 10,
				on_sides : true,
				icon_up : 'icon-plus smaller-75',
				icon_down : 'icon-minus smaller-75',
				btn_up_class : 'btn-success',
				btn_down_class : 'btn-danger'
			});

			$('.date-picker').datepicker({
				autoclose : true
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});
			$('input[name=date-range-picker]').daterangepicker().prev().on(
					ace.click_event, function() {
						$(this).next().focus();
					});

			$('#timepicker1').timepicker({
				minuteStep : 1,
				showSeconds : true,
				showMeridian : false
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			$('#colorpicker1').colorpicker();
			$('#simple-colorpicker-1').ace_colorpicker();

			$(".knob").knob();

			//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
			var tag_input = $('#form-field-tags');
			if (!(/msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()))) {
				tag_input.tag({
					placeholder : tag_input.attr('placeholder'),
					//enable typeahead by specifying the source array
					source : ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead
				});
			} else {
				//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
				tag_input.after(
						'<textarea id="' + tag_input.attr('id') + '" name="'
								+ tag_input.attr('name') + '" rows="3">'
								+ tag_input.val() + '</textarea>').remove();
				//$('#form-field-tags').autosize({append: "\n"});
			}

			/////////
			$('#modal-form input[type=file]').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'icon-cloud-upload',
				droppable : true,
				thumbnail : 'large'
			})

			//chosen plugin inside a modal will have a zero width because the select element is originally hidden
			//and its width cannot be determined.
			//so we set the width after modal is show
			$('#modal-form').on('shown.bs.modal', function() {
				$(this).find('.chosen-container').each(function() {
					$(this).find('a:first-child').css('width', '210px');
					$(this).find('.chosen-drop').css('width', '210px');
					$(this).find('.chosen-search input').css('width', '200px');
				});
			})
			/**
			//or you can activate the chosen plugin after modal is shown
			//this way select element becomes visible with dimensions and chosen works as expected
			$('#modal-form').on('shown', function () {
				$(this).find('.modal-chosen').chosen();
			})
			 */

		});
	</script>
	<div class="tooltip top in"
		style="top: 447px; left: 980px; display: none;">
		<div class="tooltip-inner">social networks : 38.7%</div>
	</div>
	
		<script type="text/javascript">
	<!-- RENZO-->
	
		var cant = $('#sample-table-1 >tbody >tr').length;
		$("#lblCantidadSol").html('<strong>'+cant+'</strong>');
		function listarclientes(){
			var nomcli= $("#NombreCli").val();
			var doccli= $("#DocumentoCli").val();
			var nomrepcli= $("#NombreRepresentanteCli").val();
			var aperepcli= $("#ApellidoRepresentanteCli").val();
			
			$.get('SvCC_Solicitud',{nusuario:nomcli,ndoccli:doccli,nnomrepcli:nomrepcli,naperepcli:aperepcli},function(responselist){
				$('#table-cli').html(responselist);
			});
		}
	  
	
	</script>
</body>
</html>