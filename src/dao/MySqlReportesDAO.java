package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.MySQL;
import bean.ReporteEstadisticaSolicitudesDTO;
import interfaces.ReportesDAO;

public class MySqlReportesDAO implements ReportesDAO {

	@Override
	public ReporteEstadisticaSolicitudesDTO listarEstadisticaSolicitudes() {
		ReporteEstadisticaSolicitudesDTO  est = new ReporteEstadisticaSolicitudesDTO();
		try {
			Connection cn = MySQL.getConnection();
			String sql = "CALL listarEstadisticaSolicitudes()";
			PreparedStatement pst = cn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
				
			if(rs.next()){
				est.setCantidadPendientes(rs.getInt(1));
				est.setCantidadAprobadas(rs.getInt(2));
				est.setCantidadRechazadas(rs.getInt(3));
				est.setCantidadContratadas(rs.getInt(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return est;
	}

}
