package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.utilMensaje;
import bean.MensajeAlertaDTO;

@WebServlet("/ServletParent")
public class ServletParent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final int REGISTRADOCORRECTAMENTE = 1;
	public static final int BIENVENIDO =2;
	public static final int ACTUALIZADOCORRECTAMENTE =3;
	public static final int ELIMINADOCORRECTAMENTE =4;
	public static final int DEBESELECCIONAR=5;
	public static final int GENERADOCORRECTAMENTE =6;
	
	
	
    public ServletParent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	
	@SuppressWarnings("unchecked")
	protected MensajeAlertaDTO obtenerMensaje(HttpServletRequest request, int CODIGO,String parametro){
		
		MensajeAlertaDTO msj;
		List<MensajeAlertaDTO> mensajes;
		mensajes = (List<MensajeAlertaDTO>) request.getSession().getAttribute("mensajesAlerta");
		msj=utilMensaje.obtenerMensaje(mensajes , CODIGO, parametro);
		
		return msj;
	}
	
	protected void Terminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		request.getSession().invalidate();
		rd.forward(request, response);
	}
	
	protected void Terminar(HttpServletRequest request, HttpServletResponse response, String Mensaje) throws ServletException, IOException{
		
		request.getSession().setAttribute("evento", 1);
		request.getSession().setAttribute("mensaje", obtenerMensaje(request,DEBESELECCIONAR,Mensaje));
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
	}

}
