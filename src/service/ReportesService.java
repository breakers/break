package service;

import java.util.ArrayList;

import bean.ReporteEstadisticaSolicitudesDTO;
import interfaces.ReportesDAO;
import dao.DAOFactory;

public class ReportesService {
	private DAOFactory factoria= DAOFactory.getDAOFactory(1);
	private ReportesDAO objReportes = factoria.getReportesDAO();
	
	
	public ReporteEstadisticaSolicitudesDTO listarEstadisticaSolicitudes() {
		return objReportes.listarEstadisticaSolicitudes();
	}
	
	
}
