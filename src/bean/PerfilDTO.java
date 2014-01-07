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
	
	private String cad_moduloContratos;
	private String cad_moduloCategorias;
	private String cad_moduloLiquidacion;
	private String cad_moduloReportes;
	private String cad_moduloManClientes;
	private String cad_moduloManPerfiles;
	private String cad_moduloManUsuarios;
	private String cad_moduloBuzon;
	private String cad_moduloCalendario;
	
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
		
		if(moduloContratos==1)	cad_moduloContratos="SI";
		else	cad_moduloContratos="NO";
		
		if(moduloCategorias==1)	cad_moduloCategorias="SI";
		else	cad_moduloCategorias="NO";
		
		if(moduloLiquidacion==1)	cad_moduloLiquidacion="SI";
		else	cad_moduloLiquidacion="NO";
		
		if(moduloReportes==1)	cad_moduloReportes="SI";
		else	cad_moduloReportes="NO";
		
		if(moduloManClientes==1)	cad_moduloManClientes="SI";
		else	cad_moduloManClientes="NO";
		
		if(moduloManPerfiles==1)	cad_moduloManPerfiles="SI";
		else	cad_moduloManPerfiles="NO";
		
		if(moduloManUsuarios==1)	cad_moduloManUsuarios="SI";
		else	cad_moduloManUsuarios="NO";
		
		if(moduloBuzon==1)	cad_moduloBuzon="SI";
		else	cad_moduloBuzon="NO";
		
		if(moduloCalendario==1)	cad_moduloCalendario="SI";
		else	cad_moduloCalendario="NO";
		

			
		
		
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
	
//	BEGINS SET AND GET CADENA MODULOS

	public String getCad_moduloContratos() {
		return cad_moduloContratos;
	}

	public void setCad_moduloContratos(String cad_moduloContratos) {
		this.cad_moduloContratos = cad_moduloContratos;
	}

	public String getCad_moduloCategorias() {
		return cad_moduloCategorias;
	}

	public void setCad_moduloCategorias(String cad_moduloCategorias) {
		this.cad_moduloCategorias = cad_moduloCategorias;
	}

	public String getCad_moduloLiquidacion() {
		return cad_moduloLiquidacion;
	}

	public void setCad_moduloLiquidacion(String cad_moduloLiquidacion) {
		this.cad_moduloLiquidacion = cad_moduloLiquidacion;
	}

	public String getCad_moduloReportes() {
		return cad_moduloReportes;
	}

	public void setCad_moduloReportes(String cad_moduloReportes) {
		this.cad_moduloReportes = cad_moduloReportes;
	}

	public String getCad_moduloManClientes() {
		return cad_moduloManClientes;
	}

	public void setCad_moduloManClientes(String cad_moduloManClientes) {
		this.cad_moduloManClientes = cad_moduloManClientes;
	}

	public String getCad_moduloManPerfiles() {
		return cad_moduloManPerfiles;
	}

	public void setCad_moduloManPerfiles(String cad_moduloManPerfiles) {
		this.cad_moduloManPerfiles = cad_moduloManPerfiles;
	}

	public String getCad_moduloManUsuarios() {
		return cad_moduloManUsuarios;
	}

	public void setCad_moduloManUsuarios(String cad_moduloManUsuarios) {
		this.cad_moduloManUsuarios = cad_moduloManUsuarios;
	}

	public String getCad_moduloBuzon() {
		return cad_moduloBuzon;
	}

	public void setCad_moduloBuzon(String cad_moduloBuzon) {
		this.cad_moduloBuzon = cad_moduloBuzon;
	}

	public String getCad_moduloCalendario() {
		return cad_moduloCalendario;
	}

	public void setCad_moduloCalendario(String cad_moduloCalendario) {
		this.cad_moduloCalendario = cad_moduloCalendario;
	}
	
	
	
	
	
	
}
