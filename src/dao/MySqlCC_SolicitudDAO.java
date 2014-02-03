package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import util.MySQL;
import bean.DetalleSolCambioCatDTO;
import bean.SolicitudCambioCatDTO;
import interfaces.CC_SolicitudDAO;

public class MySqlCC_SolicitudDAO implements CC_SolicitudDAO{

	@Override
	public boolean registrarSolicitudCC(SolicitudCambioCatDTO solicitudcc) {
		boolean estado = true;
		
		try {
			String sql = "call usp_registrarSolicitudCC(?,?,?,?,?)";
			
			Connection cn = MySQL.getConnection();
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setInt(1, solicitudcc.getIdSuministro());
			ps.setInt(2, solicitudcc.getIdUsuario());
			ps.setString(3, solicitudcc.getImgDNI());
			ps.setString(4, solicitudcc.getImgArchivo());
			ps.setString(5, solicitudcc.getRazoncambio());
			ps.executeUpdate();
			estado = true;
			ps.close();
			cn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			estado = false;
		}
		
		return estado;
	}

	@Override
	public void actualizarEstadoSolicitudCC(int idSoliCC, int estado) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<SolicitudCambioCatDTO> listarSolicitudesporEstado(int estado) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DetalleSolCambioCatDTO> detallesSolicitudCC(int idSolicc) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DetalleSolCambioCatDTO obtenerDetalleSolCC(int idSolidd, int estado) {
		// TODO Auto-generated method stub
		return null;
	}

}
