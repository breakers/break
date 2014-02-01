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
import bean.FiltroClienteDTO;
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
				
				
				
//				cliente.setIdCliente(rs.getInt("idCliente"));
//				cliente.setNumDocCliente(rs.getString("numDocCliente"));
//				cliente.setNomCliente(rs.getString("nomCliente"));
//				cliente.setNomRepresentante(rs.getString("nomRepresentante"));
//				cliente.setApepaRepresentante(rs.getString("apepaRepresentante"));
//				
				
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
		String sql="select * from tb_cliente where idCliente = ?";
		
		Connection cn=null;
		PreparedStatement ps=null;
		cn = MySQL.getConnection();
		ClienteDTO cliente=null;
		
		try {
			ps = cn.prepareStatement(sql);
			ps.setInt(1, codigo);
			
			ResultSet rs= ps.executeQuery();
			
			if (rs.next()) {
				cliente = new ClienteDTO();
//				cliente.setIdCliente(rs.getInt("idCliente"));
//				cliente.setNomCliente(rs.getString("nomCliente"));
//				cliente.setNumDocCliente(rs.getString("numDocCliente"));
				
				
			}
			
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cliente;
	}

	@Override
	public List<ContratoDTO> obtenerContratosPorCliente(int codCliente) {
		ArrayList<ContratoDTO> contratos = new ArrayList<ContratoDTO>();
		
		String sql= "select * from tb_Contrato Where idCliente = ? ";
		Connection cn= null;
		PreparedStatement ps=null;
		
		try {
			cn= MySQL.getConnection();
			ps=cn.prepareStatement(sql);
			ps.setInt(1, codCliente);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				ContratoDTO contract = new ContratoDTO();
				contract.setIdContrato(rs.getInt("idContrato"));
				contract.setCodSuministro(rs.getString("codSuministro"));
				contratos.add(contract);
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return contratos;
	}

	@Override
	public ContratoDTO obtenerContrato(int idContrato) {
		
		String sql = "select * from tb_contrato Where idContrato = ?";
		
		Connection cn;
		PreparedStatement ps=null;
		ContratoDTO contrato = new ContratoDTO();
		boolean valido= false;
		
		try {
			cn= MySQL.getConnection();
			ps=cn.prepareStatement(sql);
			ps.setInt(1, idContrato);
			
			ResultSet rs=ps.executeQuery();
			
			if (rs.next()) {
				valido = true;
				contrato.setIdContrato(rs.getInt("idContrato"));
				contrato.setIdCliente(rs.getInt("idCliente"));
				contrato.setIdCategoria(rs.getInt("idCategoria"));
				contrato.setIdDiametroConexion(rs.getInt("idDiametroConexion"));
				contrato.setIdPredio(rs.getInt("idPredio"));
				contrato.setIdSolicitud(rs.getInt("idSolicitud"));
				contrato.setIdUsuario(rs.getInt("idUsuario"));
				contrato.setCodSuministro(rs.getString("codSuministro"));		
			}
			rs.close();
			ps.close();
			cn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if (valido) {
			String sqlcliente= "select * from tb_cliente Where idCliente = ?";
			int idCliente = contrato.getIdCliente();
			
			
			try {
				cn= MySQL.getConnection();
				ps = cn.prepareStatement(sqlcliente);
				ps.setInt(1, idCliente);
				
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					contrato.setNomCliente(rs.getString("nomCliente"));
					contrato.setNumDocCliente(rs.getString("numDocCliente"));
					//contrato.setNomCategoria(rs.getString("nomCategoria"));
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String sqlcategoria = "select * from tb_categoria Where idCategoria = ?";
			int idCategoria = contrato.getIdCategoria();
			
			try {
				cn= MySQL.getConnection();
				ps= cn.prepareStatement(sqlcategoria);
				ps.setInt(1, idCategoria);

				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
				contrato.setNomCategoria(rs.getString("desCategoria"));
				}
				
				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			String sqldiametro = "select * from tb_diametroConexion Where idDiametroConexion = ? ";
			int iddiametro = contrato.getIdDiametroConexion();
			try {
				cn= MySQL.getConnection();
				ps= cn.prepareStatement(sqldiametro);
				ps.setInt(1, iddiametro);
				
				ResultSet rs = ps.executeQuery();
				
				if (rs.next()) {
					contrato.setDesDiametroConexion(rs.getString("desDiametroConexion"));
				}
				
				rs.close();
				ps.close();
				cn.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return contrato;
	}

	@Override
	public boolean generarContrato(int idUsuario, int idSolicitud) {
		boolean estadoContrato = false;
			
			try {
				Connection cn = MySQL.getConnection();
				String sql = "call usp_generarContrato(?,?)";
				PreparedStatement pst;
				pst = cn.prepareStatement(sql);
				pst.setInt(1, idUsuario);
				pst.setInt(2, idSolicitud);
				pst.executeUpdate();
				estadoContrato = true;
			} catch (SQLException e) {
				e.printStackTrace();
				estadoContrato = false;
			}
			
			return estadoContrato;
			
	}

	@Override
	public ArrayList<ClienteDTO> filtrarClientes(FiltroClienteDTO filtrocliente) {
		ArrayList<ClienteDTO> clientesfiltrados = new ArrayList<ClienteDTO>();
		try {
			Connection cn = MySQL.getConnection();
			String sql = "call usp_filtrarClientes(?,?,?,?,?,?,?)";
			PreparedStatement pst =  cn.prepareStatement(sql);
			pst.setInt(1, filtrocliente.getTipoPersona());
			pst.setString(2, filtrocliente.getNomcli());
			pst.setString(3, filtrocliente.getNumdoc());
			pst.setString(4, filtrocliente.getRuc());
			pst.setString(5, filtrocliente.getRazsocial());
			pst.setString(6, filtrocliente.getNombreRepre());
			pst.setString(7, filtrocliente.getApeRepre());
			ResultSet rs = pst.executeQuery();
			if(filtrocliente.getTipoPersona()==1){
				while(rs.next()){
					ClienteDTO cliente = new ClienteDTO();
					cliente.setIdCliente(rs.getInt(1));
					cliente.getTipodoc().setDesTipoDoc(rs.getString(2));
					cliente.setNomCliente(rs.getString(3));
					cliente.setApepaCliente(rs.getString(4));
					cliente.setApemaCliente(rs.getString(5));
					clientesfiltrados.add(cliente);
					}
			}else{
				while(rs.next()){
					ClienteDTO cliente = new ClienteDTO();
					cliente.setIdCliente(rs.getInt(1));
					cliente.setRucCliente(rs.getString(2));
					cliente.setRazonsocial(rs.getString(3));
					cliente.setNomCliente(rs.getString(4));
					cliente.setApepaCliente(rs.getString(5));
					clientesfiltrados.add(cliente);
					}
				}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return clientesfiltrados;
			
	}

	@Override
	public ClienteDTO mostrarDatosCliente(int idCliente) {
		return null;
	}



}
