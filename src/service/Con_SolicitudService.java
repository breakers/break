package service;



import interfaces.Con_SolicitudDAO;

import java.util.ArrayList;

import bean.Con_SolicitudDTO;
import dao.DAOFactory;


public class Con_SolicitudService {
	
	private DAOFactory factory= DAOFactory.getDAOFactory(1);
	private Con_SolicitudDAO con_solicituddao = factory.getCon_SolicitudDAO();

	
	public ArrayList<Con_SolicitudDTO> listarSolicitudesPendientes() {
		return con_solicituddao.listarSolicitudesPendientes();
	}

	
}
