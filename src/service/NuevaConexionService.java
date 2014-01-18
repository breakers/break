package service;



import interfaces.NuevaConexionDAO;

import java.util.ArrayList;
import java.util.List;

import bean.DiametroConexionDTO;
import bean.EstadoPredioDTO;
import bean.SolicitudNuevaConexionDTO;
import bean.TipoDocIdentidadDTO;
import bean.TipoPredioDTO;
import bean.UbigeoDTO;
import dao.DAOFactory;


public class NuevaConexionService {
	
	private DAOFactory factory= DAOFactory.getDAOFactory(1);
	private NuevaConexionDAO con_solicituddao = factory.getNuevaConexionDAO();

	public ArrayList<UbigeoDTO> listarProvincias() {
		return con_solicituddao.listarProvincias();
	}
	
	public ArrayList<UbigeoDTO> listarDistritos(String cod_prov) {
		return con_solicituddao.listarDistritos(cod_prov);
	}

	public ArrayList<UbigeoDTO> listarLocalidades(String cod_dis) {
		return con_solicituddao.listarLocalidades(cod_dis);
	}

	public ArrayList<UbigeoDTO> listarCalles(String cod_calle) {
		return con_solicituddao.listarCalles(cod_calle);
	}

	public boolean registrarSolicitudNuevaConexion(SolicitudNuevaConexionDTO solicitud) {
	return con_solicituddao.registrarSolicitudNuevaConexion(solicitud);
	
	}

	public List<EstadoPredioDTO> listarEstadosPredio() {
		return con_solicituddao.listarEstadosPredio();
	}

	public List<TipoPredioDTO> listarTiposPredio() {
		return con_solicituddao.listarTiposPredio();
	}

	public List<DiametroConexionDTO> listarDiametrosConexion() {
		return con_solicituddao.listarDiametrosConexion();
	}

	public List<TipoDocIdentidadDTO> listarTiposDoc() {
		return con_solicituddao.listarTiposDoc();
	}

	
}
