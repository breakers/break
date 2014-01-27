<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "man_perfiles"); %>

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
	
	
	
<%@ include file="contenido_foot.jsp"%>