package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UsuarioService;

/**
 * Servlet implementation class SvUsuarios
 */
@WebServlet("/SvUsuarios")
public class SvUsuarios extends ServletParent {
	private static final long serialVersionUID = 1L;
	UsuarioService service = new UsuarioService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SvUsuarios() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		listarUsuarios(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entra Servlet SvUsuarios metodo Post");

		if (((String) request.getParameter("boton")).equals("Agregar")) {
			System.out.println("Método registrar usuario");
			registrarUsuarios(request, response);
		} else if (((String) request.getParameter("boton"))
				.equals("Actualizar")) {
			System.out.println("Método actualizar usuario");
			actualizarUsuarios(request, response);
		} else if (((String) request.getParameter("boton")).equals("Eliminar")) {
			System.out.println("Método eliminar usuario");
			eliminarUsuarios(request, response);
		}

	}

	private void listarUsuarios(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void registrarUsuarios(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void actualizarUsuarios(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void eliminarUsuarios(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

}
