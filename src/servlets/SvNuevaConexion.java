package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UbigeoDTO;
import service.NuevaConexionService;

/**
 * Servlet implementation class SvNuevaConexion
 */
@WebServlet("/SvNuevaConexion")
public class SvNuevaConexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
    NuevaConexionService service = new NuevaConexionService();
    public SvNuevaConexion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			listarProvincias(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	public void listarProvincias(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UbigeoDTO> provincias = service.listarProvincias();
		if(provincias != null){
			RequestDispatcher rd = request.getRequestDispatcher("/nuevaconexion.jsp");
			request.setAttribute("provincias", provincias);
			rd.forward(request, response);
		}
		
	}

}
