package dao;


import interfaces.Con_SolicitudDAO;
import interfaces.PerfilDAO;
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
		// TODO Auto-generated method stub
		return new MySqlCon_SolicitudDAO();
	}
	
	
}
