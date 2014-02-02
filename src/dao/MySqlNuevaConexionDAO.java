package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.MySQL;
import bean.SolicitudNuevaConexionDTO;
import bean.DiametroConexionDTO;
import bean.EstadoPredioDTO;
import bean.SolicitudNuevaConexionDTO;
import bean.TipoDocIdentidadDTO;
import bean.TipoPredioDTO;
import bean.UbigeoDTO;
import interfaces.Con_SolicitudDAO;
import interfaces.NuevaConexionDAO;


public class MySqlNuevaConexionDAO implements NuevaConexionDAO{

	@Override
	public ArrayList<UbigeoDTO> listarProvincias() {
		ArrayList<UbigeoDTO> provincias = new ArrayList<UbigeoDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarProvincias()";
			PreparedStatement pst=cn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				UbigeoDTO prov = new UbigeoDTO();
				prov.setCodUbigeo(rs.getString(1));
				prov.setNomUbigeo(rs.getString(2));
				provincias.add(prov);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return provincias;
	}

	@Override
	public ArrayList<UbigeoDTO> listarDistritos(String cod_prov) {
		ArrayList<UbigeoDTO> distritos = new ArrayList<UbigeoDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarDistritos(?)";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setString(1, cod_prov);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				UbigeoDTO dis = new UbigeoDTO();
				dis.setCodUbigeo(rs.getString(1));
				dis.setNomUbigeo(rs.getString(2));
				distritos.add(dis);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return distritos;
	}

	@Override
	public ArrayList<UbigeoDTO> listarLocalidades(String cod_dis) {
		ArrayList<UbigeoDTO> localidades = new ArrayList<UbigeoDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarLocalidades(?)";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setString(1, cod_dis);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				UbigeoDTO loc = new UbigeoDTO();
				loc.setCodUbigeo(rs.getString(1));
				loc.setNomUbigeo(rs.getString(2));
				localidades.add(loc);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return localidades;
	}

	@Override
	public ArrayList<UbigeoDTO> listarCalles(String cod_calle) {
		ArrayList<UbigeoDTO> calles = new ArrayList<UbigeoDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarCalles(?)";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setString(1, cod_calle);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				UbigeoDTO calle = new UbigeoDTO();
				calle.setCodUbigeo(rs.getString(1));
				calle.setNomUbigeo(rs.getString(2));
				calles.add(calle);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return calles;
	}

	@Override
	public boolean registrarSolicitudNuevaConexion(SolicitudNuevaConexionDTO solicitud) {
		Connection cn = MySQL.getConnection();
		
		String sql= "CALL usp_registrarSolicitudNuevaConexion(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, solicitud.getTipoPersona());
			ps.setString(2,solicitud.getRazonsocial());
			ps.setString(3,solicitud.getRuc());
			ps.setString(4,solicitud.getUrl());
			ps.setString(5,solicitud.getNombres());
			ps.setString(6,solicitud.getApepat());
			ps.setString(7,solicitud.getApemat());
			ps.setInt(8,solicitud.getIdTipoDoc());
			ps.setString(9,solicitud.getNumDoc());
			ps.setString(10,solicitud.getCorreo());
			ps.setString(11,solicitud.getTelefono());
			ps.setString(12,solicitud.getCelular());
			ps.setInt(13,solicitud.getId_calle());
			ps.setInt(14,solicitud.getId_localidad());
			ps.setInt(15, solicitud.getId_distrito());
			ps.setInt(16,solicitud.getId_provincia());
			ps.setString(17,solicitud.getNumero());
			ps.setString(18,solicitud.getReferencias());
			ps.setInt(19,solicitud.getIdEstadoPredio());
			ps.setInt(20,solicitud.getIdTipoPredio());
			ps.setString(21,solicitud.getArea());
			ps.setInt(22,solicitud.getIdDiametroConexion());
			ps.setDouble(23,solicitud.getCosto());
			ps.setInt(24,solicitud.getNumcuotas());
			ps.setString(25,solicitud.getCoordenadas());
			ps.setString(26, solicitud.getFileDocumentoIdentidad());
			ps.executeUpdate();
			ps.close();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}finally{
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
	}

	@Override
	public List<EstadoPredioDTO> listarEstadosPredio() {
		ArrayList<EstadoPredioDTO> estados = new ArrayList<EstadoPredioDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarEstadoPredio()";
			PreparedStatement pst=cn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				EstadoPredioDTO est = new EstadoPredioDTO();
				est.setIdEstadoPredio(rs.getInt(1));
				est.setDesEstadoPredio(rs.getString(2));
				estados.add(est);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return estados;
	}

	@Override
	public List<TipoPredioDTO> listarTiposPredio() {
		ArrayList<TipoPredioDTO> tipos = new ArrayList<TipoPredioDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarTipoPredio()";
			PreparedStatement pst=cn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				TipoPredioDTO tipo = new TipoPredioDTO();
				tipo.setIdTipoPredio(rs.getInt(1));
				tipo.setDesTipoPredio(rs.getString(2));
				tipos.add(tipo);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return tipos;
	}

	@Override
	public List<DiametroConexionDTO> listarDiametrosConexion() {
		ArrayList<DiametroConexionDTO> diametros = new ArrayList<DiametroConexionDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarDiametroConexion()";
			PreparedStatement pst=cn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				DiametroConexionDTO diam = new DiametroConexionDTO();
				diam.setIdDiametroConexion(rs.getInt(1));
				diam.setDesDiametroConexion(rs.getString(2));
				diametros.add(diam);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return diametros;
	}

	@Override
	public List<TipoDocIdentidadDTO> listarTiposDoc() {
		ArrayList<TipoDocIdentidadDTO> tipos = new ArrayList<TipoDocIdentidadDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarTiposDoc()";
			PreparedStatement pst=cn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				TipoDocIdentidadDTO tipo = new TipoDocIdentidadDTO();
				tipo.setIdTipoDoc(rs.getInt(1));
				tipo.setDesTipoDoc(rs.getString(2));
				tipos.add(tipo);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return tipos;
	}
	

}
