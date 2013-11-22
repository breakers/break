package service;

import java.util.List;

import bean.EmpleadoDTO;
import interfaces.EmpleadoDAO;
import dao.DAOFactory;

//Aqui implemente la interfaz EmpleadoDAO, en los ejemplos no se hace, es prueba a ver si funciona
public class EmpleadoService {
	
	DAOFactory factory = DAOFactory.getDAOFactory(1);
	EmpleadoDAO objEmpleadoDAO = factory.getEmpleadoDAO();
	
	
	public EmpleadoDTO validarUsuario(String usu_emp, String pass_emp) {
		return objEmpleadoDAO.validarUsuario(usu_emp, pass_emp);
	}
	
	public void registrarEmpleado(EmpleadoDTO empleado) {
		objEmpleadoDAO.registrarEmpleado(empleado);
	}
	
	public void eliminarEmpleado(String cod_emp) {
		objEmpleadoDAO.eliminarEmpleado(cod_emp);
	}
	
	public List<EmpleadoDTO> listarEmpleados() {
		return objEmpleadoDAO.listarEmpleados();
	}
	
	public EmpleadoDTO buscarPorId(String cod_emp) {
		return objEmpleadoDAO.buscarPorId(cod_emp);
	}
	
	public EmpleadoDTO validarSoloUsuario(String usu_emp) {
		return objEmpleadoDAO.validarSoloUsuario(usu_emp);
	}
	
	
}
