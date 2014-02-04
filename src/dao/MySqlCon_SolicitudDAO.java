package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.MySQL;
import util.utilMensaje;
import bean.FiltroSolicitudPendienteDTO;
import bean.SolicitudNuevaConexionDTO;
import interfaces.Con_SolicitudDAO;


public class MySqlCon_SolicitudDAO implements Con_SolicitudDAO{

	@Override
	public ArrayList<SolicitudNuevaConexionDTO> listarSolicitudes(int estado) {
		ArrayList<SolicitudNuevaConexionDTO> lista=new ArrayList<SolicitudNuevaConexionDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_listarSolicitudes(?)";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setInt(1, estado);
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				SolicitudNuevaConexionDTO solicitud =new SolicitudNuevaConexionDTO();
				solicitud.setIdSolicitud(rs.getInt(1));
				solicitud.setNombres(rs.getString(2));
				solicitud.setApepat(rs.getString(3));
				solicitud.setApemat(rs.getString(4));
				solicitud.setRazonsocial(rs.getString(5));
				solicitud.setFechaSolicitud(rs.getString(6));
				solicitud.setDesEstadoSolicitudNuevaConexion(rs.getString(7));
				lista.add(solicitud);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return lista;
	}

	@Override
	public SolicitudNuevaConexionDTO mostrarDatosSolicitud(int idSolicitud) {
		SolicitudNuevaConexionDTO solicitud = new SolicitudNuevaConexionDTO();
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_mostrarDatosSolicitud(?)";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setInt(1, idSolicitud);
			ResultSet rs=pst.executeQuery();
			
			if (rs.next()) {
				solicitud.setIdSolicitud(rs.getInt(1));
				solicitud.setFechaSolicitud(rs.getString(2));
				solicitud.setRazonsocial(rs.getString(3));
				solicitud.setRuc(rs.getString(4));
				solicitud.setUrl(rs.getString(5));
				solicitud.setNombres(rs.getString(6));
				solicitud.setApepat(rs.getString(7));
				solicitud.setApemat(rs.getString(8));
				solicitud.getTipodoc().setDesTipoDoc(rs.getString(9));
				solicitud.setNumDoc(rs.getString(10));
				solicitud.setCorreo(rs.getString(11));
				solicitud.setTelefono(rs.getString(12));
				solicitud.setCelular(rs.getString(13));
				solicitud.setDes_calle(rs.getString(14));
				solicitud.setDes_localidad(rs.getString(15));
				solicitud.setDes_distrito(rs.getString(16));
				solicitud.setDes_provincia(rs.getString(17));
				solicitud.setNumero(rs.getString(18));
				solicitud.setReferencias(rs.getString(19));
				solicitud.getEstpredio().setDesEstadoPredio(rs.getString(20));
				solicitud.getTipopredio().setDesTipoPredio(rs.getString(21));
				solicitud.setArea(rs.getString(22));
				solicitud.getDiamcon().setDesDiametroConexion(rs.getString(23));
				solicitud.setCosto(rs.getDouble(24));
				solicitud.setNumcuotas(rs.getInt(25));
				solicitud.setCoordenadas(rs.getString(26));
				solicitud.setDesEstadoSolicitudNuevaConexion(rs.getString(27));
				solicitud.setFileDocumentoIdentidad(rs.getString(28));
				solicitud.setFileCartaPoder(rs.getString(29));
				solicitud.setFilePartidaConstancia(rs.getString(30));
				solicitud.setFileMemoria(rs.getString(31));
				solicitud.setFileReciboVecino(rs.getString(32));
				solicitud.setFilePlanoInstalaciones(rs.getString(33));
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return solicitud;
	}

	@Override
	public boolean evaluarSolicitud(int idSolicitud, int estado) {
		boolean estadoEvaluacion;
		try {
			Connection cn=MySQL.getConnection();
			String sql="call usp_evaluarSolicitud(?,?)";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setInt(1, idSolicitud);
			pst.setInt(2, estado);
			pst.executeUpdate();
			estadoEvaluacion = true;
			
		} catch (Exception e) {
		e.printStackTrace();
		estadoEvaluacion = false;
		}
		return estadoEvaluacion;
	}

	@Override
	public ArrayList<SolicitudNuevaConexionDTO> filtrarSolicitudesPendientes(FiltroSolicitudPendienteDTO filtrosol) {
		ArrayList<SolicitudNuevaConexionDTO> listafiltrada = new ArrayList<SolicitudNuevaConexionDTO>();
			
		try {
			Connection cn = MySQL.getConnection();
			String sql = "call usp_filtrarSolicitudesPendientes(?,?,?,?)";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, filtrosol.getNombreRazSocial());
			pst.setInt(2, filtrosol.getNroSolicitud());
			pst.setString(3, filtrosol.getFechaDesde());
			pst.setString(4, filtrosol.getFechaHasta());
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				SolicitudNuevaConexionDTO solicitud =new SolicitudNuevaConexionDTO();
				solicitud.setIdSolicitud(rs.getInt(1));
				solicitud.setNombres(rs.getString(2));
				solicitud.setApepat(rs.getString(3));
				solicitud.setApemat(rs.getString(4));
				solicitud.setRazonsocial(rs.getString(5));
				solicitud.setFechaSolicitud(rs.getString(6));
				solicitud.setDesEstadoSolicitudNuevaConexion(rs.getString(7));
				listafiltrada.add(solicitud);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return listafiltrada;
	}

}
