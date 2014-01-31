package service;

import java.util.List;

import dao.DAOFactory;
import bean.PredioDTO;
import interfaces.PredioDAO;

public class PredioService{
	
	private DAOFactory factoria= DAOFactory.getDAOFactory(1);
	private PredioDAO objPredio= factoria.getPredioDAO();

	public void registrarPredio(PredioDTO predio) {
		// TODO Auto-generated method stub
		
	}

	public void actualizarPredio(int idPredio) {
		// TODO Auto-generated method stub
		
	}

	public void eliminarPredio(int idPredio) {
		// TODO Auto-generated method stub
		
	}

	public PredioDTO obtenerPredio(int idPredio) {
		return objPredio.obtenerPredio(idPredio);
	}

	public List<PredioDTO> listarPredios() {
		// TODO Auto-generated method stub
		return null;
	}

}
