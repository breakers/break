package interfaces;

import java.util.List;

import bean.CuotaDTO;
import bean.PredioDTO;

public interface PagoDAO {

	public void registrarPago(CuotaDTO cuota);

	public List<CuotaDTO> listarCuotas();
	public CuotaDTO obtenerCuota(int idCuota);
}
