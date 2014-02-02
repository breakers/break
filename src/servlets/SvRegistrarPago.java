package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CuotaDTO;
import bean.SolicitudNuevaConexionDTO;
import service.RegistrarPagoService;

@WebServlet("/SvRegistrarPago")
public class SvRegistrarPago extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RegistrarPagoService servicioPago = new RegistrarPagoService();
	

	public SvRegistrarPago() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void listarCuotas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ArrayList<CuotaDTO> lista = (ArrayList<CuotaDTO>) servicioPago.listarCuotas();
		
	if(lista!=null){
		RequestDispatcher rd = request.getRequestDispatcher("/liq_pago.jsp");
		request.setAttribute("lista", lista);
		rd.forward(request, response);
	}
	}
	protected void mostrarDatosCuota(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

			listarCuotas(request, response);
		
	}
	
}
