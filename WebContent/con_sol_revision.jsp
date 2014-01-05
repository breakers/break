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
%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- ########### Modificar Label -->
<title><fmt:message key="label.Contratos" /> - <%=nombre%></title>

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

<body class="navbar-fixed breadcrumbs-fixed <%=skin%>" style="" onload="mostrar()">
<c:choose>
		<c:when test="${param.idioma != null}">
		<fmt:setLocale value="${param.idioma}" scope="session" />
		<c:set var="bandera" value="${param.idioma}" scope="session"></c:set>
		</c:when>
		<c:otherwise>
		<c:set var="bandera" value="${sessionScope['javax.servlet.jsp.jstl.fmt.locale.session']}" scope="session"></c:set>
		</c:otherwise>
	</c:choose>
	
<c:if test="${requestScope.lista == null}">
	<script type="text/javascript">
	location.href="SvCon_Solicitud";
	</script>
	</c:if>
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
					<li><a href="home.jsp"> <i
							class="icon-dashboard"></i> <span class="menu-text"> <fmt:message
									key="label.resumen" />
						</span>
					</a></li>


					<li class="active open"><a href="#" class="dropdown-toggle"> <i
							class="icon-edit"></i> <span class="menu-text"><fmt:message
									key="label.Contratos" /> </span> <b class="arrow icon-angle-down"></b>
					</a>

						<ul class="submenu">
							<li class="active open"><a href="#" class="dropdown-toggle"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Solicitud" /> <b class="arrow icon-angle-down"></b>
							</a>

								<ul class="submenu">

									<li class="active"><a href="con_sol_revision.jsp"> <i class="icon-ok"></i>
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

							<li><a href="rep_estadistica.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Edc" />
							</a></li>

						</ul></li>


					<li><a href="#mantenimiento" class="dropdown-toggle"> <i
							class="icon-group"></i> <span class="menu-text"> <fmt:message
									key="label.Mantenimiento" />
						</span> <b class="arrow icon-angle-down"></b>
					</a>
						<ul class="submenu">
							<li><a href="man_clientes.jsp"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Clientes" />
							</a></li>

							<li><a href="man_perfiles.jsp"> <i
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
						<li class="active"><fmt:message key="label.Contratos" /></li>
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
						<h1> <fmt:message key="label.Contratos" />
							<small> <i class="icon-double-angle-right"></i> <fmt:message key="label.Ee"></fmt:message></small>
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
													<i class="icon-table"></i>
													Solicitudes de Nueva Conexion
												</h5>
									</div>
									<div class="table-responsive" style="overflow:scroll;max-height: 570px;">
											<table id="sample-table-1" class="table table-bordered " style="margin-bottom: 0px;">
												<thead>
													<tr>
														<th width="100">Numero</th>
														<th width="200">Nombre</th>

														<th width="100">
															<i class="icon-time bigger-110 hidden-480"></i>
															Fecha
														</th>
														<th width="100">Estado</th>

													</tr>
												</thead>

												<tbody>
												<c:forEach var="lista" items="${requestScope.lista}">
													<tr>
														<td>${lista.numero}</td>
														<td>${lista.nombre}</td>
														<td>${lista.fecha}</td>
														<td class="hidden-480">
															<span class="label label-sm label-danger arrowed">${lista.estado}</span>
														</td>
													</tr>
												</c:forEach>
												
												
													

													
												</tbody>
											</table>
									</div><!-- /.table-responsive -->
									
									<label class="col-sm-6 control-label no-padding-right" style="left: 200px; top: 5px; padding-left: 31px;">Cantidad de Solicitudes Pendientes:</label>
									<label id="lblCantidadSol" class="col-sm-3 control-label no-padding-right" style="left: 210px; top: 5px; padding-left: 0px;"><strong>9999</strong></label>	
									</div>
								
							

									<!-- Datos del Solicitante -->
									<div class="col-sm-6">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="smaller">Datos del Solicitante</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main">
												<form>
												
													<fieldset>
														<label><strong>Datos Generales</strong></label>
													</fieldset>												
													<fieldset>
														<label class="col-sm-4">Nombre(s):</label> 													
														<input type="text" name="txtNombre" id="txtNombre" readonly="readonly"/>	
													</fieldset><br>
													<fieldset>
														<label class="col-sm-4">Apellido Paterno:</label> 
														<input type="text" name="txtApepat" id="txtApepat" readonly="readonly"/>
													</fieldset>
													<fieldset><br>
														<label class="col-sm-4">Apellido Materno:</label> 
														<input type="text" name="txtApemat" id="txtApemat" readonly="readonly"/>
													</fieldset>

													<br>

													<fieldset>
														<label><strong>Documento de Identidad</strong></label>
													</fieldset>
													<fieldset>
														<label class="col-sm-3 control-label no-padding-right">Tipo:</label> 													
														<input class="col-sm-4" type="text" name="txtTipo" id="txtTipo" readonly="readonly"/>
														
														<label class="col-sm-2" > <a href="#modal-documento" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px;">
																<i class="icon-search"></i> Ver Documento
														</a>
													</label>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">Numero:</label> 
														<input class="col-sm-4" type="text" name="txtNumero" id="txtNumero" readonly="readonly"/>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">R.U.C.:</label> 
														<input class="col-sm-4" type="text" name="txtRUC" id="txtRUC" readonly="readonly"/>
													<label class="col-sm-2" > <a href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 195px;padding-left: 3px;padding-right: 4px;">
																<i class="icon-search"></i> Ver Vigencia de Poder
														</a>
														</label>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">Raz. Social:</label> 
														<input class="col-sm-6" type="text" name="txtRaSocial" id="txtRaSocial" readonly="readonly"/>
													</fieldset>

													<br>

													<fieldset>
														<label><strong>Otros Datos</strong></label>
													</fieldset>
													<fieldset>
														<label class="col-sm-3">Telefono:</label> 													
														<input type="text" name="txtTelefono" id="txtTelefono" readonly="readonly"/>	
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">Celular:</label> 
														<input type="text" name="txtCelular" id="txtCelular" readonly="readonly"/>
													</fieldset>
													<fieldset><br>
														<label class="col-sm-3">Correo:</label> 
														<input type="text" name="txtCorreo" id="txtCorreo" readonly="readonly"/>
													</fieldset>
												</form>	
												
												</div>
											</div>
										</div>
									<!-- /span -->
									
									<div class="space-6"></div>
									
									
									</div><!-- ends col-sm-6 -->
								
							</div>	<!-- ends row -->
							
						<div class="row">	<!-- begins row datos del predio,documentos -->
						<div class="col-sm-6">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="smaller">Datos del Predio</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main" style="padding-bottom: 45px;">
												
												
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right">Provincia:</label> 													
														<input class="col-sm-3" type="text" name="txtProvincia" id="txtProvincia" readonly="readonly"/>
														
														<label class="col-sm-3 control-label no-padding-right"  style="padding-left: 80px;">Calle:</label> 													
														<input class="col-sm-3" type="text" name="txtCalle" id="txtCalle" readonly="readonly"/>
														
													</fieldset><br>
													<fieldset>
														<label class="col-sm-2" style="padding-left: 25px;">Distrito:</label> 
														<input class="col-sm-3" type="text" name="txtDistrito" id="txtDistrito" readonly="readonly"/>
														
														<label class="col-sm-3 control-label no-padding-right" style="padding-left: 60px;">Numero:</label>
														<input class="col-sm-3" type="text" name="txtNumero" id="txtNumero" readonly="readonly"/>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right">Localidad:</label> 													
														<input class="col-sm-3" type="text" name="txtLocalidad" id="txtLocalidad" readonly="readonly"/>
														
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3 control-label no-padding-right">Referencias:</label>
														<textarea class="col-sm-8" id="txtReferencias" style="height: 100px; background: rgb(245, 245, 245); border-color: rgb(181, 181, 181); resize: none;" readonly="readonly"></textarea>
														
													</fieldset><br>
													<fieldset>
														

													</fieldset>
												
												
												</div>
											</div>
										</div>
						</div>
						
						
						<div class="col-sm-6">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="smaller">Documentos</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main" style="padding-bottom: 5px;">
												
													<fieldset>
														<label class="col-sm-7 control-label no-padding-right">Partida Registral de Inscripción<br>y Copia Simple de Escritura Pública<br> de Compra-Venta</label> 													
														<label class="col-sm-2" > <a id="lnkPartida" href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px; top: 10px;">
																<i class="icon-search"></i> Ver Documento
														</a>
														</label>
													</fieldset>
													
												<div class="hr hr-24" style="margin-top: 5px; margin-bottom: 10px;"></div>
												
													<fieldset>
														<label class="col-sm-7 control-label no-padding-right">Memoria descriptiva firmada<br>por un Ing. Sanitario</label> 													
														<label class="col-sm-2" > <a id="lnkMemoria" href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px; top: 2px;">
																<i class="icon-search"></i> Ver Documento
														</a>
														</label>
													</fieldset>
												
												<div class="hr hr-24" style="margin-top: 5px; margin-bottom: 10px;"></div>
												
													<fieldset>
														<label class="col-sm-7 control-label no-padding-right">Plano de instalaciones sanitarias<br>firmado por un Ing. Sanitario</label> 													
														<label class="col-sm-2" > <a id="lnkPlanoInstalaciones" href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px; top: 5px;">
																<i class="icon-search"></i> Ver Documento
														</a>
														</label>
													</fieldset>
												
												<div class="hr hr-24" style="margin-top: 5px; margin-bottom: 10px;"></div>
												
													<fieldset>
														<label class="col-sm-7 control-label no-padding-right">Recibo Suministro vecino</label> 													
														<label class="col-sm-2" > <a id="lnkReciboVecino" href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px; top: 0px;">
																<i class="icon-search"></i> Ver Documento
														</a>
														</label>
													</fieldset>
												
												<div class="hr hr-24" style="margin-top: 5px; margin-bottom: 10px;"></div>
												
													<fieldset>
														<label class="col-sm-7 control-label no-padding-right">Plano de ubicacion o<br>croquis del predio</label> 													
														<label class="col-sm-2" > <a id="lnkPlanoUbicacion" href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px; top: 5px;">
																<i class="icon-search"></i> Ver Documento
														</a>
														</label>
													</fieldset>
																								
												</div>
											</div>
										</div>
						</div>
						</div>	<!-- ends row datos del predio,documentos -->
						
						<div class="row">	<!-- begins row botones -->
						<div class="hr hr-24"></div>
						<div class="col-sm-12" style="padding-left: 420px;">
						
						
						
							<button class="btn btn-success" type="button">
								<i class="icon-thumbs-up bigger-110"></i>
								Aprobar
							</button>

							&nbsp; &nbsp; &nbsp;
							
							<button class="btn btn-danger" type="button">
								<i class="icon-thumbs-down bigger-110"></i>
								Rechazar
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


							<!-- PAGE CONTENT ENDS -->
						</div> 
						
					</div> <!-- /.row -->
					
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
	
	
	<script type="text/javascript">
	<!-- RENZO-->
	$(document).ready(function () {
		var cant = $('#sample-table-1 >tbody >tr').length;
		$("#lblCantidadSol").html('<strong>'+cant+'</strong>');
		
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
	});
	
	</script>
	
</body>
</html>