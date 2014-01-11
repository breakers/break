package service;

import java.util.List;

import bean.UsuarioDTO;
import interfaces.UsuarioDAO;
import dao.DAOFactory;

public class UsuarioService {

	DAOFactory factory = DAOFactory.getDAOFactory(1);
	UsuarioDAO usuariodao = factory.getUsuarioDAO();

	public UsuarioDTO validarUsuario(String usu, String pass) {
		return usuariodao.validarUsuario(usu, pass);
	}

	public void registrarUsuario(UsuarioDTO usuario) {
		usuariodao.registrarUsuario(usuario);
	}

	public void actualizarUsuario(UsuarioDTO usuario) {
		usuariodao.actualizarUsuario(usuario);
	}

	public void eliminarUsuario(int idUsuario) {
		usuariodao.eliminarUsuario(idUsuario);
	}

	public List<UsuarioDTO> listarUsuarios() {
		return usuariodao.listarUsuarios();
	}

	public UsuarioDTO buscarPorId(int idUsuario) {
		return usuariodao.buscarPorId(idUsuario);
	}

	public UsuarioDTO validarSoloUsuario(String idUsuario) {
		return usuariodao.validarSoloUsuario(idUsuario);
	}
	
	public int ultimoUsuario(){
		return usuariodao.ultimoUsuario();
	}

}
