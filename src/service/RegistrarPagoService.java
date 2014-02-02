package service;

import java.util.List;

import bean.CuotaDTO;
import bean.PredioDTO;
import dao.DAOFactory;
import interfaces.PagoDAO;
import interfaces.PredioDAO;

public class RegistrarPagoService {
	private DAOFactory factoria= DAOFactory.getDAOFactory(1);
	private PagoDAO objCuota= factoria.getPagoDAO();
	
	public void registrarPago(CuotaDTO cuota) {
		
	}

	public List<CuotaDTO> listarCuotas() {
		return null;
	}
	
	public CuotaDTO obtenerCuota(int idCuota) {
		return objCuota.obtenerCuota(idCuota);
	}
}
