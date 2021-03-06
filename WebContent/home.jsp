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
<title>Dashboard - <%=nombre%></title>

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
<link rel="stylesheet" href="css/jquery.gritter.css">
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


							<li><a href="home.jsp?idioma=es"> <img
									src="img/es_flag.gif" class="msg-photo" alt="Castellano">
									<span class="msg-body"> <span class="msg-title">
											<span class="blue"><fmt:message key="label.español" /></span>
									</span>
								</span>
							</a></li>
							<li><a href="home.jsp?idioma=en"> <img
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
					<li class="active"><a href="home.jsp"> <i
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
											<fmt:message key="label.Evaluar" />
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
							<li><a href="SvReportes"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.Sc" />
							</a></li>

							<li><a href="SvReportes"> <i
									class="icon-double-angle-right"></i> <fmt:message
										key="label.EstSolicitudes" />
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
						<li class="active">Dashboard</li>
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
						<h1>
							Dashboard <small> <i class="icon-double-angle-right"></i>
								estadisticas &amp; resumen
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="alert alert-block alert-success">
								<button type="button" class="close" data-dismiss="alert">
									<i class="icon-remove"></i>
								</button>

								<i class="icon-ok green"></i> Bienvenido a <strong class="green">
									break <small>(v6.1)</small>
								</strong> , el sistema de gestion rico en caracteristicas y facil de
								usar.
							</div>

							<div class="row">
								<div class="space-6"></div>

								<div class="col-sm-7 infobox-container">
									<div class="infobox infobox-green  ">
										<div class="infobox-icon">
											<i class="icon-comments"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">32</span>
											<div class="infobox-content">comentarios + 2 reviews</div>
										</div>
										<div class="stat stat-success">8%</div>
									</div>

									<div class="infobox infobox-blue  ">
										<div class="infobox-icon">
											<i class="icon-twitter"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">11</span>
											<div class="infobox-content">nuevos seguidores</div>
										</div>

										<div class="badge badge-success">
											+32% <i class="icon-arrow-up"></i>
										</div>
									</div>

									<div class="infobox infobox-pink  ">
										<div class="infobox-icon">
											<i class="icon-shopping-cart"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">8</span>
											<div class="infobox-content">nuevas ordenes</div>
										</div>
										<div class="stat stat-important">4%</div>
									</div>

									<div class="infobox infobox-red  ">
										<div class="infobox-icon">
											<i class="icon-beaker"></i>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">7</span>
											<div class="infobox-content">experimentos</div>
										</div>
									</div>

									<div class="infobox infobox-orange2  ">
										<div class="infobox-chart">
											<span class="sparkline"
												data-values="196,128,202,177,154,94,100,170,224"><canvas
													width="44" height="33"
													style="display: inline-block; width: 44px; height: 33px; vertical-align: top;"></canvas></span>
										</div>

										<div class="infobox-data">
											<span class="infobox-data-number">6,251</span>
											<div class="infobox-content">visitas</div>
										</div>

										<div class="badge badge-success">
											7.2% <i class="icon-arrow-up"></i>
										</div>
									</div>

									<div class="infobox infobox-blue2  ">
										<div class="infobox-progress">
											<div class="easy-pie-chart percentage easyPieChart"
												data-percent="42" data-size="46"
												style="width: 46px; height: 46px; line-height: 46px;">
												<span class="percent">42</span>%
												<canvas width="46" height="46"></canvas>
											</div>
										</div>

										<div class="infobox-data">
											<span class="infobox-text">trafico usado</span>

											<div class="infobox-content">
												<span class="bigger-110">~</span> 58GB disponible
											</div>
										</div>
									</div>

									<div class="space-6"></div>

									<div class="infobox infobox-green infobox-small infobox-dark">
										<div class="infobox-progress">
											<div class="easy-pie-chart percentage easyPieChart"
												data-percent="61" data-size="39"
												style="width: 39px; height: 39px; line-height: 39px;">
												<span class="percent">61</span>%
												<canvas width="39" height="39"></canvas>
											</div>
										</div>

										<div class="infobox-data">
											<div class="infobox-content">Tarea</div>
											<div class="infobox-content">Completada</div>
										</div>
									</div>

									<div class="infobox infobox-blue infobox-small infobox-dark">
										<div class="infobox-chart">
											<span class="sparkline" data-values="3,4,2,3,4,4,2,2"><canvas
													width="39" height="19"
													style="display: inline-block; width: 39px; height: 19px; vertical-align: top;"></canvas></span>
										</div>

										<div class="infobox-data">
											<div class="infobox-content">Ganancias</div>
											<div class="infobox-content">$32,000</div>
										</div>
									</div>

									<div class="infobox infobox-grey infobox-small infobox-dark">
										<div class="infobox-icon">
											<i class="icon-download-alt"></i>
										</div>

										<div class="infobox-data">
											<div class="infobox-content">Descargas</div>
											<div class="infobox-content">1,205</div>
										</div>
									</div>
								</div>

								<div class="vspace-sm"></div>

								<div class="col-sm-5">
									<div class="widget-box">
										<div
											class="widget-header widget-header-flat widget-header-small">
											<h5>
												<i class="icon-signal"></i> Trafico de Recursos
											</h5>

											<div class="widget-toolbar no-border">
												<button class="btn btn-minier btn-primary dropdown-toggle"
													data-toggle="dropdown">
													Esta Semana <i
														class="icon-angle-down icon-on-right bigger-110"></i>
												</button>

												<ul
													class="dropdown-menu pull-right dropdown-125 dropdown-lighter dropdown-caret">
													<li class="active"><a href="#" class="blue"> <i
															class="icon-caret-right bigger-110">&nbsp;</i> Esta
															Semana
													</a></li>

													<li><a href="#"> <i
															class="icon-caret-right bigger-110 invisible">&nbsp;</i>
															Ultima Semana
													</a></li>

													<li><a href="#"> <i
															class="icon-caret-right bigger-110 invisible">&nbsp;</i>
															Este Mes
													</a></li>

													<li><a href="#"> <i
															class="icon-caret-right bigger-110 invisible">&nbsp;</i>
															Ultimo Mes
													</a></li>
												</ul>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div id="piechart-placeholder"
													style="width: 90%; min-height: 150px; padding: 0px; position: relative;">
													<canvas class="flot-base"
														style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 367px; height: 150px;"
														width="367" height="150"></canvas>
													<canvas class="flot-overlay"
														style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 367px; height: 150px;"
														width="367" height="150"></canvas>
													<div class="legend">
														<div
															style="position: absolute; width: 95px; height: 110px; top: 15px; right: -30px; background-color: rgb(255, 255, 255); opacity: 0.85;">
														</div>
														<table
															style="position: absolute; top: 15px; right: -30px;; font-size: smaller; color: #545454">
															<tbody>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid null; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid #68BC31; overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">redes sociales</td>
																</tr>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid null; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid #2091CF; overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">buscadores</td>
																</tr>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid null; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid #AF4E96; overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">campañas AD</td>
																</tr>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid null; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid #DA5430; overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">trafico directo</td>
																</tr>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid null; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid #FEE074; overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">otros</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>

												<div class="hr hr8 hr-double"></div>

												<div class="clearfix">
													<div class="grid3">
														<span class="grey"> <i
															class="icon-facebook-sign icon-2x blue"></i> &nbsp; likes
														</span>
														<h4 class="bigger pull-right">1,255</h4>
													</div>

													<div class="grid3">
														<span class="grey"> <i
															class="icon-twitter-sign icon-2x purple"></i> &nbsp;
															tweets
														</span>
														<h4 class="bigger pull-right">941</h4>
													</div>

													<div class="grid3">
														<span class="grey"> <i
															class="icon-pinterest-sign icon-2x red"></i> &nbsp; pins
														</span>
														<h4 class="bigger pull-right">1,050</h4>
													</div>
												</div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
									<!-- /widget-box -->
								</div>
								<!-- /span -->
							</div>
							<!-- /row -->

							<div class="hr hr32 hr-dotted"></div>

							<div class="row">
								<div class="col-sm-5">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-flat">
											<h4 class="lighter">
												<i class="icon-star orange"></i> Dominios Populares
											</h4>

											<div class="widget-toolbar">
												<a href="#" data-action="collapse"> <i
													class="icon-chevron-up"></i>
												</a>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main no-padding">
												<table class="table table-bordered table-striped">
													<thead class="thin-border-bottom">
														<tr>
															<th><i class="icon-caret-right blue"></i> nombre</th>

															<th><i class="icon-caret-right blue"></i> precio</th>

															<th class="hidden-480"><i
																class="icon-caret-right blue"></i> estado</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td>break.com</td>

															<td><small> <s class="red">$29.99</s>
															</small> <b class="green">$19.99</b></td>

															<td class="hidden-480"><span
																class="label label-info arrowed-right arrowed-in">on
																	sale</span></td>
														</tr>

														<tr>
															<td>sedapar.com</td>

															<td><small> <s class="red"></s>
															</small> <b class="green">$16.45</b></td>

															<td class="hidden-480"><span
																class="label label-success arrowed-in arrowed-in-right">approved</span>
															</td>
														</tr>

														<tr>
															<td>sedapar.com.pe</td>

															<td><small> <s class="red"></s>
															</small> <b class="green">$15.00</b></td>

															<td class="hidden-480"><span
																class="label label-danger arrowed">pending</span></td>
														</tr>

														<tr>
															<td>sedaparbreak.com</td>

															<td><small> <s class="red">$24.99</s>
															</small> <b class="green">$19.95</b></td>

															<td class="hidden-480"><span class="label arrowed">
																	<s>out of stock</s>
															</span></td>
														</tr>

														<tr>
															<td>sedapar.pe</td>

															<td><small> <s class="red"></s>
															</small> <b class="green">$12.00</b></td>

															<td class="hidden-480"><span
																class="label label-warning arrowed arrowed-right">SOLD</span>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
									<!-- /widget-box -->
								</div>

								<div class="col-sm-7">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-flat">
											<h4 class="lighter">
												<i class="icon-signal"></i> Stats de Ventas
											</h4>

											<div class="widget-toolbar">
												<a href="#" data-action="collapse"> <i
													class="icon-chevron-up"></i>
												</a>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main padding-4">
												<div id="sales-charts"
													style="width: 100%; height: 220px; padding: 0px; position: relative;">
													<canvas class="flot-base"
														style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 610px; height: 220px;"
														width="610" height="220"></canvas>
													<div class="flot-text"
														style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
														<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
															style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 30px; text-align: center;">0.0</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 121px; text-align: center;">1.0</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 212px; text-align: center;">2.0</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 303px; text-align: center;">3.0</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 394px; text-align: center;">4.0</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 485px; text-align: center;">5.0</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; max-width: 64px; top: 203px; left: 576px; text-align: center;">6.0</div>
														</div>
														<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
															style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 190px; left: 1px; text-align: right;">-2.000</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 166px; left: 1px; text-align: right;">-1.500</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 143px; left: 1px; text-align: right;">-1.000</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 119px; left: 1px; text-align: right;">-0.500</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 95px; left: 5px; text-align: right;">0.000</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 71px; left: 5px; text-align: right;">0.500</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 48px; left: 5px; text-align: right;">1.000</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 24px; left: 5px; text-align: right;">1.500</div>
															<div class="flot-tick-label tickLabel"
																style="position: absolute; top: 0px; left: 5px; text-align: right;">2.000</div>
														</div>
													</div>
													<canvas class="flot-overlay"
														style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 610px; height: 220px;"
														width="610" height="220"></canvas>
													<div class="legend">
														<div
															style="position: absolute; width: 64px; height: 66px; top: 13px; right: 13px; background-color: rgb(255, 255, 255); opacity: 0.85;">
														</div>
														<table
															style="position: absolute; top: 13px; right: 13px;; font-size: smaller; color: #545454">
															<tbody>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid #ccc; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid rgb(237, 194, 64); overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">Domains</td>
																</tr>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid #ccc; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid rgb(175, 216, 248); overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">Hosting</td>
																</tr>
																<tr>
																	<td class="legendColorBox"><div
																			style="border: 1px solid #ccc; padding: 1px">
																			<div
																				style="width: 4px; height: 0; border: 5px solid rgb(203, 75, 75); overflow: hidden"></div>
																		</div></td>
																	<td class="legendLabel">Servicios</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
									<!-- /widget-box -->
								</div>
							</div>

							<div class="hr hr32 hr-dotted"></div>

							<div class="row">
								<div class="col-sm-6">
									<div class="widget-box transparent" id="recent-box">
										<div class="widget-header">
											<h4 class="lighter smaller">
												<i class="icon-rss orange"></i> RECIENTES
											</h4>

											<div class="widget-toolbar no-border">
												<ul class="nav nav-tabs" id="recent-tab">
													<li class="active"><a data-toggle="tab"
														href="#task-tab">Tareas</a></li>

													<li><a data-toggle="tab" href="#member-tab">Miembros</a>
													</li>

													<li><a data-toggle="tab" href="#comment-tab">Comentarios</a>
													</li>
												</ul>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main padding-4">
												<div class="tab-content padding-8 overflow-visible">
													<div id="task-tab" class="tab-pane active">
														<h4 class="smaller lighter green">
															<i class="icon-list"></i> Listas Clasificadas
														</h4>

														<ul id="tasks" class="item-list ui-sortable">
															<li class="item-orange clearfix"><label
																class="inline"> <input type="checkbox"
																	class="ace"> <span class="lbl">
																		Responder a las preguntas de los clientes</span>
															</label>

																<div
																	class="pull-right easy-pie-chart percentage easyPieChart"
																	data-size="30" data-color="#ECCB71" data-percent="42"
																	style="width: 30px; height: 30px; line-height: 30px;">
																	<span class="percent">42</span>%
																	<canvas width="30" height="30"></canvas>
																</div></li>

															<li class="item-red clearfix"><label class="inline">
																	<input type="checkbox" class="ace"> <span
																	class="lbl"> Correccion de bugs</span>
															</label>

																<div class="pull-right action-buttons">
																	<a href="#" class="blue"> <i
																		class="icon-pencil bigger-130"></i>
																	</a> <span class="vbar"></span> <a href="#" class="red">
																		<i class="icon-trash bigger-130"></i>
																	</a> <span class="vbar"></span> <a href="#" class="green">
																		<i class="icon-flag bigger-130"></i>
																	</a>
																</div></li>

															<li class="item-default clearfix"><label
																class="inline"> <input type="checkbox"
																	class="ace"> <span class="lbl"> Adicion
																		de nuevas caracteristicas</span>
															</label>

																<div
																	class="inline pull-right position-relative dropdown-hover">
																	<button class="btn btn-minier bigger btn-primary">
																		<i class="icon-cog icon-only bigger-120"></i>
																	</button>

																	<ul
																		class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-caret dropdown-close pull-right">
																		<li><a href="#" class="tooltip-success"
																			data-rel="tooltip" title=""
																			data-original-title="Mark as done"> <span
																				class="green"> <i class="icon-ok bigger-110"></i>
																			</span>
																		</a></li>

																		<li><a href="#" class="tooltip-error"
																			data-rel="tooltip" title=""
																			data-original-title="Delete"> <span class="red">
																					<i class="icon-trash bigger-110"></i>
																			</span>
																		</a></li>
																	</ul>
																</div></li>

															<li class="item-blue clearfix"><label class="inline">
																	<input type="checkbox" class="ace"> <span
																	class="lbl"> Mejora de scripts usados</span>
															</label></li>

															<li class="item-grey clearfix"><label class="inline">
																	<input type="checkbox" class="ace"> <span
																	class="lbl"> Agregando nuevos skins</span>
															</label></li>

															<li class="item-green clearfix"><label
																class="inline"> <input type="checkbox"
																	class="ace"> <span class="lbl">
																		Actualizacion de software</span>
															</label></li>

															<li class="item-pink clearfix"><label class="inline">
																	<input type="checkbox" class="ace"> <span
																	class="lbl"> Limpieza</span>
															</label></li>
														</ul>
													</div>

													<div id="member-tab" class="tab-pane">
														<div class="clearfix">
															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Bob Doe&#39;s avatar"
																		src="img/users/u000001.jpg">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Felix Apaza</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">20
																			min</span>
																	</div>

																	<div>
																		<span class="label label-warning label-sm">pending</span>

																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle"
																				data-toggle="dropdown">
																				<i class="icon-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title=""
																					data-original-title="Approve"> <span
																						class="green"> <i
																							class="icon-ok bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title=""
																					data-original-title="Reject"> <span
																						class="orange"> <i
																							class="icon-remove bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title=""
																					data-original-title="Delete"> <span class="red">
																							<i class="icon-trash bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Joe Doe&#39;s avatar"
																		src="img/users/u000002.jpg">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Renzo Delgado</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">1
																			hour</span>
																	</div>

																	<div>
																		<span class="label label-warning label-sm">pending</span>

																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle"
																				data-toggle="dropdown">
																				<i class="icon-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title=""
																					data-original-title="Approve"> <span
																						class="green"> <i
																							class="icon-ok bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title=""
																					data-original-title="Reject"> <span
																						class="orange"> <i
																							class="icon-remove bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title=""
																					data-original-title="Delete"> <span class="red">
																							<i class="icon-trash bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Jim Doe&#39;s avatar"
																		src="img/users/avatar5.png">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Ricardo Quevedo</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">2
																			hour</span>
																	</div>

																	<div>
																		<span class="label label-warning label-sm">pending</span>

																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle"
																				data-toggle="dropdown">
																				<i class="icon-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title=""
																					data-original-title="Approve"> <span
																						class="green"> <i
																							class="icon-ok bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title=""
																					data-original-title="Reject"> <span
																						class="orange"> <i
																							class="icon-remove bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title=""
																					data-original-title="Delete"> <span class="red">
																							<i class="icon-trash bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Alex Doe&#39;s avatar"
																		src="img/users/avatar3.png">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Carlos Sonan</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">3
																			hour</span>
																	</div>

																	<div>
																		<span class="label label-danger label-sm">blocked</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Bob Doe&#39;s avatar"
																		src="img/users/avatar2.png">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Andre</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">6
																			hour</span>
																	</div>

																	<div>
																		<span class="label label-success label-sm arrowed-in">approved</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Susan&#39;s avatar"
																		src="img/users/avatar.png">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Kevin</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">yesterday</span>
																	</div>

																	<div>
																		<span class="label label-success label-sm arrowed-in">approved</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Phil Doe&#39;s avatar"
																		src="img/users/avatar2.png">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Tomoya</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">2
																			days ago</span>
																	</div>

																	<div>
																		<span
																			class="label label-info label-sm arrowed-in arrowed-in-right">online</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Alexa Doe&#39;s avatar"
																		src="img/users/avatar1.png">
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Alexa Doe</a>
																	</div>

																	<div class="time">
																		<i class="icon-time"></i> <span class="green">3
																			days ago</span>
																	</div>

																	<div>
																		<span class="label label-success label-sm arrowed-in">approved</span>
																	</div>
																</div>
															</div>
														</div>

														<div class="center">
															<i class="icon-group icon-2x green"></i> &nbsp; <a
																href="#"> See all members &nbsp; <i
																class="icon-arrow-right"></i>
															</a>
														</div>

														<div class="hr hr-double hr8"></div>
													</div>
													<!-- member-tab -->

													<div id="comment-tab" class="tab-pane">
														<div class="slimScrollDiv"
															style="position: relative; overflow: hidden; width: auto; height: 300px;">
															<div class="comments"
																style="overflow: hidden; width: auto; height: 300px;">
																<div class="itemdiv commentdiv">
																	<div class="user">
																		<img alt="Bob Doe&#39;s Avatar"
																			src="img/users/avatar.png">
																	</div>

																	<div class="body">
																		<div class="name">
																			<a href="#">Bob Doe</a>
																		</div>

																		<div class="time">
																			<i class="icon-time"></i> <span class="green">6
																				min</span>
																		</div>

																		<div class="text">
																			<i class="icon-quote-left"></i> Lorem ipsum dolor sit
																			amet, consectetur adipiscing elit. Quisque commodo
																			massa sed ipsum porttitor facilisis …
																		</div>
																	</div>

																	<div class="tools">
																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier bigger btn-yellow dropdown-toggle"
																				data-toggle="dropdown">
																				<i class="icon-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title=""
																					data-original-title="Approve"> <span
																						class="green"> <i
																							class="icon-ok bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title=""
																					data-original-title="Reject"> <span
																						class="orange"> <i
																							class="icon-remove bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title=""
																					data-original-title="Delete"> <span class="red">
																							<i class="icon-trash bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>

																<div class="itemdiv commentdiv">
																	<div class="user">
																		<img alt="Jennifer&#39;s Avatar"
																			src="img/users/avatar1.png">
																	</div>

																	<div class="body">
																		<div class="name">
																			<a href="#">Jennifer</a>
																		</div>

																		<div class="time">
																			<i class="icon-time"></i> <span class="blue">15
																				min</span>
																		</div>

																		<div class="text">
																			<i class="icon-quote-left"></i> Lorem ipsum dolor sit
																			amet, consectetur adipiscing elit. Quisque commodo
																			massa sed ipsum porttitor facilisis …
																		</div>
																	</div>

																	<div class="tools">
																		<div class="action-buttons bigger-125">
																			<a href="#"> <i class="icon-pencil blue"></i>
																			</a> <a href="#"> <i class="icon-trash red"></i>
																			</a>
																		</div>
																	</div>
																</div>

																<div class="itemdiv commentdiv">
																	<div class="user">
																		<img alt="Joe&#39;s Avatar"
																			src="img/users/avatar2.png">
																	</div>

																	<div class="body">
																		<div class="name">
																			<a href="#">Joe</a>
																		</div>

																		<div class="time">
																			<i class="icon-time"></i> <span class="orange">22
																				min</span>
																		</div>

																		<div class="text">
																			<i class="icon-quote-left"></i> Lorem ipsum dolor sit
																			amet, consectetur adipiscing elit. Quisque commodo
																			massa sed ipsum porttitor facilisis …
																		</div>
																	</div>

																	<div class="tools">
																		<div class="action-buttons bigger-125">
																			<a href="#"> <i class="icon-pencil blue"></i>
																			</a> <a href="#"> <i class="icon-trash red"></i>
																			</a>
																		</div>
																	</div>
																</div>

																<div class="itemdiv commentdiv">
																	<div class="user">
																		<img alt="Rita&#39;s Avatar"
																			src="img/users/avatar3.png">
																	</div>

																	<div class="body">
																		<div class="name">
																			<a href="#">Rita</a>
																		</div>

																		<div class="time">
																			<i class="icon-time"></i> <span class="red">50
																				min</span>
																		</div>

																		<div class="text">
																			<i class="icon-quote-left"></i> Lorem ipsum dolor sit
																			amet, consectetur adipiscing elit. Quisque commodo
																			massa sed ipsum porttitor facilisis …
																		</div>
																	</div>

																	<div class="tools">
																		<div class="action-buttons bigger-125">
																			<a href="#"> <i class="icon-pencil blue"></i>
																			</a> <a href="#"> <i class="icon-trash red"></i>
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="slimScrollBar ui-draggable"
																style="background-color: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; z-index: 99; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div>
															<div class="slimScrollRail"
																style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; background-color: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div>
														</div>

														<div class="hr hr8"></div>

														<div class="center">
															<i class="icon-comments-alt icon-2x green"></i> &nbsp; <a
																href="#"> See all comments &nbsp; <i
																class="icon-arrow-right"></i>
															</a>
														</div>

														<div class="hr hr-double hr8"></div>
													</div>
												</div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
									<!-- /widget-box -->
								</div>
								<!-- /span -->

								<div class="col-sm-6">
									<div class="widget-box ">
										<div class="widget-header">
											<h4 class="lighter smaller">
												<i class="icon-comment blue"></i> Conversation
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main no-padding">
												<div class="slimScrollDiv"
													style="position: relative; overflow: hidden; width: auto; height: 300px;">
													<div class="dialogs"
														style="overflow: hidden; width: auto; height: 300px;">
														<div class="itemdiv dialogdiv">
															<div class="user">
																<img alt="Alexa&#39;s Avatar"
																	src="img/users/avatar1.png">
															</div>

															<div class="body">
																<div class="time">
																	<i class="icon-time"></i> <span class="green">4
																		sec</span>
																</div>

																<div class="name">
																	<a href="#">Alexa</a>
																</div>
																<div class="text">Lorem ipsum dolor sit amet,
																	consectetur adipiscing elit. Quisque commodo massa sed
																	ipsum porttitor facilisis.</div>

																<div class="tools">
																	<a href="#" class="btn btn-minier btn-info"> <i
																		class="icon-only icon-share-alt"></i>
																	</a>
																</div>
															</div>
														</div>

														<div class="itemdiv dialogdiv">
															<div class="user">
																<img alt="John&#39;s Avatar" src="img/users/u000002.jpg">
															</div>

															<div class="body">
																<div class="time">
																	<i class="icon-time"></i> <span class="blue">38
																		sec</span>
																</div>

																<div class="name">
																	<a href="#">Renzo</a><span
																		class="label label-info arrowed arrowed-in-right">admin</span>
																</div>
																<div class="text">Raw denim you probably haven't
																	heard of them jean shorts Austin.</div>

																<div class="tools">
																	<a href="#" class="btn btn-minier btn-info"> <i
																		class="icon-only icon-share-alt"></i>
																	</a>
																</div>
															</div>
														</div>

														<div class="itemdiv dialogdiv">
															<div class="user">
																<img alt="Bob&#39;s Avatar" src="img/users/u000001.jpg">
															</div>

															<div class="body">
																<div class="time">
																	<i class="icon-time"></i> <span class="orange">2
																		min</span>
																</div>

																<div class="name">
																	<a href="#">Felix</a> <span
																		class="label label-info arrowed arrowed-in-right">admin</span>
																</div>
																<div class="text">Lorem ipsum dolor sit amet,
																	consectetur adipiscing elit. Quisque commodo massa sed
																	ipsum porttitor facilisis.</div>

																<div class="tools">
																	<a href="#" class="btn btn-minier btn-info"> <i
																		class="icon-only icon-share-alt"></i>
																	</a>
																</div>
															</div>
														</div>

														<div class="itemdiv dialogdiv">
															<div class="user">
																<img alt="Jim&#39;s Avatar" src="img/users/avatar4.png">
															</div>

															<div class="body">
																<div class="time">
																	<i class="icon-time"></i> <span class="grey">3
																		min</span>
																</div>

																<div class="name">
																	<a href="#">Jim</a>
																</div>
																<div class="text">Raw denim you probably haven't
																	heard of them jean shorts Austin.</div>

																<div class="tools">
																	<a href="#" class="btn btn-minier btn-info"> <i
																		class="icon-only icon-share-alt"></i>
																	</a>
																</div>
															</div>
														</div>

														<div class="itemdiv dialogdiv">
															<div class="user">
																<img alt="Alexa&#39;s Avatar"
																	src="img/users/avatar1.png">
															</div>

															<div class="body">
																<div class="time">
																	<i class="icon-time"></i> <span class="green">4
																		min</span>
																</div>

																<div class="name">
																	<a href="#">Alexa</a>
																</div>
																<div class="text">Lorem ipsum dolor sit amet,
																	consectetur adipiscing elit.</div>

																<div class="tools">
																	<a href="#" class="btn btn-minier btn-info"> <i
																		class="icon-only icon-share-alt"></i>
																	</a>
																</div>
															</div>
														</div>
													</div>
													<div class="slimScrollBar ui-draggable"
														style="background-color: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; z-index: 99; right: 1px; height: 228.4263959390863px; background-position: initial initial; background-repeat: initial initial;"></div>
													<div class="slimScrollRail"
														style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; background-color: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div>
												</div>

												<form>
													<div class="form-actions">
														<div class="input-group">
															<input placeholder="Type your message here ..."
																type="text" class="form-control" name="message">
															<span class="input-group-btn">
																<button class="btn btn-sm btn-info no-radius"
																	type="button">
																	<i class="icon-share-alt"></i> Send
																</button>
															</span>
														</div>
													</div>
												</form>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
									<!-- /widget-box -->
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

	<!--[if lte IE 8]>
		  <script src="js/excanvas.min.js"></script>
		<![endif]-->

	<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="js/jquery.ui.touch-punch.min.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<script src="js/jquery.easy-pie-chart.min.js"></script>
	<script src="js/jquery.sparkline.min.js"></script>
	<script src="js/flot/jquery.flot.min.js"></script>
	<script src="js/flot/jquery.flot.pie.min.js"></script>
	<script src="js/flot/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->

	<script src="js/ace-elements.min.js"></script>
	<script src="js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script src="js/jquery.gritter.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$('.easy-pie-chart.percentage')
					.each(
							function() {
								var $box = $(this).closest('.infobox');
								var barColor = $(this).data('color')
										|| (!$box.hasClass('infobox-dark') ? $box
												.css('color')
												: 'rgba(255,255,255,0.95)');
								var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
										: '#E2E2E2';
								var size = parseInt($(this).data('size')) || 50;
								$(this)
										.easyPieChart(
												{
													barColor : barColor,
													trackColor : trackColor,
													scaleColor : false,
													lineCap : 'butt',
													lineWidth : parseInt(size / 10),
													animate : /msie\s*(8|7|6)/
															.test(navigator.userAgent
																	.toLowerCase()) ? false
															: 1000,
													size : size
												});
							})

			$('.sparkline').each(
					function() {
						var $box = $(this).closest('.infobox');
						var barColor = !$box.hasClass('infobox-dark') ? $box
								.css('color') : '#FFF';
						$(this).sparkline('html', {
							tagValuesAttribute : 'data-values',
							type : 'bar',
							barColor : barColor,
							chartRangeMin : $(this).data('min') || 0
						});
					});

			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});
			var data = [ {
				label : "social networks",
				data : 38.7,
				color : "#68BC31"
			}, {
				label : "search engines",
				data : 24.5,
				color : "#2091CF"
			}, {
				label : "ad campaigns",
				data : 8.2,
				color : "#AF4E96"
			}, {
				label : "direct traffic",
				data : 18.6,
				color : "#DA5430"
			}, {
				label : "other",
				data : 10,
				color : "#FEE074"
			} ]
			function drawPieChart(placeholder, data, position) {
				$.plot(placeholder, data, {
					series : {
						pie : {
							show : true,
							tilt : 0.8,
							highlight : {
								opacity : 0.25
							},
							stroke : {
								color : '#fff',
								width : 2
							},
							startAngle : 2
						}
					},
					legend : {
						show : true,
						position : position || "ne",
						labelBoxBorderColor : null,
						margin : [ -30, 15 ]
					},
					grid : {
						hoverable : true,
						clickable : true
					}
				})
			}
			drawPieChart(placeholder, data);

			/**
			we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			so that's not needed actually.
			 */
			placeholder.data('chart', data);
			placeholder.data('draw', drawPieChart);

			var $tooltip = $(
					"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
					.hide().appendTo('body');
			var previousPoint = null;

			placeholder.on('plothover', function(event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : "
								+ item.series['percent'] + '%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({
						top : pos.pageY + 10,
						left : pos.pageX + 10
					});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}

			});

			var d1 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d1.push([ i, Math.sin(i) ]);
			}

			var d2 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d2.push([ i, Math.cos(i) ]);
			}

			var d3 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.2) {
				d3.push([ i, Math.tan(i) ]);
			}

			var sales_charts = $('#sales-charts').css({
				'width' : '100%',
				'height' : '220px'
			});
			$.plot("#sales-charts", [ {
				label : "Domains",
				data : d1
			}, {
				label : "Hosting",
				data : d2
			}, {
				label : "Services",
				data : d3
			} ], {
				hoverable : true,
				shadowSize : 0,
				series : {
					lines : {
						show : true
					},
					points : {
						show : true
					}
				},
				xaxis : {
					tickLength : 0
				},
				yaxis : {
					ticks : 10,
					min : -2,
					max : 2,
					tickDecimals : 3
				},
				grid : {
					backgroundColor : {
						colors : [ "#fff", "#fff" ]
					},
					borderWidth : 1,
					borderColor : '#555'
				}
			});

			$('#recent-box [data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('.tab-content')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

			$('.dialogs,.comments').slimScroll({
				height : '300px'
			});

			//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
			//so disable dragging when clicking on label
			var agent = navigator.userAgent.toLowerCase();
			if ("ontouchstart" in document && /applewebkit/.test(agent)
					&& /android/.test(agent))
				$('#tasks').on('touchstart', function(e) {
					var li = $(e.target).closest('#tasks li');
					if (li.length == 0)
						return;
					var label = li.find('label.inline').get(0);
					if (label == e.target || $.contains(label, e.target))
						e.stopImmediatePropagation();
				});

			$('#tasks').sortable({
				opacity : 0.8,
				revert : true,
				forceHelperSize : true,
				placeholder : 'draggable-placeholder',
				forcePlaceholderSize : true,
				tolerance : 'pointer',
				stop : function(event, ui) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
					$(ui.item).css('z-index', 'auto');
				}
			});
			$('#tasks').disableSelection();
			$('#tasks input:checkbox').removeAttr('checked').on('click',
					function() {
						if (this.checked)
							$(this).closest('li').addClass('selected');
						else
							$(this).closest('li').removeClass('selected');
					});
		})

		if ("${sessionScope.evento}" == 1) {
	<%sesion.setAttribute("evento", 0);%>
		$.gritter
					.add({
						title : "${sessionScope.mensaje.tituloMensajeAlerta}",
						text : "${sessionScope.mensaje.cuerpoMensajeAlerta}",
						image : "img/mensajes/${sessionScope.mensaje.imagenMensajeAlerta}",
						time : 4000,
						class_name : 'gritter-light gritter-info'
					});
		}
	</script>


	<div class="tooltip top in"
		style="top: 447px; left: 980px; display: none;">
		<div class="tooltip-inner">social networks : 38.7%</div>
	</div>
</body>
</html>