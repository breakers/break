package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import bean.Con_SolicitudDTO;
import service.Con_SolicitudService;

/**
 * Servlet implementation class SvPruebaSol
 */
@WebServlet("/SvCon_Solicitud")
public class SvCon_Solicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Con_SolicitudService servicioSolicitud= new Con_SolicitudService();  
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvCon_Solicitud() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Con_SolicitudDTO> lista = servicioSolicitud.listarSolicitudesPendientes();
		
		if(lista!=null){
			RequestDispatcher rd = request.getRequestDispatcher("/con_sol_revision.jsp");
			request.setAttribute("lista", lista);
			rd.forward(request, response);
		}
	}

}
