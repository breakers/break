package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ContratoService;
import service.PerfilService;
import bean.ClienteDTO;
import bean.PerfilDTO;

/**
 * Servlet implementation class SvCC_Solicitud
 */
@WebServlet("/SvCC_Solicitud")
public class SvCC_Solicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PerfilService service = new PerfilService(); //de prueba
	
	ContratoService serviciocon = new ContratoService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvCC_Solicitud() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarRequest(request,response);
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarRequest(request,response);
	}
	
	private void procesarRequest(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
			
		try {
			
			String val = request.getParameter("nusuario");
			String mensaje="";
			
			if(val!=null){
				mensaje = val;
			}else{
				mensaje = "A";
			}
			
			List<ClienteDTO> lista = serviciocon.listarClientesPorNombre(mensaje);
			
			//List<PerfilDTO> lista = service.listarPerfiles(); // de prueba
			PrintWriter out = response.getWriter();
			out.print("<table id=\"sample-table-1\" class=\"table table-bordered \" style=\"margin-bottom: 0px;\">");
			out.print("<thead>");
			out.print("	<tr>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">ID</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">Nombre</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">A Paterno</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">A Materno</th>");
					out.print("<th width=\"100\" style=\"font-size: 11px;\">DNI</th>");
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
					out.print("<td> "+cliente.getIdCliente() + "</td>");
					out.print("<td> "+cliente.getNomCliente() + "</td>");
					out.print("<td> "+cliente.getApepaCliente() + "</td>");
					out.print("<td> "+cliente.getApemaCliente() + "</td>");
					out.print("<td> "+cliente.getNumDocCliente() + "</td>");
					out.print("</tr>");
				}
			
				out.print("</tbody>");
				out.print("</table>");
		
			
			
		} finally {
			// TODO: handle exception
		}
		
		
	}

}
