package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.MySQL;
import bean.ClienteDTO;
import interfaces.ClienteDAO;

public class MySqlClienteDAO implements ClienteDAO{

	@Override
	public ClienteDTO obtenerCliente(int idCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ClienteDTO obtenerClientePorSuministro(int idSuministro) {
		
		String sql = "select * from tb_cliente as c "
				+ "inner join tb_suministro as s on c.idCliente = s.idCliente "
				+ "Where s.idSuministro = ? ";
		
		ClienteDTO cli = null;
		
		
		Connection cn = null;
		PreparedStatement ps = null;
		
		try {
			cn= MySQL.getConnection();
			ps= cn.prepareStatement(sql);
			ps.setInt(1, idSuministro);
			
			ResultSet rs= ps.executeQuery();
			
			if (rs.next()) {
				
				
				cli = new ClienteDTO();
				cli.setIdCliente(rs.getInt("idCliente"));
				cli.setNomCliente(rs.getString("nomCliente"));
				cli.setRazonsocial(rs.getString("razonsocial"));
				cli.setIdtipoPersona(rs.getInt("idtipoPersona"));
				cli.setApepaCliente(rs.getString("apepaCliente"));
				
				
			}
			
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cli;
	}

	@Override
	public List<ClienteDTO> listarClientes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ClienteDTO> listarClientes(String nomCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ClienteDTO> listarClientes(int idtipoPersona) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void agregarCliente(ClienteDTO cliente) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modificarCliente(ClienteDTO cliente) {
		// TODO Auto-generated method stub
		
	}

}
