<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "man_usuarios"); %>

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

		<%@ include file="contenido_bar.jsp"%>

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



<%@ include file="contenido_foot.jsp"%>