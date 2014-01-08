package interfaces;

import java.util.List;
import bean.UsuarioDTO;

public interface UsuarioDAO {
	
	public UsuarioDTO validarUsuario(String usu,String pass);
	
	public void registrarUsuario(UsuarioDTO usuario);
	
	public void actualizarUsuario(UsuarioDTO usuario);
	
	public void eliminarUsuario(int idUsuario);
	
	public List<UsuarioDTO> listarUsuarios();
	
	public UsuarioDTO buscarPorId(String idUsuario);
	
	public UsuarioDTO validarSoloUsuario(String idUsuario);
	
	public int ultimoUsuario();

}
