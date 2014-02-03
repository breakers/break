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
import service.ContratoService;
import service.PerfilService;
import service.PredioService;
import bean.ClienteDTO;
import bean.ContratoDTO;
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
		
		if(proceso.equals("filtrar")){
			filtrarClientes(request,response);
			
		}else if(proceso.equals("mostrarDatos")){
			mostrarDatosCliente(request,response);
			
		}else if(proceso.equals("mostrarDatosSuministro")){
			mostrarDatosSuministro(request,response);
		}
		
		
	}









	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String proceso = request.getParameter("proceso");
		
		if(proceso.equals("Grabar")){
			registrarSolicitudCambioCategoria(request,response);
		}
	}
	
	
	
	
	private void registrarSolicitudCambioCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int idSuministro = Integer.parseInt(request.getParameter("ccIdSuministro"));
			int idUsuario = Integer.parseInt(request.getSession().getAttribute("iduser").toString());
			String razonCambio = request.getParameter("razonCambio");
				
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
