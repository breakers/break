package interfaces;

import java.util.List;

import bean.ClienteDTO;

public interface ClienteDAO {
	
	
	ClienteDTO obtenerCliente(int idCliente);
	
	ClienteDTO obtenerClientePorSuministro(int idSuministro);
	
	List<ClienteDTO> listarClientes();
	
	List<ClienteDTO> listarClientes(String nomCliente);
	
	List<ClienteDTO> listarClientes(int idtipoPersona);
	
	void agregarCliente(ClienteDTO cliente);
	
	void modificarCliente(ClienteDTO cliente);
	
	
}
