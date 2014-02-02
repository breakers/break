package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ReportesService;
import bean.ReporteEstadisticaSolicitudesDTO;

/**
 * Servlet implementation class SvReportes
 */
@WebServlet("/SvReportes")
public class SvReportes extends ServletParent {
	private static final long serialVersionUID = 1L;
       ReportesService service = new ReportesService();
    public SvReportes() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReporteEstadisticaSolicitudesDTO est = service.listarEstadisticaSolicitudes();
		request.setAttribute("estadistica", est);
		request.getRequestDispatcher("/rep_estadistica.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
