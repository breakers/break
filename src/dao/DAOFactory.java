package dao;

import interfaces.EmpleadoDAO;

public abstract class DAOFactory {

	public static final int MYSQL =1;
	public static final int ORACLE = 2;
	public static final int XML = 3;
	
	public abstract EmpleadoDAO getEmpleadoDAO();
	
	public static DAOFactory getDAOFactory(int w){
		
		switch(w){
		case MYSQL: return new MySqlDAOFactory();
		case ORACLE: return null;
		case XML: return null;
		
		default : return null;
		}
	}
}
