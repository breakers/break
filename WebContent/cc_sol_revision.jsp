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
<style type="text/css"></style>

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
							onclick="location.href='con_sol_revision.jsp';">
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

									<li><a href="con_sol_revision.jsp"> <i class="icon-ok"></i>
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
									<li><a href="cc_sol_registro.jsp"> <i
											class="icon-pencil"></i> <fmt:message key="label.Registrar" />
									</a></li>

									<li class="active"><a href="cc_sol_revision.jsp"> <i
											class="icon-ok"></i> <fmt:message key="label.Revisar" />
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
							class="icon-cog"></i> <span class="menu-text"> <fmt:message
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
									key="label.Revisar" /> <fmt:message key="label.Solicitud" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->


							<div class="row">

								<div class="col-sm-6">
									<div class="widget-header header-color-blue">
										<h5 class="bigger lighter">
											<i class="icon-table"></i> Solicitudes de Cambio de Categoria
										</h5>
									</div>
									<div class="table-responsive"
										style="overflow: scroll; max-height: 570px;">
										<table id="sample-table-1" class="table table-bordered "
											style="margin-bottom: 0px;">
											<thead>
												<tr>
													<th width="100">Numero</th>
													<th width="200">Cliente</th>

													<th width="100"><i
														class="icon-time bigger-110 hidden-480"></i> Fecha</th>
													<th width="100">Estado</th>

												</tr>
											</thead>

											<tbody>
												<c:forEach var="lista" items="${requestScope.lista}">
													<tr>
														<td>${lista.numero}</td>
														<td>${lista.nomUsuario}&nbsp${lista.apepaUsuario}&nbsp${lista.apemaUsuario}</td>
														<td>${lista.fecha}</td>
														<td class="hidden-480"><span
															class="label label-sm label-danger arrowed">${lista.estado}</span>
														</td>
													</tr>
												</c:forEach>

											</tbody>
										</table>
									</div>
									<!-- /.table-responsive -->

									<label class="col-sm-6 control-label no-padding-right"
										style="left: 200px; top: 5px; padding-left: 31px;">Cantidad
										de Solicitudes Pendientes:</label> <label id="lblCantidadSol"
										class="col-sm-3 control-label no-padding-right"
										style="left: 210px; top: 5px; padding-left: 0px;"><strong>9999</strong></label>
								</div>




								<div class="col-sm-6">
									<div class="widget-box">
										<div class="widget-header">
											<h4 class="smaller">Datos de la Solicitud</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<form>

													<fieldset>
														<label><strong>Datos Generales</strong></label>
													</fieldset>
													<fieldset>
														<label class="col-sm-3">Nro. de Solicitud:</label> <input
															class="col-sm-3 input-lg" type="text"
															name="txIdSolicitud" id="txtIdSolicitud"
															readonly="readonly" />

													</fieldset>
													<br>
													<fieldset>
														<label class="col-sm-3">Nombre Cliente:</label> <input
															class="col-sm-4" type="text" name="txtCliente"
															id="txtCliente" readonly="readonly" /><label
															class="col-sm-3"> <a href="#modal-cliente"
															class="btn btn-info" data-toggle="modal"
															style="height: 32px; padding-top: 0px; width: 153px; padding-left: 7px; padding-right: 4px;">
																<i class="icon-user"></i> Detalle Cliente
														</a>
														</label>
													</fieldset>
													<fieldset>
														<br> <label class="col-sm-3">Código Cliente:</label>
														<input class="col-sm-3" type="text" name="txtCodCliente"
															id="txtCodCliente" readonly="readonly" />
													</fieldset>
													<fieldset>
														<br> <label class="col-sm-3">Nro. Suministro:</label>
														<input class="col-sm-3" type="text" name="txtSuministro"
															id="txtSuministro" readonly="readonly" />
													</fieldset>
													<br>

													<fieldset>
														<label><strong>Datos del Servicio</strong></label>
													</fieldset>
													<fieldset>
														<label class="col-sm-3">Categoria Actual:</label> <input
															class="input-lg" type="text" name="txtCategoria"
															id="txtCategoria" readonly="readonly" />
													</fieldset>
													<br>
													<fieldset disabled>
														<label class="col-sm-3">Direccion:</label>
														<textarea class="col-sm-4" rows="3" name="txtDireccion"
															id="txtDireccion"
															style="height: 100px; background: rgb(245, 245, 245); border-color: rgb(181, 181, 181); resize: none;"
															readonly="readonly"></textarea>

													</fieldset>
													<br>
													<fieldset>
														<label class="col-sm-3">Nro. de Pisos:</label> <input
															type="text" name="txtPisos" id="txtPisos"
															readonly="readonly" />
													</fieldset>
													<fieldset>
														<br> <label class="col-sm-3">Diámetro
															Tuberia:</label> <input type="text" name="txtTuberia"
															id="txtTuberia" readonly="readonly" />
													</fieldset>
													<fieldset>
														<br> <label class="col-sm-3">Tipo de
															Vivienda:</label> <input type="text" name="txtTipVivienda"
															id="txtTipVivienda" readonly="readonly" />
													</fieldset>
													<br>
												</form>

											</div>
										</div>
									</div>
									<!-- /span -->

									<div class="space-6"></div>


								</div>


							</div>


							<div class="row">
								<div class="col-sm-12">
									<div class="widget-box">
										<div class="widget-header">
											<h4 class="smaller">Información del Cambio</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main" style="padding-bottom: 45px;">
												<div class="row">
													<div class="col-sm-6">

														<fieldset>
															<label><strong>Por qué debe hacerse el
																	cambio de Categoria</strong></label>
														</fieldset>

														<br>
														<fieldset>

															<textarea class="col-sm-10" id="txtMotivo"
																style="height: 100px; background: rgb(245, 245, 245); border-color: rgb(181, 181, 181); resize: none;"
																readonly="readonly"></textarea>

														</fieldset>
														<br>
														<fieldset></fieldset>

													</div>
													<div class="col-sm-6">


														<fieldset>
															<label><strong>Documentos</strong></label>
														</fieldset>
														<div class="hr hr-24"
															style="margin-top: 5px; margin-bottom: 10px;"></div>
														<fieldset>
															<label class="col-sm-7 control-label no-padding-right">Copia
																DNI: </label> <label class="col-sm-2"> <a id="lnkDNI"
																href="#" class="btn btn-info" data-toggle="modal"
																style="height: 32px; padding-top: 0px; width: 153px; padding-left: 7px; padding-right: 4px; top: 2px;">
																	<i class="icon-search"></i> Ver Documento
															</a>
															</label>
														</fieldset>
														<div class="hr hr-24"
															style="margin-top: 5px; margin-bottom: 10px;"></div>

														<fieldset>
															<label class="col-sm-7 control-label no-padding-right">Documento
																2 </label> <label class="col-sm-2"> <a id="lnkPartida"
																href="#" class="btn btn-info" data-toggle="modal"
																style="height: 32px; padding-top: 0px; width: 153px; padding-left: 7px; padding-right: 4px; top: 10px;">
																	<i class="icon-search"></i> Ver Documento
															</a>
															</label>
														</fieldset>

														<div class="hr hr-24"
															style="margin-top: 5px; margin-bottom: 10px;"></div>

														<fieldset>
															<label class="col-sm-7 control-label no-padding-right">Documento
																1 </label> <label class="col-sm-2"> <a
																id="lnkDocumento1" href="#" class="btn btn-info"
																data-toggle="modal"
																style="height: 32px; padding-top: 0px; width: 153px; padding-left: 7px; padding-right: 4px; top: 5px;">
																	<i class="icon-search"></i> Ver Documento
															</a>
															</label>
														</fieldset>



													</div>
												</div>
											</div>
										</div>
									</div>
								</div>



							</div>


							<div class="row">
								<!-- begins row botones -->
								<div class="hr hr-24"></div>
								<div class="col-sm-12" style="padding-left: 420px;">



									<button class="btn btn-success" type="button">
										<i class="icon-thumbs-up bigger-110"></i> Aprobar
									</button>

									&nbsp; &nbsp; &nbsp;

									<button class="btn btn-danger" type="button">
										<i class="icon-thumbs-down bigger-110"></i> Rechazar
									</button>
								</div>
							</div>

							<div id="modal-documento" class="modal" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="blue bigger">Documento de Identidad</h4>
										</div>

										<div class="modal-body">
											<img src="img/renzo-test/dni1.jpg" align="middle">

										</div>

										<div class="modal-footer">
											<button class="btn btn-sm" data-dismiss="modal">
												<i class="icon-remove"></i> Cerrar
											</button>

											<button class="btn btn-sm btn-primary">
												<i class="icon-download"></i> Descargar
											</button>
										</div>
									</div>
								</div>
							</div>





							<div id="modal-cliente" class="modal" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="blue bigger">
												Detalle de Cliente <small> <i
													class="icon-double-angle-right"></i> Información de Cliente
												</small>
											</h4>

										</div>
										<div class="modal-body overflow-visible">

											<div class="row">
												<div class="col-xs-12 col-sm-12	">

													<form>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Nombre
																Cliente</label> <input class="col-xs-10 col-sm-5" type="text"
																name="txtNomCliente" id="txtNomCliente"
																placeholder="Nombre Cliente" readonly="readonly" />
														</fieldset>
														<div class="space-4"></div>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Apellido
																Paterno</label> <input class="col-xs-10 col-sm-5" type="text"
																name="txtApepaCLiente" id="txtApepaCliente"
																placeholder="Apellido Paterno" readonly="readonly" />
														</fieldset>
														<div class="space-4"></div>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Apellido
																Materno</label> <input class="col-xs-10 col-sm-5" type="text"
																name="txtApemaCLiente" id="txtApemaCliente"
																placeholder="Apellido Materno" readonly="readonly" />
														</fieldset>
														<div class="space-4"></div>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Codigo
																Cliente</label> <input class="col-xs-10 col-sm-5" type="text"
																placeholder="Codigo" name="txtIdCLiente"
																id="txtIdCliente" readonly="readonly" />
														</fieldset>
														<div class="space-4"></div>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Correo
																Electronico</label> <input class="col-xs-10 col-sm-5"
																type="text" placeholder="Correo Electronico"
																name="txtIdCorreo" id="txtIdCorreo" readonly="readonly" />
														</fieldset>
														<div class="space-4"></div>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Teléfono</label>
															<input class="col-xs-10 col-sm-5" type="text"
																placeholder="Teléfono Fijo" name="txtTelefono"
																id="txtIdCliente" readonly="readonly" />
														</fieldset>
														<div class="space-4"></div>
														<fieldset>
															<label class="col-sm-4 control-label no-padding-right">Celular</label>
															<input class="col-xs-10 col-sm-5" type="text"
																placeholder="Teléfono Celular" name="txtCelular"
																id="txtIdCliente" readonly="readonly" />
														</fieldset>

													</form>

													<div class="space-4"></div>

													<div class="row">
														<div class="widget-header header-color-blue">
															<h5 class="bigger lighter">
																<i class="icon-table"></i> Lista de Suministros
															</h5>
														</div>
														<div class="table-responsive"
															style="overflow: scroll; max-height: 570px;">
															<table id="sample-table-1" class="table table-bordered"
																style="margin-bottom: 0px;">
																<thead>
																	<tr>
																		<th width="100">Cod. Suministro</th>
																		<th width="100">Cod. Contrato</th>

																		<th width="100"><i
																			class="icon-time bigger-110 hidden-480"></i> Fecha</th>
																	</tr>
																</thead>

																<tbody>
																	<tr>
																		<td>1009</td>
																		<td>312323</td>
																		<td>15-12-2013</td>
																	</tr>
																	<tr>
																		<td>231</td>
																		<td>7657</td>
																		<td>14-12-2013</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<!-- /.table-responsive -->

													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>














							<!-- /row -->

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



	<div class="tooltip top in"
		style="top: 447px; left: 980px; display: none;">
		<div class="tooltip-inner">social networks : 38.7%</div>
	</div>
</body>
</html>