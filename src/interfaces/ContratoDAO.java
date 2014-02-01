package interfaces;

import java.util.ArrayList;
import java.util.List;

import bean.ClienteDTO;
import bean.ContratoDTO;
import bean.FiltroClienteDTO;
import bean.SuministroDTO;

public interface ContratoDAO {
	
	//Trabajando con los clientes
	public List<ClienteDTO> listarClientes();
	
	public List<ClienteDTO> listarClientesPorNombre(String nombre, String doc, String nomrep, String aperep);
	
	public ClienteDTO obtenerCliente(int codigo);
	
	//Trabajando con los contratos
	public List<ContratoDTO> obtenerContratosPorCliente(int codCliente); 
	
	public ContratoDTO obtenerContrato(int idContrato);

	public boolean generarContrato(int idUsuario, int idSolicitud);

	public ArrayList<ClienteDTO> filtrarClientes(FiltroClienteDTO filtrocliente);

	public ClienteDTO mostrarDatosCliente(int idCliente);

	public ArrayList<SuministroDTO> listarSuministrosPorCliente(int idCliente);

	public SuministroDTO mostrarDatosSuministro(int idSuministro);

}
