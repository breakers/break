<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "con_contrato"); %>

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
							<small> <i class="icon-double-angle-right"></i> <fmt:message key="label.Generar" /></small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="widget-header header-color-red">
												<h5 class="bigger lighter">
													
													Generar Contrato Nueva Conexion
												</h5>
							</div>
	
			

									<div class="col-sm-12">
										<div class="widget-box">
											<div class="widget-header">
												<h4 class="smaller">Datos del Solicitante </h4>
											</div>

											<div class="widget-body">
												<div class="widget-main">
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-Generales"><strong>Datos Generales</strong></label>
													
												</div><!-- form-group --><BR>
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-nombre">Nombre(s):</label>
												
													<div class="col-sm-9">
															<input type="text" name="nombre" id="form-field-nombre"/>
													</div>
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-apepat">Apellido Paterno:</label>
												
													<div class="col-sm-9">
															<input type="text" name="apepat" id="form-field-apepat"/>
													</div>
													
													
												</div><!-- form-group -->
												
												<br>
													
												<div class="form-group">
													<label class="col-sm-2 control-label no-padding-right" for="form-field-apemat">Apellido Materno:</label>
													
													<div class="col-sm-9">
															<input type="text" name="apemat" id="form-field-apemat"/>
													</div>
													
															
												</div><!-- form-group -->
												<br>
												
												
												
												<br><br>
												
												
												</div><br><br><br><br><br>
											</div>
										</div>
									</div><!-- /span -->
















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

	$(document).ready(function () {
	    $("tr").click(function () {
	        $(this).closest("tr").siblings().removeClass("highlighted");
	        $(this).toggleClass("highlighted");
	    });
	});
	
	</script>
<%@ include file="contenido_foot.jsp"%>