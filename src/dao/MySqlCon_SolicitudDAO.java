package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import util.MySQL;
import bean.Con_SolicitudDTO;
import interfaces.Con_SolicitudDAO;


public class MySqlCon_SolicitudDAO implements Con_SolicitudDAO{

	@Override
	public ArrayList<Con_SolicitudDTO> listarSolicitudesPendientes() {
		ArrayList<Con_SolicitudDTO> lista=new ArrayList<Con_SolicitudDTO>();
		try {
			Connection cn=MySQL.getConnection();
			String sql="select * from tb_test_solicitud where estado=?";
			PreparedStatement pst=cn.prepareStatement(sql);
			pst.setString(1,"Pendiente");
			ResultSet rs=pst.executeQuery();
			
			while (rs.next()) {
				Con_SolicitudDTO solicitud =new Con_SolicitudDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				lista.add(solicitud);
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
		
		return lista;
	}

}
