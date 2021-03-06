package servlets;

import java.io.IOException;
import java.util.List;

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
       
    public ServletParent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	
	@SuppressWarnings("unchecked")
	protected MensajeAlertaDTO obtenerMensaje(HttpServletRequest request,int codigo,String parametro){
		
		MensajeAlertaDTO msj;
		List<MensajeAlertaDTO> mensajes;
		mensajes = (List<MensajeAlertaDTO>) request.getSession().getAttribute("mensajesAlerta");
		msj=utilMensaje.obtenerMensaje(mensajes , codigo, parametro);
		
		return msj;
	}

}
