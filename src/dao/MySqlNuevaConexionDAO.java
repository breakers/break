package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.MySQL;
import bean.Con_SolicitudDTO;
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

	

}
