<%@ include file="contenido_head.jsp"%>
<!-- aqui deben ingresar el nombre de la pagina sin extension(solo las paginas ya creadas) Ejem: contenido.jsp: contenido-->
<% request.getSession().setAttribute("pagina", "cc_sol_revision"); %>

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
<%@ include file="contenido_foot.jsp"%>