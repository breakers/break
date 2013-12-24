package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.PerfilDTO;
import bean.UsuarioDTO;
import service.PerfilService;
import service.UsuarioService;

/**
 * Servlet implementation class SvLogueo
 */
@WebServlet("/SvLogueo")
public class SvLogueo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioService servicioUsuario= new UsuarioService();
	PerfilService servicioPerfil= new PerfilService();

    /**
     * Default constructor. 
     */
    public SvLogueo() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ValidarSoloUsuario(request, response);
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
		
		UsuarioDTO usuario = servicioUsuario.validarUsuario(usu_emp, pass_emp);
		
		if (usuario!=null) {
			bienvenido(usuario,request,response);
		}else{
			paginaerror(request,response);
		}
		
	}


	private void bienvenido(UsuarioDTO usuario, HttpServletRequest request,
			HttpServletResponse response) {
		
		PerfilDTO profile = servicioPerfil.buscarPorId(usuario.getIdPerfil());
		
		
		HttpSession sesion = request.getSession();
		sesion.setAttribute("desPerfil", profile.getDesPerfil());
		sesion.setAttribute("usuario", usuario.getUserUsuario());
		sesion.setAttribute("nombreCompleto", usuario.getNomUsuario()+" "+usuario.getApepaUsuario());
		sesion.setAttribute("foto", usuario.getIdUsuario());
		sesion.setAttribute("tipo", usuario.getIdPerfil());
		
		RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
						request.setAttribute("usuarioDTO", usuario);
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

}
