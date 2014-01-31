package servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
		
		if (proceso.equals("listar")) {
			listarClientes(request,response);
		}else if(proceso.equals("buscarCliente")){
			String codCli= request.getParameter("idCliente");
			int codigo=-1;
			System.out.println("Cliente seleccionado en el metodo get"+codCli);
			try {
				codigo = Integer.parseInt(codCli);
			} catch (Exception e) {
				codigo=-1;
			}
			cargarCliente(request,response,codigo);
			
		}
		else if(proceso.equals("direccion")){
			String codContrato= request.getParameter("idContrato");
			int idContrato=-1;
			System.out.println("Contrato seleccionado en el metodo get"+codContrato);
			try {
				idContrato = Integer.parseInt(codContrato);
			} catch (Exception e) {
				idContrato=-1;
			}
			cargarSuministro(request,response,idContrato);
			
		}
		
		
	}





	private void cargarSuministro(HttpServletRequest request,
			HttpServletResponse response, int idContrato) throws IOException {
			
		ContratoDTO contrato= serviciocon.obtenerContrato(idContrato);
		PredioDTO predio= serviciopredio.obtenerPredio(contrato.getIdPredio());
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
             String datos="";
             
             datos+=predio.getNomCalle()+" No "+predio.getNumPredio()+"-"; //direccion :calle +num
             datos+=predio.getNomLocalidad()+"-";
             datos+=predio.getNomDistrito()+"-";
             datos+=predio.getNomEstadoPredio()+"-";
             datos+=predio.getNomTipoPredio()+"-";
             
             datos+=contrato.getDesDiametroConexion()+"-";
             datos+=contrato.getNomCategoria()+"-";
             
             
             
             
        	out.println(datos);
        	System.out.println("contrato :" + contrato.getDesDiametroConexion());
        	System.out.println(""+contrato.getNomCategoria());
        	System.out.println("entra a la direccion");
	}



	private void cargarCliente(HttpServletRequest request,
			HttpServletResponse response, int codigo) {
		
		ClienteDTO cliente=serviciocon.obtenerCliente(codigo);
		List<ContratoDTO> contratos= serviciocon.obtenerContratosPorCliente(cliente.getIdCliente());
		
		request.setAttribute("clienteDTO", cliente);
		request.setAttribute("contratos", contratos);
		RequestDispatcher rd = request.getRequestDispatcher("/cc_sol_registro.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listarClientes(request,response);
	}
	
	private void listarClientes(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
			
		try {
			
			String nombrecli = request.getParameter("nusuario");
			String doccli = request.getParameter("ndoccli");
			String nomrepcli = request.getParameter("nnomrepcli");
			String aperepcli = request.getParameter("naperepcli");
			
			if(nombrecli!=null){
				nombrecli = nombrecli+"";
			}else{
				nombrecli = "";
			}
			
			if(doccli!=null){
				doccli = doccli+"";
			}else{
				doccli = "";
			}
			
			if(nomrepcli!=null){
				nomrepcli = nomrepcli+"";
			}else{
				nomrepcli = "";
			}
			
			if(aperepcli!=null){
				aperepcli = aperepcli+"";
			}else{
				aperepcli = "";
			}
			
			System.out.println("Li nombrecli:"+nombrecli);
			System.out.println("Li doccli:"+doccli);
			System.out.println("Li nomrepcli:"+nomrepcli);
			System.out.println("Li aperepcli:"+aperepcli);
			
			List<ClienteDTO> lista = serviciocon.listarClientesPorNombre(nombrecli,doccli,nomrepcli,aperepcli);
			
			//List<PerfilDTO> lista = service.listarPerfiles(); // de prueba
			PrintWriter out = response.getWriter();
			out.print("<table id=\"sample-table-1\" class=\"table table-bordered \" style=\"margin-bottom: 0px;\">");
			out.print("<thead>");
			out.print("	<tr>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Seleccion</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">ID</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">num Documento</th>");
					out.print("<th width=\"200\" style=\"font-size: 11px;\">nom Cliente</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">nom Representante</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">apellido Representante</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">moduloReportes</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">moduloManClientes</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">moduloManPerfiles</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">moduloManUsuarios</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">moduloBuzon</th>");
//					out.print("<th width=\"100\" style=\"font-size: 11px;\">moduloCalendario</th>");
					out.print("</tr>");
					out.print("</thead>");
					out.print("<tbody>");
			
				 ClienteDTO cliente;
				for (int i = 0; i < lista.size(); i++) {
					cliente = lista.get(i);
					out.print("<tr>");
					out.print("<td> <a href=\"SvCC_Solicitud?proceso=buscarCliente&idCliente="+cliente.getIdCliente() + " \">Seleccionar </a> </td>");
					out.print("<td> "+cliente.getIdCliente() + "</td>");
					out.print("<td> "+cliente.getNumDocCliente() + "</td>");
					out.print("<td> "+cliente.getNomCliente() + "</td>");
					out.print("<td> "+cliente.getNomRepresentante() + "</td>");
					out.print("<td> "+cliente.getApepaRepresentante() + "</td>");
					
					out.print("</tr>");
				}
			
				out.print("</tbody>");
				out.print("</table>");
		
			
			
		} finally {
			// TODO: handle exception
		}
		
		
	}
	
}
