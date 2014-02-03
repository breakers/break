package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.MySQL;
import bean.SuministroDTO;
import interfaces.SuministroDAO;

public class MySqlSuministroDAO implements SuministroDAO{

	@Override
	public SuministroDTO obtenerSuministro(int idSuministro) {
		
		String sql= "select * from tb_suministro as s "
				+ "inner join tb_Categoria as c on s.idCategoria = c.idCategoria "
				+ "inner join tb_diametroconexion as d on s.idDiametroConexion = d.idDiametroConexion "
				+ "where s.idSuministro = ?";
		Connection cn = null;
		PreparedStatement ps = null;
		SuministroDTO suministro= null;
		
		try {
			cn= MySQL.getConnection();
			ps= cn.prepareStatement(sql);
			ps.setInt(1, idSuministro);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				suministro = new SuministroDTO();
				suministro.setIdSuministro(idSuministro);
				suministro.setCodSuministro(rs.getString("codSuministro"));
				suministro.setIdCategoria(rs.getInt("idCategoria"));
				suministro.setIdCliente(rs.getInt("idCliente"));
				suministro.setIdDiametroConexion(rs.getInt("idCliente"));
				suministro.setIdPredio(rs.getInt("idPredio"));
				
				suministro.setNomCategoria(rs.getString("desCategoria"));
				suministro.setNomDiametroConexion(rs.getString("desDiametroConexion"));
				
				rs.close();
				ps.close();
				cn.close();
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		return suministro;
	}

	@Override
	public void modificarSuministro(SuministroDTO suministro) {
		// TODO Auto-generated method stub
		
	}

}
