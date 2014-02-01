package bean;

public class DetalleSolCambioCatDTO {
	
	private int idSolCategoria; 
    private int idEstado; 
    private int idUsuario; 
    private String fechaDetalle;
    
    //datos adicionales
    private String nomEstado;
    private String nomUsuario;
    
    public DetalleSolCambioCatDTO() {
	}

	public int getIdSolCategoria() {
		return idSolCategoria;
	}

	public void setIdSolCategoria(int idSolCategoria) {
		this.idSolCategoria = idSolCategoria;
	}

	public int getIdEstado() {
		return idEstado;
	}

	public void setIdEstado(int idEstado) {
		this.idEstado = idEstado;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getFechaDetalle() {
		return fechaDetalle;
	}

	public void setFechaDetalle(String fechaDetalle) {
		this.fechaDetalle = fechaDetalle;
	}

	public String getNomEstado() {
		return nomEstado;
	}

	public void setNomEstado(String nomEstado) {
		this.nomEstado = nomEstado;
	}

	public String getNomUsuario() {
		return nomUsuario;
	}

	public void setNomUsuario(String nomUsuario) {
		this.nomUsuario = nomUsuario;
	}
    
    
    
    
}
