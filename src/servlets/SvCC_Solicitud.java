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

import service.ContratoService;
import service.PerfilService;
import service.PredioService;
import bean.ClienteDTO;
import bean.ContratoDTO;
import bean.FiltroClienteDTO;
import bean.PerfilDTO;
import bean.PredioDTO;

/**
 * Servlet implementation class SvCC_Solicitud
 */
@WebServlet("/SvCC_Solicitud")
public class SvCC_Solicitud extends ServletParent {
	private static final long serialVersionUID = 1L;
	
	PerfilService service = new PerfilService(); //de prueba
	
	ContratoService serviciocon = new ContratoService();
    PredioService serviciopredio= new PredioService();  
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
//		
//		if (proceso.equals("listar")) {
//			listarClientes(request,response);
//		}else if(proceso.equals("buscarCliente")){
//			String codCli= request.getParameter("idCliente");
//			int codigo=-1;
//			System.out.println("Cliente seleccionado en el metodo get"+codCli);
//			try {
//				codigo = Integer.parseInt(codCli);
//			} catch (Exception e) {
//				codigo=-1;
//			}
//			cargarCliente(request,response,codigo);
//			
//		}
		if(proceso.equals("filtrar")){
			filtrarClientes(request,response);
			
		}else if(proceso.equals("mostrarDatos")){
			mostrarDatosCliente(request,response);
			
		}	
		
//		else if(proceso.equals("direccion")){
//			String codContrato= request.getParameter("idContrato");
//			int idContrato=-1;
//			System.out.println("Contrato seleccionado en el metodo get"+codContrato);
//			try {
//				idContrato = Integer.parseInt(codContrato);
//			} catch (Exception e) {
//				idContrato=-1;
//			}
//			cargarSuministro(request,response,idContrato);
			
//		}
		
		
	}





	private void cargarSuministro(HttpServletRequest request,
			HttpServletResponse response, int idContrato) throws IOException {
			
//		ContratoDTO contrato= serviciocon.obtenerContrato(idContrato);
//		PredioDTO predio= serviciopredio.obtenerPredio(contrato.getIdPredio());
//			response.setContentType("text/html");
//			PrintWriter out = response.getWriter();
//             String datos="";
//             
//             datos+=predio.getNomCalle()+" No "+predio.getNumPredio()+"-"; //direccion :calle +num
//             datos+=predio.getNomLocalidad()+"-";
//             datos+=predio.getNomDistrito()+"-";
//             datos+=predio.getNomEstadoPredio()+"-";
//             datos+=predio.getNomTipoPredio()+"-";
//             
//             datos+=contrato.getDesDiametroConexion()+"-";
//             datos+=contrato.getNomCategoria()+"-";
//             
//             
//             
//             
//        	out.println(datos);
//        	System.out.println("contrato :" + contrato.getDesDiametroConexion());
//        	System.out.println(""+contrato.getNomCategoria());
//        	System.out.println("entra a la direccion");
	}



	private void cargarCliente(HttpServletRequest request,
			HttpServletResponse response, int codigo) {
		
//		ClienteDTO cliente=serviciocon.obtenerCliente(codigo);
//		List<ContratoDTO> contratos= serviciocon.obtenerContratosPorCliente(cliente.getIdCliente());
//		
//		request.setAttribute("clienteDTO", cliente);
//		request.setAttribute("contratos", contratos);
//		RequestDispatcher rd = request.getRequestDispatcher("/cc_sol_registro.jsp");
//		try {
//			rd.forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listarClientes(request,response);
	}
	
	
	
	
	private void listarClientes(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
//			
//		try {
//			
//			String nombrecli = request.getParameter("nusuario");
//			String doccli = request.getParameter("ndoccli");
//			String nomrepcli = request.getParameter("nnomrepcli");
//			String aperepcli = request.getParameter("naperepcli");
//			
//			if(nombrecli!=null){
//				nombrecli = nombrecli+"";
//			}else{
//				nombrecli = "";
//			}
//			
//			if(doccli!=null){
//				doccli = doccli+"";
//			}else{
//				doccli = "";
//			}
//			
//			if(nomrepcli!=null){
//				nomrepcli = nomrepcli+"";
//			}else{
//				nomrepcli = "";
//			}
//			
//			if(aperepcli!=null){
//				aperepcli = aperepcli+"";
//			}else{
//				aperepcli = "";
//			}
//			
//			System.out.println("Li nombrecli:"+nombrecli);
//			System.out.println("Li doccli:"+doccli);
//			System.out.println("Li nomrepcli:"+nomrepcli);
//			System.out.println("Li aperepcli:"+aperepcli);
//			
//			List<ClienteDTO> lista = serviciocon.listarClientesPorNombre(nombrecli,doccli,nomrepcli,aperepcli);
//			
//			PrintWriter out = response.getWriter();
//			out.print("<table id=\"sample-table-1\" class=\"table table-bordered \" style=\"margin-bottom: 0px;\">");
//			out.print("<thead>");
//			out.print("	<tr>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">Seleccion</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">ID</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">num Documento</th>");
//					out.print("<th width=\"200\" style=\"font-size: 11px;\">nom Cliente</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">nom Representante</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">apellido Representante</th>");
//					out.print("</tr>");
//					out.print("</thead>");
//					out.print("<tbody>");
//			
//				 ClienteDTO cliente;
//				for (int i = 0; i < lista.size(); i++) {
//					cliente = lista.get(i);
//					out.print("<tr>");
//					out.print("<td> <a href=\"SvCC_Solicitud?proceso=buscarCliente&idCliente="+cliente.getIdCliente() + " \">Seleccionar </a> </td>");
//					out.print("<td> "+cliente.getIdCliente() + "</td>");
//					out.print("<td> "+cliente.getNumDocCliente() + "</td>");
//					out.print("<td> "+cliente.getNomCliente() + "</td>");
//					out.print("<td> "+cliente.getNomRepresentante() + "</td>");
//					out.print("<td> "+cliente.getApepaRepresentante() + "</td>");
//					
//					out.print("</tr>");
//				}
//			
//				out.print("</tbody>");
//				out.print("</table>");
//		
//			
//			
//		} finally {
//			// TODO: handle exception
//		}
//		
//		
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
		
		
	}
	
}
