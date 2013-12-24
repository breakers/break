package bean;

public class UsuarioDTO {
	
	private int idUsuario;
	private int idPerfil;
	private String userUsuario;
	private String passUsuario;
	private String nomUsuario;
	private String apepaUsuario;
	private String apemaUsuario;
	private String dniUsuario;
	
	public UsuarioDTO() {
	}

	public UsuarioDTO(int idUsuario, int idPerfil, String userUsuario,
			String passUsuario, String nomUsuario, String apepaUsuario,
			String apemaUsuario, String dniUsuario) {
		super();
		this.idUsuario = idUsuario;
		this.idPerfil = idPerfil;
		this.userUsuario = userUsuario;
		this.passUsuario = passUsuario;
		this.nomUsuario = nomUsuario;
		this.apepaUsuario = apepaUsuario;
		this.apemaUsuario = apemaUsuario;
		this.dniUsuario = dniUsuario;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getIdPerfil() {
		return idPerfil;
	}

	public void setIdPerfil(int idPerfil) {
		this.idPerfil = idPerfil;
	}

	public String getUserUsuario() {
		return userUsuario;
	}

	public void setUserUsuario(String userUsuario) {
		this.userUsuario = userUsuario;
	}

	public String getPassUsuario() {
		return passUsuario;
	}

	public void setPassUsuario(String passUsuario) {
		this.passUsuario = passUsuario;
	}

	public String getNomUsuario() {
		return nomUsuario;
	}

	public void setNomUsuario(String nomUsuario) {
		this.nomUsuario = nomUsuario;
	}

	public String getApepaUsuario() {
		return apepaUsuario;
	}

	public void setApepaUsuario(String apepaUsuario) {
		this.apepaUsuario = apepaUsuario;
	}

	public String getApemaUsuario() {
		return apemaUsuario;
	}

	public void setApemaUsuario(String apemaUsuario) {
		this.apemaUsuario = apemaUsuario;
	}

	public String getDniUsuario() {
		return dniUsuario;
	}

	public void setDniUsuario(String dniUsuario) {
		this.dniUsuario = dniUsuario;
	}
	
	
}
