package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.MySQL;
import bean.PerfilDTO;
import interfaces.PerfilDAO;

public class MySqlPerfilDAO implements PerfilDAO{

	@Override
	public void registrarPerfil(PerfilDTO perfil) {
		Connection cn = MySQL.getConnection();
		
		String sql= "CALL usp_registrarPerfil(?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, perfil.getDesPerfil());
			ps.setInt(2, perfil.getModuloContratos());
			ps.setInt(3, perfil.getModuloCategorias());
			ps.setInt(4, perfil.getModuloLiquidacion());
			ps.setInt(5, perfil.getModuloReportes());
			ps.setInt(6, perfil.getModuloManClientes());
			ps.setInt(7, perfil.getModuloManPerfiles());
			ps.setInt(8, perfil.getModuloManUsuarios());
			ps.setInt(9, perfil.getModuloBuzon());
			ps.setInt(10, perfil.getModuloCalendario());
			ps.executeUpdate();
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
	}

	@Override
	public void modificarPerfil(PerfilDTO perfil) {
		Connection cn = MySQL.getConnection();
		
		String sql= "UPDATE tb_perfil SET "
				+ "desPerfil = ?, "
				+ "moduloContratos = ?,"
				+ "moduloCategorias = ?,"
				+ "moduloLiquidacion = ?,"
				+ "moduloReportes = ?,"
				+ "moduloManClientes = ?,"
				+ "moduloManPerfiles = ?,"
				+ "moduloManUsuarios = ?,"
				+ "moduloBuzon = ?,"
				+ "moduloCalendario = ? "
				+ "WHERE idPerfil = ?";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, perfil.getDesPerfil());
			ps.setInt(2, perfil.getModuloContratos());
			ps.setInt(3, perfil.getModuloCategorias());
			ps.setInt(4, perfil.getModuloLiquidacion());
			ps.setInt(5, perfil.getModuloReportes());
			ps.setInt(6, perfil.getModuloManClientes());
			ps.setInt(7, perfil.getModuloManPerfiles());
			ps.setInt(8, perfil.getModuloManUsuarios());
			ps.setInt(9, perfil.getModuloBuzon());
			ps.setInt(10, perfil.getModuloCalendario());
			ps.setInt(11, perfil.getIdPerfil());
			ps.executeUpdate();
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
		
	}

	@Override
	public List<PerfilDTO> listarPerfiles() {
		List<PerfilDTO> lista = new ArrayList<PerfilDTO>();
		Connection cn = MySQL.getConnection();
		
		String sql = "CALL usp_listarPerfiles";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				PerfilDTO profile = new PerfilDTO(rs.getInt("idPerfil"), 
						rs.getString("desPerfil"), 
						rs.getInt("moduloContratos"), 
						rs.getInt("moduloCategorias"), 
						rs.getInt("moduloLiquidacion"), 
						rs.getInt("moduloReportes"), 
						rs.getInt("moduloManClientes"), 
						rs.getInt("moduloManPerfiles"), 
						rs.getInt("moduloManUsuarios"), 
						rs.getInt("moduloBuzon"), 
						rs.getInt("moduloCalendario"));
				lista.add(profile);
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
		
		return lista;
	}
	

	@Override
	public void eliminarPerfil(int idPerfil) {
		Connection cn = MySQL.getConnection();
		
		String sql = "DELETE FROM tb_perfil WHERE idPerfil = ?";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, idPerfil);
			ps.executeUpdate();
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
		
	}

	@Override
	public PerfilDTO buscarPorId(int idPerfil) {
		
		PerfilDTO profile = null;
		
		Connection cn = MySQL.getConnection();
		
		String sql = "SELECT * FROM tb_perfil WHERE idPerfil = ?";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, idPerfil);
			
			ResultSet rs=ps.executeQuery();
			if (rs.next()) {
				profile = new PerfilDTO(idPerfil, 
						rs.getString("desPerfil"), 
						rs.getInt("moduloContratos"), 
						rs.getInt("moduloCategorias"), 
						rs.getInt("moduloLiquidacion"), 
						rs.getInt("moduloReportes"), 
						rs.getInt("moduloManClientes"), 
						rs.getInt("moduloManPerfiles"), 
						rs.getInt("moduloManUsuarios"), 
						rs.getInt("moduloBuzon"), 
						rs.getInt("moduloCalendario"));
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
		return profile;
	}

	@Override
	public int ultimoPerfil() {
		int ultimoid = 0;
		Connection cn = MySQL.getConnection();
		
		String sql = "CALL usp_UltimoPerfil";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			if (rs.next()) {
				ultimoid = rs.getInt("idPerfil");
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
		return ultimoid;
	}

}
