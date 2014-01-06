package service;

import interfaces.PerfilDAO;

import java.util.List;

import dao.DAOFactory;
import bean.PerfilDTO;


public class PerfilService {
	
	private DAOFactory factory= DAOFactory.getDAOFactory(1);
	private PerfilDAO perfildao = factory.getPerfilDAO();

	public void registrarPerfil(PerfilDTO perfil) {
		perfildao.registrarPerfil(perfil);
	}

	public void modificarPerfil(PerfilDTO perfil) {
		perfildao.modificarPerfil(perfil);
	}

	public List<PerfilDTO> listarPerfiles() {
		return perfildao.listarPerfiles();
	}

	public void eliminarPerfil(int idPerfil) {
		perfildao.eliminarPerfil(idPerfil);
	}

	public PerfilDTO buscarPorId(int idPerfil) {
		return perfildao.buscarPorId(idPerfil);
	}
	
	public int ultimoPerfil(){
		return perfildao.ultimoPerfil();
	}

}
