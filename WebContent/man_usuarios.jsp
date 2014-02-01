<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="/WEB-INF/CTags.tld" prefix = "ctags"%>

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
											class="blue">Nico:</span> Ciao sociis natoque penatibus et
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


					<li class="active open"><a href="#mantenimiento"
						class="dropdown-toggle"> <i class="icon-cog"></i> <span
							class="menu-text"> <fmt:message key="label.Mantenimiento" />
						</span> <b class="arrow icon-angle-down"></b>
					</a>
						<ul class="submenu">

							<li><a href="SvPerfiles"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Perfiles" />
							</a></li>

							<li class="active"><a href="SvUsuarios"> <i
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
						<h1>
							<fmt:message key="label.Mantenimiento" />
							<small> <i class="icon-double-angle-right"></i> <fmt:message
									key="label.Usuario" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-sm-4">
									<div class="widget-header header-color-blue">
										<h5 class="bigger lighter">
											<i class="icon-user"></i> Usuarios
										</h5>
									</div>
									<div class="table-responsive"
										style="overflow: scroll; max-height: 570px;">
										<table id="sample-table-1" class="table table-bordered "
											style="margin-bottom: 0px;">
											<thead>
												<tr>
													<th width="100" style="font-size: 11px;">ID</th>
													<th width="100" style="font-size: 11px;">Nombre</th>
													<th width="100" style="font-size: 11px;">DNI</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="lista" items="${requestScope.listarUsuarios}">
													<tr onclick="document.location ='SvUsuarios?id=${lista.idUsuario}';">
														<td><label>${lista.idUsuario}</label></td>
														<td><label>${lista.nomUsuario}&nbsp${lista.apepaUsuario}&nbsp${lista.apemaUsuario}</label></td>
														<td><label>${lista.dniUsuario}</label></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>

								<div class="col-sm-8">
									<div class="tabbable">
										<ul class="nav nav-tabs" id="myTab">
											<li class="active"><a data-toggle="tab"
												href="#tabActualizar"> <i class="green icon-refresh bigger-150"></i>
													Actualizar
											</a></li>

											<li><a data-toggle="tab" href="#tabAgregar"> <i
													class="blue icon-edit bigger-150"></i> Agregar
											</a></li>

											<li><a data-toggle="tab" href="#tabEliminar"> <i
													class="red icon-trash bigger-150"></i> Eliminar
											</a></li>

										</ul>

										<div class="tab-content">
											<div id="tabActualizar" class="tab-pane in active">
												<form method="post" id="formModificar" action="SvUsuarios">
													<div class="row">
														<div class="col-sm-7">
															<br>

															<fieldset>
																<fieldset>
																	<label class="col-sm-3 control-label no-padding-right"
																		style="padding-top: 3px;">ID:</label> <input
																		class="col-xs-10 col-sm-9" type="text"
																		name="txtID_mod" id="txtId_mod" readonly="readonly" value="${requestScope.datosUsuario.idUsuario}"/>
																</fieldset>
																<br> <label
																	class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Usuario:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtUsuario_mod" id="txtUsuario_mod" value="${requestScope.datosUsuario.userUsuario}"/>
															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Contraseña:</label> <input
																	class="col-xs-10 col-sm-9"  type="text"
																	name="txtCon_mod" id="txtCon_mod" value="${requestScope.datosUsuario.passUsuario}"/>

															</fieldset>
															<br>

															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Nombre:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtNombre_mod" id="txtNombre_mod" value="${requestScope.datosUsuario.nomUsuario}"/>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Ape. Paterno:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtApepa_mod" id="txtApepa_mod"  value="${requestScope.datosUsuario.apepaUsuario}"/>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Ape. Materno:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtApema_mod" id="txtApema_mod" value="${requestScope.datosUsuario.apemaUsuario}"/>

															</fieldset>
															<br>

															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">DNI Usuario:</label> <input
																	class="col-xs-10 col-sm-9" type="text" maxlength="8"
																	name="txtDNI_mod" id="txtDNI_mod"  value="${requestScope.datosUsuario.dniUsuario}"/>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Correo:</label>
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="icon-envelope"></i>
																	</span> <input class="col-xs-10 col-sm-9" type="email"
																		name="txtCorreo_mod" id="txtCorreo_mod" value="${requestScope.datosUsuario.correoUsuario}"/>
																</div>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Teléfono:</label>
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="icon-phone"></i>
																	</span> <input class="col-xs-10 col-sm-9" type="text"
																		name="txtTelefono_mod" id="txtTelefono_mod" value="${requestScope.datosUsuario.telefonoUsuario }"/>
																</div>

															</fieldset>
															<br>
														</div>
														<div class="col-sm-5 center">

															<span class="profile-picture"> <img
																class="editable img-responsive" alt="Prueba" id="avatar"
																src="img/users/${requestScope.datosUsuario.idUsuario != null ? requestScope.datosUsuario.idUsuario : 'profile-pic' }.jpg">
															</span>

															<div class="space space-4"></div>

															<a href="#" class="btn btn-xs btn-block btn-yellow">
																<i class="icon-refresh bigger-120"></i> <span
																class="bigger-110">Cambiar Foto</span>
															</a>

															<div class="space space-10"></div>



															<fieldset>
																<label class="col-sm-12 control-label no-padding-right"
																	style="padding-top: 3px;">Tipo de
																	Perfil:</label>
																<select class="form-control col-xs-10 col-sm-5"	id="cboPerfil_mod" name="cboPerfil_mod" >
																	<option value="">-- Seleccione el Tipo de Perfil</option>
																	<c:forEach var="perfil" items="${requestScope.perfiles}">
																	<c:if test="${perfil.idPerfil == requestScope.datosUsuario.idPerfil }">
																	<c:set var="encontroperfil" value="selected=\"selected\""></c:set>
																	</c:if>
																	<option value="${perfil.idPerfil}" ${encontroperfil}>${perfil.desPerfil}</option>
																	<c:set var="encontroperfil" value=""></c:set>
																	</c:forEach>
																</select>
															</fieldset>
															<br>

															<div class="space space-10"></div>
															<fieldset>

																<button class="btn btn-lg btn-block btn-yellow"
																	id="boton" name="boton" value="Actualizar"
																	type="submit">
																	<i class="icon-refresh"></i> <span class="bigger-110">Actualizar
																		Usuario</span>
																</button>
