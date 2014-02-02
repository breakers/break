package servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SolicitudNuevaConexionDTO;
import service.Con_SolicitudService;
import service.ContratoService;

@WebServlet("/SvContrato")
public class SvContrato extends ServletParent {
	private static final long serialVersionUID = 1L;
	
	Con_SolicitudService servicioSolicitud= new Con_SolicitudService(); 
	ContratoService servicioContrato = new ContratoService();
	
    public SvContrato() {
        super();
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if(request.getParameter("generar")!=null){
    		int idSolicitud = Integer.parseInt(request.getParameter("id"));
    		int idUsuario = Integer.parseInt(request.getSession().getAttribute("iduser").toString());
    		System.out.println("Se procederá a generar el contrato para la solicitud: " + idSolicitud);
    		if(servicioContrato.generarContrato(idUsuario,idSolicitud)){
    			request.getSession().setAttribute("evento", 1);
    			request.getSession().setAttribute("mensaje", obtenerMensaje(request,6,"Contrato"));
    		}
    		
    	}
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("num")!=null){
			mostrarDatosSolicitud(request, response);
		}else{
			listarSolicitudesAprobadas(request, response);
		}
	}
	
	protected void listarSolicitudesAprobadas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ArrayList<SolicitudNuevaConexionDTO> lista = servicioSolicitud.listarSolicitudes(2);
	
	if(lista!=null){
		RequestDispatcher rd = request.getRequestDispatcher("/con_contrato.jsp");
		request.setAttribute("lista", lista);
		SimpleDateFormat sdf = new SimpleDateFormat("DD-MM-YYYY");
		Date hoy = new Date();
		request.setAttribute("fecha", sdf.format(hoy));
		rd.forward(request, response);
	}
}
	protected void mostrarDatosSolicitud(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int idSolicitud = Integer.parseInt(request.getParameter("num"));
			SolicitudNuevaConexionDTO solicitud = servicioSolicitud.mostrarDatosSolicitud(idSolicitud);
			
			if(solicitud!=null){
				if(solicitud.getDesEstadoSolicitudNuevaConexion().equals("Aprobada")){
				request.setAttribute("solicitud", solicitud);
				}else{
					request.setAttribute("solicitud", null);
				}
			}
			listarSolicitudesAprobadas(request, response);
		
	}
}
