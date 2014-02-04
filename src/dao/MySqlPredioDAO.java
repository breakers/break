package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.MySQL;
import bean.PredioDTO;
import interfaces.PredioDAO;

public class MySqlPredioDAO implements PredioDAO {

	@Override
	public void registrarPredio(PredioDTO predio) {
		// TODO Auto-generated method stub

	}

	@Override
	public void actualizarPredio(int idPredio) {
		// TODO Auto-generated method stub

	}

	@Override
	public void eliminarPredio(int idPredio) {
		// TODO Auto-generated method stub

	}

	@Override
	public PredioDTO obtenerPredio(int idPredio) {
		PredioDTO predio = new PredioDTO();
		boolean verifica = false;

		Connection cn = null;
		PreparedStatement ps = null;

		String sqlpredio = "select * from tb_predio Where idPredio = ?";

		try {
			cn = MySQL.getConnection();
			ps = cn.prepareStatement(sqlpredio);
			ps.setInt(1, idPredio);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				verifica = true;

				predio.setIdPredio(rs.getInt("idPredio"));
				predio.setIdTipoPredio(rs.getInt("idTipoPredio"));
				predio.setIdEstadoPredio(rs.getInt("idEstadoPredio"));
				predio.setId_provincia(rs.getInt("id_provincia"));
				predio.setId_distrito(rs.getInt("id_distrito"));
				predio.setId_localidad(rs.getInt("id_localidad"));
				predio.setId_calle(rs.getInt("id_calle"));
				predio.setNumPredio(rs.getString("numPredio"));
				predio.setReferencias(rs.getString("referencias"));
				predio.setCoordenadasPredio(rs.getString("CoordenadasPredio"));
				

				

			}

			rs.close();
			ps.close();
			cn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (verifica) {
			int provincia = predio.getId_provincia();
			String sqlprov = "select * from tb_provincia Where id_prov = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlprov);
				ps.setInt(1, provincia);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomProvincia(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// //////distrito
			int distrito = predio.getId_distrito();
			String sqldis = "select * from tb_distrito Where id_dis = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqldis);
				ps.setInt(1, distrito);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomDistrito(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// //////localidad
			int localidad = predio.getId_localidad();
			String sqlloca = "select * from tb_localidad Where id_loc = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlloca);
				ps.setInt(1, localidad);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomLocalidad(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// //////Calle
			int calle = predio.getId_localidad();
			String sqlcalle = "select * from tb_calle Where id_calle = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlcalle);
				ps.setInt(1, calle);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomCalle(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// /////estadopredio,tipopredio
			int estadoPredio = predio.getIdEstadoPredio();
			String sqlestado = "select * from tb_estadoPredio Where idEstadoPredio = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlestado);
				ps.setInt(1, estadoPredio);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setDesEstadoPredio(rs.getString("desEstadoPredio"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
			// /////tipopredio
			int tipo = predio.getIdTipoPredio();
			String sqltipo = "select * from tb_TipoPredio Where idTipoPredio = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqltipo);
				ps.setInt(1, tipo);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setDesTipoPredio(rs.getString("desTipoPredio"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return predio;

		}else {
			return null;
		}

		
	}

	@Override
	public List<PredioDTO> listarPredios() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PredioDTO obtenerPredioPorSuministro(int idSuministro) {
		PredioDTO predio = null;
		boolean verifica = false;
		String sql = "select * from tb_Predio as p "
				+ "inner join tb_Suministro as s on p.idPredio = s.idPredio "
				+ "Where s.idSuministro = ? ";
		
		Connection cn = null;
		PreparedStatement ps = null;
		
		try {
			cn = MySQL.getConnection();
			ps = cn.prepareStatement(sql);
			ps.setInt(1, idSuministro);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				verifica = true;
				predio= new PredioDTO();
				predio.setIdPredio(rs.getInt("idPredio"));
				predio.setIdTipoPredio(rs.getInt("idTipoPredio"));
				predio.setIdEstadoPredio(rs.getInt("idEstadoPredio"));
				predio.setId_provincia(rs.getInt("id_provincia"));
				predio.setId_distrito(rs.getInt("id_distrito"));
				predio.setId_localidad(rs.getInt("id_localidad"));
				predio.setId_calle(rs.getInt("id_calle"));
				predio.setNumPredio(rs.getString("numPredio"));
				predio.setReferencias(rs.getString("referencias"));
				predio.setCoordenadasPredio(rs.getString("CoordenadasPredio"));
				

				

			}

			rs.close();
			ps.close();
			cn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (verifica) {
			int provincia = predio.getId_provincia();
			String sqlprov = "select * from tb_provincia Where id_prov = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlprov);
				ps.setInt(1, provincia);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomProvincia(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// //////distrito
			int distrito = predio.getId_distrito();
			String sqldis = "select * from tb_distrito Where id_dis = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqldis);
				ps.setInt(1, distrito);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomDistrito(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// //////localidad
			int localidad = predio.getId_localidad();
			String sqlloca = "select * from tb_localidad Where id_loc = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlloca);
				ps.setInt(1, localidad);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomLocalidad(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// //////Calle
			int calle = predio.getId_localidad();
			String sqlcalle = "select * from tb_calle Where id_calle = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlcalle);
				ps.setInt(1, calle);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setNomCalle(rs.getString("nombre"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

			// /////estadopredio,tipopredio
			int estadoPredio = predio.getIdEstadoPredio();
			String sqlestado = "select * from tb_estadoPredio Where idEstadoPredio = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqlestado);
				ps.setInt(1, estadoPredio);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setDesEstadoPredio(rs.getString("desEstadoPredio"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
			// /////tipopredio
			int tipo = predio.getIdTipoPredio();
			String sqltipo = "select * from tb_TipoPredio Where idTipoPredio = ?";

			try {
				cn = MySQL.getConnection();
				ps = cn.prepareStatement(sqltipo);
				ps.setInt(1, tipo);

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {
					predio.setDesTipoPredio(rs.getString("desTipoPredio"));
				}

				rs.close();
				ps.close();
				cn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return predio;

		}else {
			return null;
		}
	}

}
