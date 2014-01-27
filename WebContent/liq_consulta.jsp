<%@ include file="contenido_head.jsp"%>
<% request.getSession().setAttribute("pagina", "liq_consulta"); %>

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

						Aqui va el contenido de la pagina <br> Mientras mira el demo
						del chat <a href="chat.jsp">Aqui</a> <br>



















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