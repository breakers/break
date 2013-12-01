package bean;

public class EmpleadoDTO {
	
	private String cod_emp;
	private String nom_emp;
	private String apep_emp;
	private String apem_emp;
	private String dni_emp;
	private int cod_tip_emp;
	private String usu_emp;
	private String pass_emp;
	private String foto_emp;
	
	
	public EmpleadoDTO(String cod_emp, String nom_emp, String apep_emp,
			String apem_emp, String dni_emp, int cod_tip_emp,
			String usu_emp, String pass_emp, String foto_emp) {
		super();
		this.cod_emp = cod_emp;
		this.nom_emp = nom_emp;
		this.apep_emp = apep_emp;
		this.apem_emp = apem_emp;
		this.dni_emp = dni_emp;
		this.cod_tip_emp = cod_tip_emp;
		this.usu_emp = usu_emp;
		this.pass_emp = pass_emp;
		this.foto_emp = foto_emp;
	}


	public String getCod_emp() {
		return cod_emp;
	}


	public void setCod_emp(String cod_emp) {
		this.cod_emp = cod_emp;
	}


	public String getNom_emp() {
		return nom_emp;
	}


	public void setNom_emp(String nom_emp) {
		this.nom_emp = nom_emp;
	}


	public String getApep_emp() {
		return apep_emp;
	}


	public void setApep_emp(String apep_emp) {
		this.apep_emp = apep_emp;
	}


	public String getApem_emp() {
		return apem_emp;
	}


	public void setApem_emp(String apem_emp) {
		this.apem_emp = apem_emp;
	}


	public String getDni_emp() {
		return dni_emp;
	}


	public void setDni_emp(String dni_emp) {
		this.dni_emp = dni_emp;
	}


	public int getCod_tip_emp() {
		return cod_tip_emp;
	}


	public void setCod_tip_emp(int cod_tip_emp) {
		this.cod_tip_emp = cod_tip_emp;
	}


	public String getUsu_emp() {
		return usu_emp;
	}


	public void setUsu_emp(String usu_emp) {
		this.usu_emp = usu_emp;
	}


	public String getPass_emp() {
		return pass_emp;
	}


	public void setPass_emp(String pass_emp) {
		this.pass_emp = pass_emp;
	}


	public String getFoto_emp() {
		return foto_emp;
	}


	public void setFoto_emp(String foto_emp) {
		this.foto_emp = foto_emp;
	}
	
	
	

}
