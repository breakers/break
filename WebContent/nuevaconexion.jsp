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
				<a href="home.jsp" class="navbar-brand"><img
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
				ace.settings.check('main-container', 'fixed')
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
						ace.settings.check('sidebar', 'fixed')
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
							ace.settings.check('breadcrumbs', 'fixed')
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
							<small> <i class="icon-double-angle-right"></i> etiqueta
								descripcion
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
												<div class="widget-toolbar">
													<label>
														<small class="green">
															<b>Tipo de Persona</b>
														</small>

														<input id="skip-validation" type="checkbox" class="ace ace-switch ace-switch-5" />
														<span class="lbl"></span>
													</label>
												</div>

										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div id="fuelux-wizard" class="row-fluid"
													data-target="#step-container">
													<ul class="wizard-steps">
														<li data-target="#step1" class="active"><span
															class="step">1</span> <span class="title">Bienvenido</span></li>

														<li data-target="#step2"><span class="step">2</span>
															<span class="title">Informacion de Predio</span></li>

														<li data-target="#step3"><span class="step">3</span>
															<span class="title">Información Cliente</span></li>

														<li data-target="#step4"><span class="step">4</span>
															<span class="title">Cierre</span></li>
													</ul>
												</div>

												<hr />
												<div class="step-content row-fluid position-relative"
													id="step-container">
													<div class="step-pane active" id="step1">
														<h3 class="lighter block green">Enter the following
															information</h3>

														

														<form class="form-horizontal" id="validation-form"
															method="get" novalidate="novalidate">
															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="email">Email Address:</label>

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
																	for="password">Password:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="password" name="password" id="password"
																			class="col-xs-12 col-sm-4" />
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="password2">Confirm Password:</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<input type="password" name="password2" id="password2"
																			class="col-xs-12 col-sm-4" />
																	</div>
																</div>
															</div>

															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="name">Company Name:</label>

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
																	for="phone">Phone Number:</label>

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
																	for="url">Company URL:</label>

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
																	class="control-label col-xs-12 col-sm-3 no-padding-right">Subscribe
																	to</label>

																<div class="col-xs-12 col-sm-9">
																	<div>
																		<label> <input name="subscription" value="1"
																			type="checkbox" class="ace" /> <span class="lbl">
																				Latest news and announcements</span>
																		</label>
																	</div>

																	<div>
																		<label> <input name="subscription" value="2"
																			type="checkbox" class="ace" /> <span class="lbl">
																				Product offers and discounts</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right">Gender</label>

																<div class="col-xs-12 col-sm-9">
																	<div>
																		<label class="blue"> <input name="gender"
																			value="1" type="radio" class="ace" /> <span
																			class="lbl"> Male</span>
																		</label>
																	</div>

																	<div>
																		<label class="blue"> <input name="gender"
																			value="2" type="radio" class="ace" /> <span
																			class="lbl"> Female</span>
																		</label>
																	</div>
																</div>
															</div>

															<div class="hr hr-dotted"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="state">State</label>

																<div class="col-xs-12 col-sm-9">
																	<select id="state" name="state" class="select2"
																		data-placeholder="Click to Choose...">
																		<option value="">&nbsp;</option>
																		<option value="AL">Alabama</option>
																		<option value="AK">Alaska</option>
																		<option value="AZ">Arizona</option>
																		<option value="AR">Arkansas</option>
																		<option value="CA">California</option>
																		<option value="CO">Colorado</option>
																		<option value="CT">Connecticut</option>
																		<option value="DE">Delaware</option>
																		<option value="FL">Florida</option>
																		<option value="GA">Georgia</option>
																		<option value="HI">Hawaii</option>
																		<option value="ID">Idaho</option>
																		<option value="IL">Illinois</option>
																		<option value="IN">Indiana</option>
																		<option value="IA">Iowa</option>
																		<option value="KS">Kansas</option>
																		<option value="KY">Kentucky</option>
																		<option value="LA">Louisiana</option>
																		<option value="ME">Maine</option>
																		<option value="MD">Maryland</option>
																		<option value="MA">Massachusetts</option>
																		<option value="MI">Michigan</option>
																		<option value="MN">Minnesota</option>
																		<option value="MS">Mississippi</option>
																		<option value="MO">Missouri</option>
																		<option value="MT">Montana</option>
																		<option value="NE">Nebraska</option>
																		<option value="NV">Nevada</option>
																		<option value="NH">New Hampshire</option>
																		<option value="NJ">New Jersey</option>
																		<option value="NM">New Mexico</option>
																		<option value="NY">New York</option>
																		<option value="NC">North Carolina</option>
																		<option value="ND">North Dakota</option>
																		<option value="OH">Ohio</option>
																		<option value="OK">Oklahoma</option>
																		<option value="OR">Oregon</option>
																		<option value="PA">Pennsylvania</option>
																		<option value="RI">Rhode Island</option>
																		<option value="SC">South Carolina</option>
																		<option value="SD">South Dakota</option>
																		<option value="TN">Tennessee</option>
																		<option value="TX">Texas</option>
																		<option value="UT">Utah</option>
																		<option value="VT">Vermont</option>
																		<option value="VA">Virginia</option>
																		<option value="WA">Washington</option>
																		<option value="WV">West Virginia</option>
																		<option value="WI">Wisconsin</option>
																		<option value="WY">Wyoming</option>
																	</select>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="platform">Platform</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<select class="input-medium" id="platform"
																			name="platform">
																			<option value="">------------------</option>
																			<option value="linux">Linux</option>
																			<option value="windows">Windows</option>
																			<option value="mac">Mac OS</option>
																			<option value="ios">iOS</option>
																			<option value="android">Android</option>
																		</select>
																	</div>
																</div>
															</div>

															<div class="space-2"></div>

															<div class="form-group">
																<label
																	class="control-label col-xs-12 col-sm-3 no-padding-right"
																	for="comment">Comment</label>

																<div class="col-xs-12 col-sm-9">
																	<div class="clearfix">
																		<textarea class="input-xlarge" name="comment"
																			id="comment"></textarea>
																	</div>
																</div>
															</div>

															<div class="space-8"></div>

															<div class="form-group">
																<div class="col-xs-12 col-sm-4 col-sm-offset-3">
																	<label> <input name="agree" id="agree"
																		type="checkbox" class="ace" /> <span class="lbl">
																			I accept the policy</span>
																	</label>
																</div>
															</div>
														</form>
													</div>

													<div class="step-pane" id="step2">
														<div class="row-fluid">
															<div class="alert alert-success">
																<button type="button" class="close" data-dismiss="alert">
																	<i class="icon-remove"></i>
																</button>

																<strong> <i class="icon-ok"></i> Well done!
																</strong> You successfully read this important alert message. <br />
															</div>

															<div class="alert alert-danger">
																<button type="button" class="close" data-dismiss="alert">
																	<i class="icon-remove"></i>
																</button>

																<strong> <i class="icon-remove"></i> Oh snap!
																</strong> Change a few things up and try submitting again. <br />
															</div>

															<div class="alert alert-warning">
																<button type="button" class="close" data-dismiss="alert">
																	<i class="icon-remove"></i>
																</button>
																<strong>Warning!</strong> Best check yo self, you're not
																looking too good. <br />
															</div>

															<div class="alert alert-info">
																<button type="button" class="close" data-dismiss="alert">
																	<i class="icon-remove"></i>
																</button>
																<strong>Heads up!</strong> This alert needs your
																attention, but it's not super important. <br />
															</div>
														</div>
													</div>

													<div class="step-pane" id="step3">
														<div class="center">
															<h3 class="blue lighter">This is step 3</h3>
														</div>
													</div>

													<div class="step-pane" id="step4">
														<div class="center">
															<h3 class="green">Congrats!</h3>
															Your product is ready to ship! Click finish to continue!
														</div>
													</div>
												</div>

												<hr />
												<div class="row-fluid wizard-actions">
													<button class="btn btn-prev">
														<i class="icon-arrow-left"></i> Prev
													</button>

													<button class="btn btn-success btn-next"
														data-last="Finish ">
														Next <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
								</div>
							</div>

							<div id="modal-wizard" class="modal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header" data-target="#modal-step-contents">
											<ul class="wizard-steps">
												<li data-target="#modal-step1" class="active"><span
													class="step">1</span> <span class="title">Validation
														states</span></li>

												<li data-target="#modal-step2"><span class="step">2</span>
													<span class="title">Alerts</span></li>

												<li data-target="#modal-step3"><span class="step">3</span>
													<span class="title">Payment Info</span></li>

												<li data-target="#modal-step4"><span class="step">4</span>
													<span class="title">Other Info</span></li>
											</ul>
										</div>

										<div class="modal-body step-content" id="modal-step-contents">
											<div class="step-pane active" id="modal-step1">
												<div class="center">
													<h4 class="blue">Step 1</h4>
												</div>
											</div>

											<div class="step-pane" id="modal-step2">
												<div class="center">
													<h4 class="blue">Step 2</h4>
												</div>
											</div>

											<div class="step-pane" id="modal-step3">
												<div class="center">
													<h4 class="blue">Step 3</h4>
												</div>
											</div>

											<div class="step-pane" id="modal-step4">
												<div class="center">
													<h4 class="blue">Step 4</h4>
												</div>
											</div>
										</div>

										<div class="modal-footer wizard-actions">
											<button class="btn btn-sm btn-prev">
												<i class="icon-arrow-left"></i> Prev
											</button>

											<button class="btn btn-success btn-sm btn-next"
												data-last="Finish ">
												Next <i class="icon-arrow-right icon-on-right"></i>
											</button>

											<button class="btn btn-danger btn-sm pull-left"
												data-dismiss="modal">
												<i class="icon-remove"></i> Cancel
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

			var $validation = true;
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
											message : "Thank you! Your information was successfully saved!",
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
		})
	</script>





</body>
</html>