package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
		
		String sql = "select * from tb_SolCambioCategoria as scc "
				+ "inner join tb_Suministro as sum on scc.idSuministro = sum.idSuministro "
				+ "inner join tb_EstadoSolicitudCambio as e on scc.idEstado = e.idEstado Where scc.idEstado = ?";
		Connection cn = null;
		PreparedStatement ps= null;
		ArrayList<SolicitudCambioCatDTO> lista = new ArrayList<>();
		
		try {
			cn= MySQL.getConnection();
			ps=cn.prepareStatement(sql);
			ps.setInt(1, estado);
			
			ResultSet rs= ps.executeQuery();
//			<td>${lista.numero}</td>
//			<td>${lista.nomUsuario}&nbsp${lista.apepaUsuario}&nbsp${lista.apemaUsuario}</td>
//			<td>${lista.fecha}</td>
//			<td class="hidden-480"><span
//				class="label label-sm label-danger arrowed">${lista.estado}</span>
//			</td>
			while (rs.next()) {
//				lista = rs.getInt("idEstado");
				SolicitudCambioCatDTO soli = new SolicitudCambioCatDTO();
				soli.setIdSolCategoria(rs.getInt("idSolCategoria"));
				soli.setCodSuministro(rs.getString("codSuministro"));
				soli.setFechaSolicitud(rs.getDate("fechaSolicitud").toString());
				soli.setNomEstado(rs.getString("desEstado"));
				lista.add(soli);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return lista;
	}

	@Override
	public List<DetalleSolCambioCatDTO> detallesSolicitudCC(int idSolicc) {
		// TODO Auto-generated catch block
		return null;
	}

	@Override
	public DetalleSolCambioCatDTO obtenerDetalleSolCC(int idSolidd, int estado) {
		// TODO Auto-generated catch block
		return null;
	}

	@Override
	public int obtenerEstadoSCC(int idSuministro) {

		String sql = "select idEstado from tb_SolCambioCategoria Where idSuministro = ?";
		Connection cn = null;
		PreparedStatement ps= null;
		int codigo = -1;
		
		try {
			cn= MySQL.getConnection();
			ps=cn.prepareStatement(sql);
			ps.setInt(1, idSuministro);
			
			ResultSet rs= ps.executeQuery();
			
			if (rs.next()) {
				codigo = rs.getInt("idEstado");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return codigo;
	}

	@Override
	public SolicitudCambioCatDTO obtenerSolicitud(int idSolicitud) {
		
		SolicitudCambioCatDTO solicitud= null;
		
		
		String sql= "select * from tb_SolCambioCategoria Where idSolCategoria = ? ";
		
		Connection cn = null;
		PreparedStatement ps = null;
		
		try {
			cn= MySQL.getConnection();
			ps= cn.prepareStatement(sql);
			ps.setInt(1, idSolicitud);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				solicitud= new SolicitudCambioCatDTO();
				
				solicitud.setIdSolCategoria(idSolicitud);
				
//				solicitud.getCodSuministro();
//				solicitud.getDetalles();
				solicitud.setFechaSolicitud(rs.getDate("fechaSolicitud").toString());
				solicitud.setIdEstado(rs.getInt("idEstado"));
				solicitud.setIdSuministro(rs.getInt("idSuministro"));
				solicitud.setIdUsuario(rs.getInt("idUsuario"));
				solicitud.setImgArchivo(rs.getString("imgArchivo"));
				solicitud.setImgDNI(rs.getString("imgDNI"));
//				solicitud.getNomEstado();
//				solicitud.getNomUsuario();
				solicitud.setRazoncambio(rs.getString("razoncambio"));
				
				
				
			}
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		return solicitud;
	}

}
