package interfaces;

import java.util.List;

import bean.ClienteDTO;
import bean.ContratoDTO;

public interface ContratoDAO {
	
	//Trabajando con los clientes
	public List<ClienteDTO> listarClientes();
	
	public List<ClienteDTO> listarClientesPorNombre(String nombre, String doc, String nomrep, String aperep);
	
	public ClienteDTO obtenerCliente(int codigo);
	
	//Trabajando con los contratos
	public List<ContratoDTO> obtenerContratosPorCliente(int codCliente); 

}
