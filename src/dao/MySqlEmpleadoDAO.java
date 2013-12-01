package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.MySQL;

import bean.EmpleadoDTO;
import interfaces.EmpleadoDAO;

public class MySqlEmpleadoDAO implements EmpleadoDAO{

	@Override
	public EmpleadoDTO validarUsuario(String usu_emp, String pass_emp) {
		
		EmpleadoDTO emp = null;
		Connection cn = MySQL.getConnection(); 
		
		String sql = "SELECT * FROM tb_empleado WHERE usu_emp = ? and pass_emp = ?";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, usu_emp);
			ps.setString(2, pass_emp);
			
			ResultSet rs=ps.executeQuery();
			
			if (rs.next()) {
				emp = new EmpleadoDTO(	rs.getString("cod_emp"),
										rs.getString("nom_emp"), 
										rs.getString("apep_emp"), 
										rs.getString("apem_emp"), 
										rs.getString("dni_emp"), 
										rs.getInt("cod_tip_emp"), 
										rs.getString("usu_emp"), 
										rs.getString("pass_emp"), 
										rs.getString("foto_emp"));
			}
			
			rs.close();
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return emp;
	}

	@Override
	public void registrarEmpleado(EmpleadoDTO empleado) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void eliminarEmpleado(String cod_emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<EmpleadoDTO> listarEmpleados() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmpleadoDTO buscarPorId(String cod_emp) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmpleadoDTO validarSoloUsuario(String usu_emp) {
		EmpleadoDTO emp = null;
		Connection cn = MySQL.getConnection(); 
		
		String sql = "SELECT * FROM tb_empleado WHERE usu_emp = ?";
		
		try {
			PreparedStatement ps = cn.prepareStatement(sql);
			ps.setString(1, usu_emp);
			
			ResultSet rs=ps.executeQuery();
			
			if (rs.next()) {
				emp = new EmpleadoDTO(	rs.getString("cod_emp"),
										rs.getString("nom_emp"), 
										rs.getString("apep_emp"), 
										rs.getString("apem_emp"), 
										rs.getString("dni_emp"), 
										rs.getInt("cod_tip_emp"), 
										rs.getString("usu_emp"), 
										rs.getString("pass_emp"), 
										rs.getString("foto_emp"));
			}
			
			rs.close();
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return emp;
	}



}
