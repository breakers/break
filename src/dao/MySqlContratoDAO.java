package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.MySQL;
import bean.ClienteDTO;
import bean.ContratoDTO;
import interfaces.ContratoDAO;

public class MySqlContratoDAO implements ContratoDAO{

	@Override
	public List<ClienteDTO> listarClientes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ClienteDTO> listarClientesPorNombre(String nombre) {
		
		ArrayList<ClienteDTO> arreglo = new ArrayList<ClienteDTO>();
		String sql = "";
		
		 
		try {
			Connection cn=null;
			PreparedStatement ps=null;
			
			if (nombre.equals("")) {
				sql = "select * from tb_cliente";
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sql);
				
			}else{
				sql = "select * from tb_cliente where nomCliente like ?";
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sql);
				ps.setString(1, nombre+"%");
			}
			
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				ClienteDTO cliente = new ClienteDTO();
				cliente.setApemaCliente(rs.getString("apemaCliente"));
				cliente.setApepaCliente(rs.getString("apepaCliente"));
				cliente.setNumDocCliente(rs.getString("numDocCliente"));
				cliente.setNomCliente(rs.getString("nomCliente"));
				cliente.setIdCliente(rs.getInt("idCliente"));
				
				arreglo.add(cliente);
			}
			
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arreglo;
	}

	@Override
	public ClienteDTO obtenerCliente(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ContratoDTO> obtenerContratosPorCliente(int codCliente) {
		// TODO Auto-generated method stub
		return null;
	}

}
