package interfaces;

import java.util.List;

import bean.EmpleadoDTO;

public interface EmpleadoDAO {
	
	public EmpleadoDTO validarUsuario(String usu_emp,String pass_emp);
	
	public void registrarEmpleado(EmpleadoDTO empleado);
	
	public void eliminarEmpleado(String cod_emp);
	
	public List<EmpleadoDTO> listarEmpleados();
	
	public EmpleadoDTO buscarPorId(String cod_emp);
	
	public EmpleadoDTO validarSoloUsuario(String usu_emp);
	
}
