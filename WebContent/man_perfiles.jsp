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
<title><fmt:message key="label.Mantenimiento" /> - <%=nombre%></title>

<meta name="description" content="overview &amp; stats">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- basic styles -->
<link rel="icon" href="img/favicon.ico" type="image/x-icon" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery.gritter.css">

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
		<c:set var="bandera" value="${sessionScope['javax.servlet.jsp.jstl.fmt.locale.session']}" scope="session"></c:set>
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
						class="dropdown-toggle" href="#"> <img src="img/${bandera}_flag.gif"
							class="msg-photo" alt="Idioma"> <span
							class="badge badge-grey"><fmt:message
									key="label.actualidioma" /></span>
					</a>

						<ul
							class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="icon-ok"></i> <fmt:message
									key="label.seleccionaidioma" /></li>


							<li><a href="?idioma=es"> <img
									src="img/es_flag.gif" class="msg-photo" alt="Castellano">
									<span class="msg-body"> <span class="msg-title">
											<span class="blue"><fmt:message key="label.español" /></span>
									</span>
								</span>
							</a></li>
							<li><a href="?idioma=en"> <img
									src="img/en_flag.gif" class="msg-photo" alt="Ingles"> <span
									class="msg-body"> <span class="msg-title"> <span
											class="blue"><fmt:message key="label.ingles" /></span>
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
					<li><a href="home.jsp"> <i
							class="icon-dashboard"></i> <span class="menu-text"> <fmt:message
									key="label.resumen" />
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
											<fmt:message key="label.Revisar" />
									</a></li>

									<li><a href="con_sol_consulta.jsp"> <i
											class="icon-eye-open"></i> <fmt:message key="label.Buscar" />
									</a></li>
								</ul></li>

							<li><a href="SvContrato"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Generar" />
							</a></li>

							<li><a href="con_consulta.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Cc" />
							</a></li>


						</ul></li>


					<li><a href="#" class="dropdown-toggle"> <i
							class="icon-share"></i> <span class="menu-text"><fmt:message
									key="label.Categoria" /> </span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li><a href="#" class="dropdown-toggle"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Solicitud" /><b class="arrow icon-angle-down"></b>
							</a>

								<ul class="submenu">
									<li><a href="cc_sol_registro.jsp"> <i
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

							<li><a href="SvReportes"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.EstSolicitudes" />
							</a></li>

						</ul></li>


					<li class="active open"><a href="#mantenimiento" class="dropdown-toggle"> <i
							class="icon-cog"></i> <span class="menu-text"> <fmt:message
									key="label.Mantenimiento" />
						</span> <b class="arrow icon-angle-down"></b>
					</a>
						<ul class="submenu">

							<li class="active"><a href="SvPerfiles"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Perfiles" />
							</a></li>

							<li><a href="SvUsuarios"> <i
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
						<li class="active"><fmt:message key="label.Mantenimiento" /></li>
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
						<h1> <fmt:message key="label.Mantenimiento" />
							<small> <i class="icon-double-angle-right"></i> <fmt:message key="label.Perfiles" /></small>
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
													<i class="icon-group"></i>
													Perfiles
												</h5>
									</div>
									<div class="table-responsive" style="overflow:scroll;max-height: 570px;">
											<table id="sample-table-1" class="table table-bordered " style="margin-bottom: 0px;">
												<thead>
													<tr>
														<th width="100" style="font-size: 11px;">ID</th>
														<th width="100" style="font-size: 11px;">Descripcion</th>
														<th width="100" style="font-size: 11px;">moduloContratos</th>
														<th width="100" style="font-size: 11px;">moduloCategorias</th>
														<th width="100" style="font-size: 11px;">moduloLiquidacion</th>
														<th width="100" style="font-size: 11px;">moduloReportes</th>
														<th width="100" style="font-size: 11px;">moduloManClientes</th>
														<th width="100" style="font-size: 11px;">moduloManPerfiles</th>
														<th width="100" style="font-size: 11px;">moduloManUsuarios</th>
														<th width="100" style="font-size: 11px;">moduloBuzon</th>
														<th width="100" style="font-size: 11px;">moduloCalendario</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="lista" items="${requestScope.listaPerfiles}">
														<tr>
															<td>${lista.idPerfil}</td>
															<td>${lista.desPerfil}</td>
															<td id="${lista.moduloContratos}">${lista.cad_moduloContratos}</td>
															<td id="${lista.moduloCategorias}">${lista.cad_moduloCategorias}</td>
															<td id="${lista.moduloLiquidacion}">${lista.cad_moduloLiquidacion}</td>
															<td id="${lista.moduloReportes}">${lista.cad_moduloReportes}</td>
															<td id="${lista.moduloManClientes}">${lista.cad_moduloManClientes}</td>
															<td id="${lista.moduloManPerfiles}">${lista.cad_moduloManPerfiles}</td>
															<td id="${lista.moduloManUsuarios}">${lista.cad_moduloManUsuarios}</td>
															<td id="${lista.moduloBuzon}">${lista.cad_moduloBuzon}</td>
															<td id="${lista.moduloCalendario}">${lista.cad_moduloCalendario}</td>
														</tr>
													</c:forEach>
												</tbody>
										</table>
									</div>
								</div>
							
								<div class="col-sm-6">
										<div class="tabbable">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active">
													<a data-toggle="tab" href="#tabAgregar">
														<i class="blue icon-edit bigger-150"></i>
														Agregar
													</a>
												</li>

												<li>
													<a data-toggle="tab" href="#tabActualizar">
														<i class="green icon-refresh bigger-150"></i>
														Actualizar														
													</a>
												</li>
												
												<li>
													<a data-toggle="tab" href="#tabEliminar">
														<i class="red icon-trash bigger-150"></i>
														Eliminar														
													</a>
												</li>

											</ul>

											<div class="tab-content">
												<div id="tabAgregar" class="tab-pane in active">
													<form method="post" action="SvPerfiles" >
													<br>
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">Descripcion:</label> 													
														<input class="col-sm-4" type="text" name="txtDescripcion" id="txtDescripcion" style="left: 20px;" required="required"/>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloContratos:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModContratos" name="chkModContratos" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5"/>
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManClientes:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManClientes" name="chkModManClientes" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloCategorias:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModCategorias" name="chkModCategorias" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManPerfiles:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManPerfiles" name="chkModManPerfiles" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloLiquidacion:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModLiquidacion" name="chkModLiquidacion" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManUsuarios:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManUsuarios" name="chkModManUsuarios" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloReportes:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModReportes" name="chkModReportes" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloBuzon:</label>
														<span style="margin-left: 130px;">
															<input id="chkModBuzon" name="chkModBuzon" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset style="padding-left: 17px;">
														<div class="col-sm-2"></div>
														<div class="col-sm-2"></div>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloCalendario:</label>
														<span style="margin-left: 133px;">
															<input id="chkModCalendario" name="chkModCalendario" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset style="padding-left: 400px;">
														<button class="btn btn-success" name="boton" id="boton" type="submit" value="Agregar">
															<i class="icon-edit"></i>
															Agregar
														</button>
													</fieldset>
													</form>
												</div>

												
												<div id="tabActualizar" class="tab-pane">
													<form action="SvPerfiles" method="post">
													<fieldset>
														<label class="col-sm-1 control-label no-padding-right" style="padding-top: 3px;">ID:</label> 													
														<input class="col-sm-2" type="text" name="txtID_act" id="txtID_act" readonly="readonly"/>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">Descripcion:</label> 													
														<input class="col-sm-4" type="text" name="txtDescripcion_act" id="txtDescripcion_act" style="left: 20px;" />
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloContratos:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModContratos_act" name="chkModContratos_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManClientes:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManClientes_act" name="chkModManClientes_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloCategorias:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModCategorias_act" name="chkModCategorias_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManPerfiles:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManPerfiles_act" name="chkModManPerfiles_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5"/>
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloLiquidacion:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModLiquidacion_act" name="chkModLiquidacion_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManUsuarios:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManUsuarios_act" name="chkModManUsuarios_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloReportes:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModReportes_act" name="chkModReportes_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5"/>
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloBuzon:</label>
														<span style="margin-left: 130px;">
															<input id="chkModBuzon_act" name="chkModBuzon_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset style="padding-left: 17px;">
														<div class="col-sm-2"></div>
														<div class="col-sm-2"></div>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloCalendario:</label>
														<span style="margin-left: 133px;">
															<input id="chkModCalendario_act" name="chkModCalendario_act" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<div class="col-sm-5"></div>
														<button class="btn btn-yellow" id="boton" name="boton" value="Actualizar">
															<i class="icon-refresh"></i>
															Actualizar
														</button>
													</fieldset>
												</form>
												</div>
												
												
												<div id="tabEliminar" class="tab-pane">
													<form action="SvPerfiles" method="post" id="formEliminar">
													<fieldset>
														<label class="col-sm-1 control-label no-padding-right" style="padding-top: 3px;">ID:</label> 													
														<input class="col-sm-2" type="text" name="txtID_eli" id="txtID_eli" readonly="readonly"/>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">Descripcion:</label> 													
														<input class="col-sm-4" type="text" name="txtDescripcion_eli" id="txtDescripcion_eli" style="left: 20px;" readonly="readonly"/>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloContratos:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModContratos_eli" name="chkModContratos_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManClientes:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManClientes_eli" name="chkModManClientes_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloCategorias:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModCategorias_eli" name="chkModCategorias_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManPerfiles:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManPerfiles_eli" name="chkModManPerfiles_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloLiquidacion:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModLiquidacion_eli" name="chkModLiquidacion_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloManUsuarios:</label>
														<span style="margin-left: 130px;">
															<input id="chkModManUsuarios_eli" name="chkModManUsuarios_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px;">moduloReportes:</label>
														<span class="col-sm-1" style="margin-left: 55px;">
															<input id="chkModReportes_eli" name="chkModReportes_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloBuzon:</label>
														<span style="margin-left: 130px;">
															<input id="chkModBuzon_eli" name="chkModBuzon_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled" />
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset style="padding-left: 17px;">
														<div class="col-sm-2"></div>
														<div class="col-sm-2"></div>
														
														<label class="col-sm-2 control-label no-padding-right" style="padding-top: 3px; left: 50px;">moduloCalendario:</label>
														<span style="margin-left: 133px;">
															<input id="chkModCalendario_eli" name="chkModCalendario_eli" checked="checked" type="checkbox" class="ace ace-switch ace-switch-5" disabled="disabled"/>
															<span class="lbl"></span>
														</span>
													</fieldset><br>
													
													<fieldset>
														<div class="col-sm-5"></div>
														<button class="btn btn-danger" id="boton" name="boton" value="Eliminar" onclick="confirmarEliminar()" type="submit">
															<i class="icon-trash"></i>
															Eliminar
														</button>
													</fieldset>
													
												</form>
												</div>

											</div>
										</div>
									</div><!-- /span -->
							
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
	
	<script src="js/bootbox.js"></script>
	<script src="js/jquery.gritter.min.js"></script>
	<script type="text/javascript">
	<!-- RENZO-->
	$(document).ready(function () {
		
		
	    $("tr").click(function () {
	        $(this).closest("tr").siblings().removeClass("highlighted");
	        $(this).toggleClass("highlighted");
	       
	        var id = $(this).find('td').eq(0).text();
	        var des = $(this).find('td').eq(1).text();
	        var moduloContratos = $(this).find('td').eq(2).prop('id');
	        var moduloCategorias = $(this).find('td').eq(3).prop('id');
	        var moduloLiquidacion = $(this).find('td').eq(4).prop('id');
	        var moduloReportes = $(this).find('td').eq(5).prop('id');
	        var moduloManClientes = $(this).find('td').eq(6).prop('id');
	        var moduloManPerfiles = $(this).find('td').eq(7).prop('id');
	        var moduloManUsuarios = $(this).find('td').eq(8).prop('id');
	        var moduloBuzon = $(this).find('td').eq(9).prop('id');
	        var moduloCalendario = $(this).find('td').eq(10).prop('id');
	        
	        $("#txtID_act").val(id);
		    $("#txtDescripcion_act").val(des);
		    $("#chkModContratos_act").prop('checked', parseInt(moduloContratos));
		    $("#chkModCategorias_act").prop('checked', parseInt(moduloCategorias));
		    $("#chkModLiquidacion_act").prop('checked', parseInt(moduloLiquidacion));
		    $("#chkModReportes_act").prop('checked', parseInt(moduloReportes));
		    $("#chkModManClientes_act").prop('checked', parseInt(moduloManClientes));
		    $("#chkModManPerfiles_act").prop('checked', parseInt(moduloManPerfiles));
		    $("#chkModManUsuarios_act").prop('checked', parseInt(moduloManUsuarios));
		    $("#chkModBuzon_act").prop('checked', parseInt(moduloBuzon));
		    $("#chkModCalendario_act").prop('checked', parseInt(moduloCalendario));
		    
		    $("#txtID_eli").val(id);
		    $("#txtDescripcion_eli").val(des);
		    $("#chkModContratos_eli").prop('checked', parseInt(moduloContratos));
		    $("#chkModCategorias_eli").prop('checked', parseInt(moduloCategorias));
		    $("#chkModLiquidacion_eli").prop('checked', parseInt(moduloLiquidacion));
		    $("#chkModReportes_eli").prop('checked', parseInt(moduloReportes));
		    $("#chkModManClientes_eli").prop('checked', parseInt(moduloManClientes));
		    $("#chkModManPerfiles_eli").prop('checked', parseInt(moduloManPerfiles));
		    $("#chkModManUsuarios_eli").prop('checked', parseInt(moduloManUsuarios));
		    $("#chkModBuzon_eli").prop('checked', parseInt(moduloBuzon));
		    $("#chkModCalendario_eli").prop('checked', parseInt(moduloCalendario));
	    });
	    
	    

 		if("${sessionScope.evento}"==1){
 			<% sesion.setAttribute("evento", 0); %>
 			$.gritter.add({
				title: "${sessionScope.mensaje.tituloMensajeAlerta}",
				text: "${sessionScope.mensaje.cuerpoMensajeAlerta}",
				image: "img/mensajes/${sessionScope.mensaje.imagenMensajeAlerta}",
				time: 2000,
				class_name: 'gritter-light gritter-info'
			});	
 		}
	});
	
	
	</script>
	
	
	
</body>
</html>