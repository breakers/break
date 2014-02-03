<%@ include file="contenido_head.jsp"%>
<%
	request.getSession().setAttribute("pagina", "liq_pago");
%>
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
					<li class="active"><fmt:message key="label.Contenido" /></li>
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
						<fmt:message key="label.Liquidacion" />
						<small> <i class="icon-double-angle-right"></i> <fmt:message
								key="label.RegistrarPago"></fmt:message>
						</small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="row">

							<div class="col-sm-6">
								<div class="widget-header header-color-green">
									<h5 class="bigger lighter">
										<i class="icon-money"></i> Cuotas por Pagar de Cliente
									</h5>
								</div>
								<div class="table-responsive"
									style="overflow-y: scroll; max-height: 570px;">
									<table id="sample-table-1" class="table table-bordered "
										style="margin-bottom: 0px;">
										<thead>
											<tr>
												<button class="btn btn-sm btn-block btn-grey" type="button"
													id="btnBuscarCliente">
													<i class="icon-inverse bigger-110"></i> Buscar Cuotas de
													Cliente
												</button>
											</tr>
											<tr>
												<th width="8%" style="text-align: center;">Nº</th>
												<th width="36%" style="text-align: center;">Monto</th>

												<th width="18%" style="text-align: center;"><i
													class="icon-time bigger-110 hidden-480"></i> Fecha de
													Vencimiento</th>
												<th width="18%" style="text-align: center;">Estado</th>
												<th width="20%"></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="sol" items="${requestScope.lista}">
												<tr>
													<td style="text-align: center;">${cuota.idCuota}</td>
													<td>${sol.monto}</td>
													<td style="text-align: center;">${cuota.fechaSVencimiento}</td>
													<td class="hidden-480" style="text-align: center;"><span
														class="label label-sm label-danger arrowed">${dcuota.desEstadoCuota}</span>
													</td>
													<td style="text-align: center;"><a
														href="SvCon_Solicitud?num=${cuota.idCuota}"><i
															class="icon-eye-open"></i> Ver Datos</a></td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->

								<label class="col-sm-6 control-label no-padding-right"
									style="left: 200px; top: 5px; padding-left: 31px;">Total
									a deber Actualmente:</label> <label id="lblCantidadSol"
									class="col-sm-3 control-label no-padding-right"
									style="left: 210px; top: 5px; padding-left: 0px;"></label>
							</div>



							<!-- Datos de la Cuota -->
							<div class="col-sm-6">
								<div class="widget-box">
									<div class="widget-header">
										<h4 class="smaller">Datos de la Cuota</h4>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<form>


												<fieldset>
													<label class="col-sm-4">Nº de Cuota:</label> <input
														class="col-sm-4" type="text" name="txtNumCuota"
														id="txtNumCuota" readonly="readonly"
														value="${requestScope.cuota.idcuota}" />
												</fieldset>
												<br>

												<fieldset>
													<label class="col-sm-4">Razón Cuota:</label> <input
														class="col-sm-4" type="text" name="txtRazonCuota"
														id="txtRazonCuota" readonly="readonly"
														value="${requestScope.cuota.razon}" />
												</fieldset>
												<fieldset>
													<br> <label class="col-sm-4">Fecha Generación:</label>
													<input type="text" name="txtFechaGenerada" class="col-sm-4"
														id="txtFechaGenerada" readonly="readonly"
														value="${requestScope.cuota.fGenerada}" />
												</fieldset>
												<br>
												<fieldset>
													<label class="col-sm-4">Fecha Vencimiento:</label> <input
														class="col-sm-4" type="text" name="txtvencimiento"
														id="txtVencimiento" readonly="readonly"
														value="${requestScope.cuota.vencimiento}" />
												</fieldset>
												<fieldset>
													<br> <label class="col-sm-4">Deuda de:</label> <input
														class="col-sm-4" type="text" name="txtCliente"
														id="txtCliente" readonly="readonly"
														value="${requestScope.cliente.nombre} ${requestScope.cliente.apema} ${requestScope.cliente.apema}" />
												</fieldset>
												<fieldset>
													<br> <label class="col-sm-4">Nombre del
														Generador de Cuota:</label> <input type="text" name="txtUsuario"
														class="col-sm-4" id="txtUsuario" readonly="readonly"
														value="${requestScope.usuario.nombre} ${requestScope.usuario.apepa} ${requestScope.usuario.apema}" />
												</fieldset>
												<br>
												<fieldset>
													<label class="col-sm-4">Monto a Pagar:</label> <input
														class="col-sm-4" type="text" name="txtMonto" id="txtMonto"
														readonly="readonly" value="${requestScope.cuota.monto}" />
												</fieldset>
												<br>

											</form>

										</div>
									</div>
								</div>
								<!-- /span -->

								<div class="space-6"></div>


							</div>
							<!-- ends col-sm-6 -->

						</div>
						<!-- ends row -->

						<div class="row">
							<!-- begins row botones -->
							<div class="hr hr-24"></div>
							<div class="col-sm-12" style="padding-left: 420px;">



								<button class="btn btn-success" type="button" id="btnPagar">
									<i class="icon-thumbs-up bigger-110"></i> Realizar Pago
								</button>


								&nbsp; &nbsp; &nbsp;

								<button class="btn btn-danger" type="button" id="btnRechazar"
									 }>
									<i class="icon-thumbs-down bigger-110"></i> Rechazar
								</button>
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
