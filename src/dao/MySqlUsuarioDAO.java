package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.MySQL;
import bean.UsuarioDTO;
import interfaces.UsuarioDAO;

public class MySqlUsuarioDAO implements UsuarioDAO{

	@Override
	public UsuarioDTO validarUsuario(String usu, String pass) {
		
		UsuarioDTO usuario = null;
		Connection cn = MySQL.getConnection();
		
		String sql = "SELECT * FROM tb_usuario WHERE userUsuario = ? and passUsuario = ?";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, usu);
			ps.setString(2, pass);
			ResultSet rs= ps.executeQuery();
			
			if (rs.next()) {
				usuario = new UsuarioDTO(	rs.getInt("idUsuario"), 
											rs.getInt("idPerfil"), 
											rs.getString("userUsuario"), 
											rs.getString("passUsuario"), 
											rs.getString("nomUsuario"), 
											rs.getString("apepaUsuario"), 
											rs.getString("apemaUsuario"), 
											rs.getString("dniUsuario"));
			}
			rs.close();
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return usuario;
	}

	@Override
	public void registrarUsuario(UsuarioDTO usuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void eliminarUsuario(String idUsuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<UsuarioDTO> listarUsuarios() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UsuarioDTO buscarPorId(String idUsuario) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UsuarioDTO validarSoloUsuario(String idUsuario) {
		// TODO Auto-generated method stub
		return null;
	}

}
