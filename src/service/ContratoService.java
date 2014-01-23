package service;

import interfaces.ContratoDAO;

import java.util.List;

import dao.DAOFactory;
import bean.ClienteDTO;
import bean.ContratoDTO;

public class ContratoService{
	
	private DAOFactory factory= DAOFactory.getDAOFactory(1);
	private ContratoDAO contrato = factory.getContratoDAO();

	public List<ClienteDTO> listarClientes() {
		return contrato.listarClientes();
	}

	public List<ClienteDTO> listarClientesPorNombre(String nombre,String doc,String nomrep,String aperep) {
		return contrato.listarClientesPorNombre(nombre,doc,nomrep,aperep);
	}

	public ClienteDTO obtenerCliente(int codigo) {
		return contrato.obtenerCliente(codigo);
	}

	public List<ContratoDTO> obtenerContratosPorCliente(int codCliente) {
		return contrato.obtenerContratosPorCliente(codCliente);
	}

}
