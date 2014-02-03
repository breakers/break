package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CC_SolicitudService;
import service.ClienteService;
import service.ContratoService;
import service.PerfilService;
import service.PredioService;
import service.SuministroService;
import bean.ClienteDTO;
import bean.ContratoDTO;
import bean.DetalleSolCambioCatDTO;
import bean.FiltroClienteDTO;
import bean.PerfilDTO;
import bean.PredioDTO;
import bean.SolicitudCambioCatDTO;
import bean.SuministroDTO;

/**
 * Servlet implementation class SvCC_Solicitud
 */
@WebServlet("/SvCC_Solicitud")
public class SvCC_Solicitud extends ServletParent {
	private static final long serialVersionUID = 1L;
	
	PerfilService service = new PerfilService(); //de prueba
	
	ContratoService serviciocon = new ContratoService();
    PredioService serviciopredio= new PredioService();  
    CC_SolicitudService servicioSolCC= new CC_SolicitudService();
    ClienteService serviciocli= new ClienteService();
    
    SuministroService serviciosumi = new SuministroService();
    
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvCC_Solicitud() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String proceso = request.getParameter("proceso");
		
		if (proceso!=null ) {
			
		
		if(proceso.equals("filtrar")){
			filtrarClientes(request,response);
			
		}else if(proceso.equals("mostrarDatos")){
			mostrarDatosCliente(request,response);
			
		}else if(proceso.equals("mostrarDatosSuministro")){
			mostrarDatosSuministro(request,response);
		}else if(proceso.equals("Grabar")){
			System.out.println("Ingresa a grabar la solicitud de Cambio Categoria");
		}else if (proceso.equals("cargarSolicitudesCC")){
			listarSolicitudesCC(request,response);
		}else if(proceso.equals("mostrarSol")){
			mostrarSolicitudPendiente(request,response);
			
			
		}else{
			Terminar(request, response, "Operacion invalida");
		}
		}else{
			Terminar(request, response);
		}
		
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String proceso = request.getParameter("proceso");
		