<!-- 																<button class="btn btn-sm" type="reset"> -->
<!-- 																	<i class="icon-undo bigger-110"></i> -->
<!-- 																</button> -->
															</fieldset>


															<br>


														</div>
													</div>
												</form>

											</div>


											<div id="tabAgregar" class="tab-pane"><form id="formAgregar" method="post" action="SvUsuarios">
													<div class="row">
														<div class="col-sm-7">
															<br>

															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Usuario:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtUsuario" id="txtUsuario"
																	placeholder="Ingrese Usuario" />
															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Contraseña:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtCon" id="txtCon"
																	placeholder="Ingrese Password" />

															</fieldset>
															<br>

															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Nombre:</label> <input
																	class="col-xs-10 col-sm-9" type="text" name="txtNombre"
																	id="txtNombre" placeholder="Ingrese Nombre" />

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Ape. Paterno:</label> <input
																	class="col-xs-10 col-sm-9" type="text" name="txtApepa"
																	id="txtApepa" placeholder="Ingrese Apellido Paterno" />

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Ape. Materno:</label> <input
																	class="col-xs-10 col-sm-9" type="text" name="txtApema"
																	id="txtApema" placeholder="Ingrese Apellido Materno" />

															</fieldset>
															<br>

															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">DNI Usuario:</label> <input
																	class="col-xs-10 col-sm-9" type="text" maxlength="8"
																	name="txtDNI" id="txtDNI" placeholder="Ingrese DNI" />

															</fieldset>
															<br>
															<fieldset>

																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Correo:</label>
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="icon-envelope"></i>
																	</span> <input class="col-xs-10 col-sm-9" type="email"
																		name="txtCorreo" id="txtCorreo" />
																</div>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Teléfono:</label>
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="icon-phone"></i>
																	</span> <input class="col-xs-10 col-sm-9 " type="text"
																		name="txtTelefono" id="txtTelefono" />
																</div>

															</fieldset>
															<br>
														</div>
														<div class="col-sm-5 center">

															<span class="profile-picture"> <img
																class="editable img-responsive" alt="Prueba" id="avatar"
																src="img/users/profile-pic.jpg">
															</span>

															<div class="space space-4"></div>

															<a href="#" class="btn btn-xs btn-block btn-info"> <i
																class="icon-plus-sign bigger-120"></i> <span
																class="bigger-110">Subir Foto</span>
															</a> <a href="#" class="btn btn-xs btn-block btn-danger">
																<i class="icon-remove-sign bigger-110"></i> <span
																class="bigger-110">Eliminar Foto</span>
															</a>

															<div class="space space-10"></div>



															<fieldset>
																<label class="col-sm-12 control-label no-padding-right"
																	style="padding-top: 3px;">Seleccione Tipo de
																	Perfil:</label> <select class="form-control col-xs-10 col-sm-5"
																	id="cboPerfil" name="cboPerfil">
																	<option value="">-- Seleccione el Tipo de Perfil</option>
																	<c:forEach var="perfil" items="${requestScope.perfiles}">
																	<option value="${perfil.idPerfil}">${perfil.desPerfil}</option>
																	</c:forEach>
																</select>
															</fieldset>
															<br>
															<fieldset>

																<button class="btn btn-lg btn-block btn-success"
																	id="boton" name="boton" value="Agregar" type="submit">
																	<i class="icon-edit"></i> <span class="bigger-110">Agregar
																		Usuario </span>
																</button>
																<button class="btn btn-sm" type="reset">

																	<i class="icon-undo bigger-110"></i>


																</button>
															</fieldset>

														</div>
													</div>
												</form>
												

											</div>


											<div id="tabEliminar" class="tab-pane">
												<form method="post" id="formEliminar" action="SvUsuarios">
													<div class="row">
														<div class="col-sm-7">
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">ID:</label> <input
																	class="col-xs-10 col-sm-9" type="text" name="txtId_eli"
																	id="txtId_eli" readonly="readonly" value="${requestScope.datosUsuario.idUsuario}"/>
															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Usuario:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtUsuario_eli" id="txtUsuario_eli"
																	disabled="disabled" value="${requestScope.datosUsuario.userUsuario}"/>
															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Contraseña:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtCon_eli" id="txtCon_eli" disabled="disabled" value="${requestScope.datosUsuario.passUsuario}"/>

															</fieldset>
															<br>

															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Nombre:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtNombre_eli" id="txtNombre_eli"
																	disabled="disabled" value="${requestScope.datosUsuario.nomUsuario}"/>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Ape. Paterno:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtApepa_eli" id="txtApepa_eli"
																	disabled="disabled" value="${requestScope.datosUsuario.apepaUsuario}"/>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Ape. Materno:</label> <input
																	class="col-xs-10 col-sm-9" type="text"
																	name="txtApema_eli" id="txtApema_eli"
																	disabled="disabled" value="${requestScope.datosUsuario.apemaUsuario}"/>

															</fieldset>
															<br>


															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">DNI Usuario:</label> <input
																	class="col-xs-10 col-sm-9" type="text" maxlength="8"
																	name="txtDNI_eli" id="txtDNI_eli" disabled="disabled" value="${requestScope.datosUsuario.dniUsuario}"/>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Correo:</label>
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="icon-envelope"></i>
																	</span> <input class="col-xs-10 col-sm-9" type="email"
																		name="txtCorreo_eli" id="txtCorreo_eli"
																		disabled="disabled" value="${requestScope.datosUsuario.correoUsuario}"/>
																</div>

															</fieldset>
															<br>
															<fieldset>
																<label class="col-sm-3 control-label no-padding-right"
																	style="padding-top: 3px;">Teléfono:</label>
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="icon-phone"></i>
																	</span> <input class="col-xs-10 col-sm-9" type="tel"
																		name="txtTelefono_eli" id="txtTelefono_eli"
																		disabled="disabled" value="${requestScope.datosUsuario.telefonoUsuario }"/>
																</div>

															</fieldset>
															<br>
														</div>
														<div class="col-sm-5 center">

															<span class="profile-picture"> <img
																class="editable img-responsive" alt="Prueba" id="avatar"
																src="img/users/${requestScope.datosUsuario.idUsuario}.jpg">
															</span>

															<div class="space space-4"></div>


															<fieldset>
																<label class="col-sm-12 control-label no-padding-right"
																	style="padding-top: 3px;">Tipo de Perfil:</label> <select
																	class="form-control col-xs-10 col-sm-5" id="cboPerfil"
																	name="cboPerfil" disabled="disabled">
																	<c:forEach var="perfil" items="${requestScope.perfiles}">
																	<c:if test="${perfil.idPerfil == requestScope.datosUsuario.idPerfil }">
																	<c:set var="idperfil" value="${perfi.idPerfil}"/>
																	<c:set var="desperf" value="${perfil.desPerfil}"/>
																	</c:if>
																	</c:forEach>
																	<option value="${idperfil}">${desperf}</option>
																</select>
															</fieldset>
															<br>

															<fieldset>
																<button class="btn btn-lg btn-block btn-danger"
																	id="boton" name="boton" value="Eliminar"
																	onclick="confirmarEliminar()" type="submit">
																	<i class="icon-trash"></i> <span class="bigger-110">Eliminar
																		Usuario</span>
																</button>
															</fieldset>

														</div>
													</div>
												</form>
											</div>

										</div>
									</div>
								</div>
								<!-- /span -->

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
	<script src="js/bootbox.js"></script>
	<!--[if lte IE 8]>
		  <script src="js/excanvas.min.js"></script>
		<![endif]-->

	<!-- ace scripts -->

	<script src="js/ace-elements.min.js"></script>
	<script src="js/ace.min.js"></script>
	<script src="js/assets/jquery.maskedinput.min.js"></script>
	<script src="js/jquery.gritter.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(document).ready(function(){
			  $("tr").click(function (){
			        $(this).closest("tr").siblings().removeClass("highlighted");
			        $(this).toggleClass("highlighted");
			        
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
	
	
		jQuery(function($) {
			$.mask.definitions['~'] = '[+-]';
			$('#txtTelefono').mask('(99) 999-9999');
			$('#txtTelefono_mod').mask('(99) 999-9999');

			jQuery.validator.addMethod("valTel", function(value, element) {
				return this.optional(element)
						|| /^\(\d{2}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
			}, "Ingresa un número de teléfono válido.");

			//--------------VALIDACION (AGREGAR)---------------------	
			$('#formAgregar').validate(
					{
						errorElement : 'imput',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							txtUsuario : {
								required : true,
							},
							txtCon : {
								required : true
							},
							txtNombre : {
								required : true
							},
							txtApepa : {
								required : true
							},
							txtApema : {
								required : true
							},
							txtDNI : {
								required : true

							},
							txtCorreo : {
								required : true,
							},
							txtTelefono : {
								required : true,
								valTel : 'required'
							}

						},

						messages : {
							txtUsuario : {
								required : "Debe Generarse Automaticamente"
							},
							txtCon : {
								required : "Debe Generar la Password"
							},
							txtNombre : {
								required : "Debe Ingresar Su Nombre"
							},
							txtApepa : {
								required : "Debe Ingresar su Apellido Paterno"
							},
							txtApema : {
								required : "Debe Ingresar su Apellido Materno"
							},
							txtDNI : {
								required : "Debe Ingresar su DNI"

							},
							txtCorreo : {
								required : "Debe Ingresar su Correo",
							},
							txtTelefono : {
								required : "Debe Ingresar Telefono"
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass('has-info')
									.addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group')
									.removeClass('has-error').addClass(
											'has-info');
							$(e).remove();
						}

					});
			//--------------VALIDACION (MODIFICAR)---------------------
			$('#formModificar').validate(
					{
						errorElement : 'imput',
						errorClass : 'help-block',
						focusInvalid : false,
						rules : {
							txtUsuario_mod : {
								required : true,
							},
							txtCon_mod : {
								required : true
							},
							txtNombre_mod : {
								required : true
							},
							txtApepa_mod : {
								required : true
							},
							txtApema_mod : {
								required : true
							},
							txtDNI_mod : {
								required : true

							},
							txtCorreo_mod : {
								required : true,
							},
							txtTelefono_mod : {
								required : true,
								valTel : 'required'
							}

						},

						messages : {
							txtUsuario_mod : {
								required : "Debe Generarse Automaticamente"
							},
							txtCon_mod : {
								required : "Debe Generar la Password"
							},
							txtNombre_mod : {
								required : "Debe Ingresar Su Nombre"
							},
							txtApepa_mod : {
								required : "Debe Ingresar su Apellido Paterno"
							},
							txtApema_mod : {
								required : "Debe Ingresar su Apellido Materno"
							},
							txtDNI_mod : {
								required : "Debe Ingresar su DNI"

							},
							txtCorreo_mod : {
								required : "Debe Ingresar su Correo",
							},
							txtTelefono_mod : {
								required : "Debe Ingresar Telefono"
							}
						},

						invalidHandler : function(event, validator) { //display error alert on form submit   
							$('.alert-danger', $('.login-form')).show();
						},

						highlight : function(e) {
							$(e).closest('.form-group').removeClass('has-info')
									.addClass('has-error');
						},

						success : function(e) {
							$(e).closest('.form-group')
									.removeClass('has-error').addClass(
											'has-info');
							$(e).remove();
						}

					});
		});
	</script>



</body>
</html>