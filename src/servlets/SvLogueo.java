package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.EmpleadoDTO;

import service.EmpleadoService;

/**
 * Servlet implementation class SvLogueo
 */
@WebServlet("/SvLogueo")
public class SvLogueo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmpleadoService servicioEmpleado= new EmpleadoService();

    /**
     * Default constructor. 
     */
    public SvLogueo() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ValidarSoloUsuario(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Logueo(request, response);
	}
	
	
	
	//Metodos

	private void Logueo(HttpServletRequest request, HttpServletResponse response) {
		
		String usu_emp = (String)request.getParameter("usuario");
		String pass_emp = (String)request.getParameter("password");
		
		EmpleadoDTO empleado = servicioEmpleado.validarUsuario(usu_emp, pass_emp);
		
		if (empleado!=null) {
			bienvenido(empleado,request,response);
		}else{
			paginaerror(request,response);
		}
		
	}


	private void bienvenido(EmpleadoDTO empleado, HttpServletRequest request,
			HttpServletResponse response) {
		
		HttpSession sesion = request.getSession();
		sesion.setAttribute("usuario", empleado.getUsu_emp());
		sesion.setAttribute("NombreCompleto", empleado.getNom_emp()+" "+empleado.getApep_emp());
		sesion.setAttribute("foto", empleado.getFoto_emp());
		sesion.setAttribute("tipo", empleado.getCod_tip_emp());
		
		RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
						request.setAttribute("EmpleadoDTO", empleado);
						try {
							rd.forward(request, response);
						} catch (ServletException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						}
	}
	
	private void paginaerror(HttpServletRequest request,
			HttpServletResponse response) {
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		request.setAttribute("UsuarioInvalido", "Datos incorrectos, pruebe nuevamente");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	private void ValidarSoloUsuario(HttpServletRequest request, HttpServletResponse response) {
		String usu_emp = request.getParameter("usuario");
		
		EmpleadoDTO empleado = servicioEmpleado.validarSoloUsuario(usu_emp);
		
		if (empleado!=null) {
			RequestDispatcher rd = request.getRequestDispatcher("/confirmarIdentidad.jsp");
			
			request.setAttribute("empleado", empleado);
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("/olvidoClave.jsp");
			request.setAttribute("UsuarioInvalido", "Datos incorrectos, pruebe nuevamente");
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}

}
