<%@ include file="contenido_head.jsp"%>
<!-- aqui deben ingresar el nombre de la pagina sin extension(solo las paginas ya creadas) Ejem: contenido.jsp: contenido-->
<% request.getSession().setAttribute("pagina", "cc_evaluar"); %>

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
						<h1> <fmt:message key="label.Categoria" />
							<small> <i class="icon-double-angle-right"></i> <fmt:message key="label.EvaluarSolicitud" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="widget-header header-color-red">
												<h5 class="bigger lighter">
													<i class="icon-table"></i>
													Solicitudes Inspeccionadas
												</h5>
							</div>
							<div class="table-responsive">
											<table id="sample-table-1" class="table table-bordered">
												<thead>
													<tr>
														<th width="100">Numero</th>
														<th width="200">Cliente</th>

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
												<h4 class="smaller">Detalles de la Solicitud a Evaluar</h4>
											</div>

											<div class="widget-body">
												<div class="widget-main">
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-nro_solicitud"><strong>Número de Solicitud	:	XXXX</strong></label>
													
												</div><!-- form-group --><BR>
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-cliente">Cliente:</label>
												
													<div class="col-sm-9">
															<input type="text" name="cliente" id="form-field-cliente"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-suministro">Suministro:</label>
												
													<div class="col-sm-9">
															<input type="text" name="suministro" id="form-field-suministro"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-codigo">Codigo:</label>
												
													<div class="col-sm-9">
															<input type="text" name="codigo" id="form-field-codigo"/>
															<input type="button" name="Detalle Cliente" value="Detalle Cliente">
													</div>
												</div><!-- form-group -->
												
												
												<div class="form-group">
													<label class="col-sm-4 control-label no-padding-right" for="form-field-razon">Razón de Cambio del Cliente:</label>
												</div>	
												<div class="col-sm-9">
															<input type="text" size="100" name="razon" id="form-field-razon"/>
												</div>	
																											
												<br><br>
												
												
												
												
												</div><br><br><br><br><br>
											</div>
										</div>
									</div><!-- /span -->
									
									
									<br>
									
									<div class="col-sm-12">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="smaller">Detalle Inspección</h4>
											</div>

												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-inspeccion">Inspección:</label>
												
													<div class="col-sm-9">
															<input type="text" name="inspeccion" id="form-field-inspeccion"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-inspeccion">Fecha Inspección:</label>
												
													<div class="col-sm-9">
															<input type="text" name="inspeccion" id="form-field-inspeccion"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-Inspector">Inspector		:		Daniel Eltra Vieso</label>
													<label class="col-sm-2 control-label no-padding-right" for="form-field-codigo">Codigo	:	IXXX</label>
													<input type="button" name="Detalle Inspector" value="Detalle Inspector">
												</div>
												
											
												
												<div class="form-group">
													<label class="col-sm-1 control-label no-padding-right" for="form-field-distrito">Distrito:</label>
													<input type="text" size="100" name="distrito" id="form-field-distrito"/>
												</div>
												
												<div class="form-group">
													<label class="col-sm-1 control-label no-padding-right" for="form-field-terreno">Terreno:</label>
													<input type="text" name="Terreno" id="form-field-terreno"/>
													</div>
												<div class="form-group">
													<label class="col-sm-1 control-label no-padding-right" for="form-field-pisos">Pisos:</label>
													<input type="text" name="Pisos" id="form-field-pisos"/>
												</div>
												
												<div class="form-group">
													<label class="col-sm-1 control-label no-padding-right" for="form-field-zona">Zona:</label>
													<input type="text" name="Zona" id="form-field-zona"/>
												</div>
												
												<div class="form-group">
													<label class="col-sm-1 control-label no-padding-right" for="form-field-vivienda">Tipo Vivienda:</label>
													<input type="text" name="Vivienda" id="form-field-vivienda"/>
												</div>
												
												<div class="form-group">
													<input type="button" name="Imagen Predio" value="Imagen Predio">
												</div>
												
												<div class="col-sm-12"><br>
														<label class="col-sm-2 control-label no-padding-right" for="form-field-pisos">Comentario Inspector:</label>
												<input type="text" size="100" name="comentario" id="form-field-comentario"/>
												<!-- form-group -->															
												<br><br>
											</div><br><br><br>
										</div>
									</div>
								</div><!-- /span -->

								<br><br><br>
								
								
										<div class="col-sm-12"><br><br>
												<label class="col-sm-2 control-label no-padding-right" for="form-field-pisos">Comentario Revisión:</label>
												<input type="text" size="100" name="revision" id="form-field-revision"/>
										</div>
								
																
								<div class="col-sm-12"><br>
											<label class="col-sm-2" for="form-field-vivienda">Categoría según Evaluación:</label> 
											<select name="thelist" onChange="combo(this, 'theinput')">
  												<option>Categoría A</option>
 												<option>Categoría B</option>
 												<option>Categoría C</option>
											</select>
								</div>
								
								<div class="col-sm-12"><br>
										<input class="col-sm-1" type="button" name="Aceptar" value="Aceptar">
										<input class="col-sm-1" type="button" name="Limpiar" value="Limpiar">
										
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
	
	<script type="text/javascript">
	<!--RENZO-->
	$(document).ready(function () {
	    $("tr").click(function () {
	        $(this).closest("tr").siblings().removeClass("highlighted");
	        $(this).toggleClass("highlighted");
	    });
	});
	
	</script>
<%@ include file="contenido_foot.jsp"%>