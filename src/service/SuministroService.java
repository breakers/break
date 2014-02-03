package service;

import dao.DAOFactory;
import bean.SuministroDTO;
import interfaces.SuministroDAO;



public class SuministroService{
	
	
	DAOFactory factory= DAOFactory.getDAOFactory(1);
	SuministroDAO objsuministro=factory.getSuministroDAO();

	public SuministroDTO obtenerSuministro(int idSuministro) {
		return objsuministro.obtenerSuministro(idSuministro);
	}

	public void modificarSuministro(SuministroDTO suministro) {
		
	}

}
