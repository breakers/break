package interfaces;

import java.util.ArrayList;

import bean.SolicitudNuevaConexionDTO;

public interface Con_SolicitudDAO {
	
	public ArrayList<SolicitudNuevaConexionDTO> listarSolicitudesPendientes();

	public SolicitudNuevaConexionDTO mostrarDatosSolicitud(int idSolicitud);

	public boolean evaluarSolicitud(int idSolicitud, int estado);
	
}
