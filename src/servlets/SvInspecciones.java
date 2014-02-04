package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ClienteDTO;
import bean.PredioDTO;
import bean.SolicitudCambioCatDTO;
import service.CC_SolicitudService;
import service.ClienteService;
import service.PredioService;

/**
 * Servlet implementation class SvInspecciones
 */
@WebServlet("/SvInspecciones")
public class SvInspecciones extends ServletParent {
	private static final long serialVersionUID = 1L;
	
	
	private ClienteService servicioCli= new ClienteService();
	private PredioService serviciopredio= new PredioService();
	private CC_SolicitudService serviciocc= new CC_SolicitudService();
       
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
				listarDirecciones(request,response);
			}

		}
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	private void listarDirecciones(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		List<SolicitudCambioCatDTO> lista = serviciocc.listarSolicitudesporEstado(VALIDADO); //validados
		PrintWriter out = response.getWriter();
	     String datos="";
	     System.out.println("lista validados >"+lista.size());
	     
		for (int i = 0; i < lista.size(); i++) {
			SolicitudCambioCatDTO sol= lista.get(i);
			System.out.println("solicitudcc de inpeccion >"+sol.getIdSuministro());
			ClienteDTO clie= servicioCli.obtenerClientePorSuministro(sol.getIdSuministro());
			System.out.println("cliente de inpeccion >"+clie.getIdCliente());
			PredioDTO pred= serviciopredio.obtenerPredioPorSuministro(sol.getIdSuministro());
			
			
			System.out.println("predio de inspeccion>"+pred.getNomCalle());
			
			if (clie.getIdtipoPersona()==NATURAL) { //natural
				datos+=pred.getCoordenadasPredio()+","+clie.getNomCliente()+" "+clie.getApepaCliente()+","+pred.getNomCalle()+" "+pred.getNumPredio()+"-"+pred.getNomLocalidad();
			}else{
				datos+=pred.getCoordenadasPredio()+","+clie.getRazonsocial()+","+pred.getNomCalle()+" "+pred.getNumPredio()+"-"+pred.getNomLocalidad();
			}

			if (i<lista.size()-1) {
				datos+="/";
			}
		}
		
		
		
//		System.out.println("entra al servlet");
		//response.setContentType("text/html");
		
	     
//	     datos+="-16.411667,-71.532967"+"/"; //direccion :empresa+calle +num
//	     datos+="-16.399335,-71.537484"+"/";
//	     datos+="-16.395305,-71.536795"+"/";
//	     datos+="-16.395205,-71.536695"+"/";
//	     datos+="-16.395105,-71.536595";
	     
//	     System.out.println("valor de datos :" +datos);
		out.println(datos);
		
	}
}
