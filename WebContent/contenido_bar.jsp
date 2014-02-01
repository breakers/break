<div class="sidebar sidebar-fixed" id="sidebar">
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed')
		} catch (e) {
		}
	</script>
	<%
		String buzon = "";
		String calendario = "";
		String cc = "";
		String cc_sol = "";
		String cc_evaluar = "";
		String cc_inspeccion = "";
		String cc_ruta = "";
		String cc_sol_registro = "";
		String cc_sol_revision = "";
		String cc_validar = "";
		String chat = "";
		String con = "";
		String con_sol = "";
		String con_consulta = "";
		String con_contrato = "";
		String con_sol_consulta = "";
		String con_sol_revision = "";
		String home = "";
		String liq = "";
		String liq_consulta = "";
		String liq_pago = "";
		String man = "";
		String man_perfiles = "";
		String man_usuarios = "";
		String nuevaconexion = "";
		String perfil = "";
		String rep = "";
		String rep_estadistica = "";
		String rep_servicios = "";
		String timeline = "";
		String contenido = "";

		String pagina = (String) request.getSession()
				.getAttribute("pagina");

		if (pagina != null) {

			if (pagina.equals("home")) {
				home = "active";
			} else if (pagina.equals("con_sol_revision")) {
				con = "active open";
				con_sol = "active open";
				con_sol_revision = "active";
			} else if (pagina.equals("con_sol_consulta")) {
				con = "active open";
				con_sol = "active open";
				con_sol_consulta = "active";
			} else if (pagina.equals("con_contrato")) {
				con = "active open";
				con_contrato = "active";
			} else if (pagina.equals("con_consulta")) {
				con = "active open";
				con_consulta = "active";
			} else if (pagina.equals("cc_sol_registro")) {
				cc = "active open";
				cc_sol = "active open";
				cc_sol_registro = "active";
			} else if (pagina.equals("cc_sol_revision")) {
				cc = "active open";
				cc_sol = "active open";
				cc_sol_revision = "active";
			} else if (pagina.equals("cc_ruta")) {
				cc = "active open";
				cc_ruta = "active";
			} else if (pagina.equals("cc_inspeccion")) {
				cc = "active open";
				cc_inspeccion = "active";
			} else if (pagina.equals("cc_evaluar")) {
				cc = "active open";
				cc_evaluar = "active";
			} else if (pagina.equals("cc_validar")) {
				cc = "active open";
				cc_validar = "active";
			} else if (pagina.equals("liq_consulta")) {
				liq = "active open";
				liq_consulta = "active";
			} else if (pagina.equals("liq_pago")) {
				liq = "active open";
				liq_pago = "active";
			} else if (pagina.equals("rep_servicios")) {
				rep = "active open";
				rep_servicios = "active";
			} else if (pagina.equals("rep_estadistica")) {
				rep = "active open";
				rep_estadistica = "active";
			} else if (pagina.equals("man_perfiles")) {
				man = "active open";
				man_perfiles = "active";
			} else if (pagina.equals("man_usuarios")) {
				man = "active open";
				man_usuarios = "active";
			} else if (pagina.equals("buzon")) {
				buzon = "active";
			} else if (pagina.equals("calendario")) {
				calendario = "active";
			} else if (pagina.equals("timeline")) {
				timeline = "active";
			} else if (pagina.equals("contenido")) {
				contenido = "active";
			} else {

			}

		}
	%>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success"
				onclick="location.href='SvCon_Solicitud';">
				<i class="icon-signal"></i>
			</button>

			<button class="btn btn-info"
				onclick="location.href='cc_sol_registro.jsp';">
				<i class="icon-pencil"></i>
			</button>

			<button class="btn btn-warning"
				onclick="location.href='liq_consulta.jsp';">
				<i class="icon-group"></i>
			</button>

			<button class="btn btn-danger"
				onclick="location.href='rep_servicios.jsp';">
				<i class="icon-cogs"></i>
			</button>
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span> <span class="btn btn-info"></span>

			<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
		</div>
	</div>
	<!-- #sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class=" <%=home%>"><a href="home.jsp"> <i
				class="icon-dashboard"></i> <span class="menu-text"> <fmt:message
						key="label.resumen" />
			</span>
		</a></li>


		<li class=" <%=con%>"><a href="#" class="dropdown-toggle"> <i
				class="icon-edit"></i> <span class="menu-text"><fmt:message
						key="label.Contratos" /> </span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li class=" <%=con_sol%>"><a href="#" class="dropdown-toggle">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Solicitud" /> <b class="arrow icon-angle-down"></b>
				</a>

					<ul class="submenu">

						<li class=" <%=con_sol_revision%>"><a
							href="SvCon_Solicitud"> <i class="icon-ok"></i> <fmt:message
									key="label.Evaluar" />
						</a></li>

						<li class=" <%=con_sol_consulta%>"><a
							href="con_sol_consulta.jsp"> <i class="icon-eye-open"></i> <fmt:message
									key="label.Buscar" />
						</a></li>
					</ul></li>

				<li class=" <%=con_contrato%>"><a href="SvContrato">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Generar" />
				</a></li>

				<li class=" <%=con_consulta%>"><a href="con_consulta.jsp">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Cc" />
				</a></li>


			</ul></li>


		<li class=" <%=cc%>"><a href="#" class="dropdown-toggle"> <i
				class="icon-share"></i> <span class="menu-text"><fmt:message
						key="label.Categoria" /> </span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li class=" <%=cc_sol%>"><a href="#" class="dropdown-toggle">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Solicitud" /><b class="arrow icon-angle-down"></b>
				</a>

					<ul class="submenu">
						<li class=" <%=cc_sol_registro%>"><a
							href="cc_sol_registro.jsp"> <i class="icon-pencil"></i> <fmt:message
									key="label.Registrar" />
						</a></li>

						<li class=" <%=cc_sol_revision%>"><a
							href="cc_sol_revision.jsp"> <i class="icon-ok"></i> <fmt:message
									key="label.Revisar" />
						</a></li>
					</ul></li>

				<li class=" <%=cc_ruta%>"><a href="cc_ruta.jsp"> <i
						class="icon-double-angle-right"></i> <fmt:message key="label.Ruta" />
				</a></li>

				<li class=" <%=cc_inspeccion%>"><a href="cc_inspeccion.jsp">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Ii" />
				</a></li>

				<li class=" <%=cc_evaluar%>"><a href="cc_evaluar.jsp"> <i
						class="icon-double-angle-right"></i> <fmt:message key="label.Ee" />
				</a></li>

				<li class=" <%=cc_validar%>"><a href="cc_validar.jsp"> <i
						class="icon-double-angle-right"></i> <fmt:message key="label.Ve" />
				</a></li>


			</ul></li>

		<li class=" <%=liq%>"><a href="#" class="dropdown-toggle"> <i
				class="icon-dollar"></i> <span class="menu-text"> <fmt:message
						key="label.Liquidacion" />
			</span> <b class="arrow icon-angle-down"></b>
		</a>

			<ul class="submenu">
				<li class=" <%=liq_consulta%>"><a href="liq_consulta.jsp">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Cd" />
				</a></li>

				<li class=" <%=liq_pago%>"><a href="liq_pago.jsp"> <i
						class="icon-double-angle-right"></i> <fmt:message key="label.Rp" />
				</a></li>

			</ul></li>

		<li class=" <%=rep%>"><a href="#reportes"
			class="dropdown-toggle"> <i class="icon-list-alt"></i> <span
				class="menu-text"> <fmt:message key="label.Reportes" />
			</span> <b class="arrow icon-angle-down"></b>
		</a>
			<ul class="submenu">
				<li class=" <%=rep_servicios%>"><a href="rep_servicios.jsp">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Sc" />
				</a></li>

				<li class=" <%=rep_estadistica%>"><a
					href="SvReportes"> <i class="icon-double-angle-right"></i>
						<fmt:message key="label.Edc" />
				</a></li>

			</ul></li>


		<li class=" <%=man%>"><a href="#mantenimiento"
			class="dropdown-toggle"> <i class="icon-cogs"></i> <span
				class="menu-text"> <fmt:message key="label.Mantenimiento" />
			</span> <b class="arrow icon-angle-down"></b>
		</a>
			<ul class="submenu">
				<li class=" <%=man_perfiles%>"><a href="SvPerfiles"> <i
						class="icon-double-angle-right"></i> <fmt:message
							key="label.Perfiles" />
				</a></li>

				<li class=" <%=man_usuarios%>"><a href="man_usuarios.jsp">
						<i class="icon-double-angle-right"></i> <fmt:message
							key="label.Usuario" />
				</a></li>
			</ul></li>
		<li class=" <%=buzon%>"><a href="buzon.jsp"> <i
				class="icon-envelope-alt"></i> <span class="menu-text"> <fmt:message
						key="label.Buzon" /> <span class="badge badge-primary ">5</span>
			</span>
		</a></li>
		<li class=" <%=calendario%>"><a href="calendario.jsp"> <i
				class="icon-calendar"></i> <span class="menu-text"><fmt:message
						key="label.Calendario" /> <span
					class="badge badge-transparent tooltip-error" title=""
					data-original-title="2 Important Events"> <i
						class="icon-warning-sign red bigger-130"></i>
				</span> </span>
		</a></li>

		<li class=" <%=timeline%>"><a href="timeline.jsp"> <i
				class="icon-code-fork"></i> <span class="menu-text"><fmt:message
						key="label.LineaTiempo" /> </span>
		</a></li>

		<li class=" <%=contenido%>"><a
			href="contenido.jsp"> <i class="icon-github"></i>
				<span class="menu-text"><fmt:message key="label.Contenido" />
			</span>
		</a></li>
	</ul>
	<!-- /.nav-list -->

	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
			data-icon2="icon-double-angle-right"></i>
	</div>

	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
		}
	</script>
</div>