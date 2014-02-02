package dao;


import interfaces.CC_SolicitudDAO;
import interfaces.Con_SolicitudDAO;
import interfaces.ContratoDAO;
import interfaces.NuevaConexionDAO;
import interfaces.PagoDAO;
import interfaces.PerfilDAO;
import interfaces.PredioDAO;
import interfaces.ReportesDAO;
import interfaces.UsuarioDAO;

public class MySqlDAOFactory extends DAOFactory{

	
	public UsuarioDAO getUsuarioDAO(){
		return new MySqlUsuarioDAO();
	}

	@Override
	public PerfilDAO getPerfilDAO() {
		return new MySqlPerfilDAO();
	}

	@Override
	public Con_SolicitudDAO getCon_SolicitudDAO() {
		return new MySqlCon_SolicitudDAO();
	}

	@Override
	public NuevaConexionDAO getNuevaConexionDAO() {
		return new MySqlNuevaConexionDAO();
	}

	@Override
	public ContratoDAO getContratoDAO() {
		return new MySqlContratoDAO();
	}

	@Override
	public PredioDAO getPredioDAO() {
		return new MySqlPredioDAO();
	}

	@Override
	public PagoDAO getPagoDAO() {
		return new MySqlPagoDAO();
	}

	@Override
	public ReportesDAO getReportesDAO() {
		return new MySqlReportesDAO();
	}

	@Override
	public CC_SolicitudDAO getCc_SolicitudDAO() {
		return new MySqlCC_SolicitudDAO();
	}	
	
	
	
}
