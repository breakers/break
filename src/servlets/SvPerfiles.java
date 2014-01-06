package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PerfilService;
import bean.PerfilDTO;


/**
 * Servlet implementation class SvPerfiles
 */
@WebServlet("/SvPerfiles")
public class SvPerfiles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       PerfilService service = new PerfilService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvPerfiles() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("Llego al Servlet SvPerfiles metodo: service");
			List<PerfilDTO> lista = service.listarPerfiles();
			int ultimoid= service.ultimoPerfil();
			
		if(lista!=null){
			RequestDispatcher rd = request.getRequestDispatcher("/man_perfiles.jsp");
			request.setAttribute("listaPerfiles", lista);
			request.setAttribute("ultimoid", ultimoid);
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Llego al Servlet SvPerfiles metodo Post");
		
		if(((String)request.getParameter("boton")).equals("Agregar")){
			System.out.println("btnAgregar si existe entonces procede a recibir todos los datos");
			String descripcion = (String) (request.getParameter("txtDescripcion"));
			int moduloContratos = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloCategorias = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloLiquidacion = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloReportes = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloManClientes = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloManPerfiles = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloManUsuarios = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloBuzon = Integer.parseInt(request.getParameter("chkModContratos"));
			int moduloCalendario = Integer.parseInt(request.getParameter("chkModContratos"));
			
			PerfilDTO perfil = new PerfilDTO(0,descripcion,moduloContratos,moduloCategorias,moduloLiquidacion,moduloReportes,moduloManClientes,moduloManPerfiles,moduloManUsuarios,moduloBuzon,moduloCalendario);
			
			service.registrarPerfil(perfil);
			
			RequestDispatcher rd = request.getRequestDispatcher("/man_perfiles.jsp");
			rd.forward(request, response);
			
		}
	}

}
