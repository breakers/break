package interfaces;

import java.util.List;

import bean.PredioDTO;

public interface PredioDAO {

	public void registrarPredio(PredioDTO predio);
	
	public void actualizarPredio(int idPredio);
	
	public void eliminarPredio(int idPredio);
	
	public PredioDTO obtenerPredio(int idPredio);
	
	public List<PredioDTO> listarPredios();
	
}
