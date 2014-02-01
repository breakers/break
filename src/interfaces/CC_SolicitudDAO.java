package interfaces;

import java.util.List;

import bean.DetalleSolCambioCatDTO;
import bean.SolicitudCambioCatDTO;

public interface CC_SolicitudDAO {
	
	public void registrarSolicitudCC(SolicitudCambioCatDTO solicitudcc);
	
	public void actualizarEstadoSolicitudCC(int idSoliCC, int estado);
	
	public List<SolicitudCambioCatDTO> listarSolicitudesporEstado(int estado);
	
	public List<DetalleSolCambioCatDTO> detallesSolicitudCC(int idSolicc);
	
	public DetalleSolCambioCatDTO obtenerDetalleSolCC(int idSolidd,int estado);
	
}
