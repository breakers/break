package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.MensajeAlertaDTO;

public class utilMensaje {

	public static List<MensajeAlertaDTO> listarMensajesAlerta(){
		
		List<MensajeAlertaDTO> mensajes = new ArrayList<MensajeAlertaDTO>();
		Connection cn = MySQL.getConnection();
		
		String sql = "CALL usp_listarMensajesAlerta()";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				MensajeAlertaDTO mensaje = new MensajeAlertaDTO();
					mensaje.setIdMensajeAlerta(rs.getInt(1));	
					mensaje.setTituloMensajeAlerta(rs.getString(2));
					mensaje.setCuerpoMensajeAlerta(rs.getString(3)); 
					mensaje.setImagenMensajeAlerta(rs.getString(4)); 
				mensajes.add(mensaje);
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
		
		return mensajes;
	}
	
	public static MensajeAlertaDTO obtenerMensaje(List<MensajeAlertaDTO> mensajes,int codigo, String parametro){
		
		for(int i=0;i<mensajes.size();i++){
			MensajeAlertaDTO mensaje = mensajes.get(i);
				if(mensaje.getIdMensajeAlerta()==codigo){
					mensaje.setCuerpoMensajeAlerta(mensaje.getCuerpoMensajeAlerta().replace("#",parametro));
					return mensaje;
				}
		}
		return null;
	}
}
