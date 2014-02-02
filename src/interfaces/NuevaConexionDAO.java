package interfaces;

import java.util.ArrayList;
import java.util.List;

import bean.DiametroConexionDTO;
import bean.EstadoPredioDTO;
import bean.SolicitudNuevaConexionDTO;
import bean.TipoDocIdentidadDTO;
import bean.TipoPredioDTO;
import bean.UbigeoDTO;

public interface NuevaConexionDAO {
	
	public ArrayList<UbigeoDTO> listarProvincias();

	public ArrayList<UbigeoDTO> listarDistritos(String cod_prov);

	public ArrayList<UbigeoDTO> listarLocalidades(String cod_dis);

	public ArrayList<UbigeoDTO> listarCalles(String cod_calle);

	public boolean registrarSolicitudNuevaConexion(SolicitudNuevaConexionDTO solicitud);

	public List<EstadoPredioDTO> listarEstadosPredio();

	public List<TipoPredioDTO> listarTiposPredio();

	public List<DiametroConexionDTO> listarDiametrosConexion();

	public List<TipoDocIdentidadDTO> listarTiposDoc();
	
}
