package dao;


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
	
	
}
