package service;

import java.util.List;

import dao.DAOFactory;
import bean.ClienteDTO;
import interfaces.ClienteDAO;

public class ClienteService {
	
	DAOFactory factoria = DAOFactory.getDAOFactory(1);
	
	ClienteDAO objcliente = factoria.getClienteDAO();

	public ClienteDTO obtenerCliente(int idCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	public ClienteDTO obtenerClientePorSuministro(int idSuministro) {
		return objcliente.obtenerClientePorSuministro(idSuministro);
	}

	public List<ClienteDTO> listarClientes() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ClienteDTO> listarClientes(String nomCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ClienteDTO> listarClientes(int idtipoPersona) {
		// TODO Auto-generated method stub
		return null;
	}

	public void agregarCliente(ClienteDTO cliente) {
		// TODO Auto-generated method stub
		
	}

	public void modificarCliente(ClienteDTO cliente) {
		// TODO Auto-generated method stub
		
	}

}
