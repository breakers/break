package interfaces;

import java.util.List;

import bean.DetalleSolCambioCatDTO;
import bean.SolicitudCambioCatDTO;

public interface CC_SolicitudDAO {
	
	public boolean registrarSolicitudCC(SolicitudCambioCatDTO solicitudcc);
	
	public void actualizarEstadoSolicitudCC(DetalleSolCambioCatDTO detallescc);
	
	public List<SolicitudCambioCatDTO> listarSolicitudesporEstado(int estado);
	
	public List<DetalleSolCambioCatDTO> detallesSolicitudCC(int idSolicc);
	
	public DetalleSolCambioCatDTO obtenerDetalleSolCC(int idSolidd,int estado);

	public int obtenerEstadoSCC(int idSuministro);

	SolicitudCambioCatDTO obtenerSolicitud(int idSolicitud);
	
}
