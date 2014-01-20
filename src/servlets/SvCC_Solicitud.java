package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SvCC_Solicitud
 */
@WebServlet("/SvCC_Solicitud")
public class SvCC_Solicitud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvCC_Solicitud() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarRequest(request,response);
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarRequest(request,response);
	}
	
	private void procesarRequest(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
			
		try {
			
			String val = request.getParameter("nusuario");
			String mensaje="";
			
			if(val!=null){
				mensaje = "Hola "+val;
			}else{
				mensaje = "No hay nombre enviado";
			}
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/plain");
			response.getWriter().write("mensaje");
			
			
		} finally {
			// TODO: handle exception
		}
		
		
	}

}
