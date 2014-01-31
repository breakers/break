<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "con_sol_revision"); %>
<link rel="stylesheet" href="css/assets/jquery-ui-1.10.3.full.min.css" />
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
														<th width="70">Numero</th>
														<th width="150">Nombre</th>

														<th width="100">
															<i class="icon-time bigger-110 hidden-480"></i>
															Fecha
														</th>
														<th width="100">Estado</th>
														<th></th>
													</tr>
												</thead>

												<tbody>
												<c:forEach var="sol" items="${requestScope.lista}">
													<tr>
														<td>${sol.idSolicitud}</td>
														<td>${sol.nombres} ${sol.apepat} ${sol.apemat}</td>
														<td>${sol.fechaSolicitud}</td>
														<td class="hidden-480">
															<span class="label label-sm label-danger arrowed">${sol.desEstadoSolicitudNuevaConexion}</span>
														</td>
														<td>
															<a href="SvCon_Solicitud?num=${sol.idSolicitud}"><i class="icon-eye-open"></i> Ver Datos</a>
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
														<input type="text" name="txtNombre" id="txtNombre" readonly="readonly" value="${requestScope.solicitud.nombres}"/>	
													</fieldset><br>
													<fieldset>
														<label class="col-sm-4">Apellido Paterno:</label> 
														<input type="text" name="txtApepat" id="txtApepat" readonly="readonly" value="${requestScope.solicitud.apepat}"/>
													</fieldset>
													<fieldset><br>
														<label class="col-sm-4">Apellido Materno:</label> 
														<input type="text" name="txtApemat" id="txtApemat" readonly="readonly" value="${requestScope.solicitud.apemat}"/>
													</fieldset>

													<br>

													<fieldset>
														<label><strong>Documento de Identidad</strong></label>
													</fieldset>
													<fieldset>
														<label class="col-sm-3 control-label no-padding-right">Tipo:</label> 													
														<input class="col-sm-4" type="text" name="txtTipo" id="txtTipo" readonly="readonly" value="${requestScope.solicitud.tipodoc.desTipoDoc}"/>
														
														<label class="col-sm-2" > <a href="#modal-documento" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 153px;padding-left: 7px;padding-right: 4px;">
																<i class="icon-search"></i> Ver Documento
														</a>
													</label>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">Numero:</label> 
														<input class="col-sm-4" type="text" name="txtNumero" id="txtNumero" readonly="readonly" value="${requestScope.solicitud.numDoc}"/>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3"  style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};">R.U.C.:</label> 
														<input class="col-sm-4" type="text" name="txtRUC" id="txtRUC" readonly="readonly" value="${requestScope.solicitud.ruc}" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};"/>
													<label class="col-sm-2" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};"> <a href="#" class="btn btn-info" data-toggle="modal" style="height: 32px;padding-top: 0px;width: 195px;padding-left: 3px;padding-right: 4px;" >
																<i class="icon-search"></i> Ver Vigencia de Poder
														</a>
														</label>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};">Raz. Social:</label> 
														<input class="col-sm-6" type="text" name="txtRaSocial" id="txtRaSocial" readonly="readonly" value="${requestScope.solicitud.razonsocial}" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};"/>
													</fieldset>

													<br>

													<fieldset>
														<label><strong>Otros Datos</strong></label>
													</fieldset>
													<fieldset>
														<label class="col-sm-3">Telefono:</label> 													
														<input type="text" name="txtTelefono" id="txtTelefono" readonly="readonly" value="${requestScope.solicitud.telefono}"/>	
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">Celular:</label> 
														<input type="text" name="txtCelular" id="txtCelular" readonly="readonly" value="${requestScope.solicitud.celular}"/>
													</fieldset>
													<fieldset><br>
														<label class="col-sm-3">Correo:</label> 
														<input type="text" name="txtCorreo" id="txtCorreo" readonly="readonly" value="${requestScope.solicitud.correo}"/>
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
														<input class="col-sm-3" type="text" name="txtProvincia" id="txtProvincia" readonly="readonly" value="${requestScope.solicitud.des_provincia}"/>
														
														<label class="col-sm-3 control-label no-padding-right"  style="padding-left: 80px;">Calle:</label> 													
														<input class="col-sm-3" type="text" name="txtCalle" id="txtCalle" readonly="readonly" value="${requestScope.solicitud.des_calle}"/>
														
													</fieldset><br>
													<fieldset>
														<label class="col-sm-2" style="padding-left: 25px;">Distrito:</label> 
														<input class="col-sm-3" type="text" name="txtDistrito" id="txtDistrito" readonly="readonly" value="${requestScope.solicitud.des_distrito}"/>
														
														<label class="col-sm-3 control-label no-padding-right" style="padding-left: 60px;">Numero:</label>
														<input class="col-sm-3" type="text" name="txtNumero" id="txtNumero" readonly="readonly" value="${requestScope.solicitud.numero}"/>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right">Localidad:</label> 													
														<input class="col-sm-3" type="text" name="txtLocalidad" id="txtLocalidad" readonly="readonly" value="${requestScope.solicitud.des_localidad}"/>
														
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3 control-label no-padding-right">Referencias:</label>
														<textarea class="col-sm-8" id="txtReferencias" 
														style="height: 100px; background: rgb(245, 245, 245); border-color: rgb(181, 181, 181); resize: none;" 
														readonly="readonly"  >
														${requestScope.solicitud.referencias}
														</textarea>
														
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
						
						
						
							<button class="btn btn-success" type="button" id="btnAprobar">
								<i class="icon-thumbs-up bigger-110"></i>
								Aprobar
							</button>
							

							&nbsp; &nbsp; &nbsp;
							
							<button class="btn btn-danger" type="button" id="btnRechazar">
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
											<img src="${requestScope.solicitud.fileDocumentoIdentidad}" width="500" height="300">
										</div>

										<div class="modal-footer">
											<button class="btn btn-sm" data-dismiss="modal">
												<i class="icon-remove"></i> Cerrar
											</button>

											<button class="btn btn-sm btn-primary">
												<i class="icon-download"></i> Descargar
											</button>
											
										<div id="dialog-confirm-aprobar" class="hide">
											<div class="alert alert-success bigger-110">
												Se aprobará la solicitud ${requestScope.solicitud.idSolicitud}
												del Solicitante ${requestScope.solicitud.nombres} ${requestScope.solicitud.apepat}
											</div>

											<div class="space-6"></div>

											<p class="bigger-110 bolder center grey">
												<i class="icon-hand-right blue bigger-120"></i>
												¿Está Seguro?
											</p>
										</div><!-- #dialog-confirm -->
										
										<div id="dialog-confirm-rechazar" class="hide">
											<div class="alert alert-danger bigger-110">
												Se rechazará la solicitud ${requestScope.solicitud.idSolicitud}
												del Solicitante ${requestScope.solicitud.nombres} ${requestScope.solicitud.apepat}
											</div>

											<div class="space-6"></div>

											<p class="bigger-110 bolder center grey">
												<i class="icon-hand-right blue bigger-120"></i>
												¿Está Seguro?
											</p>
										</div><!-- #dialog-confirm -->
										
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
	
	<script src="js/jquery-ui-1.10.3.full.min.js"></script>
	<script src="js/jjquery.ui.touch-punch.min.js"></script>
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
	    
	    $( "#btnAprobar" ).on('click', function(e) {
			e.preventDefault();
		
			$( "#dialog-confirm-aprobar" ).removeClass('hide').dialog({
				resizable: false,
				draggable: false,
				modal: true,
				title: "Confirmación",
				title_html: true,
				buttons: [
					{
						html: "<i class='icon-check bigger-110'></i>&nbsp; Confirmar",
						"class" : "btn btn-success btn-xs",
						click: function() {
							$.ajax({
								  url:"SvCon_Solicitud",
								  type:"POST",
								  data:{id:"${requestScope.solicitud.idSolicitud}",est:"2"},
								  success: function(){
									  location.href="SvCon_Solicitud";
								  }
								});
						}
					}
					,
					{
						html: "<i class='icon-remove bigger-110'></i>&nbsp; Cancelar",
						"class" : "btn btn-xs",
						click: function() {
							$( this ).dialog( "close" );
						}
					}
				]
			});
			
	    });
		
			 $( "#btnRechazar" ).on('click', function(e) {
					e.preventDefault();
				
				$( "#dialog-confirm-rechazar" ).removeClass('hide').dialog({
					resizable: false,
					draggable: false,
					modal: true,
					title: "Confirmación",
					title_html: true,
					buttons: [
						{
							html: "<i class='icon-check bigger-110'></i>&nbsp; Confirmar",
							"class" : "btn btn-danger btn-xs",
							click: function() {
								$.ajax({
									  url:"SvCon_Solicitud",
									  type:"POST",
									  data:{id:"${requestScope.solicitud.idSolicitud}",est:"3"},
									  success: function(response){
										  location.href="SvCon_Solicitud";
									  }
									});
							}
						}
						,
						{
							html: "<i class='icon-remove bigger-110'></i>&nbsp; Cancelar",
							"class" : "btn btn-xs",
							click: function() {
								$( this ).dialog( "close" );
							}
						}
					]
				});
			
			});
			 
			 
		

	    
	    
	    
	});
	
	</script>
	
<%@ include file="contenido_foot.jsp"%>