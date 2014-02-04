package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;








import bean.FiltroSolicitudPendienteDTO;
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
		if(request.getParameter("proceso").equalsIgnoreCase("filtrar")){
			filtrarSolicitudesPendientes(request, response);
			
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
	
	
	protected void filtrarSolicitudesPendientes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	System.out.println("a filtrar");
	
	String nombreRazSocial = request.getParameter("txtNombreFiltro");
	int nroSolicitud;
	
	if(request.getParameter("txtNumeroFiltro").equals("")){
		nroSolicitud = 0;
	}else{
		nroSolicitud = Integer.parseInt(request.getParameter("txtNumeroFiltro"));
	}
	
	String fechaDesde = request.getParameter("dtFechaDesde");
	String fechaHasta = request.getParameter("dtFechaHasta");
	
	FiltroSolicitudPendienteDTO filtrosol = new FiltroSolicitudPendienteDTO();
	filtrosol.setNombreRazSocial(nombreRazSocial);
	filtrosol.setNroSolicitud(nroSolicitud);
	filtrosol.setFechaDesde(fechaDesde);
	filtrosol.setFechaHasta(fechaHasta);
	
	ArrayList<SolicitudNuevaConexionDTO> listafiltrada = servicioSolicitud.filtrarSolicitudesPendientes(filtrosol);
//		if(listafiltrada!=null){
//			RequestDispatcher rd = request.getRequestDispatcher("/con_sol_revision.jsp");
//			request.setAttribute("lista", listafiltrada);
//			rd.forward(request, response);
//		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		for (SolicitudNuevaConexionDTO sol : listafiltrada) {
			out.println("<tr>");
			out.println("<td style=\"text-align: center;\">" + sol.getIdSolicitud() +"</td>");
			out.println("<td>");
			if(sol.getRazonsocial().equals("")){
				out.println(sol.getNombres()+" "+sol.getApepat()+" "+sol.getApemat());
			}else{
				out.println(sol.getRazonsocial());
			}
			out.println("</td>");
			out.println("<td style=\"text-align: center;\">" + sol.getFechaSolicitud() + "</td>");
			out.println("<td class=\"hidden-480\" style=\"text-align: center;\">");
			out.println("<span class=\"label label-sm label-danger arrowed\">" + sol.getDesEstadoSolicitudNuevaConexion() + "</span");
			out.println("</td>");
			out.println("<td style=\"text-align: center;\">");
			out.println("<a href=\"SvCon_Solicitud?num=" + sol.getIdSolicitud() + "\"><i class=\"icon-eye-open\"></i> Ver Datos</a>");
			out.println("</td>");
			out.println("</tr>");
		}
		
		}
}
