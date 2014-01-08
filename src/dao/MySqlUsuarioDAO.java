package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.MySQL;
import bean.PerfilDTO;
import bean.UsuarioDTO;
import interfaces.UsuarioDAO;

public class MySqlUsuarioDAO implements UsuarioDAO {

	@Override
	public UsuarioDTO validarUsuario(String usu, String pass) {

		UsuarioDTO usuario = null;
		Connection cn = MySQL.getConnection();

		String sql = "SELECT * FROM tb_usuario WHERE userUsuario = ? and passUsuario = ?";

		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, usu);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				usuario = new UsuarioDTO(rs.getInt("idUsuario"),
						rs.getInt("idPerfil"), rs.getString("userUsuario"),
						rs.getString("passUsuario"),
						rs.getString("nomUsuario"),
						rs.getString("apepaUsuario"),
						rs.getString("apemaUsuario"),
						rs.getString("dniUsuario"),
						rs.getString("correoUsuario"),
						rs.getString("telefonoUsuario"));
			}
			rs.close();
			ps.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
		Connection cn = MySQL.getConnection();

		String sql = "CALL usp_registrarUsuario(?,?,?,?,?,?,?,?,?,)";

		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, usuario.getIdPerfil());
			ps.setString(2, usuario.getUserUsuario());
			ps.setString(3, usuario.getPassUsuario());
			ps.setString(4, usuario.getNomUsuario());
			ps.setString(5, usuario.getApepaUsuario());
			ps.setString(6, usuario.getApemaUsuario());
			ps.setString(7, usuario.getDniUsuario());
			ps.setString(8, usuario.getCorreoUsuario());
			ps.setString(9, usuario.getTelefonoUsuario());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public void actualizarUsuario(UsuarioDTO usuario) {
		Connection cn = MySQL.getConnection();

		String sql = "CALL usp_actualizarUsuario(?,?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, usuario.getIdUsuario());
			ps.setInt(2, usuario.getIdPerfil());
			ps.setString(3, usuario.getUserUsuario());
			ps.setString(4, usuario.getPassUsuario());
			ps.setString(5, usuario.getNomUsuario());
			ps.setString(6, usuario.getApepaUsuario());
			ps.setString(7, usuario.getApemaUsuario());
			ps.setString(8, usuario.getDniUsuario());
			ps.setString(9, usuario.getCorreoUsuario());
			ps.setString(10, usuario.getTelefonoUsuario());
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public void eliminarUsuario(int idUsuario) {
		Connection cn = MySQL.getConnection();

		String sql = "CALL usp_eliminarUsuario(?)";

		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, idUsuario);
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public List<UsuarioDTO> listarUsuarios() {
		List<UsuarioDTO> lista = new ArrayList<UsuarioDTO>();
		Connection cn = MySQL.getConnection();
		String sql = "CALL usp_listarUsuarios";
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				UsuarioDTO usuario = new UsuarioDTO(rs.getInt("idUsuario"),
						rs.getInt("idPerfil"), rs.getString("userUsuario"),
						rs.getString("passUsuario"),
						rs.getString("nomUsuario"),
						rs.getString("apepaUsuario"),
						rs.getString("apemaUsuario"),
						rs.getString("dniUsuario"),
						rs.getString("correoUsuario"),
						rs.getString("telefonoUsuario"));

			}

			rs.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return lista;
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
