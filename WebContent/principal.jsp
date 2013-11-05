<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Sedapar - Principal</title>

		<meta name="description" content="sedapar pagina principal">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- basic styles -->

		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">

		<!-- ace styles -->

		<link rel="stylesheet" href="css/ace.min.css">
		<link rel="stylesheet" href="css/ace-rtl.min.css">
		<link rel="stylesheet" href="css/ace-skins.min.css">

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="ace-extra.min.js"></script><style type="text/css"></style>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

	<body class="navbar-fixed breadcrumbs-fixed" style="">
		<div class="navbar navbar-default navbar-fixed-top" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							Sedapar - Bienvenido
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="principal.jsp">
								<i class="icon-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-ok"></i>
									4 Tasks to complete
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">Software Update</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:65%" class="progress-bar "></div>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										See tasks with details
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="principal.jsp">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>
									8 Notifications
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												Nuevos Comentarios
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<i class="btn btn-xs btn-primary icon-user"></i>
										Felix piensa seriamente expec...
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												Nuevas Ordenes
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												Seguidores
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										Ver todas las notificaciones
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="principal.jsp">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-envelope-alt"></i>
									5 Mensajes
								</li>

								<li>
									<a href="principal.jsp">
										<img src="avatar.png" class="msg-photo" alt="Alex&#39;s Avatar">
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Alex:</span>
												Ciao sociis natoque penatibus et auctor ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>Hace un momento</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<img src="avatar3.png" class="msg-photo" alt="Susan&#39;s Avatar">
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Susan:</span>
												Vestibulum id ligula porta felis euismod ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>Hace 20 minutos</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<img src="avatar4.png" class="msg-photo" alt="Bob&#39;s Avatar">
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Bob:</span>
												Nullam quis risus eget urna mollis ornare ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>3:15 pm</span>
											</span>
										</span>
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/inbox.html">
										Ver todos los mensajes
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue">
							<a data-toggle="dropdown" href="principal.jsp" class="dropdown-toggle">
								<img class="nav-user-photo" src="img/user1.jpg" alt="Jason&#39;s Photo">
								<span class="user-info">
									<small>Bienvenido,</small>
									Renzo
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="principal.jsp">
										<i class="icon-cog"></i>
										Configuracion
									</a>
								</li>

								<li>
									<a href="principal.jsp">
										<i class="icon-user"></i>
										Perfil
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="principal.jsp">
										<i class="icon-off"></i>
										Salir
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="principal.jsp">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar sidebar-fixed" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li class="active">
							<a href="192.69.216.111/themes/preview/ace/index.html">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> Principal </span>
							</a>
						</li>

						<li>
							<a href="192.69.216.111/themes/preview/ace/typography.html">
								<i class="icon-text-width"></i>
								<span class="menu-text"> Resumen </span>
							</a>
						</li>

						<li>
							<a href="principal.jsp" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> Contratos </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="192.69.216.111/themes/preview/ace/elements.html">
										<i class="icon-double-angle-right"></i>
										Creacion de cuentas
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/buttons.html">
										<i class="icon-double-angle-right"></i>
										Revision del Catastro
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/treeview.html">
										<i class="icon-double-angle-right"></i>
										Creacion de Contratos
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/jquery-ui.html">
										<i class="icon-double-angle-right"></i>
										Cronogramas
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/nestable-list.html">
										<i class="icon-double-angle-right"></i>
										Ayuda
									</a>
								</li>

								<li>
									<a href="principal.jsp" class="dropdown-toggle">
										<i class="icon-double-angle-right"></i>

										Otros servicios
										<b class="arrow icon-angle-down"></b>
									</a>

									<ul class="submenu">
										<li>
											<a href="principal.jsp">
												<i class="icon-leaf"></i>
												VIP
											</a>
										</li>

										<li>
											<a href="principal.jsp" class="dropdown-toggle">
												<i class="icon-pencil"></i>

												Multi-Servicios
												<b class="arrow icon-angle-down"></b>
											</a>

											<ul class="submenu">
												<li>
													<a href="principal.jsp">
														<i class="icon-plus"></i>
														Agregar Servicio
													</a>
												</li>

												<li>
													<a href="principal.jsp">
														<i class="icon-eye-open"></i>
														Ver Servicios
													</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li>
							<a href="principal.jsp" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> Tablas de Resumen</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="192.69.216.111/themes/preview/ace/tables.html">
										<i class="icon-double-angle-right"></i>
										simples y Dinamicas
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/jqgrid.html">
										<i class="icon-double-angle-right"></i>
										jqGrid plugin
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="principal.jsp" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> Formularios </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="192.69.216.111/themes/preview/ace/form-elements.html">
										<i class="icon-double-angle-right"></i>
										Formulario de registro de catastro
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/form-wizard.html">
										<i class="icon-double-angle-right"></i>
										Formulario de creacion de cuenta
									</a>
								</li>

								<li>
									<a href="http://192.69.216.111/themes/preview/ace/wysiwyg.html">
										<i class="icon-double-angle-right"></i>
										Otros Formularios
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/dropzone.html">
										<i class="icon-double-angle-right"></i>
										Zona de Archivos adjuntos
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="192.69.216.111/themes/preview/ace/widgets.html">
								<i class="icon-list-alt"></i>
								<span class="menu-text"> Widgets </span>
							</a>
						</li>

						<li>
							<a href="192.69.216.111/themes/preview/ace/calendar.html">
								<i class="icon-calendar"></i>

								<span class="menu-text">
									Calendario
									<span class="badge badge-transparent tooltip-error" title="" data-original-title="2 Important Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
							</a>
						</li>

						<li>
							<a href="192.69.216.111/themes/preview/ace/gallery.html">
								<i class="icon-picture"></i>
								<span class="menu-text"> Galeria </span>
							</a>
						</li>

						<li>
							<a href="principal.jsp" class="dropdown-toggle">
								<i class="icon-tag"></i>
								<span class="menu-text"> Mas Paginas  </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="principal.jsp">
										<i class="icon-double-angle-right"></i>
										Perfil de Usuario
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/inbox.html">
										<i class="icon-double-angle-right"></i>
										Mensajeria
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/pricing.html">
										<i class="icon-double-angle-right"></i>
										Tablas de Precios
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/invoice.html">
										<i class="icon-double-angle-right"></i>
										Pendientes
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/timeline.html">
										<i class="icon-double-angle-right"></i>
										Linea de tiempo
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/login.html">
										<i class="icon-double-angle-right"></i>
										Login y Registro
									</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="principal.jsp" class="dropdown-toggle">
								<i class="icon-file-alt"></i>

								<span class="menu-text">
									Otras Paginas
									<span class="badge badge-primary ">5</span>
								</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="192.69.216.111/themes/preview/ace/faq.html">
										<i class="icon-double-angle-right"></i>
										FAQ
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/error-404.html">
										<i class="icon-double-angle-right"></i>
										Error 404
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/error-500.html">
										<i class="icon-double-angle-right"></i>
										Error 500
									</a>
								</li>

								<li>
									<a href="192.69.216.111/themes/preview/ace/grid.html">
										<i class="icon-double-angle-right"></i>
										Grid
									</a>
								</li>

								<li>
									<a href="http://192.69.216.111/themes/preview/ace/blank.html">
										<i class="icon-double-angle-right"></i>
										Pagina en Blanco
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs breadcrumbs-fixed" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="principal.jsp">Inicio</a>
							</li>
							<li class="active">Principal</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Buscar ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								Principal
								<small>
									<i class="icon-double-angle-right"></i>
									Vista general y stats
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="alert alert-block alert-success">
									<button type="button" class="close" data-dismiss="alert">
										<i class="icon-remove"></i>
									</button>

									<i class="icon-ok green"></i>

									Bienvenido a
									<strong class="green">
										break
										<small>(v1.1)</small>
									</strong>
									,
	La integracion de la funcionalidad, simpleza y sin dejar de ser vanguardista.
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
												<div class="infobox-content">comentarios</div>
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
												+32%
												<i class="icon-arrow-up"></i>
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
												<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"><canvas width="44" height="33" style="display: inline-block; width: 44px; height: 33px; vertical-align: top;"></canvas></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">6,251</span>
												<div class="infobox-content">vistas a la pagina</div>
											</div>

											<div class="badge badge-success">
												7.2%
												<i class="icon-arrow-up"></i>
											</div>
										</div>

										<div class="infobox infobox-blue2  ">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage easyPieChart" data-percent="42" data-size="46" style="width: 46px; height: 46px; line-height: 46px;">
													<span class="percent">42</span>%
												<canvas width="46" height="46"></canvas></div>
											</div>

											<div class="infobox-data">
												<span class="infobox-text">trafico usado</span>

												<div class="infobox-content">
													<span class="bigger-110">~</span>
													58GB disponible
												</div>
											</div>
										</div>

										<div class="space-6"></div>

										<div class="infobox infobox-green infobox-small infobox-dark">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage easyPieChart" data-percent="61" data-size="39" style="width: 39px; height: 39px; line-height: 39px;">
													<span class="percent">61</span>%
												<canvas width="39" height="39"></canvas></div>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Contratos</div>
												<div class="infobox-content">Revisados</div>
											</div>
										</div>

										<div class="infobox infobox-blue infobox-small infobox-dark">
											<div class="infobox-chart">
												<span class="sparkline" data-values="3,4,2,3,4,4,2,2"><canvas width="39" height="19" style="display: inline-block; width: 39px; height: 19px; vertical-align: top;"></canvas></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">Ganancia</div>
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
											<div class="widget-header widget-header-flat widget-header-small">
												<h5>
													<i class="icon-signal"></i>
													Trafico de recursos
												</h5>

												<div class="widget-toolbar no-border">
													<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
														Esta semana
														<i class="icon-angle-down icon-on-right bigger-110"></i>
													</button>

													<ul class="dropdown-menu pull-right dropdown-125 dropdown-lighter dropdown-caret">
														<li class="active">
															<a href="principal.jsp" class="blue">
																<i class="icon-caret-right bigger-110">&nbsp;</i>
																Esta semana
															</a>
														</li>

														<li>
															<a href="principal.jsp">
																<i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
																Ultima semana
															</a>
														</li>

														<li>
															<a href="principal.jsp">
																<i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
																Este mes
															</a>
														</li>

														<li>
															<a href="principal.jsp">
																<i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
																Ultimo mes
															</a>
														</li>
													</ul>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div id="piechart-placeholder" style="width: 90%; min-height: 150px; padding: 0px; position: relative;"><canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 367px; height: 150px;" width="367" height="150"></canvas><canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 367px; height: 150px;" width="367" height="150"></canvas><div class="legend"><div style="position: absolute; width: 95px; height: 110px; top: 15px; right: -30px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:15px;right:-30px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #68BC31;overflow:hidden"></div></div></td><td class="legendLabel">social networks</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #2091CF;overflow:hidden"></div></div></td><td class="legendLabel">search engines</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #AF4E96;overflow:hidden"></div></div></td><td class="legendLabel">ad campaigns</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #DA5430;overflow:hidden"></div></div></td><td class="legendLabel">direct traffic</td></tr><tr><td class="legendColorBox"><div style="border:1px solid null;padding:1px"><div style="width:4px;height:0;border:5px solid #FEE074;overflow:hidden"></div></div></td><td class="legendLabel">other</td></tr></tbody></table></div></div>

													<div class="hr hr8 hr-double"></div>

													<div class="clearfix">
														<div class="grid3">
															<span class="grey">
																<i class="icon-facebook-sign icon-2x blue"></i>
																&nbsp; likes
															</span>
															<h4 class="bigger pull-right">1,255</h4>
														</div>

														<div class="grid3">
															<span class="grey">
																<i class="icon-twitter-sign icon-2x purple"></i>
																&nbsp; tweets
															</span>
															<h4 class="bigger pull-right">941</h4>
														</div>

														<div class="grid3">
															<span class="grey">
																<i class="icon-pinterest-sign icon-2x red"></i>
																&nbsp; pins
															</span>
															<h4 class="bigger pull-right">1,050</h4>
														</div>
													</div>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div><!-- /widget-box -->
									</div><!-- /span -->
								</div><!-- /row -->

								<div class="hr hr32 hr-dotted"></div>

								<div class="row">
									<div class="col-sm-5">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="lighter">
													<i class="icon-star orange"></i>
													Dominios populares
												</h4>

												<div class="widget-toolbar">
													<a href="principal.jsp" data-action="collapse">
														<i class="icon-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													<table class="table table-bordered table-striped">
														<thead class="thin-border-bottom">
															<tr>
																<th>
																	<i class="icon-caret-right blue"></i>
																	nombre
																</th>

																<th>
																	<i class="icon-caret-right blue"></i>
																	precio
																</th>

																<th class="hidden-480">
																	<i class="icon-caret-right blue"></i>
																	estado
																</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<td>sedapar.com.pe</td>

																<td>
																	<small>
																		<s class="red">$29.99</s>
																	</small>
																	<b class="green">$19.99</b>
																</td>

																<td class="hidden-480">
																	<span class="label label-info arrowed-right arrowed-in">en venta</span>
																</td>
															</tr>

															<tr>
																<td>sedaparequipa.com</td>

																<td>
																	<small>
																		<s class="red"></s>
																	</small>
																	<b class="green">$16.45</b>
																</td>

																<td class="hidden-480">
																	<span class="label label-success arrowed-in arrowed-in-right">aprovado</span>
																</td>
															</tr>

															<tr>
																<td>sedapal.com</td>

																<td>
																	<small>
																		<s class="red"></s>
																	</small>
																	<b class="green">$15.00</b>
																</td>

																<td class="hidden-480">
																	<span class="label label-danger arrowed">pendiente</span>
																</td>
															</tr>

															<tr>
																<td>sedapan.com</td>

																<td>
																	<small>
																		<s class="red">$24.99</s>
																	</small>
																	<b class="green">$19.95</b>
																</td>

																<td class="hidden-480">
																	<span class="label arrowed">
																		<s>sin stock</s>
																	</span>
																</td>
															</tr>

															<tr>
																<td>elsedapar.com</td>

																<td>
																	<small>
																		<s class="red"></s>
																	</small>
																	<b class="green">$12.00</b>
																</td>

																<td class="hidden-480">
																	<span class="label label-warning arrowed arrowed-right">VENDIDO</span>
																</td>
															</tr>
														</tbody>
													</table>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div><!-- /widget-box -->
									</div>

									<div class="col-sm-7">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="lighter">
													<i class="icon-signal"></i>
													Stats de Ventas
												</h4>

												<div class="widget-toolbar">
													<a href="principal.jsp" data-action="collapse">
														<i class="icon-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-4">
													<div id="sales-charts" style="width: 100%; height: 220px; padding: 0px; position: relative;"><canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 610px; height: 220px;" width="610" height="220"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 30px; text-align: center;">0.0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 121px; text-align: center;">1.0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 212px; text-align: center;">2.0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 303px; text-align: center;">3.0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 394px; text-align: center;">4.0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 485px; text-align: center;">5.0</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 64px; top: 203px; left: 576px; text-align: center;">6.0</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; top: 190px; left: 1px; text-align: right;">-2.000</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 166px; left: 1px; text-align: right;">-1.500</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 143px; left: 1px; text-align: right;">-1.000</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 119px; left: 1px; text-align: right;">-0.500</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 95px; left: 5px; text-align: right;">0.000</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 71px; left: 5px; text-align: right;">0.500</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 48px; left: 5px; text-align: right;">1.000</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 24px; left: 5px; text-align: right;">1.500</div><div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 5px; text-align: right;">2.000</div></div></div><canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 610px; height: 220px;" width="610" height="220"></canvas><div class="legend"><div style="position: absolute; width: 64px; height: 66px; top: 13px; right: 13px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:13px;right:13px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(237,194,64);overflow:hidden"></div></div></td><td class="legendLabel">Dominios</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(175,216,248);overflow:hidden"></div></div></td><td class="legendLabel">Hosting</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(203,75,75);overflow:hidden"></div></div></td><td class="legendLabel">Servicios</td></tr></tbody></table></div></div>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div><!-- /widget-box -->
									</div>
								</div>

								<div class="hr hr32 hr-dotted"></div>









						 	<div class="row">

								</div><!-- /row -->

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide" style="display: none;">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select><div class="dropdown dropdown-colorpicker"><a data-toggle="dropdown" class="dropdown-toggle" href="principal.jsp"><span class="btn-colorpicker" style="background-color:#222A2D"></span></a><ul class="dropdown-menu dropdown-caret"><li><a class="colorpick-btn" href="principal.jsp" style="background-color:#438EB9;" data-color="#438EB9"></a></li><li><a class="colorpick-btn selected" href="principal.jsp" style="background-color:#222A2D;" data-color="#222A2D"></a></li><li><a class="colorpick-btn" href="principal.jsp" style="background-color:#C6487E;" data-color="#C6487E"></a></li><li><a class="colorpick-btn" href="principal.jsp" style="background-color:#D0D0D0;" data-color="#D0D0D0"></a></li></ul></div>
							</div>
							<span>&nbsp; Escoje el Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar">
							<label class="lbl" for="ace-settings-navbar"> Fix Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar">
							<label class="lbl" for="ace-settings-sidebar"> Fix Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs">
							<label class="lbl" for="ace-settings-breadcrumbs"> Fix Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl">
							<label class="lbl" for="ace-settings-rtl"> Menu Derecha	 (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container">
							<label class="lbl" for="ace-settings-add-container">
								Dentro
								<b>.content</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="principal.jsp" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="bootstrap.min.js"></script>
		<script src="typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="js/excanvas.min.js"></script>
		<![endif]-->

		<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="js/jquery.ui.touch-punch.min.js"></script>
		<script src="js/jquery.slimscroll.min.js"></script>
		<script src="js/jquery.easy-pie-chart.min.js"></script>
		<script src="js/jquery.sparkline.min.js"></script>
		<script src="js/jquery.flot.min.js"></script>
		<script src="js/jquery.flot.pie.min.js"></script>
		<script src="js/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="js/ace-elements.min.js"></script>
		<script src="js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html', {tagValuesAttribute:'data-values', type: 'bar', barColor: barColor , chartRangeMin:$(this).data('min') || 0} );
				});
			
			
			
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
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
			
			
			
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
			
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').slimScroll({
					height: '300px'
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				});
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
				
			
			})
		</script>
	

		<div class="tooltip top in" style="top: 447px; left: 980px; display: none;"><div class="tooltip-inner">social networks : 38.7%</div></div>
	</body>
</html>