		if (proceso !=null) {
			if (proceso.equals("Grabar")) {
				registrarSolicitudCambioCategoria(request,response);
			}else if(proceso.equals("ValidarSCC")){
				validarSolicitudCambioCategoria(request,response);
			}
		}
	}

	private void listarSolicitudesCC(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("SI ingresa a listar las solicitudes pendientes");
		
		List<SolicitudCambioCatDTO> lista = servicioSolCC.listarSolicitudesporEstado(1); //estado pendientes
		System.out.println("tamanio lista"+lista.size());
		request.setAttribute("lista", lista);
		RequestDispatcher rd = request.getRequestDispatcher("/cc_sol_revision.jsp");
		rd.forward(request, response);
		
	}
	
	private void validarSolicitudCambioCategoria(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String sidSolicitud= request.getParameter("ccIdSolCategoria");
		String cidUsuario = request.getSession().getAttribute("iduser").toString();
		
		System.out.println("Entro para Validar e ir a inspeccion solnumero:"+sidSolicitud);
		
		int idSolicitud;
		int idUsuario ;
		try {
			idSolicitud=Integer.parseInt(sidSolicitud);
			idUsuario = Integer.parseInt(cidUsuario);
		} catch (Exception e) {
			idSolicitud =-1;
			idUsuario =-1;
		}
		
		if (idSolicitud!=-1 && idUsuario !=-1 ) {
			
			DetalleSolCambioCatDTO detalle = new DetalleSolCambioCatDTO();
			
			detalle.setIdEstado(2);
			detalle.setIdSolCategoria(idSolicitud);
			detalle.setIdUsuario(idUsuario);
			
			servicioSolCC.actualizarEstadoSolicitudCC(detalle);
			
			request.getSession().setAttribute("evento", 1);
			request.getSession().setAttribute("mensaje", obtenerMensaje(request,3,"Solicitud de cambio de categoria"));
			RequestDispatcher rd = request.getRequestDispatcher("/cc_sol_revision.jsp");
			rd.forward(request, response);

		}else{
			Terminar(request, response);
		}
	}

	private void mostrarSolicitudPendiente(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// Muestra Solicitud Pendiente para su aprobacion
		String sidSolicitud = request.getParameter("idSol");
		String cidUsuario = request.getSession().getAttribute("iduser").toString();
		
		System.out.println("ID Solicitud numero:" + sidSolicitud);
		int idSolicitud;
		int idUsuario ;
		try {
			idSolicitud=Integer.parseInt(sidSolicitud);
			idUsuario = Integer.parseInt(cidUsuario);
		} catch (Exception e) {
			idSolicitud =-1;
			idUsuario =-1;
		}
		
		if (idSolicitud!=-1 && idUsuario !=-1 ) {
			SolicitudCambioCatDTO solicitudcc=servicioSolCC.obtenerSolicitud(idSolicitud);
			
			if(solicitudcc!=null){
				if(solicitudcc.getIdEstado()==1){
					
				ClienteDTO cliente = serviciocli.obtenerClientePorSuministro(solicitudcc.getIdSuministro());
				SuministroDTO suministro= serviciosumi.obtenerSuministro(solicitudcc.getIdSuministro());
				PredioDTO predio= serviciopredio.obtenerPredio(suministro.getIdPredio());
				request.setAttribute("solicitudcc", solicitudcc);
				
				System.out.println("LII: suministro.idpredio:" + suministro.getIdPredio());
				System.out.println("LII: predio.idpredio:" + predio.getIdPredio());
				System.out.println("LII: predio.direccion:" + predio.getId_calle() + " " +predio.getNumPredio() + " - "+predio.getNomLocalidad() + " - "+ predio.getNomDistrito());
				System.out.println("LII: predio.descripcion tipo:" + predio.getDesTipoPredio());
				
				
				
				if (cliente.getIdtipoPersona()==1) { // narutal
					System.out.println("solcc al natural >"+solicitudcc.getIdSolCategoria());
					request.setAttribute("scc_idSolicitud", solicitudcc.getIdSolCategoria());
					request.setAttribute("scc_nomCliente", cliente.getNomCliente() + " " +cliente.getApepaCliente());
					request.setAttribute("scc_idCliente", cliente.getIdCliente());
					request.setAttribute("scc_codSuministro", suministro.getCodSuministro());
					request.setAttribute("scc_nomCategoria", suministro.getNomCategoria());
					request.setAttribute("scc_Direccion", predio.getNomCalle() + " " +predio.getNumPredio() + " - "+predio.getNomLocalidad() + " - "+ predio.getNomDistrito());
					request.setAttribute("scc_nomDiametroConexion", suministro.getNomDiametroConexion());
					request.setAttribute("scc_desTipoPredio", predio.getDesTipoPredio());
					request.setAttribute("scc_detalles", solicitudcc.getRazoncambio());
				}else{ //juridica
					System.out.println("solcc juridica"+solicitudcc.getIdSolCategoria());
					request.setAttribute("scc_idSolicitud", solicitudcc.getIdSolCategoria());
					request.setAttribute("scc_nomCliente", cliente.getRazonsocial());
					request.setAttribute("scc_idCliente", cliente.getIdCliente());
					request.setAttribute("scc_codSuministro", suministro.getCodSuministro());
					request.setAttribute("scc_nomCategoria", suministro.getNomCategoria());
					request.setAttribute("scc_Direccion", predio.getNomCalle() + " " +predio.getNumPredio() + " - "+predio.getNomLocalidad() + " - "+ predio.getNomDistrito());
					request.setAttribute("scc_nomDiametroConexion", suministro.getNomDiametroConexion());
					request.setAttribute("scc_desTipoPredio", predio.getDesTipoPredio());
					request.setAttribute("scc_detalles", solicitudcc.getRazoncambio());
					
				}
				
				
				}else{
					request.setAttribute("solicitudcc", null);
				}
			}
			listarSolicitudesCC(request, response);
			
		}else{
			//Mensaje de Error
		}
		
		
		
	}

	
	private void registrarSolicitudCambioCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String sidSuministro = request.getParameter("ccIdSuministro");
			String cidUsuario = request.getSession().getAttribute("iduser").toString();
			String razonCambio = request.getParameter("razonCambio");
			System.out.println("ID Suministro numero:" + sidSuministro);
			int idSuministro;
			int idUsuario ;
			try {
				idSuministro=Integer.parseInt(sidSuministro);
				idUsuario = Integer.parseInt(cidUsuario);
			} catch (Exception e) {
				idSuministro =-1;
				idUsuario =-1;
			}
			
			if (idSuministro!=-1 && idUsuario !=-1 ) {
				
				//**************Validar Suministro no Tenga solicitud en curso
				
				int estado = servicioSolCC.obtenerEstadoSCC(idSuministro);
				System.out.println("estado solicitud suminis:"+idSuministro+"estado:"+estado);
				//sino encuentra -1
				if (estado==-1 || estado == 6) {
					
				
				
				SolicitudCambioCatDTO solicitudcc= new SolicitudCambioCatDTO();
				solicitudcc.setIdSuministro(idSuministro);
				solicitudcc.setIdUsuario(idUsuario); 
				solicitudcc.setImgDNI(null); // momentaneamente
				solicitudcc.setImgArchivo(null); // momentaneamente
				solicitudcc.setRazoncambio(razonCambio);
				if(servicioSolCC.registrarSolicitudCC(solicitudcc)){
					request.getSession().setAttribute("evento", 1);
					request.getSession().setAttribute("mensaje", obtenerMensaje(request,1,"Solicitud de Cambio de Categoria"));
					
					request.getRequestDispatcher("/cc_sol_registro.jsp").forward(request, response);
				}
			}
				else{
					//Mensaje Cliente ya tiene una operacion pendiente
					request.getSession().setAttribute("evento", 1);
					request.getSession().setAttribute("mensaje", obtenerMensaje(request,5,"Suministro que no tenga solicitudes en curso"));
					RequestDispatcher rd = request.getRequestDispatcher("/cc_sol_registro.jsp");
					rd.forward(request, response);
				}
			}else{
				//Mensaje Error
				request.getSession().setAttribute("evento", 1);
				request.getSession().setAttribute("mensaje", obtenerMensaje(request,5,"Suministro valido"));
				RequestDispatcher rd = request.getRequestDispatcher("/cc_sol_registro.jsp");
				rd.forward(request, response);
			}
				
				
	}

	
	public void filtrarClientes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		FiltroClienteDTO filtrocliente = new FiltroClienteDTO();
		int tipoPersona = Integer.parseInt(request.getParameter("tipoPersona"));
		System.out.println(tipoPersona);
		String nomcli = request.getParameter("nomcli");
		System.out.println(nomcli);
		String numdoc = request.getParameter("numdoc");
		System.out.println(numdoc);
		String ruc = request.getParameter("ruc");
		System.out.println(ruc);
		String razsocial = request.getParameter("razsocial");
		System.out.println(razsocial);
		String nombreRepre = request.getParameter("nombreRepre");
		System.out.println(nombreRepre);
		String apeRepre = request.getParameter("apeRepre");
		System.out.println(apeRepre);
		
		filtrocliente.setTipoPersona(tipoPersona);
		if(tipoPersona == 1){
			System.out.println("se filtrara como natural");
			filtrocliente.setNomcli(nomcli);
			filtrocliente.setNumdoc(numdoc);
			filtrocliente.setRuc("");
			filtrocliente.setRazsocial("");
			filtrocliente.setNombreRepre("");
			filtrocliente.setApeRepre("");
			
		}else{
			System.out.println("se filtrara como juridica");
			filtrocliente.setNomcli("");
			filtrocliente.setNumdoc("");
			filtrocliente.setRuc(ruc);
			filtrocliente.setRazsocial(razsocial);
			filtrocliente.setNombreRepre(nombreRepre);
			filtrocliente.setApeRepre(apeRepre);
			
		}
		
		
		ArrayList<ClienteDTO> clientesfiltrados = serviciocon.filtrarClientes(filtrocliente);
		
		PrintWriter out = response.getWriter();
		if(tipoPersona==1){
			out.print("<table id=\"sample-table-1\" class=\"table table-bordered \" style=\"margin-bottom: 0px;\">");
			out.print("<thead>");
			out.print("	<tr>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Seleccion</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">ID</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">N° Doc.</th>");
					out.print("<th width=\"200\" style=\"font-size: 11px;\">Nombre</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Ape. Paterno</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Ape. Materno</th>");
					out.print("</tr>");
					out.print("</thead>");
					out.print("<tbody>");
				 ClienteDTO cliente;
				for (int i = 0; i < clientesfiltrados.size(); i++) {
					cliente = clientesfiltrados.get(i);
					out.print("<tr>");
					out.print("<td> <a href=\"SvCC_Solicitud?proceso=mostrarDatos&idCliente="+cliente.getIdCliente() + " \">Seleccionar </a> </td>");
					out.print("<td> "+cliente.getIdCliente() + "</td>");
					out.print("<td> "+cliente.getTipodoc().getDesTipoDoc() + "</td>");
					out.print("<td> "+cliente.getNomCliente() + "</td>");
					out.print("<td> "+cliente.getApepaCliente() + "</td>");
					out.print("<td> "+cliente.getApemaCliente() + "</td>");
					out.print("</tr>");
				}
				out.print("</tbody>");
				out.print("</table>");
		}else{
			out.print("<table id=\"sample-table-1\" class=\"table table-bordered \" style=\"margin-bottom: 0px;\">");
			out.print("<thead>");
			out.print("	<tr>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Seleccion</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">ID</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">R.U.C.</th>");
					out.print("<th width=\"200\" style=\"font-size: 11px;\">Raz. Social.</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Nombre Representante</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Ape. Representante</th>");
					out.print("</tr>");
					out.print("</thead>");
					out.print("<tbody>");
				 ClienteDTO cliente;
				for (int i = 0; i < clientesfiltrados.size(); i++) {
					cliente = clientesfiltrados.get(i);
					out.print("<tr>");
					out.print("<td> <a href=\"SvCC_Solicitud?proceso=mostrarDatos&idCliente="+cliente.getIdCliente() + " \">Seleccionar </a> </td>");
					out.print("<td> "+cliente.getIdCliente() + "</td>");
					out.print("<td> "+cliente.getRucCliente() + "</td>");
					out.print("<td> "+cliente.getRazonsocial() + "</td>");
					out.print("<td> "+cliente.getNomCliente() + "</td>");
					out.print("<td> "+cliente.getApepaCliente() + "</td>");
					out.print("</tr>");
				}
				out.print("</tbody>");
				out.print("</table>");
		}
	}
	
	public void mostrarDatosCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int idCliente = Integer.parseInt(request.getParameter("idCliente"));
		
		ClienteDTO cliente = serviciocon.mostrarDatosCliente(idCliente);
		cliente.setSuministros(serviciocon.listarSuministrosPorCliente(cliente.getIdCliente()));
		request.setAttribute("cliente", cliente);
		request.getRequestDispatcher("/cc_sol_registro.jsp").forward(request, response);
		
		
	}
	
	
	public void mostrarDatosSuministro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	int idSuministro = Integer.parseInt(request.getParameter("idSuministro"));
	SuministroDTO datosSuministro = serviciocon.mostrarDatosSuministro(idSuministro);
	
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
     String datos="";
     
     datos+=datosSuministro.getPredio().getDireccion()+"-"; //direccion :calle +num
     datos+=datosSuministro.getPredio().getNomLocalidad()+"-";
     datos+=datosSuministro.getPredio().getNomDistrito()+"-";
     datos+=datosSuministro.getPredio().getDesEstadoPredio()+"-";
     datos+=datosSuministro.getPredio().getDesTipoPredio()+"-";
     
     datos+=datosSuministro.getPredio().getDiametro().getDesDiametroConexion()+"-";
     datos+=datosSuministro.getPredio().getContrato().getNomCategoria()+"-";
     
     
	out.println(datos);
	}
	
}
