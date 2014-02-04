package service;



import interfaces.Con_SolicitudDAO;

import java.util.ArrayList;

import bean.FiltroSolicitudPendienteDTO;
import bean.SolicitudNuevaConexionDTO;
import dao.DAOFactory;


public class Con_SolicitudService {
	
	private DAOFactory factory= DAOFactory.getDAOFactory(1);
	private Con_SolicitudDAO con_solicituddao = factory.getCon_SolicitudDAO();

	public ArrayList<SolicitudNuevaConexionDTO> listarSolicitudes(int estado) {
		return con_solicituddao.listarSolicitudes(estado);
	}

	public SolicitudNuevaConexionDTO mostrarDatosSolicitud(int idSolicitud) {
		return con_solicituddao.mostrarDatosSolicitud(idSolicitud);
	}

	public boolean evaluarSolicitud(int idSolicitud, int estado) {
		return con_solicituddao.evaluarSolicitud(idSolicitud,estado);
	}

	public ArrayList<SolicitudNuevaConexionDTO> filtrarSolicitudesPendientes(FiltroSolicitudPendienteDTO filtrosol) {
		return con_solicituddao.filtrarSolicitudesPendientes(filtrosol);
	}


	
}
