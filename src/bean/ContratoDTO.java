package bean;

public class ContratoDTO {
	
	//datos de la propia tabla
	private int idContrato;
	private int idCliente;
	private String codSuministro;
	private int idPredio;
	private int idCategoria;
	private int idUsuario;
	private int idSolicitud;
	private int idDiametroConexion;
	
	//datos relacionados a otras tablas
	private String numDocCliente;
	private String nomCliente;
	private String nomCategoria;
	private String desDiametroConexion;
	
	public ContratoDTO() {
	}

	public int getIdContrato() {
		return idContrato;
	}

	public void setIdContrato(int idContrato) {
		this.idContrato = idContrato;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public String getCodSuministro() {
		return codSuministro;
	}

	public void setCodSuministro(String codSuministro) {
		this.codSuministro = codSuministro;
	}

	public int getIdPredio() {
		return idPredio;
	}

	public void setIdPredio(int idPredio) {
		this.idPredio = idPredio;
	}

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getIdSolicitud() {
		return idSolicitud;
	}

	public void setIdSolicitud(int idSolicitud) {
		this.idSolicitud = idSolicitud;
	}

	public int getIdDiametroConexion() {
		return idDiametroConexion;
	}

	public void setIdDiametroConexion(int idDiametroConexion) {
		this.idDiametroConexion = idDiametroConexion;
	}

	public String getNumDocCliente() {
		return numDocCliente;
	}

	public void setNumDocCliente(String numDocCliente) {
		this.numDocCliente = numDocCliente;
	}

	public String getNomCliente() {
		return nomCliente;
	}

	public void setNomCliente(String nomCliente) {
		this.nomCliente = nomCliente;
	}

	public String getNomCategoria() {
		return nomCategoria;
	}

	public void setNomCategoria(String nomCategoria) {
		this.nomCategoria = nomCategoria;
	}

	public String getDesDiametroConexion() {
		return desDiametroConexion;
	}

	public void setDesDiametroConexion(String desDiametroConexion) {
		this.desDiametroConexion = desDiametroConexion;
	}


	

}
