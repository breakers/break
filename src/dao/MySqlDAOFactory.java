package dao;

import interfaces.EmpleadoDAO;

public class MySqlDAOFactory extends DAOFactory{
	
	public EmpleadoDAO getEmpleadoDAO(){
		return new MySqlEmpleadoDAO();
	}
	
	
}
