package dao;

import interfaces.Con_SolicitudDAO;
import interfaces.ContratoDAO;
import interfaces.NuevaConexionDAO;
import interfaces.PagoDAO;
import interfaces.PerfilDAO;
import interfaces.PredioDAO;
import interfaces.UsuarioDAO;

public abstract class DAOFactory {

	public static final int MYSQL =1;
	public static final int ORACLE = 2;
	public static final int XML = 3;
	
	public abstract UsuarioDAO getUsuarioDAO();
	public abstract PerfilDAO getPerfilDAO();
	public abstract Con_SolicitudDAO getCon_SolicitudDAO();
	public abstract NuevaConexionDAO getNuevaConexionDAO();
	public abstract ContratoDAO getContratoDAO();
	public abstract PredioDAO getPredioDAO();
	public abstract PagoDAO getPagoDAO();
	
	public static DAOFactory getDAOFactory(int w){
		
		switch(w){
		case MYSQL: return new MySqlDAOFactory();
		case ORACLE: return null;
		case XML: return null;
		
		default : return null;
		}
	}
}
