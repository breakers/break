package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SvInspecciones
 */
@WebServlet("/SvInspecciones")
public class SvInspecciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvInspecciones() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String operacion = request.getParameter("operacion");
		
		if (operacion != null) {
			
			if (operacion.equals("listarDirecciones")) {
//				System.out.println("entra al servlet");
				//response.setContentType("text/html");
				PrintWriter out = response.getWriter();
			     String datos="";
			     
			     datos+="-16.411667,-71.532967"+"/"; //direccion :calle +num
			     datos+="-16.399335,-71.537484"+"/";
			     datos+="-16.395305,-71.536795"+"/";
			     datos+="-16.395205,-71.536695"+"/";
			     datos+="-16.395105,-71.536595";
			     
//			     System.out.println("valor de datos :" +datos);
				out.println(datos);
				

				
			}

		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
