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
	public List<ClienteDTO> listarClientesPorNombre(String nombre, String doc,
			String nomrep, String aperep) {
		
		ArrayList<ClienteDTO> arreglo = new ArrayList<ClienteDTO>();
		String sql = "";
		
		 
		try {
			Connection cn=null;
			PreparedStatement ps=null;
			
			if (!nombre.equals("")) {
				if (!doc.equals("")) {
					if (!nomrep.equals("")) {
						if (!aperep.equals("")) {
							sql="select * from tb_cliente where nomCliente like ? and numDocCliente like ? and nomRepresentante like ? and apepaRepresentante like ?";
							//aqui cumplio los 4 requerimientos
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, doc+"%");
							ps.setString(3, nomrep+"%");
							ps.setString(4, aperep+"%");
							
						}else{
							//aqui todos menos aperep
							sql="select * from tb_cliente where nomCliente like ? and numDocCliente like ? and nomRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, doc+"%");
							ps.setString(3, nomrep+"%");
							
						}
					}else{
						if (!aperep.equals("")) {
							//todos menos nomrep
							sql="select * from tb_cliente where nomCliente like ? and numDocCliente like ? and apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, doc+"%");
							ps.setString(3, aperep+"%");
							
						}else{
							//aqui todos menos nomrep,aperep
							sql="select * from tb_cliente where nomCliente like ? and numDocCliente like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, doc+"%");
						}
					}
					
				}else{
					if (!nomrep.equals("")) {
						if (!aperep.equals("")) {
							//aqui todos menos doc
							sql="select * from tb_cliente where nomCliente like ? and nomRepresentante like ? and apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, nomrep+"%");
							ps.setString(3, aperep+"%");
						}else{
							//aqui todos menos doc,aperep
							sql="select * from tb_cliente where nomCliente like ? and nomRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, nomrep+"%");
						}
					}else{
						if (!aperep.equals("")) {
							//aqui todos menos doc,nomrep
							sql="select * from tb_cliente where nomCliente like ? and apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
							ps.setString(2, aperep+"%");
						}else{
							//aqui todos menos doc,nomrep,aperep
							sql="select * from tb_cliente where nomCliente like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nombre+"%");
						}
					}
				}
			}else{
				if (!doc.equals("")) {
					if (!nomrep.equals("")) {
						if (!aperep.equals("")) {
							//todos menos nombre
							sql="select * from tb_cliente where numDocCliente like ? and nomRepresentante like ? and apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, doc+"%");
							ps.setString(2, nomrep+"%");
							ps.setString(3, aperep+"%");
						}else{
							//todos menos nombre, aperep
							sql="select * from tb_cliente where numDocCliente like ? and nomRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, doc+"%");
							ps.setString(2, nomrep+"%");
						}
					}else{
						if (!aperep.equals("")) {
							//todos menos nombre,nomrep
							sql="select * from tb_cliente where numDocCliente like ? and apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, doc+"%");
							ps.setString(2, aperep+"%");
						}else{
							//todos menos nombre, nomrep,aperep
							sql="select * from tb_cliente where numDocCliente like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, doc+"%");
							
						}
					}
					
				}else{
					if (!nomrep.equals("")) {
						if (!aperep.equals("")) {
							//todo menos nombre,doc
							sql="select * from tb_cliente where nomRepresentante like ? and apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nomrep+"%");
							ps.setString(2, aperep+"%");
						}else{
							//todos menos nombre, doc,aprep
							sql="select * from tb_cliente where nomRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, nomrep+"%");
						}
					}else{
						if (!aperep.equals("")) {
							//todo menos nombre,doc,nomrep
							sql="select * from tb_cliente where apepaRepresentante like ?";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							ps.setString(1, aperep+"%");
						}else{
							//todos menos nombre, doc,nomrep,aprep
							sql="select * from tb_cliente";
							cn = MySQL.getConnection();
							ps = cn.prepareStatement(sql);
							
						}
					}
				}
			}
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				ClienteDTO cliente = new ClienteDTO();
//				cliente.setApemaCliente(rs.getString("apemaCliente"));
//				cliente.setApepaCliente(rs.getString("apepaCliente"));
				
				
				
				cliente.setIdCliente(rs.getInt("idCliente"));
				cliente.setNumDocCliente(rs.getString("numDocCliente"));
				cliente.setNomCliente(rs.getString("nomCliente"));
				cliente.setNomRepresentante(rs.getString("nomRepresentante"));
				cliente.setApepaRepresentante(rs.getString("apepaRepresentante"));
				
				
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
