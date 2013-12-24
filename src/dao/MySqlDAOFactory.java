package dao;


import interfaces.UsuarioDAO;

public class MySqlDAOFactory extends DAOFactory{

	
	public UsuarioDAO getUsuarioDAO(){
		return new MySqlUsuarioDAO();
	}
	
	
}
