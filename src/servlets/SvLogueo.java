package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		Logueo(request, response);
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
		System.out.println("usu:" +usu_emp + " pass:" +pass_emp);
		
		EmpleadoDTO empleado = servicioEmpleado.validarUsuario(usu_emp, pass_emp);
		
		if (empleado!=null) {
			bienvenido(empleado,request,response);
			System.out.println("yahoo");
		}else{
			paginaerror(request,response);
			System.out.println("i dont understand o.O");
		}
		
	}


	private void bienvenido(EmpleadoDTO empleado, HttpServletRequest request,
			HttpServletResponse response) {
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.html");
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
		
		RequestDispatcher rd = request.getRequestDispatcher("/error.html");
		request.setAttribute("msj", "Datos incorrectos, pruebe nuevamente");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}


}
