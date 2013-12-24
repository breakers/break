package bean;

public class PerfilDTO {

	private int idPerfil;
	private String desPerfil;
	private int moduloContratos;
	private int moduloCategorias;
	private int moduloLiquidacion;
	private int moduloReportes;
	private int moduloManClientes;
	private int moduloManPerfiles;
	private int moduloManUsuarios;
	private int moduloBuzon;
	private int moduloCalendario;
	
	public PerfilDTO() {
	}

	public PerfilDTO(int idPerfil, String desPerfil, int moduloContratos,
			int moduloCategorias, int moduloLiquidacion, int moduloReportes,
			int moduloManClientes, int moduloManPerfiles,
			int moduloManUsuarios, int moduloBuzon, int moduloCalendario) {
		this.idPerfil = idPerfil;
		this.desPerfil = desPerfil;
		this.moduloContratos = moduloContratos;
		this.moduloCategorias = moduloCategorias;
		this.moduloLiquidacion = moduloLiquidacion;
		this.moduloReportes = moduloReportes;
		this.moduloManClientes = moduloManClientes;
		this.moduloManPerfiles = moduloManPerfiles;
		this.moduloManUsuarios = moduloManUsuarios;
		this.moduloBuzon = moduloBuzon;
		this.moduloCalendario = moduloCalendario;
	}

	public int getIdPerfil() {
		return idPerfil;
	}

	public void setIdPerfil(int idPerfil) {
		this.idPerfil = idPerfil;
	}

	public String getDesPerfil() {
		return desPerfil;
	}

	public void setDesPerfil(String desPerfil) {
		this.desPerfil = desPerfil;
	}

	public int getModuloContratos() {
		return moduloContratos;
	}

	public void setModuloContratos(int moduloContratos) {
		this.moduloContratos = moduloContratos;
	}

	public int getModuloCategorias() {
		return moduloCategorias;
	}

	public void setModuloCategorias(int moduloCategorias) {
		this.moduloCategorias = moduloCategorias;
	}

	public int getModuloLiquidacion() {
		return moduloLiquidacion;
	}

	public void setModuloLiquidacion(int moduloLiquidacion) {
		this.moduloLiquidacion = moduloLiquidacion;
	}

	public int getModuloReportes() {
		return moduloReportes;
	}

	public void setModuloReportes(int moduloReportes) {
		this.moduloReportes = moduloReportes;
	}

	public int getModuloManClientes() {
		return moduloManClientes;
	}

	public void setModuloManClientes(int moduloManClientes) {
		this.moduloManClientes = moduloManClientes;
	}

	public int getModuloManPerfiles() {
		return moduloManPerfiles;
	}

	public void setModuloManPerfiles(int moduloManPerfiles) {
		this.moduloManPerfiles = moduloManPerfiles;
	}

	public int getModuloManUsuarios() {
		return moduloManUsuarios;
	}

	public void setModuloManUsuarios(int moduloManUsuarios) {
		this.moduloManUsuarios = moduloManUsuarios;
	}

	public int getModuloBuzon() {
		return moduloBuzon;
	}

	public void setModuloBuzon(int moduloBuzon) {
		this.moduloBuzon = moduloBuzon;
	}

	public int getModuloCalendario() {
		return moduloCalendario;
	}

	public void setModuloCalendario(int moduloCalendario) {
		this.moduloCalendario = moduloCalendario;
	}
	
	
	
}
