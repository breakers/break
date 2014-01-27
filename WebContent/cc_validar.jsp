<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "cc_validar"); %>

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
							ace.settings.check('breadcrumbs', 'fixed');
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
						<h1> <fmt:message key="label.Categoria" />
							<small> <i class="icon-double-angle-right"></i> <fmt:message key="label.Ve" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="widget-header header-color-red">
								<h5 class="bigger lighter">
									<i class="icon-table"></i>
										Verificar Expediente Cambio de Categor�a
										</h5>
							</div>
							
							<div class="table-responsive"><br>
											<table id="sample-table-1" class="table table-bordered">
												<thead>
													<tr>
														<th width="100">Numero</th>
														<th width="200">Nombre</th>

														<th width="100">
															<i class="icon-time bigger-110 hidden-480"></i>
															Fecha
														</th>
														<th width="100">Estado</th>
														<th width="100">Prioridad</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td>1009</td>
														<td>John Paul</td>
														<td>15-12-2013</td>
														<td>Inspeccionada</td>
														<td>Alta</td>
													</tr>
													<tr>
														<td>1010</td>
														<td>Chin Juan</td>
														<td>15-12-2013</td>
														<td>Inspeccionada</td>
														<td>Baja</td>
													</tr>
													<tr>
														<td>1011</td>
														<td>Klin Edwards</td>
														<td>15-12-2013</td>
														<td>Inspeccionada</td>
														<td>Normal</td>
													</tr>
													<tr>
														<td>1012</td>
														<td>Sandra Wilcox</td>
														<td>15-12-2013</td>
														<td>Inspeccionada</td>
														<td>Alta</td>
													</tr>
												</tbody>
											</table>
										</div><!-- /.table-responsive -->
										
										
									<div class="col-sm-12">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="smaller">Datos Expediente</h4>
									</div>
									
									<div class="widget-body">
											<div class="widget-main">
											<div class="form-group">
											<label class="col-sm-4 control-label no-padding-right" for="form-field-expediente"><strong>Numero de Expediente	:	1009</strong></label>
											<label class="col-sm-1 control-label no-padding-right" for="form-field-estado">Estado</label>
											<input type="text" name="expediente" id="form-field-expediente"/>	
									</div>
									
									<br>
									
									<div class="col-sm-12">
										<label class="col-sm-4 control-label no-padding-right" for="form-field-cliente">Cliente	:	John Paul</label>
										<label class="col-sm-2 control-label no-padding-right" for="form-field-codigoc">Codigo Cliente	:	XXXX</label>
										<input type="button" name="Detalle Cliente" value="Detalle Cliente"><br><br>
									</div>
									
									<BR>
									<BR>
									
									<div class="widget-body">
											<div class="widget-main">
											<div class="form-group">
											<label class="col-sm-4 control-label no-padding-right" for="form-field-expediente"><strong>Detalles de Inspecci�n</strong></label>
									</div>
									
									<BR>
									

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-Inspector">Inspector		:		Daniel Eltra Vieso</label>
										<label class="col-sm-2 control-label no-padding-right" for="form-field-codigoi">Codigo Inspector:	XXXX</label>
									</div>
									
									<br>
									
									
									<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-terreno">Terreno:</label>
												
													<div class="col-sm-9">
															<input type="text" name="terreno" id="form-field-terreno"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-Distrito">Distrito:</label>
												
													<div class="col-sm-9">
															<input type="text" name="zona" id="form-field-distrito"/>
													</div>
												</div><!-- form-group -->	
													
													
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-Zona">Zona:</label>
												
													<div class="col-sm-9">
															<input type="text" name="zona" id="form-field-zona"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-pisos">Pisos:</label>
												
													<div class="col-sm-9">
															<input type="text" name="pisos" id="form-field-pisos"/>
												</div>

											
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-pisos">Tipo Vivienda:</label>
												</div>
												
													<div class="col-sm-9">
															<input type="text" name="vivienda" id="form-field-vivienda"/>
												</div>
												<BR><BR>
												
												<div class="col-sm-12"><br>
														<label class="col-sm-2 control-label no-padding-right" for="form-field-comentario">Comentario Inspecci�n:</label>
												<input type="text" size="80" name="comentario" id="form-field-comentario"/>
												<!-- form-group -->	
												</div>
												<BR><BR><BR>


												<label class="col-sm-2 control-label no-padding-right" for="form-field-asistente">Comentario Asistente:</label>
												<input type="text" size="80" name="asistente" id="form-field-asistente"/>
												<!-- form-group -->	
												</div>
												<BR><BR><BR>
												
												
												<label class="col-sm-2 control-label no-padding-right" for="form-field-asistente">Categor�a Anterior:</label>
												<input type="text" size="20" name="categoria" id="form-field-categoria"/>
												</div>

												<label class="col-sm-2 control-label no-padding-right" for="form-field-asistente">Nueva Categor�a:</label>
												<input type="text" size="20" name="categoria" id="form-field-categoria"/>
												</div>
												
												</div>
												
												<br>

												<div class="col-sm-12"><br>
														<input class="col-sm-1" type="button" name="Aceptar" value="Confirmar">
														<input class="col-sm-1" type="button" name="Limpiar" value="Reevaluar">
														<input class="col-sm-1" type="button" name="Limpiar" value="Cancelar">
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