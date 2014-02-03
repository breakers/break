<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "con_contrato"); %>
<link rel="stylesheet" href="css/assets/jquery-ui-1.10.3.full.min.css" />
<link rel="stylesheet" href="css/jquery.gritter.css">
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
							<small> <i class="icon-double-angle-right"></i> <fmt:message key="label.EvaluarSolicitud"></fmt:message></small>
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
													Solicitudes de Nueva Conexion (Aprobadas)
												</h5>
									</div>
									<div class="table-responsive" style="overflow-y:scroll;max-height: 570px;">
											<table id="sample-table-1" class="table table-bordered " style="margin-bottom: 0px;">
												<thead>
													<tr>
														<th width="8%" style="text-align: center;">N°</th>
														<th width="36%" style="text-align: center;">Nombre / Razón Social</th>

														<th width="18%" style="text-align: center;">
															<i class="icon-time bigger-110 hidden-480"></i>
															Fecha
														</th>
														<th width="18%" style="text-align: center;">Estado</th>
														<th width="20%"></th>
													</tr>
												</thead>

												<tbody>
												<c:forEach var="sol" items="${requestScope.lista}">
													<tr>
														<td style="text-align: center;">${sol.idSolicitud}</td>
														<td>
															<c:if test="${sol.razonsocial eq ''}">
																${sol.nombres} ${sol.apepat} ${sol.apemat}
															</c:if>
															<c:if test="${sol.razonsocial ne ''}">
																${sol.razonsocial}
															</c:if>
															</td>
														<td style="text-align: center;">${sol.fechaSolicitud}</td>
														<td class="hidden-480" style="text-align: center;">
															<span class="label label-sm label-info arrowed">${sol.desEstadoSolicitudNuevaConexion}</span>
														</td>
														<td style="text-align: center;">
															<a href="SvContrato?num=${sol.idSolicitud}"><i class="icon-eye-open"></i> Ver Datos</a>
														</td>
													</tr>
												</c:forEach>
													
												</tbody>
											</table>
									</div><!-- /.table-responsive -->
									
									<label class="col-sm-6 control-label no-padding-right" style="left: 200px; top: 5px; padding-left: 31px;">Cantidad de Solicitudes Aprobadas:</label>
									<label id="lblCantidadSol" class="col-sm-3 control-label no-padding-right" style="left: 210px; top: 5px; padding-left: 0px;"></label>	
									</div>
								
							

									<!-- Datos del Solicitante -->
									<div class="col-sm-6">
													<fieldset >
														<label class="col-sm-2" for="txtFecha" 
														style="left: 375px;">Fecha:</label> 													
														<input class="col-sm-2" type="text" name="txtFecha" id="txtFecha" 
														readonly="readonly" value="${requestScope.fecha}" style="margin-left: 360px;bottom: 5px;"/>	
													</fieldset>
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
														
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3">Numero:</label> 
														<input class="col-sm-4" type="text" name="txtNumero" id="txtNumero" readonly="readonly" value="${requestScope.solicitud.numDoc}"/>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3"  style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};">R.U.C.:</label> 
														<input class="col-sm-4" type="text" name="txtRUC" id="txtRUC" readonly="readonly" value="${requestScope.solicitud.ruc}" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};"/>
													</fieldset><br>
													<fieldset>
														<label class="col-sm-3" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};">Raz. Social:</label> 
														<input class="col-sm-6" type="text" name="txtRaSocial" id="txtRaSocial" readonly="readonly" value="${requestScope.solicitud.razonsocial}" style="display: ${requestScope.solicitud.ruc eq '' ? 'none' : 'inline'};"/>
													</fieldset>

													<br>

												</form>	
												
												</div>
											</div>
										</div>
									<!-- /span -->
									
									<div class="space-6"></div>
									
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
									</div><!-- ends col-sm-6 -->
									
								
							</div>	<!-- ends row -->
							
						<div class="row">	<!-- begins row datos del predio,documentos -->
						
						
					
						</div>	<!-- ends row datos del predio,documentos -->
						
						<div class="row">	<!-- begins row botones -->
						<div class="hr hr-24"></div>
						<div class="col-sm-12" style="padding-left: 500px;">
						
						
						
							<label	class="col-xs-10 col-sm-3" style="display:${requestScope.solicitud.idSolicitud eq null ? 'none' : 'inline' }"> <a href="#modal-form" id="btnContinuar"
														 class="btn btn-info" data-toggle="modal">
															<i class="icon-forward bigger-110"></i> Continuar
													</a></label>
						
						</div>
						</div>
						
							<div id="modal-form" class="modal" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content" style="width: 700px;">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="blue bigger">Método de Pago <small> <i class="icon-double-angle-right"></i> Seleccione el método de pago</small></h4>
										</div>
										<div class="modal-body overflow-visible">

											<div class="row">
												<div class="col-xs-12 col-sm-12	">
												<div class="row">
													<fieldset>
														<label class="col-sm-2 control-label no-padding-right">Importe</label> 
														<input id="txtMonto"  class="col-xs-10 col-sm-3" type="text" readonly="readonly" value="${requestScope.solicitud.costo}"/> 
													</fieldset>
													<div class="space-12"></div>
													<fieldset>
														<input id="rbContado" name="rbMetodoPago" class="col-xs-10 col-sm-2" type="radio" style="left: 40px;" checked="checked"/>
														<label id="lblContado" class="col-sm-3 control-label no-padding-right">Pago al Contado</label>  
													</fieldset>
													<fieldset>
														<input id="rbCuotas" name="rbMetodoPago" class="col-xs-10 col-sm-2" type="radio" style="left: 40px;"/>
														<label id="lblCuotas" class="col-sm-3 control-label no-padding-right">Pago en Cuotas</label>  
													</fieldset>
													<div class="space-6"></div>
													<fieldset>
														<label hidden="true" id="lblNumCuotas" class="col-sm-2 control-label no-padding-right">N° Cuotas</label> 
														<select  id="numCuotas" name="numCuotas" hidden="true">
																			<option value="1">------------------</option>
																			<option value="6">6</option>
																			<option value="12">12</option>
																		</select>
													</fieldset>
													</div>
													<div class="space-6"></div>
													
													<div class="row">
														<div class="widget-header header-color-blue">
															<h5 class="bigger lighter">
																<i class="icon-usd"></i> Cuotas
															</h5>
														</div>
														<jsp:include page="tbCuotas.jsp"></jsp:include>
													</div>
													


												</div>
											</div>



										</div>

										<div class="modal-footer">
											<button class="btn btn-sm btn-success" id="btnGenerar">
												<i class="icon-ok"></i> Generar Contrato
											</button>
											<button class="btn btn-sm btn-danger" data-dismiss="modal">
												<i class="icon-remove"></i> Cancelar
											</button>
										</div>
										<div id="dialog-confirm-aprobar" class="hide">
											<div class="alert alert-info bigger-110">
												Se Generará el contrato para la solicitud ${requestScope.solicitud.idSolicitud}
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
	<script src="js/jquery.gritter.min.js"></script>
	<script type="text/javascript">
	<!-- RENZO-->
	$(document).ready(function () {
		
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
		
		var monto = $("#txtMonto").val();
	    var cuot = 1;
			 $('#divTabla').load('tbCuotas.jsp?cuot='+cuot+'&monto='+monto);
		$("#rbContado,#rbCuotas").change(function(){
			if($("#rbContado").is(":checked")){
				$("#numCuotas").hide();
				$("#lblNumCuotas").hide();
				$('#divTabla').load('tbCuotas.jsp?cuot=1&monto='+monto);
				$("#numCuotas").val("1");
			}
			if($("#rbCuotas").is(":checked")){
				$("#numCuotas").show();
				$("#lblNumCuotas").show();
			}
		});
		
		$("#numCuotas").change(function(){
			var monto = $("#txtMonto").val();
		    var cuot = this.value;
				 $('#divTabla').load('tbCuotas.jsp?cuot='+cuot+'&monto='+monto);	
		});
		
		var cant = $('#sample-table-1 >tbody >tr').length;
			
			$("#lblCantidadSol").html('<strong>'+cant+'</strong>');
		
		
	    $("tr").click(function () {
	        $(this).closest("tr").siblings().removeClass("highlighted");
	        $(this).toggleClass("highlighted");
	    });
	    
	    
	    $( "#btnGenerar" ).on('click', function(e) {
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
								  url:"SvContrato",
								  type:"POST",
								  data:{id:"${requestScope.solicitud.idSolicitud}",generar:true},
								  success: function(){
									  location.href="SvContrato";
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