package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import bean.SolicitudNuevaConexionDTO;
import service.Con_SolicitudService;

@WebServlet("/SvCon_Solicitud")
public class SvCon_Solicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Con_SolicitudService servicioSolicitud= new Con_SolicitudService();  
	
    public SvCon_Solicitud() {
        super();
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("est")!=null){
			evaluarSolicitud(request,response);
		}
			
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("num")!=null){
			mostrarDatosSolicitud(request, response);
		}else{
			listarSolicitudesPendientes(request, response);
		}
	}
	
	protected void listarSolicitudesPendientes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			ArrayList<SolicitudNuevaConexionDTO> lista = servicioSolicitud.listarSolicitudes(1);
		
		if(lista!=null){
			RequestDispatcher rd = request.getRequestDispatcher("/con_sol_revision.jsp");
			request.setAttribute("lista", lista);
			rd.forward(request, response);
		}
	}
	
	protected void mostrarDatosSolicitud(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int idSolicitud = Integer.parseInt(request.getParameter("num"));
			SolicitudNuevaConexionDTO solicitud = servicioSolicitud.mostrarDatosSolicitud(idSolicitud);
			
			if(solicitud!=null){
				if(solicitud.getDesEstadoSolicitudNuevaConexion().equals("Pendiente")){
					request.setAttribute("solicitud", solicitud);
					}else{
						request.setAttribute("solicitud", null);
					}
			}
			listarSolicitudesPendientes(request, response);
		
	}
	
	protected void evaluarSolicitud(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int idSolicitud = Integer.parseInt(request.getParameter("id"));
		int estado = Integer.parseInt(request.getParameter("est"));
			
		if(servicioSolicitud.evaluarSolicitud(idSolicitud,estado)){
		}
		
		listarSolicitudesPendientes(request, response);
	}
	
}
