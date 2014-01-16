package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UbigeoDTO;
import service.NuevaConexionService;

@WebServlet("/SvUbigeo")
public class SvUbigeo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NuevaConexionService service = new NuevaConexionService();
       
    public SvUbigeo() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(((String) request.getParameter("requerimiento")).equals("distritos")){
			listarDistritos(request, response);
		}
		else if(((String) request.getParameter("requerimiento")).equals("localidades")){
			listarLocalidades(request, response);
		}else if(((String) request.getParameter("requerimiento")).equals("calles")){
			listarCalles(request, response);
		}
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	protected void listarDistritos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String cod_prov = (String) request.getParameter("codigo");
			ArrayList<UbigeoDTO> distritos = service.listarDistritos(cod_prov);
			 response.setContentType("text/html");
		        PrintWriter out = response.getWriter();
		             
		        	out.println("<option value=\"\">--------</option>");
		        	for(UbigeoDTO dis : distritos){
		        		 out.println("<option value=\""+dis.getCodUbigeo()+"\">"+dis.getNomUbigeo()+"</option>");
		        	}
	}
	
	protected void listarLocalidades(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod_dis = (String) request.getParameter("codigo");
		ArrayList<UbigeoDTO> localidades = service.listarLocalidades(cod_dis);
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	             
	        	out.println("<option value=\"\">--------</option>");
	        	for(UbigeoDTO loc : localidades){
	        		 out.println("<option value=\""+loc.getCodUbigeo()+"\">"+loc.getNomUbigeo()+"</option>");
	        	}
	}
	
	protected void listarCalles(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cod_calle = (String) request.getParameter("codigo");
		ArrayList<UbigeoDTO> calles = service.listarCalles(cod_calle);
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	             
	        	out.println("<option value=\"\">--------</option>");
	        	for(UbigeoDTO calle : calles){
	        		 out.println("<option value=\""+calle.getCodUbigeo()+"\">"+calle.getNomUbigeo()+"</option>");
	        	}
	}
	
	
	
	
	
}