package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import bean.PerfilDTO;
import bean.UsuarioDTO;
import service.PerfilService;
import service.UsuarioService;

/**
 * Servlet implementation class SvUsuarios
 */
@WebServlet("/SvUsuarios")
public class SvUsuarios extends ServletParent {
	private static final long serialVersionUID = 1L;
	UsuarioService service = new UsuarioService();
	PerfilService servicePerfil = new PerfilService();
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
		
		if(request.getParameter("id")!=null){
			mostrarDatosUsuario(request, response);
		}else{
			listarUsuarios(request, response);
		}
	}

	private void mostrarDatosUsuario(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			UsuarioDTO u = service.buscarPorId(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("datosUsuario", u);
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
		} else if (((String) request.getParameter("boton")).equals("Actualizar")) {
			System.out.println("Método actualizar usuario");
			actualizarUsuarios(request, response);
		} else if (((String) request.getParameter("boton")).equals("Eliminar")) {
			System.out.println("Método eliminar usuario");
			eliminarUsuarios(request, response);
		}

	}

	private void listarUsuarios(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<UsuarioDTO> lista = service.listarUsuarios();
		int ultimoid = service.ultimoUsuario();
		List<PerfilDTO> perfiles = servicePerfil.listarPerfiles();

		if (lista != null) {
			RequestDispatcher rd = request
					.getRequestDispatcher("/man_usuarios.jsp");
			request.setAttribute("listarUsuarios", lista);
			request.setAttribute("ultimoid", ultimoid);
			request.setAttribute("perfiles", perfiles);
				rd.forward(request, response);

		}
	}

	private void registrarUsuarios(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("btnAgregar si existe entonces procede a recibir todos los datos");
		String user = (String) request.getParameter("txtUsuario");
		int perfil = Integer.parseInt(request.getParameter("cboPerfil"));
		String contraseña = (String) request.getParameter("txtCon");
		String nombre=(String) request.getParameter("txtNombre");
		String apepa=(String) request.getParameter("txtApepa");
		String apema=(String) request.getParameter("txtApema");
		String dni=(String) request.getParameter("txtDNI");
		String correo=(String) request.getParameter("txtCorreo");
		String telefono=(String) request.getParameter("txtTelefono").replaceAll("[(|)| |-]", "");
		
		
		UsuarioDTO usuario = new UsuarioDTO(0,perfil,user,contraseña,nombre,apepa,apema,dni,correo,telefono);
		
		
		
		service.registrarUsuario(usuario);
		
		
		request.getSession().setAttribute("evento", 1);
		request.getSession().setAttribute("mensaje", obtenerMensaje(request,1,"Usuario"));
		listarUsuarios(request, response);

	}

	private void actualizarUsuarios(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		if(((String) request.getParameter("txtID_mod")).equals("")){
			request.getSession().setAttribute("mensaje", obtenerMensaje(request, 5, "Usuario"));
		}else{
		System.out.println("btnActualizar si existe entonces procede a recibir todos los datos");
		int id =Integer.parseInt((String)request.getParameter("txtID_mod"));
		String user = (String) request.getParameter("txtUsuario_mod");
		int perfil = Integer.parseInt((String)request.getParameter("cboPerfil_mod"));
		String contraseña = (String) request.getParameter("txtCon_mod");
		String nombre=(String) request.getParameter("txtNombre_mod");
		String apepa=(String) request.getParameter("txtApepa_mod");
		String apema=(String) request.getParameter("txtApema_mod");
		String dni=(String) request.getParameter("txtDNI_mod");
		String correo=(String) request.getParameter("txtCorreo_mod");
		String telefono=(String) request.getParameter("txtTelefono_mod").replaceAll("[(|)| |-]", "");
		
		
		UsuarioDTO usuario = new UsuarioDTO(id,perfil,user,contraseña,nombre,apepa,apema,dni,correo,telefono);
		
		service.actualizarUsuario(usuario);
		request.getSession().setAttribute("mensaje", obtenerMensaje(request,3,"Usuario"));
		}
		request.getSession().setAttribute("evento", 1);
		
		listarUsuarios(request, response);

	}

	private void eliminarUsuarios(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		if (((String) request.getParameter("txtId_eli")).equals("")) {
			request.getSession().setAttribute("mensaje",obtenerMensaje(request, 5, "Usuario"));
		} else {
			int id = Integer.parseInt((String)request.getParameter("txtId_eli"));

			System.out.println("Parametros: " + id);

			service.eliminarUsuario(id);
			request.getSession().setAttribute("mensaje",obtenerMensaje(request, 4, "Usuario"));
		}

		request.getSession().setAttribute("evento", 1);

		listarUsuarios(request, response);

	}
	
	public static void OnRowSelect(){
		
	}

}
